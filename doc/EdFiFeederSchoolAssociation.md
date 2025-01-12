# edfi_resources_sdk.model.EdFiFeederSchoolAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**beginDate** | [**DateTime**](DateTime.md) | The month, day, and year of the first day of the feeder school association.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**feederSchoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | 
**schoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | 
**endDate** | [**DateTime**](DateTime.md) | The month, day, and year of the last day of the feeder school association.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**feederRelationshipDescription** | **String** | Describes the relationship from the feeder school to the receiving school, for example by program emphasis, such as special education, language immersion, science, or performing art. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


