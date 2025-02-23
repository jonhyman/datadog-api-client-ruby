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
  # The GCS archive's integration destination.
  class LogsArchiveIntegrationGCS
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # A client email.
    attr_reader :client_email

    # A project ID.
    attr_reader :project_id

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'client_email' => :'client_email',
        :'project_id' => :'project_id'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'client_email' => :'String',
        :'project_id' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::LogsArchiveIntegrationGCS` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::LogsArchiveIntegrationGCS`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'client_email')
        self.client_email = attributes[:'client_email']
      end

      if attributes.key?(:'project_id')
        self.project_id = attributes[:'project_id']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @client_email.nil?
      return false if @project_id.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param client_email [Object] Object to be assigned
    # @!visibility private
    def client_email=(client_email)
      if client_email.nil?
        fail ArgumentError, 'invalid value for "client_email", client_email cannot be nil.'
      end
      @client_email = client_email
    end

    # Custom attribute writer method with validation
    # @param project_id [Object] Object to be assigned
    # @!visibility private
    def project_id=(project_id)
      if project_id.nil?
        fail ArgumentError, 'invalid value for "project_id", project_id cannot be nil.'
      end
      @project_id = project_id
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          client_email == o.client_email &&
          project_id == o.project_id
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [client_email, project_id].hash
    end
  end
end
