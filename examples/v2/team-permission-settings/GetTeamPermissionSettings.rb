# Get permission settings for a team returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::TeamPermissionSettingsAPI.new

# there is a valid "dd_team" in the system
DD_TEAM_DATA_ID = ENV["DD_TEAM_DATA_ID"]
p api_instance.get_team_permission_settings(DD_TEAM_DATA_ID)
