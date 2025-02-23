=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V2
  # Object describing how the scanned event will be replaced.
  class SensitiveDataScannerTextReplacement
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Required if type == 'partial_replacement_from_beginning'
    # or 'partial_replacement_from_end'. It must be > 0.
    attr_reader :number_of_chars

    # Required if type == 'replacement_string'.
    attr_accessor :replacement_string

    # Type of the replacement text. None means no replacement.
    # hash means the data will be stubbed. replacement_string means that
    # one can chose a text to replace the data. partial_replacement_from_beginning
    # allows a user to partially replace the data from the beginning, and
    # partial_replacement_from_end on the other hand, allows to replace data from
    # the end.
    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'number_of_chars' => :'number_of_chars',
        :'replacement_string' => :'replacement_string',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'number_of_chars' => :'Integer',
        :'replacement_string' => :'String',
        :'type' => :'SensitiveDataScannerTextReplacementType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SensitiveDataScannerTextReplacement` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::SensitiveDataScannerTextReplacement`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'number_of_chars')
        self.number_of_chars = attributes[:'number_of_chars']
      end

      if attributes.key?(:'replacement_string')
        self.replacement_string = attributes[:'replacement_string']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@number_of_chars.nil? && @number_of_chars < 0
      true
    end

    # Custom attribute writer method with validation
    # @param number_of_chars [Object] Object to be assigned
    # @!visibility private
    def number_of_chars=(number_of_chars)
      if !number_of_chars.nil? && number_of_chars < 0
        fail ArgumentError, 'invalid value for "number_of_chars", must be greater than or equal to 0.'
      end
      @number_of_chars = number_of_chars
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          number_of_chars == o.number_of_chars &&
          replacement_string == o.replacement_string &&
          type == o.type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [number_of_chars, replacement_string, type].hash
    end
  end
end
