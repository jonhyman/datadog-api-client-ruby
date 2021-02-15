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

# Unit tests for DatadogAPIClient::V1::AzureIntegrationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AzureIntegrationApi' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V1::AzureIntegrationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AzureIntegrationApi' do
    it 'should create an instance of AzureIntegrationApi' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V1::AzureIntegrationApi)
    end
  end

  # unit tests for create_azure_integration
  # Create an Azure integration
  # Create a Datadog-Azure integration.  Using the &#x60;POST&#x60; method updates your integration configuration by adding your new configuration to the existing one in your Datadog organization.  Using the &#x60;PUT&#x60; method updates your integration configuration by replacing your current configuration with the new one sent to your Datadog organization.
  # @param body Create a Datadog-Azure integration for your Datadog account request body.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'create_azure_integration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_azure_integration
  # Delete an Azure integration
  # Delete a given Datadog-Azure integration from your Datadog account.
  # @param body Delete a given Datadog-Azure integration request body.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_azure_integration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_azure_integration
  # List all Azure integrations
  # List all Datadog-Azure integrations configured in your Datadog account.
  # @param [Hash] opts the optional parameters
  # @return [Array<AzureAccount>]
  describe 'list_azure_integration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_azure_host_filters
  # Update Azure integration host filters
  # Update the defined list of host filters for a given Datadog-Azure integration.
  # @param body Update a Datadog-Azure integration&#39;s host filters request body.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'update_azure_host_filters test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_azure_integration
  # Update an Azure integration
  # Update a Datadog-Azure integration. Requires an existing &#x60;tenant_name&#x60; and &#x60;client_id&#x60;. Any other fields supplied will overwrite existing values. To overwrite &#x60;tenant_name&#x60; or &#x60;client_id&#x60;, use &#x60;new_tenant_name&#x60; and &#x60;new_client_id&#x60;. To leave a field unchanged, do not supply that field in the payload.
  # @param body Update a Datadog-Azure integration request body.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'update_azure_integration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
