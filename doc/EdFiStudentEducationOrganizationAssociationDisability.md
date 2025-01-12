# edfi_resources_sdk.model.EdFiStudentEducationOrganizationAssociationDisability

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**disabilityDescriptor** | **String** | A disability category that describes a individual's impairment. | 
**disabilityDeterminationSourceTypeDescriptor** | **String** | The source that provided the disability determination. | [optional] 
**disabilityDiagnosis** | **String** | A description of the disability diagnosis. | [optional] 
**orderOfDisability** | **int** | The order by severity of individual's disabilities: 1- Primary, 2 -  Secondary, 3 - Tertiary, etc. | [optional] 
**designations** | [**List<EdFiStudentEducationOrganizationAssociationDisabilityDesignation>**](EdFiStudentEducationOrganizationAssociationDisabilityDesignation.md) | An unordered collection of studentEducationOrganizationAssociationDisabilityDesignations. Whether the disability is IDEA, Section 504, or other disability designation. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


