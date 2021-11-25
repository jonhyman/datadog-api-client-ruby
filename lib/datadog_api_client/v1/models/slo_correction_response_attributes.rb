=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # The attribute object associated with the SLO correction.
  class SLOCorrectionResponseAttributes
    # whether the object has unparsed attributes
    attr_accessor :_unparsed

    attr_accessor :category

    # The epoch timestamp of when the correction was created at
    attr_accessor :created_at

    attr_accessor :creator

    # Description of the correction being made.
    attr_accessor :description

    # Length of time (in seconds) for a specified `rrule` recurring SLO correction.
    attr_accessor :duration

    # Ending time of the correction in epoch seconds.
    attr_accessor :_end

    # The epoch timestamp of when the correction was modified at
    attr_accessor :modified_at

    attr_accessor :modifier

    # Recurrence rules as defined in the iCalendar RFC 5545.
    attr_accessor :rrule

    # ID of the SLO that this correction will be applied to.
    attr_accessor :slo_id

    # Starting time of the correction in epoch seconds.
    attr_accessor :start

    # The timezone to display in the UI for the correction times (defaults to \"UTC\").
    attr_accessor :timezone

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'category' => :'category',
        :'created_at' => :'created_at',
        :'creator' => :'creator',
        :'description' => :'description',
        :'duration' => :'duration',
        :'_end' => :'end',
        :'modified_at' => :'modified_at',
        :'modifier' => :'modifier',
        :'rrule' => :'rrule',
        :'slo_id' => :'slo_id',
        :'start' => :'start',
        :'timezone' => :'timezone'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'category' => :'SLOCorrectionCategory',
        :'created_at' => :'Integer',
        :'creator' => :'Creator',
        :'description' => :'String',
        :'duration' => :'Integer',
        :'_end' => :'Integer',
        :'modified_at' => :'Integer',
        :'modifier' => :'SLOCorrectionResponseAttributesModifier',
        :'rrule' => :'String',
        :'slo_id' => :'String',
        :'start' => :'Integer',
        :'timezone' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'duration',
        :'modifier',
        :'rrule',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SLOCorrectionResponseAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SLOCorrectionResponseAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'creator')
        self.creator = attributes[:'creator']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'_end')
        self._end = attributes[:'_end']
      end

      if attributes.key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      end

      if attributes.key?(:'modifier')
        self.modifier = attributes[:'modifier']
      end

      if attributes.key?(:'rrule')
        self.rrule = attributes[:'rrule']
      end

      if attributes.key?(:'slo_id')
        self.slo_id = attributes[:'slo_id']
      end

      if attributes.key?(:'start')
        self.start = attributes[:'start']
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          category == o.category &&
          created_at == o.created_at &&
          creator == o.creator &&
          description == o.description &&
          duration == o.duration &&
          _end == o._end &&
          modified_at == o.modified_at &&
          modifier == o.modifier &&
          rrule == o.rrule &&
          slo_id == o.slo_id &&
          start == o.start &&
          timezone == o.timezone
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [category, created_at, creator, description, duration, _end, modified_at, modifier, rrule, slo_id, start, timezone].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when :Array
        # generic array, return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = DatadogAPIClient::V1.const_get(type)
        res = klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
        if res.instance_of? DatadogAPIClient::V1::UnparsedObject
          self._unparsed = true
        end
        res
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
