@endpoint(team-links) @endpoint(team-links-v2)
Feature: Team Links
  Manage a team's links.

  Background:
    Given a valid "apiKeyAuth" key in the system
    And a valid "appKeyAuth" key in the system
    And an instance of "TeamLinks" API

  @team:DataDog/core-app
  Scenario: Create a team link returns "API error response." response
    Given new "CreateTeamLink" request
    And there is a valid "dd_team" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    And body with value {"data": {"attributes": {"label": "", "url": "https://example.com", "position": 0}, "type": "team_links"}}
    When the request is sent
    Then the response status is 422 API error response.

  @team:DataDog/core-app
  Scenario: Create a team link returns "OK" response
    Given new "CreateTeamLink" request
    And there is a valid "dd_team" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    And body with value {"data": {"attributes": {"label": "Link label", "url": "https://example.com", "position": 0}, "type": "team_links"}}
    When the request is sent
    Then the response status is 200 OK

  @team:DataDog/core-app
  Scenario: Get a team link returns "API error response." response
    Given new "GetTeamLink" request
    And there is a valid "dd_team" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    And request contains "link_id" parameter with value "REPLACE.ME"
    When the request is sent
    Then the response status is 404 API error response.

  @team:DataDog/core-app
  Scenario: Get a team link returns "OK" response
    Given new "GetTeamLink" request
    And there is a valid "dd_team" in the system
    And there is a valid "team_link" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    And request contains "link_id" parameter from "team_link.data.id"
    When the request is sent
    Then the response status is 200 OK

  @team:DataDog/core-app
  Scenario: Get links for a team returns "API error response." response
    Given new "GetTeamLinks" request
    And request contains "team_id" parameter with value "REPLACE.ME"
    When the request is sent
    Then the response status is 404 API error response.

  @team:DataDog/core-app
  Scenario: Get links for a team returns "OK" response
    Given new "GetTeamLinks" request
    And there is a valid "dd_team" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    When the request is sent
    Then the response status is 200 OK

  @team:DataDog/core-app
  Scenario: Remove a team link returns "API error response." response
    Given new "RemoveTeamLink" request
    And there is a valid "dd_team" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    And request contains "link_id" parameter with value "REPLACE.ME"
    When the request is sent
    Then the response status is 404 API error response.

  @team:DataDog/core-app
  Scenario: Remove a team link returns "No Content" response
    Given new "RemoveTeamLink" request
    And there is a valid "dd_team" in the system
    And there is a valid "team_link" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    And request contains "link_id" parameter from "team_link.data.id"
    When the request is sent
    Then the response status is 204 No Content

  @team:DataDog/core-app
  Scenario: Update a team link returns "API error response." response
    Given new "UpdateTeamLink" request
    And there is a valid "dd_team" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    And request contains "link_id" parameter with value "REPLACE.ME"
    And body with value {"data": {"attributes": {"label": "Link label", "url": "https://example.com"}, "type": "team_links"}}
    When the request is sent
    Then the response status is 404 API error response.

  @team:DataDog/core-app
  Scenario: Update a team link returns "OK" response
    Given new "UpdateTeamLink" request
    And there is a valid "dd_team" in the system
    And there is a valid "team_link" in the system
    And request contains "team_id" parameter from "dd_team.data.id"
    And request contains "link_id" parameter from "team_link.data.id"
    And body with value {"data": {"attributes": {"label": "New Label", "url": "https://example.com"}, "type": "team_links"}}
    When the request is sent
    Then the response status is 200 OK
