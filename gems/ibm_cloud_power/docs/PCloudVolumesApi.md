# IbmCloudPower::PCloudVolumesApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**pcloud_cloudinstances_volumes_delete**](PCloudVolumesApi.md#pcloud_cloudinstances_volumes_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/{volume_id} | Delete a cloud instance volume |
| [**pcloud_cloudinstances_volumes_get**](PCloudVolumesApi.md#pcloud_cloudinstances_volumes_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/{volume_id} | Detailed information of a volume |
| [**pcloud_cloudinstances_volumes_getall**](PCloudVolumesApi.md#pcloud_cloudinstances_volumes_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes | List all volumes for this cloud instance |
| [**pcloud_cloudinstances_volumes_post**](PCloudVolumesApi.md#pcloud_cloudinstances_volumes_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes | Create a new data volume |
| [**pcloud_cloudinstances_volumes_put**](PCloudVolumesApi.md#pcloud_cloudinstances_volumes_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/{volume_id} | Update a cloud instance volume |
| [**pcloud_pvminstances_volumes_delete**](PCloudVolumesApi.md#pcloud_pvminstances_volumes_delete) | **DELETE** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes/{volume_id} | Detach a volume from a PVM Instance |
| [**pcloud_pvminstances_volumes_get**](PCloudVolumesApi.md#pcloud_pvminstances_volumes_get) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes/{volume_id} | Detailed information of a volume attached to a PVM Instance |
| [**pcloud_pvminstances_volumes_getall**](PCloudVolumesApi.md#pcloud_pvminstances_volumes_getall) | **GET** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes | List all volumes attached to a PVM Instance |
| [**pcloud_pvminstances_volumes_post**](PCloudVolumesApi.md#pcloud_pvminstances_volumes_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes/{volume_id} | Attach a volume to a PVM Instance |
| [**pcloud_pvminstances_volumes_put**](PCloudVolumesApi.md#pcloud_pvminstances_volumes_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes/{volume_id} | Update a volume attached to a PVMInstance |
| [**pcloud_pvminstances_volumes_setboot_put**](PCloudVolumesApi.md#pcloud_pvminstances_volumes_setboot_put) | **PUT** /pcloud/v1/cloud-instances/{cloud_instance_id}/pvm-instances/{pvm_instance_id}/volumes/{volume_id}/setboot | Set the PVMInstance volume as the boot volume |
| [**pcloud_v2_volumes_clone_post**](PCloudVolumesApi.md#pcloud_v2_volumes_clone_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes/clone | Create a volume clone for specified volumes (version 2) |
| [**pcloud_v2_volumes_clonetasks_get**](PCloudVolumesApi.md#pcloud_v2_volumes_clonetasks_get) | **GET** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes/clone-tasks/{clone_task_id} | Get the status of a volume clone request for the specified clone task ID |
| [**pcloud_v2_volumes_post**](PCloudVolumesApi.md#pcloud_v2_volumes_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes | Create multiple data volumes from a single definition |
| [**pcloud_v2_volumesclone_cancel_post**](PCloudVolumesApi.md#pcloud_v2_volumesclone_cancel_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone/{volumes_clone_id}/cancel | Cancel a volume-clone request, initiates the Cleanup action. The Cleanup action performs the cleanup of the preparatory clones and snapshot volumes. |
| [**pcloud_v2_volumesclone_delete**](PCloudVolumesApi.md#pcloud_v2_volumesclone_delete) | **DELETE** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone/{volumes_clone_id} | Delete a volumes-clone request |
| [**pcloud_v2_volumesclone_execute_post**](PCloudVolumesApi.md#pcloud_v2_volumesclone_execute_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone/{volumes_clone_id}/execute | Initiate the Execute action for a volumes-clone request. The Execute action creates the cloned volumes using the volume snapshots. |
| [**pcloud_v2_volumesclone_get**](PCloudVolumesApi.md#pcloud_v2_volumesclone_get) | **GET** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone/{volumes_clone_id} | Get the details for a volumes-clone request |
| [**pcloud_v2_volumesclone_getall**](PCloudVolumesApi.md#pcloud_v2_volumesclone_getall) | **GET** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone | Get the list of volumes-clone request for a cloud instance |
| [**pcloud_v2_volumesclone_post**](PCloudVolumesApi.md#pcloud_v2_volumesclone_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone | Create a new volumes clone request and initiate the Prepare action |
| [**pcloud_v2_volumesclone_start_post**](PCloudVolumesApi.md#pcloud_v2_volumesclone_start_post) | **POST** /pcloud/v2/cloud-instances/{cloud_instance_id}/volumes-clone/{volumes_clone_id}/start | Initiate the Start action for a volume-clone request. The Start action starts the consistency group to initiate the flash copy. |
| [**pcloud_volumes_clone_post**](PCloudVolumesApi.md#pcloud_volumes_clone_post) | **POST** /pcloud/v1/cloud-instances/{cloud_instance_id}/volumes/clone | Create a volume clone for specified volumes (version 1 - depricated) |


## pcloud_cloudinstances_volumes_delete

> Object pcloud_cloudinstances_volumes_delete(cloud_instance_id, volume_id)

Delete a cloud instance volume

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
volume_id = 'volume_id_example' # String | Volume ID

begin
  # Delete a cloud instance volume
  result = api_instance.pcloud_cloudinstances_volumes_delete(cloud_instance_id, volume_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_cloudinstances_volumes_delete: #{e}"
end
```

#### Using the pcloud_cloudinstances_volumes_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_cloudinstances_volumes_delete_with_http_info(cloud_instance_id, volume_id)

```ruby
begin
  # Delete a cloud instance volume
  data, status_code, headers = api_instance.pcloud_cloudinstances_volumes_delete_with_http_info(cloud_instance_id, volume_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_cloudinstances_volumes_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **volume_id** | **String** | Volume ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## pcloud_cloudinstances_volumes_get

> <Volume> pcloud_cloudinstances_volumes_get(cloud_instance_id, volume_id)

Detailed information of a volume

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
volume_id = 'volume_id_example' # String | Volume ID

begin
  # Detailed information of a volume
  result = api_instance.pcloud_cloudinstances_volumes_get(cloud_instance_id, volume_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_cloudinstances_volumes_get: #{e}"
end
```

#### Using the pcloud_cloudinstances_volumes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> pcloud_cloudinstances_volumes_get_with_http_info(cloud_instance_id, volume_id)

```ruby
begin
  # Detailed information of a volume
  data, status_code, headers = api_instance.pcloud_cloudinstances_volumes_get_with_http_info(cloud_instance_id, volume_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_cloudinstances_volumes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **volume_id** | **String** | Volume ID |  |

### Return type

[**Volume**](Volume.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudinstances_volumes_getall

> <Volumes> pcloud_cloudinstances_volumes_getall(cloud_instance_id, opts)

List all volumes for this cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
opts = {
  affinity: 'affinity_example' # String | A pvmInstance (id or name), limits a volumes list response to only volumes that have affinity to the pvmInstance
}

begin
  # List all volumes for this cloud instance
  result = api_instance.pcloud_cloudinstances_volumes_getall(cloud_instance_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_cloudinstances_volumes_getall: #{e}"
end
```

#### Using the pcloud_cloudinstances_volumes_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volumes>, Integer, Hash)> pcloud_cloudinstances_volumes_getall_with_http_info(cloud_instance_id, opts)

```ruby
begin
  # List all volumes for this cloud instance
  data, status_code, headers = api_instance.pcloud_cloudinstances_volumes_getall_with_http_info(cloud_instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volumes>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_cloudinstances_volumes_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **affinity** | **String** | A pvmInstance (id or name), limits a volumes list response to only volumes that have affinity to the pvmInstance | [optional] |

### Return type

[**Volumes**](Volumes.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_cloudinstances_volumes_post

> <Volume> pcloud_cloudinstances_volumes_post(cloud_instance_id, body)

Create a new data volume

All regions use Tier 1 (NVMe-based flash storage) or Tier 3 (SSD flash storage) storage types.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::CreateDataVolume.new({name: 'name_example', size: 3.56}) # CreateDataVolume | Parameters for the creation of a new data volume

begin
  # Create a new data volume
  result = api_instance.pcloud_cloudinstances_volumes_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_cloudinstances_volumes_post: #{e}"
end
```

#### Using the pcloud_cloudinstances_volumes_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> pcloud_cloudinstances_volumes_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Create a new data volume
  data, status_code, headers = api_instance.pcloud_cloudinstances_volumes_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_cloudinstances_volumes_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**CreateDataVolume**](CreateDataVolume.md) | Parameters for the creation of a new data volume |  |

### Return type

[**Volume**](Volume.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_cloudinstances_volumes_put

> <Volume> pcloud_cloudinstances_volumes_put(cloud_instance_id, volume_id, body)

Update a cloud instance volume

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
volume_id = 'volume_id_example' # String | Volume ID
body = IbmCloudPower::UpdateVolume.new # UpdateVolume | Parameters to update a cloud instance volume

begin
  # Update a cloud instance volume
  result = api_instance.pcloud_cloudinstances_volumes_put(cloud_instance_id, volume_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_cloudinstances_volumes_put: #{e}"
end
```

#### Using the pcloud_cloudinstances_volumes_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> pcloud_cloudinstances_volumes_put_with_http_info(cloud_instance_id, volume_id, body)

```ruby
begin
  # Update a cloud instance volume
  data, status_code, headers = api_instance.pcloud_cloudinstances_volumes_put_with_http_info(cloud_instance_id, volume_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_cloudinstances_volumes_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **volume_id** | **String** | Volume ID |  |
| **body** | [**UpdateVolume**](UpdateVolume.md) | Parameters to update a cloud instance volume |  |

### Return type

[**Volume**](Volume.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_volumes_delete

> Object pcloud_pvminstances_volumes_delete(cloud_instance_id, pvm_instance_id, volume_id)

Detach a volume from a PVM Instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
volume_id = 'volume_id_example' # String | Volume ID

begin
  # Detach a volume from a PVM Instance
  result = api_instance.pcloud_pvminstances_volumes_delete(cloud_instance_id, pvm_instance_id, volume_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_pvminstances_volumes_delete: #{e}"
end
```

#### Using the pcloud_pvminstances_volumes_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_pvminstances_volumes_delete_with_http_info(cloud_instance_id, pvm_instance_id, volume_id)

```ruby
begin
  # Detach a volume from a PVM Instance
  data, status_code, headers = api_instance.pcloud_pvminstances_volumes_delete_with_http_info(cloud_instance_id, pvm_instance_id, volume_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_pvminstances_volumes_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **volume_id** | **String** | Volume ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_volumes_get

> <Volume> pcloud_pvminstances_volumes_get(cloud_instance_id, pvm_instance_id, volume_id)

Detailed information of a volume attached to a PVM Instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
volume_id = 'volume_id_example' # String | Volume ID

begin
  # Detailed information of a volume attached to a PVM Instance
  result = api_instance.pcloud_pvminstances_volumes_get(cloud_instance_id, pvm_instance_id, volume_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_pvminstances_volumes_get: #{e}"
end
```

#### Using the pcloud_pvminstances_volumes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volume>, Integer, Hash)> pcloud_pvminstances_volumes_get_with_http_info(cloud_instance_id, pvm_instance_id, volume_id)

```ruby
begin
  # Detailed information of a volume attached to a PVM Instance
  data, status_code, headers = api_instance.pcloud_pvminstances_volumes_get_with_http_info(cloud_instance_id, pvm_instance_id, volume_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volume>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_pvminstances_volumes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **volume_id** | **String** | Volume ID |  |

### Return type

[**Volume**](Volume.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_volumes_getall

> <Volumes> pcloud_pvminstances_volumes_getall(cloud_instance_id, pvm_instance_id)

List all volumes attached to a PVM Instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID

begin
  # List all volumes attached to a PVM Instance
  result = api_instance.pcloud_pvminstances_volumes_getall(cloud_instance_id, pvm_instance_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_pvminstances_volumes_getall: #{e}"
end
```

#### Using the pcloud_pvminstances_volumes_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volumes>, Integer, Hash)> pcloud_pvminstances_volumes_getall_with_http_info(cloud_instance_id, pvm_instance_id)

```ruby
begin
  # List all volumes attached to a PVM Instance
  data, status_code, headers = api_instance.pcloud_pvminstances_volumes_getall_with_http_info(cloud_instance_id, pvm_instance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volumes>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_pvminstances_volumes_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |

### Return type

[**Volumes**](Volumes.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_volumes_post

> Object pcloud_pvminstances_volumes_post(cloud_instance_id, pvm_instance_id, volume_id)

Attach a volume to a PVM Instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
volume_id = 'volume_id_example' # String | Volume ID

begin
  # Attach a volume to a PVM Instance
  result = api_instance.pcloud_pvminstances_volumes_post(cloud_instance_id, pvm_instance_id, volume_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_pvminstances_volumes_post: #{e}"
end
```

#### Using the pcloud_pvminstances_volumes_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_pvminstances_volumes_post_with_http_info(cloud_instance_id, pvm_instance_id, volume_id)

```ruby
begin
  # Attach a volume to a PVM Instance
  data, status_code, headers = api_instance.pcloud_pvminstances_volumes_post_with_http_info(cloud_instance_id, pvm_instance_id, volume_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_pvminstances_volumes_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **volume_id** | **String** | Volume ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_pvminstances_volumes_put

> Object pcloud_pvminstances_volumes_put(cloud_instance_id, pvm_instance_id, volume_id, body)

Update a volume attached to a PVMInstance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
volume_id = 'volume_id_example' # String | Volume ID
body = IbmCloudPower::PVMInstanceVolumeUpdate.new({delete_on_termination: false}) # PVMInstanceVolumeUpdate | Parameters to update a volume attached to a PVMInstance

begin
  # Update a volume attached to a PVMInstance
  result = api_instance.pcloud_pvminstances_volumes_put(cloud_instance_id, pvm_instance_id, volume_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_pvminstances_volumes_put: #{e}"
end
```

#### Using the pcloud_pvminstances_volumes_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_pvminstances_volumes_put_with_http_info(cloud_instance_id, pvm_instance_id, volume_id, body)

```ruby
begin
  # Update a volume attached to a PVMInstance
  data, status_code, headers = api_instance.pcloud_pvminstances_volumes_put_with_http_info(cloud_instance_id, pvm_instance_id, volume_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_pvminstances_volumes_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **volume_id** | **String** | Volume ID |  |
| **body** | [**PVMInstanceVolumeUpdate**](PVMInstanceVolumeUpdate.md) | Parameters to update a volume attached to a PVMInstance |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_pvminstances_volumes_setboot_put

> Object pcloud_pvminstances_volumes_setboot_put(cloud_instance_id, pvm_instance_id, volume_id)

Set the PVMInstance volume as the boot volume

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
pvm_instance_id = 'pvm_instance_id_example' # String | PCloud PVM Instance ID
volume_id = 'volume_id_example' # String | Volume ID

begin
  # Set the PVMInstance volume as the boot volume
  result = api_instance.pcloud_pvminstances_volumes_setboot_put(cloud_instance_id, pvm_instance_id, volume_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_pvminstances_volumes_setboot_put: #{e}"
end
```

#### Using the pcloud_pvminstances_volumes_setboot_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_pvminstances_volumes_setboot_put_with_http_info(cloud_instance_id, pvm_instance_id, volume_id)

```ruby
begin
  # Set the PVMInstance volume as the boot volume
  data, status_code, headers = api_instance.pcloud_pvminstances_volumes_setboot_put_with_http_info(cloud_instance_id, pvm_instance_id, volume_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_pvminstances_volumes_setboot_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **pvm_instance_id** | **String** | PCloud PVM Instance ID |  |
| **volume_id** | **String** | Volume ID |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## pcloud_v2_volumes_clone_post

> <CloneTaskReference> pcloud_v2_volumes_clone_post(cloud_instance_id, body)

Create a volume clone for specified volumes (version 2)

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::VolumesCloneAsyncRequest.new({name: 'name_example', volume_ids: ['volume_ids_example']}) # VolumesCloneAsyncRequest | Parameters for the cloning of volumes

begin
  # Create a volume clone for specified volumes (version 2)
  result = api_instance.pcloud_v2_volumes_clone_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumes_clone_post: #{e}"
end
```

#### Using the pcloud_v2_volumes_clone_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CloneTaskReference>, Integer, Hash)> pcloud_v2_volumes_clone_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Create a volume clone for specified volumes (version 2)
  data, status_code, headers = api_instance.pcloud_v2_volumes_clone_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CloneTaskReference>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumes_clone_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**VolumesCloneAsyncRequest**](VolumesCloneAsyncRequest.md) | Parameters for the cloning of volumes |  |

### Return type

[**CloneTaskReference**](CloneTaskReference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_v2_volumes_clonetasks_get

> <CloneTaskStatus> pcloud_v2_volumes_clonetasks_get(cloud_instance_id, clone_task_id)

Get the status of a volume clone request for the specified clone task ID

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
clone_task_id = 'clone_task_id_example' # String | Volumes Clone Task ID

begin
  # Get the status of a volume clone request for the specified clone task ID
  result = api_instance.pcloud_v2_volumes_clonetasks_get(cloud_instance_id, clone_task_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumes_clonetasks_get: #{e}"
end
```

#### Using the pcloud_v2_volumes_clonetasks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CloneTaskStatus>, Integer, Hash)> pcloud_v2_volumes_clonetasks_get_with_http_info(cloud_instance_id, clone_task_id)

```ruby
begin
  # Get the status of a volume clone request for the specified clone task ID
  data, status_code, headers = api_instance.pcloud_v2_volumes_clonetasks_get_with_http_info(cloud_instance_id, clone_task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CloneTaskStatus>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumes_clonetasks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **clone_task_id** | **String** | Volumes Clone Task ID |  |

### Return type

[**CloneTaskStatus**](CloneTaskStatus.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_v2_volumes_post

> <Volumes> pcloud_v2_volumes_post(cloud_instance_id, body)

Create multiple data volumes from a single definition

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::MultiVolumesCreate.new({name: 'name_example', size: 37}) # MultiVolumesCreate | Parameters for creating multiple volumes

begin
  # Create multiple data volumes from a single definition
  result = api_instance.pcloud_v2_volumes_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumes_post: #{e}"
end
```

#### Using the pcloud_v2_volumes_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Volumes>, Integer, Hash)> pcloud_v2_volumes_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Create multiple data volumes from a single definition
  data, status_code, headers = api_instance.pcloud_v2_volumes_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Volumes>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumes_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**MultiVolumesCreate**](MultiVolumesCreate.md) | Parameters for creating multiple volumes |  |

### Return type

[**Volumes**](Volumes.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_v2_volumesclone_cancel_post

> <VolumesClone> pcloud_v2_volumesclone_cancel_post(cloud_instance_id, volumes_clone_id, opts)

Cancel a volume-clone request, initiates the Cleanup action. The Cleanup action performs the cleanup of the preparatory clones and snapshot volumes.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
volumes_clone_id = 'volumes_clone_id_example' # String | Volumes Clone ID, can be identified by the volumes-clone id or the volumes-clone name
opts = {
  body: IbmCloudPower::VolumesCloneCancel.new # VolumesCloneCancel | Parameters for cancelling a volumes-clone request
}

begin
  # Cancel a volume-clone request, initiates the Cleanup action. The Cleanup action performs the cleanup of the preparatory clones and snapshot volumes.
  result = api_instance.pcloud_v2_volumesclone_cancel_post(cloud_instance_id, volumes_clone_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumesclone_cancel_post: #{e}"
end
```

#### Using the pcloud_v2_volumesclone_cancel_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumesClone>, Integer, Hash)> pcloud_v2_volumesclone_cancel_post_with_http_info(cloud_instance_id, volumes_clone_id, opts)

```ruby
begin
  # Cancel a volume-clone request, initiates the Cleanup action. The Cleanup action performs the cleanup of the preparatory clones and snapshot volumes.
  data, status_code, headers = api_instance.pcloud_v2_volumesclone_cancel_post_with_http_info(cloud_instance_id, volumes_clone_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumesClone>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumesclone_cancel_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **volumes_clone_id** | **String** | Volumes Clone ID, can be identified by the volumes-clone id or the volumes-clone name |  |
| **body** | [**VolumesCloneCancel**](VolumesCloneCancel.md) | Parameters for cancelling a volumes-clone request | [optional] |

### Return type

[**VolumesClone**](VolumesClone.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_v2_volumesclone_delete

> Object pcloud_v2_volumesclone_delete(cloud_instance_id, volumes_clone_id)

Delete a volumes-clone request

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
volumes_clone_id = 'volumes_clone_id_example' # String | Volumes Clone ID, can be identified by the volumes-clone id or the volumes-clone name

begin
  # Delete a volumes-clone request
  result = api_instance.pcloud_v2_volumesclone_delete(cloud_instance_id, volumes_clone_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumesclone_delete: #{e}"
end
```

#### Using the pcloud_v2_volumesclone_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> pcloud_v2_volumesclone_delete_with_http_info(cloud_instance_id, volumes_clone_id)

```ruby
begin
  # Delete a volumes-clone request
  data, status_code, headers = api_instance.pcloud_v2_volumesclone_delete_with_http_info(cloud_instance_id, volumes_clone_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumesclone_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **volumes_clone_id** | **String** | Volumes Clone ID, can be identified by the volumes-clone id or the volumes-clone name |  |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## pcloud_v2_volumesclone_execute_post

> <VolumesClone> pcloud_v2_volumesclone_execute_post(cloud_instance_id, volumes_clone_id, body)

Initiate the Execute action for a volumes-clone request. The Execute action creates the cloned volumes using the volume snapshots.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
volumes_clone_id = 'volumes_clone_id_example' # String | Volumes Clone ID, can be identified by the volumes-clone id or the volumes-clone name
body = IbmCloudPower::VolumesCloneExecute.new({name: 'name_example'}) # VolumesCloneExecute | Parameters for the cloning of volumes

begin
  # Initiate the Execute action for a volumes-clone request. The Execute action creates the cloned volumes using the volume snapshots.
  result = api_instance.pcloud_v2_volumesclone_execute_post(cloud_instance_id, volumes_clone_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumesclone_execute_post: #{e}"
end
```

#### Using the pcloud_v2_volumesclone_execute_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumesClone>, Integer, Hash)> pcloud_v2_volumesclone_execute_post_with_http_info(cloud_instance_id, volumes_clone_id, body)

```ruby
begin
  # Initiate the Execute action for a volumes-clone request. The Execute action creates the cloned volumes using the volume snapshots.
  data, status_code, headers = api_instance.pcloud_v2_volumesclone_execute_post_with_http_info(cloud_instance_id, volumes_clone_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumesClone>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumesclone_execute_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **volumes_clone_id** | **String** | Volumes Clone ID, can be identified by the volumes-clone id or the volumes-clone name |  |
| **body** | [**VolumesCloneExecute**](VolumesCloneExecute.md) | Parameters for the cloning of volumes |  |

### Return type

[**VolumesClone**](VolumesClone.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_v2_volumesclone_get

> <VolumesCloneDetail> pcloud_v2_volumesclone_get(cloud_instance_id, volumes_clone_id)

Get the details for a volumes-clone request

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
volumes_clone_id = 'volumes_clone_id_example' # String | Volumes Clone ID, can be identified by the volumes-clone id or the volumes-clone name

begin
  # Get the details for a volumes-clone request
  result = api_instance.pcloud_v2_volumesclone_get(cloud_instance_id, volumes_clone_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumesclone_get: #{e}"
end
```

#### Using the pcloud_v2_volumesclone_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumesCloneDetail>, Integer, Hash)> pcloud_v2_volumesclone_get_with_http_info(cloud_instance_id, volumes_clone_id)

```ruby
begin
  # Get the details for a volumes-clone request
  data, status_code, headers = api_instance.pcloud_v2_volumesclone_get_with_http_info(cloud_instance_id, volumes_clone_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumesCloneDetail>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumesclone_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **volumes_clone_id** | **String** | Volumes Clone ID, can be identified by the volumes-clone id or the volumes-clone name |  |

### Return type

[**VolumesCloneDetail**](VolumesCloneDetail.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_v2_volumesclone_getall

> <VolumesClones> pcloud_v2_volumesclone_getall(cloud_instance_id, opts)

Get the list of volumes-clone request for a cloud instance

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
opts = {
  filter: 'prepare' # String | volumes-clone filter to limit list items:   prepare - includes status values (preparing, prepared)   start   - includes status values (starting, available)   execute - includes status values (executing, available-rollback)   cancel  - includes status values (cancelling)   completed - includes status values (completed)   failed - includes status values (failed)   cancelled - includes status values (cancelled)   finalized - included status values (completed, failed, cancelled) 
}

begin
  # Get the list of volumes-clone request for a cloud instance
  result = api_instance.pcloud_v2_volumesclone_getall(cloud_instance_id, opts)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumesclone_getall: #{e}"
end
```

#### Using the pcloud_v2_volumesclone_getall_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumesClones>, Integer, Hash)> pcloud_v2_volumesclone_getall_with_http_info(cloud_instance_id, opts)

```ruby
begin
  # Get the list of volumes-clone request for a cloud instance
  data, status_code, headers = api_instance.pcloud_v2_volumesclone_getall_with_http_info(cloud_instance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumesClones>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumesclone_getall_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **filter** | **String** | volumes-clone filter to limit list items:   prepare - includes status values (preparing, prepared)   start   - includes status values (starting, available)   execute - includes status values (executing, available-rollback)   cancel  - includes status values (cancelling)   completed - includes status values (completed)   failed - includes status values (failed)   cancelled - includes status values (cancelled)   finalized - included status values (completed, failed, cancelled)  | [optional] |

### Return type

[**VolumesClones**](VolumesClones.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pcloud_v2_volumesclone_post

> <VolumesClone> pcloud_v2_volumesclone_post(cloud_instance_id, body)

Create a new volumes clone request and initiate the Prepare action

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::VolumesCloneCreate.new({name: 'name_example', volume_ids: ['volume_ids_example']}) # VolumesCloneCreate | Parameters for preparing a set of volumes to be cloned (This API requires a minimum of two volumes, a minimum of one volume to be in the 'in-use' state, and a unique volume clone name. The Prepare action does the preparatory work for creating the snapshot volumes.)

begin
  # Create a new volumes clone request and initiate the Prepare action
  result = api_instance.pcloud_v2_volumesclone_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumesclone_post: #{e}"
end
```

#### Using the pcloud_v2_volumesclone_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumesClone>, Integer, Hash)> pcloud_v2_volumesclone_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Create a new volumes clone request and initiate the Prepare action
  data, status_code, headers = api_instance.pcloud_v2_volumesclone_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumesClone>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumesclone_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**VolumesCloneCreate**](VolumesCloneCreate.md) | Parameters for preparing a set of volumes to be cloned (This API requires a minimum of two volumes, a minimum of one volume to be in the &#39;in-use&#39; state, and a unique volume clone name. The Prepare action does the preparatory work for creating the snapshot volumes.) |  |

### Return type

[**VolumesClone**](VolumesClone.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## pcloud_v2_volumesclone_start_post

> <VolumesClone> pcloud_v2_volumesclone_start_post(cloud_instance_id, volumes_clone_id)

Initiate the Start action for a volume-clone request. The Start action starts the consistency group to initiate the flash copy.

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
volumes_clone_id = 'volumes_clone_id_example' # String | Volumes Clone ID, can be identified by the volumes-clone id or the volumes-clone name

begin
  # Initiate the Start action for a volume-clone request. The Start action starts the consistency group to initiate the flash copy.
  result = api_instance.pcloud_v2_volumesclone_start_post(cloud_instance_id, volumes_clone_id)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumesclone_start_post: #{e}"
end
```

#### Using the pcloud_v2_volumesclone_start_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumesClone>, Integer, Hash)> pcloud_v2_volumesclone_start_post_with_http_info(cloud_instance_id, volumes_clone_id)

```ruby
begin
  # Initiate the Start action for a volume-clone request. The Start action starts the consistency group to initiate the flash copy.
  data, status_code, headers = api_instance.pcloud_v2_volumesclone_start_post_with_http_info(cloud_instance_id, volumes_clone_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumesClone>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_v2_volumesclone_start_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **volumes_clone_id** | **String** | Volumes Clone ID, can be identified by the volumes-clone id or the volumes-clone name |  |

### Return type

[**VolumesClone**](VolumesClone.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*, application/json


## pcloud_volumes_clone_post

> <VolumesCloneResponse> pcloud_volumes_clone_post(cloud_instance_id, body)

Create a volume clone for specified volumes (version 1 - depricated)

### Examples

```ruby
require 'time'
require 'ibm_cloud_power'

api_instance = IbmCloudPower::PCloudVolumesApi.new
cloud_instance_id = 'cloud_instance_id_example' # String | Cloud Instance ID of a PCloud Instance
body = IbmCloudPower::VolumesCloneRequest.new({display_name: 'display_name_example', volume_ids: ['volume_ids_example']}) # VolumesCloneRequest | Parameters for the cloning of volumes

begin
  # Create a volume clone for specified volumes (version 1 - depricated)
  result = api_instance.pcloud_volumes_clone_post(cloud_instance_id, body)
  p result
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_volumes_clone_post: #{e}"
end
```

#### Using the pcloud_volumes_clone_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VolumesCloneResponse>, Integer, Hash)> pcloud_volumes_clone_post_with_http_info(cloud_instance_id, body)

```ruby
begin
  # Create a volume clone for specified volumes (version 1 - depricated)
  data, status_code, headers = api_instance.pcloud_volumes_clone_post_with_http_info(cloud_instance_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VolumesCloneResponse>
rescue IbmCloudPower::ApiError => e
  puts "Error when calling PCloudVolumesApi->pcloud_volumes_clone_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud_instance_id** | **String** | Cloud Instance ID of a PCloud Instance |  |
| **body** | [**VolumesCloneRequest**](VolumesCloneRequest.md) | Parameters for the cloning of volumes |  |

### Return type

[**VolumesCloneResponse**](VolumesCloneResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

