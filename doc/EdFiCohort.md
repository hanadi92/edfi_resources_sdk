# edfi_resources_sdk.model.EdFiCohort

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**cohortIdentifier** | **String** | The name or ID for the cohort. | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**academicSubjectDescriptor** | **String** | The academic subject associated with an academic intervention. | [optional] 
**cohortDescription** | **String** | The description of the cohort and its purpose. | [optional] 
**cohortScopeDescriptor** | **String** | The scope of cohort (e.g., school, district, classroom). | [optional] 
**cohortTypeDescriptor** | **String** | The type of cohort (e.g., academic intervention, classroom breakout). | 
**programs** | [**List<EdFiCohortProgram>**](EdFiCohortProgram.md) | An unordered collection of cohortPrograms. The (optional) program associated with this cohort (e.g., special education). | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


