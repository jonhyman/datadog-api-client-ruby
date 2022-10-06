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
  # Logs that are sent over HTTP.
  class HTTPLogItem
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The integration name associated with your log: the technology from which the log originated.
    # When it matches an integration name, Datadog automatically installs the corresponding parsers and facets.
    # See [reserved attributes](https://docs.datadoghq.com/logs/log_configuration/attributes_naming_convention/#reserved-attributes).
    attr_accessor :ddsource

    # Tags associated with your logs.
    attr_accessor :ddtags

    # The name of the originating host of the log.
    attr_accessor :hostname

    # The message [reserved attribute](https://docs.datadoghq.com/logs/log_configuration/attributes_naming_convention/#reserved-attributes)
    # of your log. By default, Datadog ingests the value of the message attribute as the body of the log entry.
    # That value is then highlighted and displayed in the Logstream, where it is indexed for full text search.
    attr_accessor :message

    # The name of the application or service generating the log events.
    # It is used to switch from Logs to APM, so make sure you define the same value when you use both products.
    # See [reserved attributes](https://docs.datadoghq.com/logs/log_configuration/attributes_naming_convention/#reserved-attributes).
    attr_accessor :service

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'ddsource' => :'ddsource',
        :'ddtags' => :'ddtags',
        :'hostname' => :'hostname',
        :'message' => :'message',
        :'service' => :'service'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'ddsource' => :'String',
        :'ddtags' => :'String',
        :'hostname' => :'String',
        :'message' => :'String',
        :'service' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::HTTPLogItem` initialize method"
      end

      self.additional_properties = {}
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          self.additional_properties[k.to_sym] = v
        else
          h[k.to_sym] = v
        end
      }

      if attributes.key?(:'ddsource')
        self.ddsource = attributes[:'ddsource']
      end

      if attributes.key?(:'ddtags')
        self.ddtags = attributes[:'ddtags']
      end

      if attributes.key?(:'hostname')
        self.hostname = attributes[:'hostname']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'service')
        self.service = attributes[:'service']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @message.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param message [Object] Object to be assigned
    # @!visibility private
    def message=(message)
      if message.nil?
        fail ArgumentError, 'invalid value for "message", message cannot be nil.'
      end
      @message = message
    end

    # Returns the object in the form of hash, with additionalProperties support.
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
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
      self.additional_properties.each_pair do |attr, value|
        hash[attr] = value
      end
      hash
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ddsource == o.ddsource &&
          ddtags == o.ddtags &&
          hostname == o.hostname &&
          message == o.message &&
          service == o.service &&
          additional_properties == o.additional_properties
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [ddsource, ddtags, hostname, message, service, additional_properties].hash
    end
  end
end
