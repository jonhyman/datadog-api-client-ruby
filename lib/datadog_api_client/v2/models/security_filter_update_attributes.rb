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
  # The security filters properties to be updated.
  class SecurityFilterUpdateAttributes
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Exclusion filters to exclude some logs from the security filter.
    attr_accessor :exclusion_filters

    # The filtered data type.
    attr_accessor :filtered_data_type

    # Whether the security filter is enabled.
    attr_accessor :is_enabled

    # The name of the security filter.
    attr_accessor :name

    # The query of the security filter.
    attr_accessor :query

    # The version of the security filter to update.
    attr_reader :version

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'exclusion_filters' => :'exclusion_filters',
        :'filtered_data_type' => :'filtered_data_type',
        :'is_enabled' => :'is_enabled',
        :'name' => :'name',
        :'query' => :'query',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'exclusion_filters' => :'Array<SecurityFilterExclusionFilter>',
        :'filtered_data_type' => :'SecurityFilterFilteredDataType',
        :'is_enabled' => :'Boolean',
        :'name' => :'String',
        :'query' => :'String',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SecurityFilterUpdateAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::SecurityFilterUpdateAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'exclusion_filters')
        if (value = attributes[:'exclusion_filters']).is_a?(Array)
          self.exclusion_filters = value
        end
      end

      if attributes.key?(:'filtered_data_type')
        self.filtered_data_type = attributes[:'filtered_data_type']
      end

      if attributes.key?(:'is_enabled')
        self.is_enabled = attributes[:'is_enabled']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@version.nil? && @version > 2147483647
      true
    end

    # Custom attribute writer method with validation
    # @param version [Object] Object to be assigned
    # @!visibility private
    def version=(version)
      if !version.nil? && version > 2147483647
        fail ArgumentError, 'invalid value for "version", must be smaller than or equal to 2147483647.'
      end
      @version = version
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          exclusion_filters == o.exclusion_filters &&
          filtered_data_type == o.filtered_data_type &&
          is_enabled == o.is_enabled &&
          name == o.name &&
          query == o.query &&
          version == o.version
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [exclusion_filters, filtered_data_type, is_enabled, name, query, version].hash
    end
  end
end
