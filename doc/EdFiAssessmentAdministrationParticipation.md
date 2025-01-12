# edfi_resources_sdk.model.EdFiAssessmentAdministrationParticipation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**assessmentAdministrationReference** | [**EdFiAssessmentAdministrationReference**](EdFiAssessmentAdministrationReference.md) |  | 
**participatingEducationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**administrationPointOfContacts** | [**List<EdFiAssessmentAdministrationParticipationAdministrationPointOfContact>**](EdFiAssessmentAdministrationParticipationAdministrationPointOfContact.md) | An unordered collection of assessmentAdministrationParticipationAdministrationPointOfContacts. Pre-identified contacts for education organizations administering the assessment. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


