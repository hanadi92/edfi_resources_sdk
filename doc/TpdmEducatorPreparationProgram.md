# edfi_resources_sdk.model.TpdmEducatorPreparationProgram

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**programName** | **String** | The name of the Educator Preparation Program. | 
**programTypeDescriptor** | **String** | The type of program. | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**accreditationStatusDescriptor** | **String** | The current accreditation status of the Educator Preparation Program. | [optional] 
**gradeLevels** | [**List<TpdmEducatorPreparationProgramGradeLevel>**](TpdmEducatorPreparationProgramGradeLevel.md) | An unordered collection of educatorPreparationProgramGradeLevels. The grade levels served at the EPP Program. | [optional] [default to const []]
**programId** | **String** | A unique number or alphanumeric code assigned to a program by a school, school system, a state, or other agency or entity. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


