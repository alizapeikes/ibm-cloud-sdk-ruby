# IbmCloudPower::PlacementGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the Placement Group |  |
| **name** | **String** | The name of the Placement Group |  |
| **policy** | **String** | The Placement Group Policy |  |
| **members** | **Array&lt;String&gt;** | The List of PVM Instance IDs associated with the Placement Group |  |

## Example

```ruby
require 'ibm_cloud_power'

instance = IbmCloudPower::PlacementGroup.new(
  id: null,
  name: null,
  policy: null,
  members: null
)
```

