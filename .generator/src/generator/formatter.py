"""Data formatter."""
import pathlib
import json
import re
import warnings
from functools import singledispatch


KEYWORDS = {
    "__FILE__",
    "and",
    "def",
    "end",
    "in",
    "or",
    "self",
    "unless",
    "__LINE__",
    "begin",
    "defined?",
    "ensure",
    "module",
    "redo",
    "super",
    "until",
    "BEGIN",
    "break",
    "do",
    "false",
    "next",
    "rescue",
    "then",
    "when",
    "END",
    "case",
    "else",
    "for",
    "nil",
    "retry",
    "true",
    "while",
    "alias",
    "class",
    "elsif",
    "if",
    "not",
    "return",
    "undef",
    "yield",
    "hash",
}

with (pathlib.Path(__file__).parent / "replacement.json").open() as f:
    EDGE_CASES = json.load(f)

PATTERN_DOUBLE_UNDERSCORE = re.compile(r"__+")
PATTERN_LEADING_ALPHA = re.compile(r"(.)([A-Z][a-z]+)")
PATTERN_FOLLOWING_ALPHA = re.compile(r"([a-z0-9])([A-Z])")
PATTERN_WHITESPACE = re.compile(r"\W")


def snake_case(value):
    for token, replacement in EDGE_CASES.items():
        value = value.replace(token, replacement)
    s1 = PATTERN_LEADING_ALPHA.sub(r"\1_\2", value)
    s1 = PATTERN_FOLLOWING_ALPHA.sub(r"\1_\2", s1).lower()
    s1 = PATTERN_WHITESPACE.sub("_", s1)
    s1 = s1.rstrip("_")
    return PATTERN_DOUBLE_UNDERSCORE.sub("_", s1)


def block_comment(comment, prefix="#"):
    return "\n".join(f"{prefix} {line}".rstrip() for line in comment.split("\n"))


def camel_case(value):
    return "".join(x.title() for x in snake_case(value).split("_"))


def untitle_case(value):
    return value[0].lower() + value[1:]


def schema_name(schema):
    if not schema:
        return None

    if hasattr(schema, "__reference__"):
        return schema.__reference__["$ref"].split("/")[-1]


def given_variables(context):
    """Return a list of variables using in given steps."""
    return {key for values in context.get("_given", {}).values() for key in values}


def escape_reserved_keyword(word):
    """
    Escape reserved language keywords like openapi generator does it
    :param word: Word to escape
    :return: The escaped word if it was a reserved keyword, the word unchanged otherwise
    """
    if word in KEYWORDS:
        return f"_{word}"
    return word


def attribute_name(attribute):
    return escape_reserved_keyword(snake_case(attribute))


def format_value(value, quotes="'"):
    if isinstance(value, str):
        return f"{quotes}{value}{quotes}"
    elif isinstance(value, bool):
        return "true" if value else "false"
    return value


def format_parameters(kwargs, spec, replace_values=None, has_body=False):
    parameters_spec = {p["name"]: p for p in spec.get("parameters", [])}
    if "requestBody" in spec and "multipart/form-data" in spec["requestBody"]["content"]:
        parent = spec["requestBody"]["content"]["multipart/form-data"]["schema"]
        for name, schema in parent["properties"].items():
            parameters_spec[name] = {
                "in": "form",
                "schema": schema,
                "name": name,
                "description": schema.get("description"),
                "required": name in parent.get("required", []),
            }

    parameters = ""
    optional_spec = {}
    opts = {}
    for p in parameters_spec.values():
        required = p.get("required", False)
        k = snake_case(p["name"])
        if required:
            v = kwargs.pop(p["name"])  # otherwise there is a missing required parameters
            value = format_data_with_schema(
                v["value"],
                p["schema"],
                replace_values=replace_values,
            )
            parameters += f"{value}, "
        else:
            optional_spec[k] = p

    if has_body:
        body_is_required = spec.get("requestBody", {"required": None}).get("required", False)
        if not body_is_required:
            opts["body"] = "body"
            parameters += "opts"
        else:
            parameters += "body, "

    if optional_spec:
        for k, v in kwargs.items():
            k = snake_case(k)
            value = format_data_with_schema(
                v["value"],
                optional_spec[k]["schema"],
                replace_values=replace_values,
            )
            opts[escape_reserved_keyword(k)] = value

        if opts and "opts" not in parameters:
            parameters += "opts"

    return parameters, opts


def get_name(schema):

    name = None
    if hasattr(schema, "__reference__"):
        name = schema.__reference__["$ref"].split("/")[-1]

    return name


def _format_oneof(data, schema, name_prefix=None, replace_values=None):
    parameters = ""
    matched = 0
    for sub_schema in schema["oneOf"]:
        try:
            formatted = format_data_with_schema(
                data,
                sub_schema,
                name_prefix=name_prefix,
                replace_values=replace_values,
            )
            if matched == 0:
                # NOTE we do not support mixed schemas with oneOf
                # parameters += formatted
                parameters = formatted
            matched += 1
        except (KeyError, ValueError):
            pass

    if matched == 0:
        raise ValueError(f"[{matched}] {data} is not valid for schema")
    elif matched > 1:
        warnings.warn(f"[{matched}] {data} is not valid for schema")

    return parameters


@singledispatch
def format_data_with_schema(
    data,
    schema,
    name_prefix="",
    replace_values=None,
    default_name=None,
):
    name = get_name(schema)

    if "enum" in schema and data not in schema["enum"]:
        raise ValueError(f"{data} is not valid enum value {schema['enum']}")

    if replace_values and data in replace_values:
        parameters = replace_values[data]
        if schema.get("type") == "integer":
            parameters = f"{parameters}.to_i"
        elif schema.get("type") == "number":
            parameters = f"{parameters}.to_f"
    elif "enum" in schema:
        parameters = schema["x-enum-varnames"][schema["enum"].index(data)]
    else:
        if schema.get("nullable") and data is None:
            return "nil"
        else:
            if "oneOf" in schema:
                name = None
                parameters = _format_oneof(data, schema, name_prefix=name_prefix, replace_values=replace_values)
            else:

                def open_file(x):
                    return f"File.open({repr(x)}, 'r')"

                formatter = {
                    "number": str,
                    "integer": str,
                    "boolean": lambda x: "true" if x else "false",
                    "string": open_file if schema.get("format") == "binary" else repr,
                    None: repr,
                }[schema.get("type")]

                # TODO format date and datetime
                parameters = formatter(data)

    if "enum" in schema and name:
        return f"{name_prefix}{name}::{parameters.upper()}"

    if schema.get("type") == "string":
        return f"{parameters}"

    # NOTE we don't need named parameters for basic types except enums handled above
    # if name:
    #     return f"{name_prefix}{name}.new({{{parameters}}})"

    return parameters


@format_data_with_schema.register(list)
def format_data_with_schema_list(
    data,
    schema,
    name_prefix="",
    replace_values=None,
    default_name=None,
):
    name = get_name(schema)

    if "oneOf" in schema:
        for sub_schema in schema["oneOf"]:
            try:
                value = format_data_with_schema(
                    data,
                    sub_schema,
                    replace_values=replace_values,
                    default_name=name,
                )
            except (KeyError, ValueError):
                continue
            return value
        raise ValueError(f"{data} is not valid oneOf {schema}")

    parameters = ""
    for d in data:
        value = format_data_with_schema(
            d,
            schema["items"],
            name_prefix=name_prefix,
            replace_values=replace_values,
            default_name=name,
        )
        parameters += f"{value},\n"
    return f"[\n{parameters}]"


@format_data_with_schema.register(dict)
def format_data_with_schema_dict(
    data,
    schema,
    name_prefix="",
    replace_values=None,
    default_name=None,
):
    name = get_name(schema)

    parameters = ""
    has_properties = schema.get("properties")
    if has_properties:
        for k, v in data.items():
            if k not in schema["properties"]:
                continue
            value = format_data_with_schema(
                v,
                schema["properties"][k],
                name_prefix=name_prefix,
                replace_values=replace_values,
                default_name=name + camel_case(k) if name else None,
            )
            parameters += f"{escape_reserved_keyword(snake_case(k))}: {value},\n"

    if schema.get("additionalProperties"):
        for k, v in data.items():
            if has_properties and k in schema["properties"]:
                continue
            value = format_data_with_schema(
                v,
                schema["additionalProperties"],
                name_prefix=name_prefix,
                replace_values=replace_values,
            )
            parameters += f"{k}: {value}, "
        if not has_properties:
            name = None

    if not name and "oneOf" not in schema:
        if default_name and not schema.get("additionalProperties") and schema.get("properties"):
            name = default_name
        else:
            name = "dict"
            warnings.warn(f"Unnamed schema {schema} for {data}")

    if "oneOf" in schema:
        name = None
        parameters = _format_oneof(data, schema, name_prefix=name_prefix, replace_values=replace_values)

    if name == "dict":
        if not parameters and data:
            parameters = ", ".join(f"{k}: \"{v}\"" for k, v in data.items())
        return f"{{\n{parameters}}}"
    elif name:
        return f"{name_prefix}{name}.new({{\n{parameters}}})"

    return parameters


def attribute_path(attribute):
    return ".".join(attribute_name(a) for a in attribute.split("."))
