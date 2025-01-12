# edfi_resources_sdk.model.EdFiEducationOrganizationNetworkAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**educationOrganizationNetworkReference** | [**EdFiEducationOrganizationNetworkReference**](EdFiEducationOrganizationNetworkReference.md) |  | 
**memberEducationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**beginDate** | [**DateTime**](DateTime.md) | The date on which the education organization joined this network.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**endDate** | [**DateTime**](DateTime.md) | The date on which the education organization left this network.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


