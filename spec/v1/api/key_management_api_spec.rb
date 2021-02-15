=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'spec_helper'
require 'json'

# Unit tests for DatadogAPIClient::V1::KeyManagementApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'KeyManagementApi' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V1::KeyManagementApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of KeyManagementApi' do
    it 'should create an instance of KeyManagementApi' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V1::KeyManagementApi)
    end
  end

  # unit tests for create_api_key
  # Create an API key
  # Creates an API key with a given name.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ApiKeyResponse]
  describe 'create_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_application_key
  # Create an application key
  # Create an application key with a given name.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ApplicationKeyResponse]
  describe 'create_application_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_api_key
  # Delete an API key
  # Delete a given API key.
  # @param key The specific API key you are working with.
  # @param [Hash] opts the optional parameters
  # @return [ApiKeyResponse]
  describe 'delete_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_application_key
  # Delete an application key
  # Delete a given application key.
  # @param key The specific APP key you are working with.
  # @param [Hash] opts the optional parameters
  # @return [ApplicationKeyResponse]
  describe 'delete_application_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_api_key
  # Get API key
  # Get a given API key.
  # @param key The specific API key you are working with.
  # @param [Hash] opts the optional parameters
  # @return [ApiKeyResponse]
  describe 'get_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_application_key
  # Get an application key
  # Get a given application key.
  # @param key The specific APP key you are working with.
  # @param [Hash] opts the optional parameters
  # @return [ApplicationKeyResponse]
  describe 'get_application_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_api_keys
  # Get all API keys
  # Get all API keys available for your account.
  # @param [Hash] opts the optional parameters
  # @return [ApiKeyListResponse]
  describe 'list_api_keys test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_application_keys
  # Get all application keys
  # Get all application keys available for your Datadog account.
  # @param [Hash] opts the optional parameters
  # @return [ApplicationKeyListResponse]
  describe 'list_application_keys test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_api_key
  # Edit an API key
  # Edit an API key name.
  # @param key The specific API key you are working with.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ApiKeyResponse]
  describe 'update_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_application_key
  # Edit an application key
  # Edit an application key name.
  # @param key The specific APP key you are working with.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ApplicationKeyResponse]
  describe 'update_application_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
