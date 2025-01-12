# edfi_resources_sdk.model.EdFiStudentHealth

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**additionalImmunizations** | [**List<EdFiStudentHealthAdditionalImmunization>**](EdFiStudentHealthAdditionalImmunization.md) | An unordered collection of studentHealthAdditionalImmunizations. A record of additional immunizations satisfactorily received and reported. | [optional] [default to const []]
**asOfDate** | [**DateTime**](DateTime.md) | Date of last update of the student's health record. | 
**nonMedicalImmunizationExemptionDate** | [**DateTime**](DateTime.md) | The year, month and day of the nonmedical exemption from vaccination claimed by the student's parent or guardian. | [optional] 
**nonMedicalImmunizationExemptionDescriptor** | **String** | The type of nonmedical exemption from vaccination claimed by the student's parent or guardian. | [optional] 
**requiredImmunizations** | [**List<EdFiStudentHealthRequiredImmunization>**](EdFiStudentHealthRequiredImmunization.md) | An unordered collection of studentHealthRequiredImmunizations. A record of the immunizations satisfactorily  received for those recommended to protect the student against vaccine-preventable diseases. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


