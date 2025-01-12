# edfi_resources_sdk.model.EdFiStudentAssessmentRegistration

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**assessmentAdministrationReference** | [**EdFiAssessmentAdministrationReference**](EdFiAssessmentAdministrationReference.md) |  | 
**reportingEducationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | [optional] 
**scheduledStudentEducationOrganizationAssessmentAccommodationReference** | [**EdFiStudentEducationOrganizationAssessmentAccommodationReference**](EdFiStudentEducationOrganizationAssessmentAccommodationReference.md) |  | [optional] 
**studentEducationOrganizationAssociationReference** | [**EdFiStudentEducationOrganizationAssociationReference**](EdFiStudentEducationOrganizationAssociationReference.md) |  | 
**studentSchoolAssociationReference** | [**EdFiStudentSchoolAssociationReference**](EdFiStudentSchoolAssociationReference.md) |  | 
**testingEducationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | [optional] 
**assessmentAccommodations** | [**List<EdFiStudentAssessmentRegistrationAssessmentAccommodation>**](EdFiStudentAssessmentRegistrationAssessmentAccommodation.md) | An unordered collection of studentAssessmentRegistrationAssessmentAccommodations. The special variation(s) to be used in how assessments (in general) are presented, how it is administered, or how the test taker is allowed to respond. This generally refers to changes that do not substantially alter what the examination measures. The proper use of accommodations does not substantially change academic level or performance criteria. | [optional] [default to const []]
**assessmentCustomizations** | [**List<EdFiStudentAssessmentRegistrationAssessmentCustomization>**](EdFiStudentAssessmentRegistrationAssessmentCustomization.md) | An unordered collection of studentAssessmentRegistrationAssessmentCustomizations. Key/value pairs which may be used to facilitate customization of an assessment or to support vendor reporting/analysis. | [optional] [default to const []]
**assessmentGradeLevelDescriptor** | **String** | The grade level or primary instructional level at which the student is to be assessed. | [optional] 
**platformTypeDescriptor** | **String** | The environment or format in which the assessment is expected to be administered. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


