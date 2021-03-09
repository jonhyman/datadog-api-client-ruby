=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'cgi'

module DatadogAPIClient::V1
  class ServiceLevelObjectivesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check if SLOs can be safely deleted
    # Check if an SLO can be safely deleted. For example, assure an SLO can be deleted without disrupting a dashboard.
    # @param ids [String] A comma separated list of the IDs of the service level objectives objects.
    # @param [Hash] opts the optional parameters
    # @return [CheckCanDeleteSLOResponse]
    def check_can_delete_slo(ids, opts = {})
      data, _status_code, _headers = check_can_delete_slo_with_http_info(ids, opts)
      data
    end

    # Check if SLOs can be safely deleted
    # Check if an SLO can be safely deleted. For example, assure an SLO can be deleted without disrupting a dashboard.
    # @param ids [String] A comma separated list of the IDs of the service level objectives objects.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CheckCanDeleteSLOResponse, Integer, Hash)>] CheckCanDeleteSLOResponse data, response status code and response headers
    def check_can_delete_slo_with_http_info(ids, opts = {})

      if @api_client.config.unstable_operations.has_key?(:check_can_delete_slo)
        unstable_enabled = @api_client.config.unstable_operations[:check_can_delete_slo]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "check_can_delete_slo")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "check_can_delete_slo"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesApi.check_can_delete_slo ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling ServiceLevelObjectivesApi.check_can_delete_slo"
      end
      # resource path
      local_var_path = '/api/v1/slo/can_delete'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = ids

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CheckCanDeleteSLOResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"ServiceLevelObjectivesApi.check_can_delete_slo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesApi#check_can_delete_slo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an SLO object
    # Create a service level objective object.
    # @param body [ServiceLevelObjectiveRequest] Service level objective request object.
    # @param [Hash] opts the optional parameters
    # @return [SLOListResponse]
    def create_slo(body, opts = {})
      data, _status_code, _headers = create_slo_with_http_info(body, opts)
      data
    end

    # Create an SLO object
    # Create a service level objective object.
    # @param body [ServiceLevelObjectiveRequest] Service level objective request object.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SLOListResponse, Integer, Hash)>] SLOListResponse data, response status code and response headers
    def create_slo_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:create_slo)
        unstable_enabled = @api_client.config.unstable_operations[:create_slo]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "create_slo")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "create_slo"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesApi.create_slo ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceLevelObjectivesApi.create_slo"
      end
      # resource path
      local_var_path = '/api/v1/slo'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'SLOListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"ServiceLevelObjectivesApi.create_slo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesApi#create_slo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an SLO
    # Permanently delete the specified service level objective object.  If an SLO is used in a dashboard, the `DELETE /v1/slo/` endpoint returns a 409 conflict error because the SLO is referenced in a dashboard.
    # @param slo_id [String] The ID of the service level objective.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :force Delete the monitor even if it&#39;s referenced by other resources (e.g. SLO, composite monitor).
    # @return [SLODeleteResponse]
    def delete_slo(slo_id, opts = {})
      data, _status_code, _headers = delete_slo_with_http_info(slo_id, opts)
      data
    end

    # Delete an SLO
    # Permanently delete the specified service level objective object.  If an SLO is used in a dashboard, the &#x60;DELETE /v1/slo/&#x60; endpoint returns a 409 conflict error because the SLO is referenced in a dashboard.
    # @param slo_id [String] The ID of the service level objective.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :force Delete the monitor even if it&#39;s referenced by other resources (e.g. SLO, composite monitor).
    # @return [Array<(SLODeleteResponse, Integer, Hash)>] SLODeleteResponse data, response status code and response headers
    def delete_slo_with_http_info(slo_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:delete_slo)
        unstable_enabled = @api_client.config.unstable_operations[:delete_slo]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "delete_slo")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "delete_slo"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesApi.delete_slo ...'
      end
      # verify the required parameter 'slo_id' is set
      if @api_client.config.client_side_validation && slo_id.nil?
        fail ArgumentError, "Missing the required parameter 'slo_id' when calling ServiceLevelObjectivesApi.delete_slo"
      end
      # resource path
      local_var_path = '/api/v1/slo/{slo_id}'.sub('{' + 'slo_id' + '}', CGI.escape(slo_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SLODeleteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"ServiceLevelObjectivesApi.delete_slo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesApi#delete_slo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Bulk Delete SLO Timeframes
    # Delete (or partially delete) multiple service level objective objects.  This endpoint facilitates deletion of one or more thresholds for one or more service level objective objects. If all thresholds are deleted, the service level objective object is deleted as well.
    # @param body [Hash<String, Array<SLOTimeframe>>] Delete multiple service level objective objects request body.
    # @param [Hash] opts the optional parameters
    # @return [SLOBulkDeleteResponse]
    def delete_slo_timeframe_in_bulk(body, opts = {})
      data, _status_code, _headers = delete_slo_timeframe_in_bulk_with_http_info(body, opts)
      data
    end

    # Bulk Delete SLO Timeframes
    # Delete (or partially delete) multiple service level objective objects.  This endpoint facilitates deletion of one or more thresholds for one or more service level objective objects. If all thresholds are deleted, the service level objective object is deleted as well.
    # @param body [Hash<String, Array<SLOTimeframe>>] Delete multiple service level objective objects request body.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SLOBulkDeleteResponse, Integer, Hash)>] SLOBulkDeleteResponse data, response status code and response headers
    def delete_slo_timeframe_in_bulk_with_http_info(body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:delete_slo_timeframe_in_bulk)
        unstable_enabled = @api_client.config.unstable_operations[:delete_slo_timeframe_in_bulk]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "delete_slo_timeframe_in_bulk")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "delete_slo_timeframe_in_bulk"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesApi.delete_slo_timeframe_in_bulk ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceLevelObjectivesApi.delete_slo_timeframe_in_bulk"
      end
      # resource path
      local_var_path = '/api/v1/slo/bulk_delete'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'SLOBulkDeleteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"ServiceLevelObjectivesApi.delete_slo_timeframe_in_bulk",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesApi#delete_slo_timeframe_in_bulk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an SLO's details
    # Get a service level objective object.
    # @param slo_id [String] The ID of the service level objective object.
    # @param [Hash] opts the optional parameters
    # @return [SLOResponse]
    def get_slo(slo_id, opts = {})
      data, _status_code, _headers = get_slo_with_http_info(slo_id, opts)
      data
    end

    # Get an SLO&#39;s details
    # Get a service level objective object.
    # @param slo_id [String] The ID of the service level objective object.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SLOResponse, Integer, Hash)>] SLOResponse data, response status code and response headers
    def get_slo_with_http_info(slo_id, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_slo)
        unstable_enabled = @api_client.config.unstable_operations[:get_slo]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_slo")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "get_slo"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesApi.get_slo ...'
      end
      # verify the required parameter 'slo_id' is set
      if @api_client.config.client_side_validation && slo_id.nil?
        fail ArgumentError, "Missing the required parameter 'slo_id' when calling ServiceLevelObjectivesApi.get_slo"
      end
      # resource path
      local_var_path = '/api/v1/slo/{slo_id}'.sub('{' + 'slo_id' + '}', CGI.escape(slo_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SLOResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"ServiceLevelObjectivesApi.get_slo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesApi#get_slo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an SLO's history
    # Get a specific SLO’s history, regardless of its SLO type.  The detailed history data is structured according to the source data type. For example, metric data is included for event SLOs that use the metric source, and monitor SLO types include the monitor transition history.  **Note:** There are different response formats for event based and time based SLOs. Examples of both are shown.
    # @param slo_id [String] The ID of the service level objective object.
    # @param from_ts [Integer] The &#x60;from&#x60; timestamp for the query window in epoch seconds.
    # @param to_ts [Integer] The &#x60;to&#x60; timestamp for the query window in epoch seconds.
    # @param [Hash] opts the optional parameters
    # @return [SLOHistoryResponse]
    def get_slo_history(slo_id, from_ts, to_ts, opts = {})
      data, _status_code, _headers = get_slo_history_with_http_info(slo_id, from_ts, to_ts, opts)
      data
    end

    # Get an SLO&#39;s history
    # Get a specific SLO’s history, regardless of its SLO type.  The detailed history data is structured according to the source data type. For example, metric data is included for event SLOs that use the metric source, and monitor SLO types include the monitor transition history.  **Note:** There are different response formats for event based and time based SLOs. Examples of both are shown.
    # @param slo_id [String] The ID of the service level objective object.
    # @param from_ts [Integer] The &#x60;from&#x60; timestamp for the query window in epoch seconds.
    # @param to_ts [Integer] The &#x60;to&#x60; timestamp for the query window in epoch seconds.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SLOHistoryResponse, Integer, Hash)>] SLOHistoryResponse data, response status code and response headers
    def get_slo_history_with_http_info(slo_id, from_ts, to_ts, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_slo_history)
        unstable_enabled = @api_client.config.unstable_operations[:get_slo_history]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_slo_history")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "get_slo_history"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesApi.get_slo_history ...'
      end
      # verify the required parameter 'slo_id' is set
      if @api_client.config.client_side_validation && slo_id.nil?
        fail ArgumentError, "Missing the required parameter 'slo_id' when calling ServiceLevelObjectivesApi.get_slo_history"
      end
      # verify the required parameter 'from_ts' is set
      if @api_client.config.client_side_validation && from_ts.nil?
        fail ArgumentError, "Missing the required parameter 'from_ts' when calling ServiceLevelObjectivesApi.get_slo_history"
      end
      # verify the required parameter 'to_ts' is set
      if @api_client.config.client_side_validation && to_ts.nil?
        fail ArgumentError, "Missing the required parameter 'to_ts' when calling ServiceLevelObjectivesApi.get_slo_history"
      end
      # resource path
      local_var_path = '/api/v1/slo/{slo_id}/history'.sub('{' + 'slo_id' + '}', CGI.escape(slo_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from_ts'] = from_ts
      query_params[:'to_ts'] = to_ts

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SLOHistoryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"ServiceLevelObjectivesApi.get_slo_history",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesApi#get_slo_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all SLOs
    # Get a list of service level objective objects for your organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ids A comma separated list of the IDs of the service level objectives objects.
    # @option opts [String] :query The query string to filter results based on SLO names.
    # @option opts [String] :tags_query The query string to filter results based on a single SLO tag.
    # @option opts [String] :metrics_query The query string to filter results based on SLO numerator and denominator.
    # @return [SLOListResponse]
    def list_slos(opts = {})
      data, _status_code, _headers = list_slos_with_http_info(opts)
      data
    end

    # Get all SLOs
    # Get a list of service level objective objects for your organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ids A comma separated list of the IDs of the service level objectives objects.
    # @option opts [String] :query The query string to filter results based on SLO names.
    # @option opts [String] :tags_query The query string to filter results based on a single SLO tag.
    # @option opts [String] :metrics_query The query string to filter results based on SLO numerator and denominator.
    # @return [Array<(SLOListResponse, Integer, Hash)>] SLOListResponse data, response status code and response headers
    def list_slos_with_http_info(opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_slos)
        unstable_enabled = @api_client.config.unstable_operations[:list_slos]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_slos")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "list_slos"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesApi.list_slos ...'
      end
      # resource path
      local_var_path = '/api/v1/slo'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = opts[:'ids'] if !opts[:'ids'].nil?
      query_params[:'query'] = opts[:'query'] if !opts[:'query'].nil?
      query_params[:'tags_query'] = opts[:'tags_query'] if !opts[:'tags_query'].nil?
      query_params[:'metrics_query'] = opts[:'metrics_query'] if !opts[:'metrics_query'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SLOListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"ServiceLevelObjectivesApi.list_slos",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesApi#list_slos\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an SLO
    # Update the specified service level objective object.
    # @param slo_id [String] The ID of the service level objective object.
    # @param body [ServiceLevelObjective] The edited service level objective request object.
    # @param [Hash] opts the optional parameters
    # @return [SLOListResponse]
    def update_slo(slo_id, body, opts = {})
      data, _status_code, _headers = update_slo_with_http_info(slo_id, body, opts)
      data
    end

    # Update an SLO
    # Update the specified service level objective object.
    # @param slo_id [String] The ID of the service level objective object.
    # @param body [ServiceLevelObjective] The edited service level objective request object.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SLOListResponse, Integer, Hash)>] SLOListResponse data, response status code and response headers
    def update_slo_with_http_info(slo_id, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_slo)
        unstable_enabled = @api_client.config.unstable_operations[:update_slo]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_slo")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "update_slo"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceLevelObjectivesApi.update_slo ...'
      end
      # verify the required parameter 'slo_id' is set
      if @api_client.config.client_side_validation && slo_id.nil?
        fail ArgumentError, "Missing the required parameter 'slo_id' when calling ServiceLevelObjectivesApi.update_slo"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ServiceLevelObjectivesApi.update_slo"
      end
      # resource path
      local_var_path = '/api/v1/slo/{slo_id}'.sub('{' + 'slo_id' + '}', CGI.escape(slo_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'SLOListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"ServiceLevelObjectivesApi.update_slo",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceLevelObjectivesApi#update_slo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
