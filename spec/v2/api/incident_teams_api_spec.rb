=begin
#Datadog API V2 Collection

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

# Unit tests for DatadogAPIClient::V2::IncidentTeamsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'IncidentTeamsApi' do
  before do
    # run before each test
    @api_instance = DatadogAPIClient::V2::IncidentTeamsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IncidentTeamsApi' do
    it 'should create an instance of IncidentTeamsApi' do
      expect(@api_instance).to be_instance_of(DatadogAPIClient::V2::IncidentTeamsApi)
    end
  end

  # unit tests for create_incident_team
  # Create a new incident team
  # Creates a new incident team.
  # @param body Incident Team Payload.
  # @param [Hash] opts the optional parameters
  # @return [IncidentTeamResponse]
  describe 'create_incident_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_incident_team
  # Delete an existing incident team
  # Deletes an existing incident team.
  # @param team_id The ID of the incident team.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_incident_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_incident_team
  # Get details of an incident team
  # Get details of an incident team. If the &#x60;include[users]&#x60; query parameter is provided, the included attribute will contain the users related to these incident teams.
  # @param team_id The ID of the incident team.
  # @param [Hash] opts the optional parameters
  # @option opts [IncidentRelatedObject] :include Specifies which types of related objects should be included in the response.
  # @return [IncidentTeamResponse]
  describe 'get_incident_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_incident_teams
  # Get a list of all incident teams
  # Get all incident teams for the requesting user&#39;s organization. If the &#x60;include[users]&#x60; query parameter is provided, the included attribute will contain the users related to these incident teams.
  # @param [Hash] opts the optional parameters
  # @option opts [IncidentRelatedObject] :include Specifies which types of related objects should be included in the response.
  # @option opts [Integer] :page_size Size for a given page.
  # @option opts [Integer] :page_offset Specific offset to use as the beginning of the returned page.
  # @option opts [String] :filter A search query that filters teams by name.
  # @return [IncidentTeamsResponse]
  describe 'list_incident_teams test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_incident_team
  # Update an existing incident team
  # Updates an existing incident team. Only provide the attributes which should be updated as this request is a partial update.
  # @param team_id The ID of the incident team.
  # @param body Incident Team Payload.
  # @param [Hash] opts the optional parameters
  # @return [IncidentTeamResponse]
  describe 'update_incident_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
