# IbmCloudPower::PCloudSystemPoolsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_systempools_get**](PCloudSystemPoolsApi.md#pcloud_systempools_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/system-pools | List of available system pools within a particular data center |


## pcloud_systempools_get

> <Hash<String, SystemPool>> pcloud_systempools_get(cloud_instance_id)

List of available system pools within a particular data center

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudSystemPoolsApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # List of available system pools within a particular data center
  result = api_instance.pcloud_systempools_get(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSystemPoolsApi->pcloud_systempools_get: #{e}"
end
```

#### Using the pcloud_systempools_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, SystemPool>>, Integer, Hash)> pcloud_systempools_get_with_http_info(cloud_instance_id)

```ruby
begin
  # List of available system pools within a particular data center
  data, status_code, headers = api_instance.pcloud_systempools_get_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, SystemPool>>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudSystemPoolsApi->pcloud_systempools_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**Hash&lt;String, SystemPool&gt;**](SystemPool.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

