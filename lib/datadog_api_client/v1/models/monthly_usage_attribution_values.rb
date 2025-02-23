=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # Fields in Usage Summary by tag(s).
  class MonthlyUsageAttributionValues
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The percentage of synthetic API test usage by tag(s).
    attr_accessor :api_percentage

    # The synthetic API test usage by tag(s).
    attr_accessor :api_usage

    # The percentage of APM ECS Fargate task usage by tag(s).
    attr_accessor :apm_fargate_percentage

    # The APM ECS Fargate task usage by tag(s).
    attr_accessor :apm_fargate_usage

    # The percentage of APM host usage by tag(s).
    attr_accessor :apm_host_percentage

    # The APM host usage by tag(s).
    attr_accessor :apm_host_usage

    # The percentage of Application Security Monitoring ECS Fargate task usage by tag(s).
    attr_accessor :appsec_fargate_percentage

    # The Application Security Monitoring ECS Fargate task usage by tag(s).
    attr_accessor :appsec_fargate_usage

    # The percentage of Application Security Monitoring host usage by tag(s).
    attr_accessor :appsec_percentage

    # The Application Security Monitoring host usage by tag(s).
    attr_accessor :appsec_usage

    # The percentage of synthetic browser test usage by tag(s).
    attr_accessor :browser_percentage

    # The synthetic browser test usage by tag(s).
    attr_accessor :browser_usage

    # The percentage of container usage without the Datadog Agent by tag(s).
    attr_accessor :container_excl_agent_percentage

    # The container usage without the Datadog Agent by tag(s).
    attr_accessor :container_excl_agent_usage

    # The percentage of container usage by tag(s).
    attr_accessor :container_percentage

    # The container usage by tag(s).
    attr_accessor :container_usage

    # The percentage of CSPM container usage by tag(s).
    attr_accessor :cspm_containers_percentage

    # The CSPM container usage by tag(s).
    attr_accessor :cspm_containers_usage

    # The percentage of CSPM host usage by by tag(s).
    attr_accessor :cspm_hosts_percentage

    # The CSPM host usage by tag(s).
    attr_accessor :cspm_hosts_usage

    # The percentage of ingested custom metrics usage by tag(s).
    attr_accessor :custom_ingested_timeseries_percentage

    # The ingested custom metrics usage by tag(s).
    attr_accessor :custom_ingested_timeseries_usage

    # The percentage of indexed custom metrics usage by tag(s).
    attr_accessor :custom_timeseries_percentage

    # The indexed custom metrics usage by tag(s).
    attr_accessor :custom_timeseries_usage

    # The percentage of Cloud Workload Security container usage by tag(s).
    attr_accessor :cws_containers_percentage

    # The Cloud Workload Security container usage by tag(s).
    attr_accessor :cws_containers_usage

    # The percentage of Cloud Workload Security host usage by tag(s).
    attr_accessor :cws_hosts_percentage

    # The Cloud Workload Security host usage by tag(s).
    attr_accessor :cws_hosts_usage

    # The percentage of Database Monitoring host usage by tag(s).
    attr_accessor :dbm_hosts_percentage

    # The Database Monitoring host usage by tag(s).
    attr_accessor :dbm_hosts_usage

    # The percentage of Database Monitoring queries usage by tag(s).
    attr_accessor :dbm_queries_percentage

    # The Database Monitoring queries usage by tag(s).
    attr_accessor :dbm_queries_usage

    # The percentage of estimated live indexed logs usage by tag(s).
    attr_accessor :estimated_indexed_logs_percentage

    # The estimated live indexed logs usage by tag(s).
    attr_accessor :estimated_indexed_logs_usage

    # The percentage of estimated indexed spans usage by tag(s).
    attr_accessor :estimated_indexed_spans_percentage

    # The estimated indexed spans usage by tag(s).
    attr_accessor :estimated_indexed_spans_usage

    # The percentage of estimated live ingested logs usage by tag(s).
    attr_accessor :estimated_ingested_logs_percentage

    # The estimated live ingested logs usage by tag(s).
    attr_accessor :estimated_ingested_logs_usage

    # The percentage of estimated ingested spans usage by tag(s).
    attr_accessor :estimated_ingested_spans_percentage

    # The estimated ingested spans usage by tag(s).
    attr_accessor :estimated_ingested_spans_usage

    # The percentage of estimated rum sessions usage by tag(s).
    attr_accessor :estimated_rum_sessions_percentage

    # The estimated rum sessions usage by tag(s).
    attr_accessor :estimated_rum_sessions_usage

    # The percentage of Fargate usage by tags.
    attr_accessor :fargate_percentage

    # The Fargate usage by tags.
    attr_accessor :fargate_usage

    # The percentage of Lambda function usage by tag(s).
    attr_accessor :functions_percentage

    # The Lambda function usage by tag(s).
    attr_accessor :functions_usage

    # The percentage of infrastructure host usage by tag(s).
    attr_accessor :infra_host_percentage

    # The infrastructure host usage by tag(s).
    attr_accessor :infra_host_usage

    # The percentage of Lambda invocation usage by tag(s).
    attr_accessor :invocations_percentage

    # The Lambda invocation usage by tag(s).
    attr_accessor :invocations_usage

    # The percentage of network host usage by tag(s).
    attr_accessor :npm_host_percentage

    # The network host usage by tag(s).
    attr_accessor :npm_host_usage

    # The percentage of profiled container usage by tag(s).
    attr_accessor :profiled_container_percentage

    # The profiled container usage by tag(s).
    attr_accessor :profiled_container_usage

    # The percentage of profiled Fargate task usage by tag(s).
    attr_accessor :profiled_fargate_percentage

    # The profiled Fargate task usage by tag(s).
    attr_accessor :profiled_fargate_usage

    # The percentage of profiled hosts usage by tag(s).
    attr_accessor :profiled_host_percentage

    # The profiled hosts usage by tag(s).
    attr_accessor :profiled_host_usage

    # The percentage of network device usage by tag(s).
    attr_accessor :snmp_percentage

    # The network device usage by tag(s).
    attr_accessor :snmp_usage

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'api_percentage' => :'api_percentage',
        :'api_usage' => :'api_usage',
        :'apm_fargate_percentage' => :'apm_fargate_percentage',
        :'apm_fargate_usage' => :'apm_fargate_usage',
        :'apm_host_percentage' => :'apm_host_percentage',
        :'apm_host_usage' => :'apm_host_usage',
        :'appsec_fargate_percentage' => :'appsec_fargate_percentage',
        :'appsec_fargate_usage' => :'appsec_fargate_usage',
        :'appsec_percentage' => :'appsec_percentage',
        :'appsec_usage' => :'appsec_usage',
        :'browser_percentage' => :'browser_percentage',
        :'browser_usage' => :'browser_usage',
        :'container_excl_agent_percentage' => :'container_excl_agent_percentage',
        :'container_excl_agent_usage' => :'container_excl_agent_usage',
        :'container_percentage' => :'container_percentage',
        :'container_usage' => :'container_usage',
        :'cspm_containers_percentage' => :'cspm_containers_percentage',
        :'cspm_containers_usage' => :'cspm_containers_usage',
        :'cspm_hosts_percentage' => :'cspm_hosts_percentage',
        :'cspm_hosts_usage' => :'cspm_hosts_usage',
        :'custom_ingested_timeseries_percentage' => :'custom_ingested_timeseries_percentage',
        :'custom_ingested_timeseries_usage' => :'custom_ingested_timeseries_usage',
        :'custom_timeseries_percentage' => :'custom_timeseries_percentage',
        :'custom_timeseries_usage' => :'custom_timeseries_usage',
        :'cws_containers_percentage' => :'cws_containers_percentage',
        :'cws_containers_usage' => :'cws_containers_usage',
        :'cws_hosts_percentage' => :'cws_hosts_percentage',
        :'cws_hosts_usage' => :'cws_hosts_usage',
        :'dbm_hosts_percentage' => :'dbm_hosts_percentage',
        :'dbm_hosts_usage' => :'dbm_hosts_usage',
        :'dbm_queries_percentage' => :'dbm_queries_percentage',
        :'dbm_queries_usage' => :'dbm_queries_usage',
        :'estimated_indexed_logs_percentage' => :'estimated_indexed_logs_percentage',
        :'estimated_indexed_logs_usage' => :'estimated_indexed_logs_usage',
        :'estimated_indexed_spans_percentage' => :'estimated_indexed_spans_percentage',
        :'estimated_indexed_spans_usage' => :'estimated_indexed_spans_usage',
        :'estimated_ingested_logs_percentage' => :'estimated_ingested_logs_percentage',
        :'estimated_ingested_logs_usage' => :'estimated_ingested_logs_usage',
        :'estimated_ingested_spans_percentage' => :'estimated_ingested_spans_percentage',
        :'estimated_ingested_spans_usage' => :'estimated_ingested_spans_usage',
        :'estimated_rum_sessions_percentage' => :'estimated_rum_sessions_percentage',
        :'estimated_rum_sessions_usage' => :'estimated_rum_sessions_usage',
        :'fargate_percentage' => :'fargate_percentage',
        :'fargate_usage' => :'fargate_usage',
        :'functions_percentage' => :'functions_percentage',
        :'functions_usage' => :'functions_usage',
        :'infra_host_percentage' => :'infra_host_percentage',
        :'infra_host_usage' => :'infra_host_usage',
        :'invocations_percentage' => :'invocations_percentage',
        :'invocations_usage' => :'invocations_usage',
        :'npm_host_percentage' => :'npm_host_percentage',
        :'npm_host_usage' => :'npm_host_usage',
        :'profiled_container_percentage' => :'profiled_container_percentage',
        :'profiled_container_usage' => :'profiled_container_usage',
        :'profiled_fargate_percentage' => :'profiled_fargate_percentage',
        :'profiled_fargate_usage' => :'profiled_fargate_usage',
        :'profiled_host_percentage' => :'profiled_host_percentage',
        :'profiled_host_usage' => :'profiled_host_usage',
        :'snmp_percentage' => :'snmp_percentage',
        :'snmp_usage' => :'snmp_usage'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'api_percentage' => :'Float',
        :'api_usage' => :'Float',
        :'apm_fargate_percentage' => :'Float',
        :'apm_fargate_usage' => :'Float',
        :'apm_host_percentage' => :'Float',
        :'apm_host_usage' => :'Float',
        :'appsec_fargate_percentage' => :'Float',
        :'appsec_fargate_usage' => :'Float',
        :'appsec_percentage' => :'Float',
        :'appsec_usage' => :'Float',
        :'browser_percentage' => :'Float',
        :'browser_usage' => :'Float',
        :'container_excl_agent_percentage' => :'Float',
        :'container_excl_agent_usage' => :'Float',
        :'container_percentage' => :'Float',
        :'container_usage' => :'Float',
        :'cspm_containers_percentage' => :'Float',
        :'cspm_containers_usage' => :'Float',
        :'cspm_hosts_percentage' => :'Float',
        :'cspm_hosts_usage' => :'Float',
        :'custom_ingested_timeseries_percentage' => :'Float',
        :'custom_ingested_timeseries_usage' => :'Float',
        :'custom_timeseries_percentage' => :'Float',
        :'custom_timeseries_usage' => :'Float',
        :'cws_containers_percentage' => :'Float',
        :'cws_containers_usage' => :'Float',
        :'cws_hosts_percentage' => :'Float',
        :'cws_hosts_usage' => :'Float',
        :'dbm_hosts_percentage' => :'Float',
        :'dbm_hosts_usage' => :'Float',
        :'dbm_queries_percentage' => :'Float',
        :'dbm_queries_usage' => :'Float',
        :'estimated_indexed_logs_percentage' => :'Float',
        :'estimated_indexed_logs_usage' => :'Float',
        :'estimated_indexed_spans_percentage' => :'Float',
        :'estimated_indexed_spans_usage' => :'Float',
        :'estimated_ingested_logs_percentage' => :'Float',
        :'estimated_ingested_logs_usage' => :'Float',
        :'estimated_ingested_spans_percentage' => :'Float',
        :'estimated_ingested_spans_usage' => :'Float',
        :'estimated_rum_sessions_percentage' => :'Float',
        :'estimated_rum_sessions_usage' => :'Float',
        :'fargate_percentage' => :'Float',
        :'fargate_usage' => :'Float',
        :'functions_percentage' => :'Float',
        :'functions_usage' => :'Float',
        :'infra_host_percentage' => :'Float',
        :'infra_host_usage' => :'Float',
        :'invocations_percentage' => :'Float',
        :'invocations_usage' => :'Float',
        :'npm_host_percentage' => :'Float',
        :'npm_host_usage' => :'Float',
        :'profiled_container_percentage' => :'Float',
        :'profiled_container_usage' => :'Float',
        :'profiled_fargate_percentage' => :'Float',
        :'profiled_fargate_usage' => :'Float',
        :'profiled_host_percentage' => :'Float',
        :'profiled_host_usage' => :'Float',
        :'snmp_percentage' => :'Float',
        :'snmp_usage' => :'Float'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::MonthlyUsageAttributionValues` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::MonthlyUsageAttributionValues`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'api_percentage')
        self.api_percentage = attributes[:'api_percentage']
      end

      if attributes.key?(:'api_usage')
        self.api_usage = attributes[:'api_usage']
      end

      if attributes.key?(:'apm_fargate_percentage')
        self.apm_fargate_percentage = attributes[:'apm_fargate_percentage']
      end

      if attributes.key?(:'apm_fargate_usage')
        self.apm_fargate_usage = attributes[:'apm_fargate_usage']
      end

      if attributes.key?(:'apm_host_percentage')
        self.apm_host_percentage = attributes[:'apm_host_percentage']
      end

      if attributes.key?(:'apm_host_usage')
        self.apm_host_usage = attributes[:'apm_host_usage']
      end

      if attributes.key?(:'appsec_fargate_percentage')
        self.appsec_fargate_percentage = attributes[:'appsec_fargate_percentage']
      end

      if attributes.key?(:'appsec_fargate_usage')
        self.appsec_fargate_usage = attributes[:'appsec_fargate_usage']
      end

      if attributes.key?(:'appsec_percentage')
        self.appsec_percentage = attributes[:'appsec_percentage']
      end

      if attributes.key?(:'appsec_usage')
        self.appsec_usage = attributes[:'appsec_usage']
      end

      if attributes.key?(:'browser_percentage')
        self.browser_percentage = attributes[:'browser_percentage']
      end

      if attributes.key?(:'browser_usage')
        self.browser_usage = attributes[:'browser_usage']
      end

      if attributes.key?(:'container_excl_agent_percentage')
        self.container_excl_agent_percentage = attributes[:'container_excl_agent_percentage']
      end

      if attributes.key?(:'container_excl_agent_usage')
        self.container_excl_agent_usage = attributes[:'container_excl_agent_usage']
      end

      if attributes.key?(:'container_percentage')
        self.container_percentage = attributes[:'container_percentage']
      end

      if attributes.key?(:'container_usage')
        self.container_usage = attributes[:'container_usage']
      end

      if attributes.key?(:'cspm_containers_percentage')
        self.cspm_containers_percentage = attributes[:'cspm_containers_percentage']
      end

      if attributes.key?(:'cspm_containers_usage')
        self.cspm_containers_usage = attributes[:'cspm_containers_usage']
      end

      if attributes.key?(:'cspm_hosts_percentage')
        self.cspm_hosts_percentage = attributes[:'cspm_hosts_percentage']
      end

      if attributes.key?(:'cspm_hosts_usage')
        self.cspm_hosts_usage = attributes[:'cspm_hosts_usage']
      end

      if attributes.key?(:'custom_ingested_timeseries_percentage')
        self.custom_ingested_timeseries_percentage = attributes[:'custom_ingested_timeseries_percentage']
      end

      if attributes.key?(:'custom_ingested_timeseries_usage')
        self.custom_ingested_timeseries_usage = attributes[:'custom_ingested_timeseries_usage']
      end

      if attributes.key?(:'custom_timeseries_percentage')
        self.custom_timeseries_percentage = attributes[:'custom_timeseries_percentage']
      end

      if attributes.key?(:'custom_timeseries_usage')
        self.custom_timeseries_usage = attributes[:'custom_timeseries_usage']
      end

      if attributes.key?(:'cws_containers_percentage')
        self.cws_containers_percentage = attributes[:'cws_containers_percentage']
      end

      if attributes.key?(:'cws_containers_usage')
        self.cws_containers_usage = attributes[:'cws_containers_usage']
      end

      if attributes.key?(:'cws_hosts_percentage')
        self.cws_hosts_percentage = attributes[:'cws_hosts_percentage']
      end

      if attributes.key?(:'cws_hosts_usage')
        self.cws_hosts_usage = attributes[:'cws_hosts_usage']
      end

      if attributes.key?(:'dbm_hosts_percentage')
        self.dbm_hosts_percentage = attributes[:'dbm_hosts_percentage']
      end

      if attributes.key?(:'dbm_hosts_usage')
        self.dbm_hosts_usage = attributes[:'dbm_hosts_usage']
      end

      if attributes.key?(:'dbm_queries_percentage')
        self.dbm_queries_percentage = attributes[:'dbm_queries_percentage']
      end

      if attributes.key?(:'dbm_queries_usage')
        self.dbm_queries_usage = attributes[:'dbm_queries_usage']
      end

      if attributes.key?(:'estimated_indexed_logs_percentage')
        self.estimated_indexed_logs_percentage = attributes[:'estimated_indexed_logs_percentage']
      end

      if attributes.key?(:'estimated_indexed_logs_usage')
        self.estimated_indexed_logs_usage = attributes[:'estimated_indexed_logs_usage']
      end

      if attributes.key?(:'estimated_indexed_spans_percentage')
        self.estimated_indexed_spans_percentage = attributes[:'estimated_indexed_spans_percentage']
      end

      if attributes.key?(:'estimated_indexed_spans_usage')
        self.estimated_indexed_spans_usage = attributes[:'estimated_indexed_spans_usage']
      end

      if attributes.key?(:'estimated_ingested_logs_percentage')
        self.estimated_ingested_logs_percentage = attributes[:'estimated_ingested_logs_percentage']
      end

      if attributes.key?(:'estimated_ingested_logs_usage')
        self.estimated_ingested_logs_usage = attributes[:'estimated_ingested_logs_usage']
      end

      if attributes.key?(:'estimated_ingested_spans_percentage')
        self.estimated_ingested_spans_percentage = attributes[:'estimated_ingested_spans_percentage']
      end

      if attributes.key?(:'estimated_ingested_spans_usage')
        self.estimated_ingested_spans_usage = attributes[:'estimated_ingested_spans_usage']
      end

      if attributes.key?(:'estimated_rum_sessions_percentage')
        self.estimated_rum_sessions_percentage = attributes[:'estimated_rum_sessions_percentage']
      end

      if attributes.key?(:'estimated_rum_sessions_usage')
        self.estimated_rum_sessions_usage = attributes[:'estimated_rum_sessions_usage']
      end

      if attributes.key?(:'fargate_percentage')
        self.fargate_percentage = attributes[:'fargate_percentage']
      end

      if attributes.key?(:'fargate_usage')
        self.fargate_usage = attributes[:'fargate_usage']
      end

      if attributes.key?(:'functions_percentage')
        self.functions_percentage = attributes[:'functions_percentage']
      end

      if attributes.key?(:'functions_usage')
        self.functions_usage = attributes[:'functions_usage']
      end

      if attributes.key?(:'infra_host_percentage')
        self.infra_host_percentage = attributes[:'infra_host_percentage']
      end

      if attributes.key?(:'infra_host_usage')
        self.infra_host_usage = attributes[:'infra_host_usage']
      end

      if attributes.key?(:'invocations_percentage')
        self.invocations_percentage = attributes[:'invocations_percentage']
      end

      if attributes.key?(:'invocations_usage')
        self.invocations_usage = attributes[:'invocations_usage']
      end

      if attributes.key?(:'npm_host_percentage')
        self.npm_host_percentage = attributes[:'npm_host_percentage']
      end

      if attributes.key?(:'npm_host_usage')
        self.npm_host_usage = attributes[:'npm_host_usage']
      end

      if attributes.key?(:'profiled_container_percentage')
        self.profiled_container_percentage = attributes[:'profiled_container_percentage']
      end

      if attributes.key?(:'profiled_container_usage')
        self.profiled_container_usage = attributes[:'profiled_container_usage']
      end

      if attributes.key?(:'profiled_fargate_percentage')
        self.profiled_fargate_percentage = attributes[:'profiled_fargate_percentage']
      end

      if attributes.key?(:'profiled_fargate_usage')
        self.profiled_fargate_usage = attributes[:'profiled_fargate_usage']
      end

      if attributes.key?(:'profiled_host_percentage')
        self.profiled_host_percentage = attributes[:'profiled_host_percentage']
      end

      if attributes.key?(:'profiled_host_usage')
        self.profiled_host_usage = attributes[:'profiled_host_usage']
      end

      if attributes.key?(:'snmp_percentage')
        self.snmp_percentage = attributes[:'snmp_percentage']
      end

      if attributes.key?(:'snmp_usage')
        self.snmp_usage = attributes[:'snmp_usage']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          api_percentage == o.api_percentage &&
          api_usage == o.api_usage &&
          apm_fargate_percentage == o.apm_fargate_percentage &&
          apm_fargate_usage == o.apm_fargate_usage &&
          apm_host_percentage == o.apm_host_percentage &&
          apm_host_usage == o.apm_host_usage &&
          appsec_fargate_percentage == o.appsec_fargate_percentage &&
          appsec_fargate_usage == o.appsec_fargate_usage &&
          appsec_percentage == o.appsec_percentage &&
          appsec_usage == o.appsec_usage &&
          browser_percentage == o.browser_percentage &&
          browser_usage == o.browser_usage &&
          container_excl_agent_percentage == o.container_excl_agent_percentage &&
          container_excl_agent_usage == o.container_excl_agent_usage &&
          container_percentage == o.container_percentage &&
          container_usage == o.container_usage &&
          cspm_containers_percentage == o.cspm_containers_percentage &&
          cspm_containers_usage == o.cspm_containers_usage &&
          cspm_hosts_percentage == o.cspm_hosts_percentage &&
          cspm_hosts_usage == o.cspm_hosts_usage &&
          custom_ingested_timeseries_percentage == o.custom_ingested_timeseries_percentage &&
          custom_ingested_timeseries_usage == o.custom_ingested_timeseries_usage &&
          custom_timeseries_percentage == o.custom_timeseries_percentage &&
          custom_timeseries_usage == o.custom_timeseries_usage &&
          cws_containers_percentage == o.cws_containers_percentage &&
          cws_containers_usage == o.cws_containers_usage &&
          cws_hosts_percentage == o.cws_hosts_percentage &&
          cws_hosts_usage == o.cws_hosts_usage &&
          dbm_hosts_percentage == o.dbm_hosts_percentage &&
          dbm_hosts_usage == o.dbm_hosts_usage &&
          dbm_queries_percentage == o.dbm_queries_percentage &&
          dbm_queries_usage == o.dbm_queries_usage &&
          estimated_indexed_logs_percentage == o.estimated_indexed_logs_percentage &&
          estimated_indexed_logs_usage == o.estimated_indexed_logs_usage &&
          estimated_indexed_spans_percentage == o.estimated_indexed_spans_percentage &&
          estimated_indexed_spans_usage == o.estimated_indexed_spans_usage &&
          estimated_ingested_logs_percentage == o.estimated_ingested_logs_percentage &&
          estimated_ingested_logs_usage == o.estimated_ingested_logs_usage &&
          estimated_ingested_spans_percentage == o.estimated_ingested_spans_percentage &&
          estimated_ingested_spans_usage == o.estimated_ingested_spans_usage &&
          estimated_rum_sessions_percentage == o.estimated_rum_sessions_percentage &&
          estimated_rum_sessions_usage == o.estimated_rum_sessions_usage &&
          fargate_percentage == o.fargate_percentage &&
          fargate_usage == o.fargate_usage &&
          functions_percentage == o.functions_percentage &&
          functions_usage == o.functions_usage &&
          infra_host_percentage == o.infra_host_percentage &&
          infra_host_usage == o.infra_host_usage &&
          invocations_percentage == o.invocations_percentage &&
          invocations_usage == o.invocations_usage &&
          npm_host_percentage == o.npm_host_percentage &&
          npm_host_usage == o.npm_host_usage &&
          profiled_container_percentage == o.profiled_container_percentage &&
          profiled_container_usage == o.profiled_container_usage &&
          profiled_fargate_percentage == o.profiled_fargate_percentage &&
          profiled_fargate_usage == o.profiled_fargate_usage &&
          profiled_host_percentage == o.profiled_host_percentage &&
          profiled_host_usage == o.profiled_host_usage &&
          snmp_percentage == o.snmp_percentage &&
          snmp_usage == o.snmp_usage
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [api_percentage, api_usage, apm_fargate_percentage, apm_fargate_usage, apm_host_percentage, apm_host_usage, appsec_fargate_percentage, appsec_fargate_usage, appsec_percentage, appsec_usage, browser_percentage, browser_usage, container_excl_agent_percentage, container_excl_agent_usage, container_percentage, container_usage, cspm_containers_percentage, cspm_containers_usage, cspm_hosts_percentage, cspm_hosts_usage, custom_ingested_timeseries_percentage, custom_ingested_timeseries_usage, custom_timeseries_percentage, custom_timeseries_usage, cws_containers_percentage, cws_containers_usage, cws_hosts_percentage, cws_hosts_usage, dbm_hosts_percentage, dbm_hosts_usage, dbm_queries_percentage, dbm_queries_usage, estimated_indexed_logs_percentage, estimated_indexed_logs_usage, estimated_indexed_spans_percentage, estimated_indexed_spans_usage, estimated_ingested_logs_percentage, estimated_ingested_logs_usage, estimated_ingested_spans_percentage, estimated_ingested_spans_usage, estimated_rum_sessions_percentage, estimated_rum_sessions_usage, fargate_percentage, fargate_usage, functions_percentage, functions_usage, infra_host_percentage, infra_host_usage, invocations_percentage, invocations_usage, npm_host_percentage, npm_host_usage, profiled_container_percentage, profiled_container_usage, profiled_fargate_percentage, profiled_fargate_usage, profiled_host_percentage, profiled_host_usage, snmp_percentage, snmp_usage].hash
    end
  end
end
