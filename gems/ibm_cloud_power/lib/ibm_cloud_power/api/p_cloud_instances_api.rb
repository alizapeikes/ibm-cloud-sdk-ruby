=begin
#Power Cloud API

#IBM Power Cloud API for Power Hardware / Infrastructure

The version of the OpenAPI document: 1.0.0
Contact: kylej@us.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module IbmCloudPower
  class PCloudInstancesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a Power Cloud instance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pcloud_cloudinstances_delete(cloud_instance_id, opts = {})
      data, _status_code, _headers = pcloud_cloudinstances_delete_with_http_info(cloud_instance_id, opts)
      data
    end

    # Delete a Power Cloud instance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pcloud_cloudinstances_delete_with_http_info(cloud_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudInstancesApi.pcloud_cloudinstances_delete ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudInstancesApi.pcloud_cloudinstances_delete"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudInstancesApi.pcloud_cloudinstances_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudInstancesApi#pcloud_cloudinstances_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a cloud instance's current state or information
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @return [CloudInstance]
    def pcloud_cloudinstances_get(cloud_instance_id, opts = {})
      data, _status_code, _headers = pcloud_cloudinstances_get_with_http_info(cloud_instance_id, opts)
      data
    end

    # Get a cloud instance&#39;s current state or information
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @return [Array<(CloudInstance, Integer, Hash)>] CloudInstance data, response status code and response headers
    def pcloud_cloudinstances_get_with_http_info(cloud_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudInstancesApi.pcloud_cloudinstances_get ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudInstancesApi.pcloud_cloudinstances_get"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CloudInstance'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudInstancesApi.pcloud_cloudinstances_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudInstancesApi#pcloud_cloudinstances_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update or upgrade a cloud instance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [CloudInstanceUpdate] Parameters for updating a Power Cloud instance
    # @param [Hash] opts the optional parameters
    # @return [CloudInstance]
    def pcloud_cloudinstances_put(cloud_instance_id, body, opts = {})
      data, _status_code, _headers = pcloud_cloudinstances_put_with_http_info(cloud_instance_id, body, opts)
      data
    end

    # Update or upgrade a cloud instance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [CloudInstanceUpdate] Parameters for updating a Power Cloud instance
    # @param [Hash] opts the optional parameters
    # @return [Array<(CloudInstance, Integer, Hash)>] CloudInstance data, response status code and response headers
    def pcloud_cloudinstances_put_with_http_info(cloud_instance_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudInstancesApi.pcloud_cloudinstances_put ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudInstancesApi.pcloud_cloudinstances_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudInstancesApi.pcloud_cloudinstances_put"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'CloudInstance'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudInstancesApi.pcloud_cloudinstances_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudInstancesApi#pcloud_cloudinstances_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
