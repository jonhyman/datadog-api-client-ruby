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
  # The Opsgenie service attributes for an update request.
  class OpsgenieServiceUpdateAttributes
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The custom URL for a custom region.
    attr_accessor :custom_url

    # The name for the Opsgenie service.
    attr_accessor :name

    # The Opsgenie API key for your Opsgenie service.
    attr_accessor :opsgenie_api_key

    # The region for the Opsgenie service.
    attr_accessor :region

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'custom_url' => :'custom_url',
        :'name' => :'name',
        :'opsgenie_api_key' => :'opsgenie_api_key',
        :'region' => :'region'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'custom_url' => :'String',
        :'name' => :'String',
        :'opsgenie_api_key' => :'String',
        :'region' => :'OpsgenieServiceRegionType'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'custom_url',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::OpsgenieServiceUpdateAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::OpsgenieServiceUpdateAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'custom_url')
        self.custom_url = attributes[:'custom_url']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'opsgenie_api_key')
        self.opsgenie_api_key = attributes[:'opsgenie_api_key']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
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
          custom_url == o.custom_url &&
          name == o.name &&
          opsgenie_api_key == o.opsgenie_api_key &&
          region == o.region
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [custom_url, name, opsgenie_api_key, region].hash
    end
  end
end
