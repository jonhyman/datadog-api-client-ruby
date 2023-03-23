@endpoint(team) @endpoint(team-v2) @endpoint(teams) @endpoint(teams-v2)
Feature: Teams
  View and manage teams within Datadog.

  Background:
    Given a valid "apiKeyAuth" key in the system
    And a valid "appKeyAuth" key in the system
    And an instance of "Teams" API

  @team:DataDog/core-app
  Scenario: Create a team returns "API error response." response
    Given new "CreateTeam" request
    And there is a valid "dd_team" in the system
    And body with value {"data": {"attributes": {"handle": "{{dd_team.data.attributes.handle}}", "name": "Example Team"}, "relationships": {"users": {"data": []}}, "type": "team"}}
    When the request is sent
    Then the response status is 409 API error response.

  @team:DataDog/core-app
  Scenario: Create a team returns "CREATED" response
    Given new "CreateTeam" request
    And body with value {"data": {"attributes": {"handle": "{{timestamp('now')}}", "name": "{{timestamp('now')}}"}, "relationships": {"users": {"data": []}}, "type": "team"}}
    When the request is sent
    Then the response status is 201 CREATED

  @team:DataDog/core-app
  Scenario: Get a team returns "API error response." response
    Given new "GetTeam" request
    And request contains "team_id" parameter with value "REPLACE.ME"
    When the request is sent
    Then the response status is 404 API error response.

  @team:DataDog/core-app
  Scenario: Get a team returns "OK" response
    Given new "GetTeam" request
    And there is a valid "dd_team" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    When the request is sent
    Then the response status is 200 OK

  @generated @skip @team:DataDog/core-app
  Scenario: Get all teams returns "OK" response
    Given new "GetAllTeams" request
    When the request is sent
    Then the response status is 200 OK

  @team:DataDog/core-app
  Scenario: Remove a team returns "API error response." response
    Given new "RemoveTeam" request
    And request contains "team_id" parameter with value "REPLACE.ME"
    When the request is sent
    Then the response status is 404 API error response.

  @team:DataDog/core-app
  Scenario: Remove a team returns "No Content" response
    Given new "RemoveTeam" request
    And there is a valid "dd_team" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    When the request is sent
    Then the response status is 204 No Content

  @generated @skip @team:DataDog/core-app
  Scenario: Update a team returns "API error response." response
    Given new "UpdateTeam" request
    And request contains "team_id" parameter from "REPLACE.ME"
    And body with value {"data": {"attributes": {"handle": "example-team", "name": "Example Team"}, "relationships": {"team_links": {"data": [{"id": "f9bb8444-af7f-11ec-ac2c-da7ad0900001", "type": "team_links"}]}}, "type": "team"}}
    When the request is sent
    Then the response status is 409 API error response.

  @team:DataDog/core-app
  Scenario: Update a team returns "OK" response
    Given new "UpdateTeam" request
    And there is a valid "dd_team" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    And body with value {"data": {"attributes": {"handle": "{{dd_team.data.attributes.handle}}", "name": "{{dd_team.data.attributes.name}} updated"}, "type": "team"}}
    When the request is sent
    Then the response status is 200 OK
