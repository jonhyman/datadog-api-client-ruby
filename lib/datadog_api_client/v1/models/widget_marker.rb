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
  # Markers allow you to add visual conditional formatting for your graphs.
  class WidgetMarker
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Combination of:
    #   - A severity error, warning, ok, or info
    #   - A line type: dashed, solid, or bold
    # In this case of a Distribution widget, this can be set to be `x_axis_percentile`.
    #
    attr_accessor :display_type

    # Label to display over the marker.
    attr_accessor :label

    # Timestamp for the widget.
    attr_accessor :time

    # Value to apply. Can be a single value y = 15 or a range of values 0 < y < 10.
    attr_reader :value

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'display_type' => :'display_type',
        :'label' => :'label',
        :'time' => :'time',
        :'value' => :'value'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'display_type' => :'String',
        :'label' => :'String',
        :'time' => :'String',
        :'value' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::WidgetMarker` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::WidgetMarker`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'display_type')
        self.display_type = attributes[:'display_type']
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.key?(:'time')
        self.time = attributes[:'time']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @value.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param value [Object] Object to be assigned
    # @!visibility private
    def value=(value)
      if value.nil?
        fail ArgumentError, 'invalid value for "value", value cannot be nil.'
      end
      @value = value
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          display_type == o.display_type &&
          label == o.label &&
          time == o.time &&
          value == o.value
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [display_type, label, time, value].hash
    end
  end
end
