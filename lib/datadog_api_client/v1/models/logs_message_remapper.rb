=begin
#Datadog API V1 Collection

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

module DatadogAPIClient::V1
  # The message is a key attribute in Datadog.
  # It is displayed in the message column of the Log Explorer and you can do full string search on it.
  # Use this Processor to define one or more attributes as the official log message.
  # 
  # **Note:** If multiple log message remapper processors can be applied to a given log,
  # only the first one (according to the pipeline order) is taken into account.
  class LogsMessageRemapper
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Whether or not the processor is enabled.
    attr_accessor :is_enabled

    # Name of the processor.
    attr_accessor :name

    # Array of source attributes.
    attr_reader :sources

    # Type of logs message remapper.
    attr_reader :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'is_enabled' => :'is_enabled',
        :'name' => :'name',
        :'sources' => :'sources',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'is_enabled' => :'Boolean',
        :'name' => :'String',
        :'sources' => :'Array<String>',
        :'type' => :'LogsMessageRemapperType'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::LogsMessageRemapper` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::LogsMessageRemapper`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'is_enabled')
        self.is_enabled = attributes[:'is_enabled']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'sources')
        if (value = attributes[:'sources']).is_a?(Array)
          self.sources = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @sources.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param sources [Object] Object to be assigned
    # @!visibility private
    def sources=(sources)
      if sources.nil?
        fail ArgumentError, 'invalid value for "sources", sources cannot be nil.'
      end
      @sources = sources
    end

    # Custom attribute writer method with validation
    # @param type [Object] Object to be assigned
    # @!visibility private
    def type=(type)
      if type.nil?
        fail ArgumentError, 'invalid value for "type", type cannot be nil.'
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_enabled == o.is_enabled &&
          name == o.name &&
          sources == o.sources &&
          type == o.type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [is_enabled, name, sources, type].hash
    end
  end
end
