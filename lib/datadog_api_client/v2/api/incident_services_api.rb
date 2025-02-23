=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'cgi'

module DatadogAPIClient::V2
  class IncidentServicesAPI
    attr_accessor :api_client

    def initialize(api_client = DatadogAPIClient::APIClient.default)
      @api_client = api_client
    end

    # Create a new incident service.
    #
    # @see #create_incident_service_with_http_info
    def create_incident_service(body, opts = {})
      data, _status_code, _headers = create_incident_service_with_http_info(body, opts)
      data
    end

    # Create a new incident service.
    #
    # Creates a new incident service.
    #
    # @param body [IncidentServiceCreateRequest] Incident Service Payload.
    # @param opts [Hash] the optional parameters
    # @return [Array<(IncidentServiceResponse, Integer, Hash)>] IncidentServiceResponse data, response status code and response headers
    def create_incident_service_with_http_info(body, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.create_incident_service".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.create_incident_service")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.create_incident_service"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentServicesAPI.create_incident_service ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IncidentServicesAPI.create_incident_service"
      end
      # resource path
      local_var_path = '/api/v2/services'

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
      return_type = opts[:debug_return_type] || 'IncidentServiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :create_incident_service,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Post, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentServicesAPI#create_incident_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing incident service.
    #
    # @see #delete_incident_service_with_http_info
    def delete_incident_service(service_id, opts = {})
      delete_incident_service_with_http_info(service_id, opts)
      nil
    end

    # Delete an existing incident service.
    #
    # Deletes an existing incident service.
    #
    # @param service_id [String] The ID of the incident service.
    # @param opts [Hash] the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_incident_service_with_http_info(service_id, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.delete_incident_service".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.delete_incident_service")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.delete_incident_service"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentServicesAPI.delete_incident_service ...'
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling IncidentServicesAPI.delete_incident_service"
      end
      # resource path
      local_var_path = '/api/v2/services/{service_id}'.sub('{service_id}', CGI.escape(service_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :delete_incident_service,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Delete, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentServicesAPI#delete_incident_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details of an incident service.
    #
    # @see #get_incident_service_with_http_info
    def get_incident_service(service_id, opts = {})
      data, _status_code, _headers = get_incident_service_with_http_info(service_id, opts)
      data
    end

    # Get details of an incident service.
    #
    # Get details of an incident service. If the `include[users]` query parameter is provided,
    # the included attribute will contain the users related to these incident services.
    #
    # @param service_id [String] The ID of the incident service.
    # @param opts [Hash] the optional parameters
    # @option opts [IncidentRelatedObject] :include Specifies which types of related objects should be included in the response.
    # @return [Array<(IncidentServiceResponse, Integer, Hash)>] IncidentServiceResponse data, response status code and response headers
    def get_incident_service_with_http_info(service_id, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.get_incident_service".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.get_incident_service")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.get_incident_service"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentServicesAPI.get_incident_service ...'
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling IncidentServicesAPI.get_incident_service"
      end
      allowable_values = ['users', 'attachments']
      if @api_client.config.client_side_validation && opts[:'include'] && !allowable_values.include?(opts[:'include'])
        fail ArgumentError, "invalid value for \"include\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v2/services/{service_id}'.sub('{service_id}', CGI.escape(service_id.to_s).gsub('%2F', '/'))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IncidentServiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :get_incident_service,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentServicesAPI#get_incident_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of all incident services.
    #
    # @see #list_incident_services_with_http_info
    def list_incident_services(opts = {})
      data, _status_code, _headers = list_incident_services_with_http_info(opts)
      data
    end

    # Get a list of all incident services.
    #
    # Get all incident services uploaded for the requesting user's organization. If the `include[users]` query parameter is provided, the included attribute will contain the users related to these incident services.
    #
    # @param opts [Hash] the optional parameters
    # @option opts [IncidentRelatedObject] :include Specifies which types of related objects should be included in the response.
    # @option opts [Integer] :page_size Size for a given page. The maximum allowed value is 5000.
    # @option opts [Integer] :page_offset Specific offset to use as the beginning of the returned page.
    # @option opts [String] :filter A search query that filters services by name.
    # @return [Array<(IncidentServicesResponse, Integer, Hash)>] IncidentServicesResponse data, response status code and response headers
    def list_incident_services_with_http_info(opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.list_incident_services".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.list_incident_services")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.list_incident_services"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentServicesAPI.list_incident_services ...'
      end
      allowable_values = ['users', 'attachments']
      if @api_client.config.client_side_validation && opts[:'include'] && !allowable_values.include?(opts[:'include'])
        fail ArgumentError, "invalid value for \"include\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v2/services'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'page[offset]'] = opts[:'page_offset'] if !opts[:'page_offset'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IncidentServicesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :list_incident_services,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Get, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentServicesAPI#list_incident_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing incident service.
    #
    # @see #update_incident_service_with_http_info
    def update_incident_service(service_id, body, opts = {})
      data, _status_code, _headers = update_incident_service_with_http_info(service_id, body, opts)
      data
    end

    # Update an existing incident service.
    #
    # Updates an existing incident service. Only provide the attributes which should be updated as this request is a partial update.
    #
    # @param service_id [String] The ID of the incident service.
    # @param body [IncidentServiceUpdateRequest] Incident Service Payload.
    # @param opts [Hash] the optional parameters
    # @return [Array<(IncidentServiceResponse, Integer, Hash)>] IncidentServiceResponse data, response status code and response headers
    def update_incident_service_with_http_info(service_id, body, opts = {})
      unstable_enabled = @api_client.config.unstable_operations["v2.update_incident_service".to_sym]
      if unstable_enabled
        @api_client.config.logger.warn format("Using unstable operation '%s'", "v2.update_incident_service")
      else
        raise DatadogAPIClient::APIError.new(message: format("Unstable operation '%s' is disabled", "v2.update_incident_service"))
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IncidentServicesAPI.update_incident_service ...'
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling IncidentServicesAPI.update_incident_service"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling IncidentServicesAPI.update_incident_service"
      end
      # resource path
      local_var_path = '/api/v2/services/{service_id}'.sub('{service_id}', CGI.escape(service_id.to_s).gsub('%2F', '/'))

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
      return_type = opts[:debug_return_type] || 'IncidentServiceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || [:apiKeyAuth, :appKeyAuth, :AuthZ]

      new_options = opts.merge(
        :operation => :update_incident_service,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type,
        :api_version => "V2"
      )

      data, status_code, headers = @api_client.call_api(Net::HTTP::Patch, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IncidentServicesAPI#update_incident_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
