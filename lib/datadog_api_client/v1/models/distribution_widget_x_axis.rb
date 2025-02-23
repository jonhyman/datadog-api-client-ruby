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
  # X Axis controls for the distribution widget.
  class DistributionWidgetXAxis
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # True includes zero.
    attr_accessor :include_zero

    # Specifies maximum value to show on the x-axis. It takes a number, percentile (p90 === 90th percentile), or auto for default behavior.
    attr_accessor :max

    # Specifies minimum value to show on the x-axis. It takes a number, percentile (p90 === 90th percentile), or auto for default behavior.
    attr_accessor :min

    # Specifies the scale type. Possible values are `linear`.
    attr_accessor :scale

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'include_zero' => :'include_zero',
        :'max' => :'max',
        :'min' => :'min',
        :'scale' => :'scale'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'include_zero' => :'Boolean',
        :'max' => :'String',
        :'min' => :'String',
        :'scale' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::DistributionWidgetXAxis` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::DistributionWidgetXAxis`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'include_zero')
        self.include_zero = attributes[:'include_zero']
      end

      if attributes.key?(:'max')
        self.max = attributes[:'max']
      end

      if attributes.key?(:'min')
        self.min = attributes[:'min']
      end

      if attributes.key?(:'scale')
        self.scale = attributes[:'scale']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          include_zero == o.include_zero &&
          max == o.max &&
          min == o.min &&
          scale == o.scale
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [include_zero, max, min, scale].hash
    end
  end
end
