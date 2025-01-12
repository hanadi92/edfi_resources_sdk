# edfi_resources_sdk.model.EdFiAssessmentAdministration

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**administrationIdentifier** | **String** | The title or name of the assessment in the context of its administration. | 
**assessmentReference** | [**EdFiAssessmentReference**](EdFiAssessmentReference.md) |  | 
**assigningEducationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**assessmentBatteryParts** | [**List<EdFiAssessmentAdministrationAssessmentBatteryPart>**](EdFiAssessmentAdministrationAssessmentBatteryPart.md) | An unordered collection of assessmentAdministrationAssessmentBatteryParts. A reference to the parts of the assessment battery that are offered in this administration of the assessment. | [optional] [default to const []]
**periods** | [**List<EdFiAssessmentAdministrationPeriod>**](EdFiAssessmentAdministrationPeriod.md) | An unordered collection of assessmentAdministrationPeriods. The anticipated dates for the assessment or administration window. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


