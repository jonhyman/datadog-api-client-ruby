@endpoint(team-permission-settings) @endpoint(team-permission-settings-v2)
Feature: Team Permission Settings
  Retrieve and manage permission settings for teams.

  Background:
    Given a valid "apiKeyAuth" key in the system
    And a valid "appKeyAuth" key in the system
    And an instance of "TeamPermissionSettings" API

  @team:DataDog/core-app
  Scenario: Get permission settings for a team returns "API error response." response
    Given new "GetTeamPermissionSettings" request
    And request contains "team_id" parameter with value "REPLACE.ME"
    When the request is sent
    Then the response status is 404 API error response.

  @team:DataDog/core-app
  Scenario: Get permission settings for a team returns "OK" response
    Given new "GetTeamPermissionSettings" request
    And there is a valid "dd_team" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    When the request is sent
    Then the response status is 200 OK

  @team:DataDog/core-app
  Scenario: Update permission setting for team returns "API error response." response
    Given new "UpdateTeamPermissionSetting" request
    And there is a valid "dd_team" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    And request contains "action" parameter with value "REPLACE.ME"
    And body with value {"data": {"attributes": {"value": "admins"}, "type": "team_permission_settings"}}
    When the request is sent
    Then the response status is 404 API error response.

  @team:DataDog/core-app
  Scenario: Update permission setting for team returns "OK" response
    Given new "UpdateTeamPermissionSetting" request
    And there is a valid "dd_team" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    And request contains "action" parameter with value "manage_membership"
    And body with value {"data": {"attributes": {"value": "admins"}, "type": "team_permission_settings"}}
    When the request is sent
    Then the response status is 200 OK
