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
  class PCloudNetworksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a network
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pcloud_networks_delete(cloud_instance_id, network_id, opts = {})
      data, _status_code, _headers = pcloud_networks_delete_with_http_info(cloud_instance_id, network_id, opts)
      data
    end

    # Delete a network
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pcloud_networks_delete_with_http_info(cloud_instance_id, network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudNetworksApi.pcloud_networks_delete ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudNetworksApi.pcloud_networks_delete"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling PCloudNetworksApi.pcloud_networks_delete"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'network_id' + '}', CGI.escape(network_id.to_s))

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
        :operation => :"PCloudNetworksApi.pcloud_networks_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudNetworksApi#pcloud_networks_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a network's current state or information
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @return [Network]
    def pcloud_networks_get(cloud_instance_id, network_id, opts = {})
      data, _status_code, _headers = pcloud_networks_get_with_http_info(cloud_instance_id, network_id, opts)
      data
    end

    # Get a network&#39;s current state or information
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Network, Integer, Hash)>] Network data, response status code and response headers
    def pcloud_networks_get_with_http_info(cloud_instance_id, network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudNetworksApi.pcloud_networks_get ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudNetworksApi.pcloud_networks_get"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling PCloudNetworksApi.pcloud_networks_get"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'network_id' + '}', CGI.escape(network_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Network'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudNetworksApi.pcloud_networks_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudNetworksApi#pcloud_networks_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all networks in this cloud instance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter A filter expression that filters resources listed in the response
    # @return [Networks]
    def pcloud_networks_getall(cloud_instance_id, opts = {})
      data, _status_code, _headers = pcloud_networks_getall_with_http_info(cloud_instance_id, opts)
      data
    end

    # Get all networks in this cloud instance
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter A filter expression that filters resources listed in the response
    # @return [Array<(Networks, Integer, Hash)>] Networks data, response status code and response headers
    def pcloud_networks_getall_with_http_info(cloud_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudNetworksApi.pcloud_networks_getall ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudNetworksApi.pcloud_networks_getall"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/networks'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'Networks'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudNetworksApi.pcloud_networks_getall",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudNetworksApi#pcloud_networks_getall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a network port
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param network_id [String] Network ID
    # @param port_id [String] Port ID
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def pcloud_networks_ports_delete(cloud_instance_id, network_id, port_id, opts = {})
      data, _status_code, _headers = pcloud_networks_ports_delete_with_http_info(cloud_instance_id, network_id, port_id, opts)
      data
    end

    # Delete a network port
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param network_id [String] Network ID
    # @param port_id [String] Port ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def pcloud_networks_ports_delete_with_http_info(cloud_instance_id, network_id, port_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudNetworksApi.pcloud_networks_ports_delete ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudNetworksApi.pcloud_networks_ports_delete"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling PCloudNetworksApi.pcloud_networks_ports_delete"
      end
      # verify the required parameter 'port_id' is set
      if @api_client.config.client_side_validation && port_id.nil?
        fail ArgumentError, "Missing the required parameter 'port_id' when calling PCloudNetworksApi.pcloud_networks_ports_delete"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports/{port_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'network_id' + '}', CGI.escape(network_id.to_s)).sub('{' + 'port_id' + '}', CGI.escape(port_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudNetworksApi.pcloud_networks_ports_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudNetworksApi#pcloud_networks_ports_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a port's information
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param network_id [String] Network ID
    # @param port_id [String] Port ID
    # @param [Hash] opts the optional parameters
    # @return [NetworkPort]
    def pcloud_networks_ports_get(cloud_instance_id, network_id, port_id, opts = {})
      data, _status_code, _headers = pcloud_networks_ports_get_with_http_info(cloud_instance_id, network_id, port_id, opts)
      data
    end

    # Get a port&#39;s information
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param network_id [String] Network ID
    # @param port_id [String] Port ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(NetworkPort, Integer, Hash)>] NetworkPort data, response status code and response headers
    def pcloud_networks_ports_get_with_http_info(cloud_instance_id, network_id, port_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudNetworksApi.pcloud_networks_ports_get ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudNetworksApi.pcloud_networks_ports_get"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling PCloudNetworksApi.pcloud_networks_ports_get"
      end
      # verify the required parameter 'port_id' is set
      if @api_client.config.client_side_validation && port_id.nil?
        fail ArgumentError, "Missing the required parameter 'port_id' when calling PCloudNetworksApi.pcloud_networks_ports_get"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports/{port_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'network_id' + '}', CGI.escape(network_id.to_s)).sub('{' + 'port_id' + '}', CGI.escape(port_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'applicaton/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkPort'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudNetworksApi.pcloud_networks_ports_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudNetworksApi#pcloud_networks_ports_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all ports for this network
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @return [NetworkPorts]
    def pcloud_networks_ports_getall(cloud_instance_id, network_id, opts = {})
      data, _status_code, _headers = pcloud_networks_ports_getall_with_http_info(cloud_instance_id, network_id, opts)
      data
    end

    # Get all ports for this network
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(NetworkPorts, Integer, Hash)>] NetworkPorts data, response status code and response headers
    def pcloud_networks_ports_getall_with_http_info(cloud_instance_id, network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudNetworksApi.pcloud_networks_ports_getall ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudNetworksApi.pcloud_networks_ports_getall"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling PCloudNetworksApi.pcloud_networks_ports_getall"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'network_id' + '}', CGI.escape(network_id.to_s))

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
      return_type = opts[:debug_return_type] || 'NetworkPorts'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudNetworksApi.pcloud_networks_ports_getall",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudNetworksApi#pcloud_networks_ports_getall\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Perform port addition, deletion, and listing
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @option opts [NetworkPortCreate] :body Create a Network Port
    # @return [NetworkPort]
    def pcloud_networks_ports_post(cloud_instance_id, network_id, opts = {})
      data, _status_code, _headers = pcloud_networks_ports_post_with_http_info(cloud_instance_id, network_id, opts)
      data
    end

    # Perform port addition, deletion, and listing
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @option opts [NetworkPortCreate] :body Create a Network Port
    # @return [Array<(NetworkPort, Integer, Hash)>] NetworkPort data, response status code and response headers
    def pcloud_networks_ports_post_with_http_info(cloud_instance_id, network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudNetworksApi.pcloud_networks_ports_post ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudNetworksApi.pcloud_networks_ports_post"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling PCloudNetworksApi.pcloud_networks_ports_post"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'network_id' + '}', CGI.escape(network_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkPort'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudNetworksApi.pcloud_networks_ports_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudNetworksApi#pcloud_networks_ports_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a port's information
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param network_id [String] Network ID
    # @param port_id [String] Port ID
    # @param body [NetworkPortUpdate] Parameters for updating a Port
    # @param [Hash] opts the optional parameters
    # @return [NetworkPort]
    def pcloud_networks_ports_put(cloud_instance_id, network_id, port_id, body, opts = {})
      data, _status_code, _headers = pcloud_networks_ports_put_with_http_info(cloud_instance_id, network_id, port_id, body, opts)
      data
    end

    # Update a port&#39;s information
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param network_id [String] Network ID
    # @param port_id [String] Port ID
    # @param body [NetworkPortUpdate] Parameters for updating a Port
    # @param [Hash] opts the optional parameters
    # @return [Array<(NetworkPort, Integer, Hash)>] NetworkPort data, response status code and response headers
    def pcloud_networks_ports_put_with_http_info(cloud_instance_id, network_id, port_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudNetworksApi.pcloud_networks_ports_put ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudNetworksApi.pcloud_networks_ports_put"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling PCloudNetworksApi.pcloud_networks_ports_put"
      end
      # verify the required parameter 'port_id' is set
      if @api_client.config.client_side_validation && port_id.nil?
        fail ArgumentError, "Missing the required parameter 'port_id' when calling PCloudNetworksApi.pcloud_networks_ports_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudNetworksApi.pcloud_networks_ports_put"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}/ports/{port_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'network_id' + '}', CGI.escape(network_id.to_s)).sub('{' + 'port_id' + '}', CGI.escape(port_id.to_s))

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
      return_type = opts[:debug_return_type] || 'NetworkPort'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudNetworksApi.pcloud_networks_ports_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudNetworksApi#pcloud_networks_ports_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new network
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [NetworkCreate] Parameters for the creation of a new network
    # @param [Hash] opts the optional parameters
    # @return [Network]
    def pcloud_networks_post(cloud_instance_id, body, opts = {})
      data, _status_code, _headers = pcloud_networks_post_with_http_info(cloud_instance_id, body, opts)
      data
    end

    # Create a new network
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param body [NetworkCreate] Parameters for the creation of a new network
    # @param [Hash] opts the optional parameters
    # @return [Array<(Network, Integer, Hash)>] Network data, response status code and response headers
    def pcloud_networks_post_with_http_info(cloud_instance_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudNetworksApi.pcloud_networks_post ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudNetworksApi.pcloud_networks_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudNetworksApi.pcloud_networks_post"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/networks'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Network'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudNetworksApi.pcloud_networks_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudNetworksApi#pcloud_networks_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a network
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param network_id [String] Network ID
    # @param body [NetworkUpdate] Parameters to update a Network
    # @param [Hash] opts the optional parameters
    # @return [Network]
    def pcloud_networks_put(cloud_instance_id, network_id, body, opts = {})
      data, _status_code, _headers = pcloud_networks_put_with_http_info(cloud_instance_id, network_id, body, opts)
      data
    end

    # Update a network
    # @param cloud_instance_id [String] Cloud Instance ID of a PCloud Instance
    # @param network_id [String] Network ID
    # @param body [NetworkUpdate] Parameters to update a Network
    # @param [Hash] opts the optional parameters
    # @return [Array<(Network, Integer, Hash)>] Network data, response status code and response headers
    def pcloud_networks_put_with_http_info(cloud_instance_id, network_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PCloudNetworksApi.pcloud_networks_put ...'
      end
      # verify the required parameter 'cloud_instance_id' is set
      if @api_client.config.client_side_validation && cloud_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'cloud_instance_id' when calling PCloudNetworksApi.pcloud_networks_put"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling PCloudNetworksApi.pcloud_networks_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling PCloudNetworksApi.pcloud_networks_put"
      end
      # resource path
      local_var_path = '/pcloud/v1/cloud-instances/{cloud_instance_id}/networks/{network_id}'.sub('{' + 'cloud_instance_id' + '}', CGI.escape(cloud_instance_id.to_s)).sub('{' + 'network_id' + '}', CGI.escape(network_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Network'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"PCloudNetworksApi.pcloud_networks_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PCloudNetworksApi#pcloud_networks_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
