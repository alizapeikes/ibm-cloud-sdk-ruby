# IbmCloudPower::PCloudPVMInstancesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_pvminstances_action_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_action_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/action | Perform an action (start stop reboot immediate-shutdown reset) on a PVMInstance |
| [**pcloud_pvminstances_capture_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_capture_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/capture | Capture a PVM instance and create a deployable image (version 1) |
| [**pcloud_pvminstances_clone_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_clone_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/clone | Clone a PVMInstance |
| [**pcloud_pvminstances_console_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_console_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/console | Generate the noVNC console URL |
| [**pcloud_pvminstances_delete**](PCloudPVMInstancesApi.md#pcloud_pvminstances_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id} | Delete a PCloud PVM instance |
| [**pcloud_pvminstances_get**](PCloudPVMInstancesApi.md#pcloud_pvminstances_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id} | Get a PVM instance&#39;s current state or information |
| [**pcloud_pvminstances_getall**](PCloudPVMInstancesApi.md#pcloud_pvminstances_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances | Get all the PVM instances for this cloud instance |
| [**pcloud_pvminstances_networks_delete**](PCloudPVMInstancesApi.md#pcloud_pvminstances_networks_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/networks/{network_id} | Remove all addresses of network from a PVM instance |
| [**pcloud_pvminstances_networks_get**](PCloudPVMInstancesApi.md#pcloud_pvminstances_networks_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/networks/{network_id} | Get a PVM instance&#39;s network information |
| [**pcloud_pvminstances_networks_getall**](PCloudPVMInstancesApi.md#pcloud_pvminstances_networks_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/networks | Get all networks for this PVM instance |
| [**pcloud_pvminstances_networks_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_networks_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/networks | Perform network addition, deletion, and listing |
| [**pcloud_pvminstances_operations_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_operations_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/operations | Perform an operation on a PVMInstance |
| [**pcloud_pvminstances_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances | Create a new PVM instance |
| [**pcloud_pvminstances_put**](PCloudPVMInstancesApi.md#pcloud_pvminstances_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id} | Update a PCloud PVM instance |
| [**pcloud_pvminstances_snapshots_getall**](PCloudPVMInstancesApi.md#pcloud_pvminstances_snapshots_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/snapshots | Get all snapshots for this PVM instance |
| [**pcloud_pvminstances_snapshots_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_snapshots_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/snapshots | Create a PVM instance snapshot |
| [**pcloud_pvminstances_snapshots_restore_post**](PCloudPVMInstancesApi.md#pcloud_pvminstances_snapshots_restore_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/snapshots/{snapshot_id}/restore | Restore a PVM Instance snapshot |
| [**pcloud_v2_pvminstances_capture_get**](PCloudPVMInstancesApi.md#pcloud_v2_pvminstances_capture_get) | **GET** /pcloud/v2/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/capture | Get a PVM Instance’s  last capture job details |
| [**pcloud_v2_pvminstances_capture_post**](PCloudPVMInstancesApi.md#pcloud_v2_pvminstances_capture_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/capture | Capture a PVM instance and create a deployable image (version 2) |


## pcloud_pvminstances_action_post

> Object pcloud_pvminstances_action_post(cloud_instance_id, pvm_instance_id, body)

Perform an action (start stop reboot immediate-shutdown reset) on a PVMInstance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::PVMInstanceAction.new({action: 'start'}) # PVMInstanceAction | Parameters for the desired action

begin
  # Perform an action (start stop reboot immediate-shutdown reset) on a PVMInstance
  result = api_instance.pcloud_pvminstances_action_post(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_action_post: #{e}"
end
```

#### Using the pcloud_pvminstances_action_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_pvminstances_action_post_with_http_info(cloud_instance_id, pvm_instance_id, body)

```ruby
begin
  # Perform an action (start stop reboot immediate-shutdown reset) on a PVMInstance
  data, status_code, headers = api_instance.pcloud_pvminstances_action_post_with_http_info(cloud_instance_id, pvm_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_action_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **body** | [**PVMInstanceAction**](PVMInstanceAction.md) | Parameters for the desired action |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_capture_post

> Object pcloud_pvminstances_capture_post(cloud_instance_id, pvm_instance_id, body)

Capture a PVM instance and create a deployable image (version 1)

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::PVMInstanceCapture.new({capture_name: 'capture_name_example', capture_destination: 'image-catalog'}) # PVMInstanceCapture | Parameters for the capture PVMInstance

begin
  # Capture a PVM instance and create a deployable image (version 1)
  result = api_instance.pcloud_pvminstances_capture_post(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_capture_post: #{e}"
end
```

#### Using the pcloud_pvminstances_capture_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_pvminstances_capture_post_with_http_info(cloud_instance_id, pvm_instance_id, body)

```ruby
begin
  # Capture a PVM instance and create a deployable image (version 1)
  data, status_code, headers = api_instance.pcloud_pvminstances_capture_post_with_http_info(cloud_instance_id, pvm_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_capture_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **body** | [**PVMInstanceCapture**](PVMInstanceCapture.md) | Parameters for the capture PVMInstance |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_clone_post

> <PVMInstance> pcloud_pvminstances_clone_post(cloud_instance_id, pvm_instance_id, body)

Clone a PVMInstance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::PVMInstanceClone.new({name: 'name_example', networks: [IbmCloudPower::PVMInstanceAddNetwork.new({network_id: 'network_id_example'})]}) # PVMInstanceClone | Clone PVM Instance parameters

begin
  # Clone a PVMInstance
  result = api_instance.pcloud_pvminstances_clone_post(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_clone_post: #{e}"
end
```

#### Using the pcloud_pvminstances_clone_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PVMInstance>, Integer, Hash)> pcloud_pvminstances_clone_post_with_http_info(cloud_instance_id, pvm_instance_id, body)

```ruby
begin
  # Clone a PVMInstance
  data, status_code, headers = api_instance.pcloud_pvminstances_clone_post_with_http_info(cloud_instance_id, pvm_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PVMInstance>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_clone_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **body** | [**PVMInstanceClone**](PVMInstanceClone.md) | Clone PVM Instance parameters |  |

### Return type

[**PVMInstance**](PVMInstance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_console_post

> <PVMInstanceConsole> pcloud_pvminstances_console_post(cloud_instance_id, pvm_instance_id)

Generate the noVNC console URL

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID

begin
  # Generate the noVNC console URL
  result = api_instance.pcloud_pvminstances_console_post(cloud_instance_id, pvm_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_console_post: #{e}"
end
```

#### Using the pcloud_pvminstances_console_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PVMInstanceConsole>, Integer, Hash)> pcloud_pvminstances_console_post_with_http_info(cloud_instance_id, pvm_instance_id)

```ruby
begin
  # Generate the noVNC console URL
  data, status_code, headers = api_instance.pcloud_pvminstances_console_post_with_http_info(cloud_instance_id, pvm_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PVMInstanceConsole>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_console_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |

### Return type

[**PVMInstanceConsole**](PVMInstanceConsole.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_delete

> Object pcloud_pvminstances_delete(cloud_instance_id, pvm_instance_id, opts)

Delete a PCloud PVM instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
opts = {
  delete_data_volumes: true # Boolean | Indicates whether all data volumes attached to the PVMInstance must be deleted when deleting the PVMInstance. Shared data volumes will be deleted if no other PVMInstances are attached.
}

begin
  # Delete a PCloud PVM instance
  result = api_instance.pcloud_pvminstances_delete(cloud_instance_id, pvm_instance_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_delete: #{e}"
end
```

#### Using the pcloud_pvminstances_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_pvminstances_delete_with_http_info(cloud_instance_id, pvm_instance_id, opts)

```ruby
begin
  # Delete a PCloud PVM instance
  data, status_code, headers = api_instance.pcloud_pvminstances_delete_with_http_info(cloud_instance_id, pvm_instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **delete_data_volumes** | **Boolean** | Indicates whether all data volumes attached to the PVMInstance must be deleted when deleting the PVMInstance. Shared data volumes will be deleted if no other PVMInstances are attached. | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## pcloud_pvminstances_get

> <PVMInstance> pcloud_pvminstances_get(cloud_instance_id, pvm_instance_id)

Get a PVM instance's current state or information

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID

begin
  # Get a PVM instance's current state or information
  result = api_instance.pcloud_pvminstances_get(cloud_instance_id, pvm_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_get: #{e}"
end
```

#### Using the pcloud_pvminstances_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PVMInstance>, Integer, Hash)> pcloud_pvminstances_get_with_http_info(cloud_instance_id, pvm_instance_id)

```ruby
begin
  # Get a PVM instance's current state or information
  data, status_code, headers = api_instance.pcloud_pvminstances_get_with_http_info(cloud_instance_id, pvm_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PVMInstance>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |

### Return type

[**PVMInstance**](PVMInstance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_getall

> <PVMInstances> pcloud_pvminstances_getall(cloud_instance_id)

Get all the PVM instances for this cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance

begin
  # Get all the PVM instances for this cloud instance
  result = api_instance.pcloud_pvminstances_getall(cloud_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_getall: #{e}"
end
```

#### Using the pcloud_pvminstances_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PVMInstances>, Integer, Hash)> pcloud_pvminstances_getall_with_http_info(cloud_instance_id)

```ruby
begin
  # Get all the PVM instances for this cloud instance
  data, status_code, headers = api_instance.pcloud_pvminstances_getall_with_http_info(cloud_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PVMInstances>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |

### Return type

[**PVMInstances**](PVMInstances.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_networks_delete

> Object pcloud_pvminstances_networks_delete(cloud_instance_id, pvm_instance_id, network_id, opts)

Remove all addresses of network from a PVM instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
network_id = 'network_id_example' # String | Network ID
opts = {
  body: IbmCloudPower::PVMInstanceRemoveNetwork.new # PVMInstanceRemoveNetwork | Remove a network from PVM Instance parameters
}

begin
  # Remove all addresses of network from a PVM instance
  result = api_instance.pcloud_pvminstances_networks_delete(cloud_instance_id, pvm_instance_id, network_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_networks_delete: #{e}"
end
```

#### Using the pcloud_pvminstances_networks_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_pvminstances_networks_delete_with_http_info(cloud_instance_id, pvm_instance_id, network_id, opts)

```ruby
begin
  # Remove all addresses of network from a PVM instance
  data, status_code, headers = api_instance.pcloud_pvminstances_networks_delete_with_http_info(cloud_instance_id, pvm_instance_id, network_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_networks_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **network_id** | **String** | Network ID |  |
| **body** | [**PVMInstanceRemoveNetwork**](PVMInstanceRemoveNetwork.md) | Remove a network from PVM Instance parameters | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_networks_get

> <PVMInstanceNetworks> pcloud_pvminstances_networks_get(cloud_instance_id, pvm_instance_id, network_id)

Get a PVM instance's network information

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
network_id = 'network_id_example' # String | Network ID

begin
  # Get a PVM instance's network information
  result = api_instance.pcloud_pvminstances_networks_get(cloud_instance_id, pvm_instance_id, network_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_networks_get: #{e}"
end
```

#### Using the pcloud_pvminstances_networks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PVMInstanceNetworks>, Integer, Hash)> pcloud_pvminstances_networks_get_with_http_info(cloud_instance_id, pvm_instance_id, network_id)

```ruby
begin
  # Get a PVM instance's network information
  data, status_code, headers = api_instance.pcloud_pvminstances_networks_get_with_http_info(cloud_instance_id, pvm_instance_id, network_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PVMInstanceNetworks>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_networks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **network_id** | **String** | Network ID |  |

### Return type

[**PVMInstanceNetworks**](PVMInstanceNetworks.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_networks_getall

> <PVMInstanceNetworks> pcloud_pvminstances_networks_getall(cloud_instance_id, pvm_instance_id)

Get all networks for this PVM instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID

begin
  # Get all networks for this PVM instance
  result = api_instance.pcloud_pvminstances_networks_getall(cloud_instance_id, pvm_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_networks_getall: #{e}"
end
```

#### Using the pcloud_pvminstances_networks_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PVMInstanceNetworks>, Integer, Hash)> pcloud_pvminstances_networks_getall_with_http_info(cloud_instance_id, pvm_instance_id)

```ruby
begin
  # Get all networks for this PVM instance
  data, status_code, headers = api_instance.pcloud_pvminstances_networks_getall_with_http_info(cloud_instance_id, pvm_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PVMInstanceNetworks>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_networks_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |

### Return type

[**PVMInstanceNetworks**](PVMInstanceNetworks.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_networks_post

> <PVMInstanceNetwork> pcloud_pvminstances_networks_post(cloud_instance_id, pvm_instance_id, body)

Perform network addition, deletion, and listing

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::PVMInstanceAddNetwork.new({network_id: 'network_id_example'}) # PVMInstanceAddNetwork | Add network to PVM Instance parameters

begin
  # Perform network addition, deletion, and listing
  result = api_instance.pcloud_pvminstances_networks_post(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_networks_post: #{e}"
end
```

#### Using the pcloud_pvminstances_networks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PVMInstanceNetwork>, Integer, Hash)> pcloud_pvminstances_networks_post_with_http_info(cloud_instance_id, pvm_instance_id, body)

```ruby
begin
  # Perform network addition, deletion, and listing
  data, status_code, headers = api_instance.pcloud_pvminstances_networks_post_with_http_info(cloud_instance_id, pvm_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PVMInstanceNetwork>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_networks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **body** | [**PVMInstanceAddNetwork**](PVMInstanceAddNetwork.md) | Add network to PVM Instance parameters |  |

### Return type

[**PVMInstanceNetwork**](PVMInstanceNetwork.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_operations_post

> Object pcloud_pvminstances_operations_post(cloud_instance_id, pvm_instance_id, body)

Perform an operation on a PVMInstance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::PVMInstanceOperation.new({operation_type: 'job', operation: IbmCloudPower::Operations.new}) # PVMInstanceOperation | Parameters for the desired operations

begin
  # Perform an operation on a PVMInstance
  result = api_instance.pcloud_pvminstances_operations_post(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_operations_post: #{e}"
end
```

#### Using the pcloud_pvminstances_operations_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_pvminstances_operations_post_with_http_info(cloud_instance_id, pvm_instance_id, body)

```ruby
begin
  # Perform an operation on a PVMInstance
  data, status_code, headers = api_instance.pcloud_pvminstances_operations_post_with_http_info(cloud_instance_id, pvm_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_operations_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **body** | [**PVMInstanceOperation**](PVMInstanceOperation.md) | Parameters for the desired operations |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_post

> <Array<PVMInstance>> pcloud_pvminstances_post(cloud_instance_id, body, opts)

Create a new PVM instance

The order of network IDs passed in will be the order of interfaces defined to the VM.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::PVMInstanceCreate.new({server_name: 'server_name_example', image_id: 'image_id_example', processors: 3.56, proc_type: 'dedicated', memory: 3.56}) # PVMInstanceCreate | Parameters for the creation of a new tenant
opts = {
  skip_host_validation: true # Boolean | Option to skip host validation on PVMInstance Create API
}

begin
  # Create a new PVM instance
  result = api_instance.pcloud_pvminstances_post(cloud_instance_id, body, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_post: #{e}"
end
```

#### Using the pcloud_pvminstances_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PVMInstance>>, Integer, Hash)> pcloud_pvminstances_post_with_http_info(cloud_instance_id, body, opts)

```ruby
begin
  # Create a new PVM instance
  data, status_code, headers = api_instance.pcloud_pvminstances_post_with_http_info(cloud_instance_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PVMInstance>>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**PVMInstanceCreate**](PVMInstanceCreate.md) | Parameters for the creation of a new tenant |  |
| **skip_host_validation** | **Boolean** | Option to skip host validation on PVMInstance Create API | [optional] |

### Return type

[**Array&lt;PVMInstance&gt;**](PVMInstance.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_put

> <PVMInstanceUpdateResponse> pcloud_pvminstances_put(cloud_instance_id, pvm_instance_id, body)

Update a PCloud PVM instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::PVMInstanceUpdate.new # PVMInstanceUpdate | Parameters to update a PCloud PVM instance

begin
  # Update a PCloud PVM instance
  result = api_instance.pcloud_pvminstances_put(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_put: #{e}"
end
```

#### Using the pcloud_pvminstances_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PVMInstanceUpdateResponse>, Integer, Hash)> pcloud_pvminstances_put_with_http_info(cloud_instance_id, pvm_instance_id, body)

```ruby
begin
  # Update a PCloud PVM instance
  data, status_code, headers = api_instance.pcloud_pvminstances_put_with_http_info(cloud_instance_id, pvm_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PVMInstanceUpdateResponse>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **body** | [**PVMInstanceUpdate**](PVMInstanceUpdate.md) | Parameters to update a PCloud PVM instance |  |

### Return type

[**PVMInstanceUpdateResponse**](PVMInstanceUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_snapshots_getall

> <Snapshots> pcloud_pvminstances_snapshots_getall(cloud_instance_id, pvm_instance_id)

Get all snapshots for this PVM instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID

begin
  # Get all snapshots for this PVM instance
  result = api_instance.pcloud_pvminstances_snapshots_getall(cloud_instance_id, pvm_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_snapshots_getall: #{e}"
end
```

#### Using the pcloud_pvminstances_snapshots_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Snapshots>, Integer, Hash)> pcloud_pvminstances_snapshots_getall_with_http_info(cloud_instance_id, pvm_instance_id)

```ruby
begin
  # Get all snapshots for this PVM instance
  data, status_code, headers = api_instance.pcloud_pvminstances_snapshots_getall_with_http_info(cloud_instance_id, pvm_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshots>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_snapshots_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |

### Return type

[**Snapshots**](Snapshots.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_snapshots_post

> <SnapshotCreateResponse> pcloud_pvminstances_snapshots_post(cloud_instance_id, pvm_instance_id, body)

Create a PVM instance snapshot

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::SnapshotCreate.new({name: 'name_example'}) # SnapshotCreate | PVM Instance snapshot create parameters

begin
  # Create a PVM instance snapshot
  result = api_instance.pcloud_pvminstances_snapshots_post(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_snapshots_post: #{e}"
end
```

#### Using the pcloud_pvminstances_snapshots_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SnapshotCreateResponse>, Integer, Hash)> pcloud_pvminstances_snapshots_post_with_http_info(cloud_instance_id, pvm_instance_id, body)

```ruby
begin
  # Create a PVM instance snapshot
  data, status_code, headers = api_instance.pcloud_pvminstances_snapshots_post_with_http_info(cloud_instance_id, pvm_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SnapshotCreateResponse>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_snapshots_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **body** | [**SnapshotCreate**](SnapshotCreate.md) | PVM Instance snapshot create parameters |  |

### Return type

[**SnapshotCreateResponse**](SnapshotCreateResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_snapshots_restore_post

> <Snapshot> pcloud_pvminstances_snapshots_restore_post(cloud_instance_id, pvm_instance_id, snapshot_id, body, opts)

Restore a PVM Instance snapshot

To roll back the clone operation, append '?restore_fail_action=rollback' to the cURL URL. If you'd like to try the clone operation again, append '?restore_fail_action=retry' to the cURL URL.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
snapshot_id = 'snapshot_id_example' # String | PVM Instance snapshot id
body = IbmCloudPower::SnapshotRestore.new # SnapshotRestore | PVM Instance snapshot restore parameters
opts = {
  restore_fail_action: 'retry' # String | Action to take on a failed snapshot restore
}

begin
  # Restore a PVM Instance snapshot
  result = api_instance.pcloud_pvminstances_snapshots_restore_post(cloud_instance_id, pvm_instance_id, snapshot_id, body, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_snapshots_restore_post: #{e}"
end
```

#### Using the pcloud_pvminstances_snapshots_restore_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Snapshot>, Integer, Hash)> pcloud_pvminstances_snapshots_restore_post_with_http_info(cloud_instance_id, pvm_instance_id, snapshot_id, body, opts)

```ruby
begin
  # Restore a PVM Instance snapshot
  data, status_code, headers = api_instance.pcloud_pvminstances_snapshots_restore_post_with_http_info(cloud_instance_id, pvm_instance_id, snapshot_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Snapshot>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_pvminstances_snapshots_restore_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **snapshot_id** | **String** | PVM Instance snapshot id |  |
| **body** | [**SnapshotRestore**](SnapshotRestore.md) | PVM Instance snapshot restore parameters |  |
| **restore_fail_action** | **String** | Action to take on a failed snapshot restore | [optional] |

### Return type

[**Snapshot**](Snapshot.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_v2_pvminstances_capture_get

> <Job> pcloud_v2_pvminstances_capture_get(cloud_instance_id, pvm_instance_id)

Get a PVM Instance’s  last capture job details

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID

begin
  # Get a PVM Instance’s  last capture job details
  result = api_instance.pcloud_v2_pvminstances_capture_get(cloud_instance_id, pvm_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_v2_pvminstances_capture_get: #{e}"
end
```

#### Using the pcloud_v2_pvminstances_capture_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Job>, Integer, Hash)> pcloud_v2_pvminstances_capture_get_with_http_info(cloud_instance_id, pvm_instance_id)

```ruby
begin
  # Get a PVM Instance’s  last capture job details
  data, status_code, headers = api_instance.pcloud_v2_pvminstances_capture_get_with_http_info(cloud_instance_id, pvm_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Job>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_v2_pvminstances_capture_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |

### Return type

[**Job**](Job.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_v2_pvminstances_capture_post

> <JobReference> pcloud_v2_pvminstances_capture_post(cloud_instance_id, pvm_instance_id, body)

Capture a PVM instance and create a deployable image (version 2)

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudPVMInstancesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
body = IbmCloudPower::PVMInstanceCapture.new({capture_name: 'capture_name_example', capture_destination: 'image-catalog'}) # PVMInstanceCapture | Parameters for the capture

begin
  # Capture a PVM instance and create a deployable image (version 2)
  result = api_instance.pcloud_v2_pvminstances_capture_post(cloud_instance_id, pvm_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_v2_pvminstances_capture_post: #{e}"
end
```

#### Using the pcloud_v2_pvminstances_capture_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<JobReference>, Integer, Hash)> pcloud_v2_pvminstances_capture_post_with_http_info(cloud_instance_id, pvm_instance_id, body)

```ruby
begin
  # Capture a PVM instance and create a deployable image (version 2)
  data, status_code, headers = api_instance.pcloud_v2_pvminstances_capture_post_with_http_info(cloud_instance_id, pvm_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <JobReference>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudPVMInstancesApi->pcloud_v2_pvminstances_capture_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **body** | [**PVMInstanceCapture**](PVMInstanceCapture.md) | Parameters for the capture |  |

### Return type

[**JobReference**](JobReference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

