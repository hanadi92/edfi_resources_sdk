# edfi_resources_sdk.model.EdFiStudentContactAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**contactReference** | [**EdFiContactReference**](EdFiContactReference.md) |  | 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**contactPriority** | **int** | The numeric order of the preferred sequence or priority of contact. | [optional] 
**contactRestrictions** | **String** | Restrictions for student and/or teacher contact with the individual (e.g., the student may not be picked up by the individual). | [optional] 
**emergencyContactStatus** | **bool** | Indicator of whether the person is a designated emergency contact for the student. | [optional] 
**legalGuardian** | **bool** | Indicator of whether the person is a legal guardian for the student. | [optional] 
**livesWith** | **bool** | Indicator of whether the student lives with the associated contact. | [optional] 
**primaryContactStatus** | **bool** | Indicator of whether the person is a primary contact for the student. | [optional] 
**relationDescriptor** | **String** | The nature of an individual's relationship to a student, primarily used to capture family relationships. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


