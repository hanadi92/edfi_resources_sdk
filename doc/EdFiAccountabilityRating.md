# edfi_resources_sdk.model.EdFiAccountabilityRating

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**ratingTitle** | **String** | The title of the rating. | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**schoolYearTypeReference** | [**EdFiSchoolYearTypeReference**](EdFiSchoolYearTypeReference.md) |  | 
**rating** | **String** | An accountability rating level, designation, or assessment. | 
**ratingDate** | [**DateTime**](DateTime.md) | The date the rating was awarded. | [optional] 
**ratingOrganization** | **String** | The organization that assessed the rating. | [optional] 
**ratingProgram** | **String** | The program associated with the accountability rating (e.g., NCLB, AEIS). | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


