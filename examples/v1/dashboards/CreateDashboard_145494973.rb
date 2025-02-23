# Create a new dashboard with apm resource stats widget

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Create_a_new_dashboard_with_apm_resource_stats_widget",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::TableWidgetDefinition.new({
        title: "",
        title_size: "16",
        title_align: DatadogAPIClient::V1::WidgetTextAlign::LEFT,
        type: DatadogAPIClient::V1::TableWidgetDefinitionType::QUERY_TABLE,
        requests: [
          DatadogAPIClient::V1::TableWidgetRequest.new({
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::SCALAR,
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionApmResourceStatsQueryDefinition.new({
                primary_tag_value: "edge-eu1.prod.dog",
                stat: DatadogAPIClient::V1::FormulaAndFunctionApmResourceStatName::HITS,
                name: "query1",
                service: "cassandra",
                data_source: DatadogAPIClient::V1::FormulaAndFunctionApmResourceStatsDataSource::APM_RESOURCE_STATS,
                env: "ci",
                primary_tag_name: "datacenter",
                operation_name: "cassandra.query",
                group_by: [
                  "resource_name",
                ],
              }),
            ],
          }),
        ],
      }),
      layout: DatadogAPIClient::V1::WidgetLayout.new({
        x: 0,
        y: 0,
        width: 4,
        height: 4,
      }),
    }),
  ],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
})
p api_instance.create_dashboard(body)
