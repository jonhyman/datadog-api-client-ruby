@endpoint(team-memberships) @endpoint(team-memberships-v2)
Feature: Team Memberships
  Retrieve and update users' memberships to a team.

  Background:
    Given a valid "apiKeyAuth" key in the system
    And a valid "appKeyAuth" key in the system
    And an instance of "TeamMemberships" API

  @generated @skip @team:DataDog/core-app
  Scenario: Add a user to a team returns "API error response." response
    Given new "CreateTeamMembership" request
    And request contains "team_id" parameter from "REPLACE.ME"
    And body with value {"data": {"attributes": {"role": "admin"}, "relationships": {"user": {"data": {"id": "b8626d7e-cedd-11eb-abf5-da7ad0900001", "type": "users"}}}, "type": "team_memberships"}}
    When the request is sent
    Then the response status is 409 API error response.

  @skip @team:DataDog/core-app
  Scenario: Add a user to a team returns "Represents a user's association to a team" response
    Given new "CreateTeamMembership" request
    And there is a valid "dd_team" in the system
    And there is a valid "user" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    And body with value {"data": {"attributes": {"role": "admin"}, "relationships": {"user": {"data": {"id": "{{user.data.id}}", "type": "users"}}}, "type": "team_memberships"}}
    When the request is sent
    Then the response status is 200 Represents a user's association to a team

  @team:DataDog/core-app
  Scenario: Get team memberships returns "API error response." response
    Given new "GetTeamMemberships" request
    And request contains "team_id" parameter with value "REPLACE.ME"
    When the request is sent
    Then the response status is 404 API error response.

  @team:DataDog/core-app
  Scenario: Get team memberships returns "Represents a user's association to a team" response
    Given new "GetTeamMemberships" request
    And there is a valid "dd_team" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    When the request is sent
    Then the response status is 200 Represents a user's association to a team

  @team:DataDog/core-app
  Scenario: Remove a user from a team returns "API error response." response
    Given new "RemoveTeamMembership" request
    And there is a valid "dd_team" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    And request contains "user_id" parameter with value "REPLACE.ME"
    When the request is sent
    Then the response status is 404 API error response.

  @skip @team:DataDog/core-app
  Scenario: Remove a user from a team returns "No Content" response
    Given new "RemoveTeamMembership" request
    And there is a valid "dd_team" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    And request contains "user_id" parameter from "REPLACE.ME"
    When the request is sent
    Then the response status is 204 No Content

  @team:DataDog/core-app
  Scenario: Update a user's role on a team returns "API error response." response
    Given new "UpdateTeamMembership" request
    And there is a valid "dd_team" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    And request contains "user_id" parameter with value "REPLACE.ME"
    And body with value {"data": {"attributes": {"role": "admin"}, "type": "team_memberships"}}
    When the request is sent
    Then the response status is 404 API error response.

  @generated @skip @team:DataDog/core-app
  Scenario: Update a user's role on a team returns "Represents a user's association to a team" response
    Given new "UpdateTeamMembership" request
    And request contains "team_id" parameter from "REPLACE.ME"
    And request contains "user_id" parameter from "REPLACE.ME"
    And body with value {"data": {"attributes": {"role": "admin"}, "type": "team_memberships"}}
    When the request is sent
    Then the response status is 200 Represents a user's association to a team
