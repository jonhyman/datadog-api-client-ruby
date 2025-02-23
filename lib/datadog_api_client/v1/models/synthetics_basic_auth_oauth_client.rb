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
  # Object to handle `oauth client` authentication when performing the test.
  class SyntheticsBasicAuthOauthClient
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Access token URL to use when performing the authentication.
    attr_reader :access_token_url

    # Audience to use when performing the authentication.
    attr_accessor :audience

    # Client ID to use when performing the authentication.
    attr_reader :client_id

    # Client secret to use when performing the authentication.
    attr_reader :client_secret

    # Resource to use when performing the authentication.
    attr_accessor :resource

    # Scope to use when performing the authentication.
    attr_accessor :scope

    # Type of token to use when performing the authentication.
    attr_reader :token_api_authentication

    # The type of basic authentication to use when performing the test.
    attr_accessor :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'access_token_url' => :'accessTokenUrl',
        :'audience' => :'audience',
        :'client_id' => :'clientId',
        :'client_secret' => :'clientSecret',
        :'resource' => :'resource',
        :'scope' => :'scope',
        :'token_api_authentication' => :'tokenApiAuthentication',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'access_token_url' => :'String',
        :'audience' => :'String',
        :'client_id' => :'String',
        :'client_secret' => :'String',
        :'resource' => :'String',
        :'scope' => :'String',
        :'token_api_authentication' => :'SyntheticsBasicAuthOauthTokenApiAuthentication',
        :'type' => :'SyntheticsBasicAuthOauthClientType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsBasicAuthOauthClient` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::SyntheticsBasicAuthOauthClient`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'access_token_url')
        self.access_token_url = attributes[:'access_token_url']
      end

      if attributes.key?(:'audience')
        self.audience = attributes[:'audience']
      end

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.key?(:'client_secret')
        self.client_secret = attributes[:'client_secret']
      end

      if attributes.key?(:'resource')
        self.resource = attributes[:'resource']
      end

      if attributes.key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.key?(:'token_api_authentication')
        self.token_api_authentication = attributes[:'token_api_authentication']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @access_token_url.nil?
      return false if @client_id.nil?
      return false if @client_secret.nil?
      return false if @token_api_authentication.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param access_token_url [Object] Object to be assigned
    # @!visibility private
    def access_token_url=(access_token_url)
      if access_token_url.nil?
        fail ArgumentError, 'invalid value for "access_token_url", access_token_url cannot be nil.'
      end
      @access_token_url = access_token_url
    end

    # Custom attribute writer method with validation
    # @param client_id [Object] Object to be assigned
    # @!visibility private
    def client_id=(client_id)
      if client_id.nil?
        fail ArgumentError, 'invalid value for "client_id", client_id cannot be nil.'
      end
      @client_id = client_id
    end

    # Custom attribute writer method with validation
    # @param client_secret [Object] Object to be assigned
    # @!visibility private
    def client_secret=(client_secret)
      if client_secret.nil?
        fail ArgumentError, 'invalid value for "client_secret", client_secret cannot be nil.'
      end
      @client_secret = client_secret
    end

    # Custom attribute writer method with validation
    # @param token_api_authentication [Object] Object to be assigned
    # @!visibility private
    def token_api_authentication=(token_api_authentication)
      if token_api_authentication.nil?
        fail ArgumentError, 'invalid value for "token_api_authentication", token_api_authentication cannot be nil.'
      end
      @token_api_authentication = token_api_authentication
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          access_token_url == o.access_token_url &&
          audience == o.audience &&
          client_id == o.client_id &&
          client_secret == o.client_secret &&
          resource == o.resource &&
          scope == o.scope &&
          token_api_authentication == o.token_api_authentication &&
          type == o.type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [access_token_url, audience, client_id, client_secret, resource, scope, token_api_authentication, type].hash
    end
  end
end
