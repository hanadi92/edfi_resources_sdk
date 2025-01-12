# edfi_resources_sdk.model.EdFiAssessment

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**academicSubjects** | [**List<EdFiAssessmentAcademicSubject>**](EdFiAssessmentAcademicSubject.md) | An unordered collection of assessmentAcademicSubjects. The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment. | [default to const []]
**assessmentIdentifier** | **String** | A unique number or alphanumeric code assigned to an assessment. | 
**namespace** | **String** | Namespace for the assessment. | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | [optional] 
**adaptiveAssessment** | **bool** | Indicates that the assessment is adaptive. | [optional] 
**assessedGradeLevels** | [**List<EdFiAssessmentAssessedGradeLevel>**](EdFiAssessmentAssessedGradeLevel.md) | An unordered collection of assessmentAssessedGradeLevels. The grade level(s) for which an assessment is designed. The semantics of null is assumed to mean that the assessment is not associated with any grade level. | [optional] [default to const []]
**assessmentCategoryDescriptor** | **String** | The category of an assessment based on format and content. | [optional] 
**assessmentFamily** | **String** | The assessment family this assessment is a member of. | [optional] 
**assessmentForm** | **String** | Identifies the form of the assessment, for example a regular versus makeup form, multiple choice versus constructed response, etc. | [optional] 
**assessmentTitle** | **String** | The title or name of the assessment. | 
**assessmentVersion** | **int** | The version identifier for the assessment. | [optional] 
**contentStandard** | [**EdFiAssessmentContentStandard**](EdFiAssessmentContentStandard.md) |  | [optional] 
**identificationCodes** | [**List<EdFiAssessmentIdentificationCode>**](EdFiAssessmentIdentificationCode.md) | An unordered collection of assessmentIdentificationCodes. A unique number or alphanumeric code assigned to an assessment by a school, school system, a state, or other agency or entity. | [optional] [default to const []]
**languages** | [**List<EdFiAssessmentLanguage>**](EdFiAssessmentLanguage.md) | An unordered collection of assessmentLanguages. An indication of the languages in which the assessment is designed. | [optional] [default to const []]
**maxRawScore** | **double** | The maximum raw score achievable across all assessment items that are correct and scored at the maximum. | [optional] 
**nomenclature** | **String** | Reflects the specific nomenclature used for assessment. | [optional] 
**performanceLevels** | [**List<EdFiAssessmentPerformanceLevel>**](EdFiAssessmentPerformanceLevel.md) | An unordered collection of assessmentPerformanceLevels. Definition of the performance levels and the associated cut scores. Three styles are supported: 1. Specification of performance level by minimum and maximum score, 2. Specification of performance level by cut score, using only minimum score, 3. Specification of performance level without any mapping to scores. | [optional] [default to const []]
**periods** | [**List<EdFiAssessmentPeriod>**](EdFiAssessmentPeriod.md) | An unordered collection of assessmentPeriods. The period or window in which an assessment is supposed to be administered. | [optional] [default to const []]
**platformTypes** | [**List<EdFiAssessmentPlatformType>**](EdFiAssessmentPlatformType.md) | An unordered collection of assessmentPlatformTypes. The platforms with which the assessment may be delivered. | [optional] [default to const []]
**programs** | [**List<EdFiAssessmentProgram>**](EdFiAssessmentProgram.md) | An unordered collection of assessmentPrograms. The programs associated with the assessment. | [optional] [default to const []]
**revisionDate** | [**DateTime**](DateTime.md) | The month, day, and year that the conceptual design for the assessment was most recently revised substantially. | [optional] 
**scores** | [**List<EdFiAssessmentScore>**](EdFiAssessmentScore.md) | An unordered collection of assessmentScores. Definition of the scores to be expected from this assessment. | [optional] [default to const []]
**sections** | [**List<EdFiAssessmentSection>**](EdFiAssessmentSection.md) | An unordered collection of assessmentSections. The Section(s) to which the assessment is associated. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


