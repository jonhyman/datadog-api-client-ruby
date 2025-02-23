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
  # AWS account ID and Lambda ARN.
  class AWSAccountAndLambdaRequest
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Your AWS Account ID without dashes.
    attr_reader :account_id

    # ARN of the Datadog Lambda created during the Datadog-Amazon Web services Log collection setup.
    attr_reader :lambda_arn

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'account_id' => :'account_id',
        :'lambda_arn' => :'lambda_arn'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'account_id' => :'String',
        :'lambda_arn' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::AWSAccountAndLambdaRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::AWSAccountAndLambdaRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'lambda_arn')
        self.lambda_arn = attributes[:'lambda_arn']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @account_id.nil?
      return false if @lambda_arn.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param account_id [Object] Object to be assigned
    # @!visibility private
    def account_id=(account_id)
      if account_id.nil?
        fail ArgumentError, 'invalid value for "account_id", account_id cannot be nil.'
      end
      @account_id = account_id
    end

    # Custom attribute writer method with validation
    # @param lambda_arn [Object] Object to be assigned
    # @!visibility private
    def lambda_arn=(lambda_arn)
      if lambda_arn.nil?
        fail ArgumentError, 'invalid value for "lambda_arn", lambda_arn cannot be nil.'
      end
      @lambda_arn = lambda_arn
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          lambda_arn == o.lambda_arn
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [account_id, lambda_arn].hash
    end
  end
end
