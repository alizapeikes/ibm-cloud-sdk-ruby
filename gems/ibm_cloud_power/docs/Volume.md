# IbmCloudPower::Volume

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **volume_id** | **String** | Volume ID |  |
| **name** | **String** | Volume Name |  |
| **state** | **String** | Volume State | [optional] |
| **size** | **Float** | Volume Size |  |
| **shareable** | **Boolean** | Indicates if the volume is shareable between VMs | [optional] |
| **bootable** | **Boolean** | Indicates if the volume is boot capable | [optional] |
| **boot_volume** | **Boolean** | Indicates if the volume is the server&#39;s boot volume | [optional] |
| **delete_on_termination** | **Boolean** | Indicates if the volume should be deleted when the server terminates | [optional] |
| **disk_type** | **String** | Type of Disk | [optional] |
| **volume_pool** | **String** | Volume pool, name of storage pool where the volume is located | [optional] |
| **volume_type** | **String** | Volume type, name of storage template used to create the volume | [optional] |
| **wwn** | **String** | Volume world wide name | [optional] |
| **creation_date** | **Time** | Creation Date |  |
| **last_update_date** | **Time** | Last Update Date |  |
| **pvm_instance_ids** | **Array&lt;String&gt;** | List of PCloud PVM Instance attached to the volume | [optional] |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::Volume.new(
  volume_id: null,
  name: null,
  state: null,
  size: null,
  shareable: null,
  bootable: null,
  boot_volume: null,
  delete_on_termination: null,
  disk_type: null,
  volume_pool: null,
  volume_type: null,
  wwn: null,
  creation_date: null,
  last_update_date: null,
  pvm_instance_ids: null
)
```

