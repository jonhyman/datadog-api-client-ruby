# Create a new timeseries widget with ci_pipelines data source

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::Dashboard.new({
  title: "Example-Create_a_new_timeseries_widget_with_ci_pipelines_data_source with ci_pipelines datasource",
  widgets: [
    DatadogAPIClient::V1::Widget.new({
      definition: DatadogAPIClient::V1::TimeseriesWidgetDefinition.new({
        title: "",
        show_legend: true,
        legend_layout: DatadogAPIClient::V1::TimeseriesWidgetLegendLayout::AUTO,
        legend_columns: [
          DatadogAPIClient::V1::TimeseriesWidgetLegendColumn::AVG,
          DatadogAPIClient::V1::TimeseriesWidgetLegendColumn::MIN,
          DatadogAPIClient::V1::TimeseriesWidgetLegendColumn::MAX,
          DatadogAPIClient::V1::TimeseriesWidgetLegendColumn::VALUE,
          DatadogAPIClient::V1::TimeseriesWidgetLegendColumn::SUM,
        ],
        time: DatadogAPIClient::V1::WidgetTime.new({}),
        type: DatadogAPIClient::V1::TimeseriesWidgetDefinitionType::TIMESERIES,
        requests: [
          DatadogAPIClient::V1::TimeseriesWidgetRequest.new({
            formulas: [
              DatadogAPIClient::V1::WidgetFormula.new({
                formula: "query1",
              }),
            ],
            queries: [
              DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinition.new({
                data_source: DatadogAPIClient::V1::FormulaAndFunctionEventsDataSource::CI_PIPELINES,
                name: "query1",
                search: DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionSearch.new({
                  query: "ci_level:job",
                }),
                indexes: [
                  "*",
                ],
                compute: DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionCompute.new({
                  aggregation: DatadogAPIClient::V1::FormulaAndFunctionEventAggregation::COUNT,
                  metric: "@ci.queue_time",
                }),
                group_by: [],
              }),
            ],
            response_format: DatadogAPIClient::V1::FormulaAndFunctionResponseFormat::TIMESERIES,
            style: DatadogAPIClient::V1::WidgetRequestStyle.new({
              palette: "dog_classic",
              line_type: DatadogAPIClient::V1::WidgetLineType::SOLID,
              line_width: DatadogAPIClient::V1::WidgetLineWidth::NORMAL,
            }),
            display_type: DatadogAPIClient::V1::WidgetDisplayType::LINE,
          }),
        ],
      }),
    }),
  ],
  layout_type: DatadogAPIClient::V1::DashboardLayoutType::ORDERED,
  reflow_type: DatadogAPIClient::V1::DashboardReflowType::AUTO,
})
p api_instance.create_dashboard(body)
