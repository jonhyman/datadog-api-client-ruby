# Update a user's role on a team returns "Represents a user's association to a team" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamMembershipsAPI.new

body = DatadogAPIClient::V2::UserTeamUpdateRequest.new({
  data: DatadogAPIClient::V2::UserTeamUpdate.new({
    attributes: DatadogAPIClient::V2::UserTeamAttributes.new({
      role: DatadogAPIClient::V2::UserTeamSerializerRole::ADMIN,
    }),
    type: DatadogAPIClient::V2::UserTeamType::TEAM_MEMBERSHIPS,
  }),
})
p api_instance.update_team_membership("team_id", "user_id", body)
