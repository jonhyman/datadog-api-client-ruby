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
  # Query for matching rule.
  class SecurityMonitoringStandardRuleQuery
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The aggregation type.
    attr_accessor :aggregation

    # Field for which the cardinality is measured. Sent as an array.
    attr_accessor :distinct_fields

    # Fields to group by.
    attr_accessor :group_by_fields

    # (Deprecated) The target field to aggregate over when using the sum or max
    # aggregations. `metrics` field should be used instead.
    attr_accessor :metric

    # Group of target fields to aggregate over when using the sum, max, geo data, or new value aggregations. The sum, max, and geo data aggregations only accept one value in this list, whereas the new value aggregation accepts up to five values.
    attr_accessor :metrics

    # Name of the query.
    attr_accessor :name

    # Query to run on logs.
    attr_reader :query

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'aggregation' => :'aggregation',
        :'distinct_fields' => :'distinctFields',
        :'group_by_fields' => :'groupByFields',
        :'metric' => :'metric',
        :'metrics' => :'metrics',
        :'name' => :'name',
        :'query' => :'query'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'aggregation' => :'SecurityMonitoringRuleQueryAggregation',
        :'distinct_fields' => :'Array<String>',
        :'group_by_fields' => :'Array<String>',
        :'metric' => :'String',
        :'metrics' => :'Array<String>',
        :'name' => :'String',
        :'query' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SecurityMonitoringStandardRuleQuery` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::SecurityMonitoringStandardRuleQuery`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'aggregation')
        self.aggregation = attributes[:'aggregation']
      end

      if attributes.key?(:'distinct_fields')
        if (value = attributes[:'distinct_fields']).is_a?(Array)
          self.distinct_fields = value
        end
      end

      if attributes.key?(:'group_by_fields')
        if (value = attributes[:'group_by_fields']).is_a?(Array)
          self.group_by_fields = value
        end
      end

      if attributes.key?(:'metric')
        self.metric = attributes[:'metric']
      end

      if attributes.key?(:'metrics')
        if (value = attributes[:'metrics']).is_a?(Array)
          self.metrics = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @query.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param query [Object] Object to be assigned
    # @!visibility private
    def query=(query)
      if query.nil?
        fail ArgumentError, 'invalid value for "query", query cannot be nil.'
      end
      @query = query
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aggregation == o.aggregation &&
          distinct_fields == o.distinct_fields &&
          group_by_fields == o.group_by_fields &&
          metric == o.metric &&
          metrics == o.metrics &&
          name == o.name &&
          query == o.query
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [aggregation, distinct_fields, group_by_fields, metric, metrics, name, query].hash
    end
  end
end
