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
  # 
  class TimeseriesResponseSeries
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # List of tags that apply to a single response value.
    attr_accessor :group_tags

    # The index of the query in the "formulas" array (or "queries" array if no "formulas" was specified).
    attr_reader :query_index

    # Detailed information about the unit.
    # The first element describes the "primary unit" (for example, `bytes` in `bytes per second`).
    # The second element describes the "per unit" (for example, `second` in `bytes per second`).
    # If the second element is not present, the API returns null.
    attr_accessor :unit

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'group_tags' => :'group_tags',
        :'query_index' => :'query_index',
        :'unit' => :'unit'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'group_tags' => :'Array<String>',
        :'query_index' => :'Integer',
        :'unit' => :'Array<Unit>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::TimeseriesResponseSeries` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::TimeseriesResponseSeries`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'group_tags')
        if (value = attributes[:'group_tags']).is_a?(Array)
          self.group_tags = value
        end
      end

      if attributes.key?(:'query_index')
        self.query_index = attributes[:'query_index']
      end

      if attributes.key?(:'unit')
        if (value = attributes[:'unit']).is_a?(Array)
          self.unit = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@query_index.nil? && @query_index > 2147483647
      true
    end

    # Custom attribute writer method with validation
    # @param query_index [Object] Object to be assigned
    # @!visibility private
    def query_index=(query_index)
      if !query_index.nil? && query_index > 2147483647
        fail ArgumentError, 'invalid value for "query_index", must be smaller than or equal to 2147483647.'
      end
      @query_index = query_index
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          group_tags == o.group_tags &&
          query_index == o.query_index &&
          unit == o.unit
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [group_tags, query_index, unit].hash
    end
  end
end
