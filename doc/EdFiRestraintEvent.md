# edfi_resources_sdk.model.EdFiRestraintEvent

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**restraintEventIdentifier** | **String** | A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity. | 
**disciplineIncidentReference** | [**EdFiDisciplineIncidentReference**](EdFiDisciplineIncidentReference.md) |  | [optional] 
**schoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**educationalEnvironmentDescriptor** | **String** | The setting where the RestraintEvent was exercised. | [optional] 
**eventDate** | [**DateTime**](DateTime.md) | Month, day, and year of the restraint event. | 
**programs** | [**List<EdFiRestraintEventProgram>**](EdFiRestraintEventProgram.md) | An unordered collection of restraintEventPrograms. The special education program associated with the restraint event. | [optional] [default to const []]
**reasons** | [**List<EdFiRestraintEventReason>**](EdFiRestraintEventReason.md) | An unordered collection of restraintEventReasons. A categorization of the circumstances or reason for the RestraintEvent. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


