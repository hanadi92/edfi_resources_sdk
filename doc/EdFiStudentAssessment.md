# edfi_resources_sdk.model.EdFiStudentAssessment

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**studentAssessmentIdentifier** | **String** | A unique number or alphanumeric code assigned to an assessment administered to a student. | 
**assessmentReference** | [**EdFiAssessmentReference**](EdFiAssessmentReference.md) |  | 
**reportedSchoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | [optional] 
**schoolYearTypeReference** | [**EdFiSchoolYearTypeReference**](EdFiSchoolYearTypeReference.md) |  | [optional] 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**accommodations** | [**List<EdFiStudentAssessmentAccommodation>**](EdFiStudentAssessmentAccommodation.md) | An unordered collection of studentAssessmentAccommodations. The specific type of special variation used in how an examination is presented, how it is administered, or how the test taker is allowed to respond. This generally refers to changes that do not substantially alter what the examination measures. The proper use of accommodations does not substantially change academic level or performance criteria. | [optional] [default to const []]
**administrationDate** | [**DateTime**](DateTime.md) | The date and time an assessment was completed by the student. The use of ISO-8601 formats with a timezone designator (UTC or time offset) is recommended in order to prevent ambiguity due to time zones. | [optional] 
**administrationEndDate** | [**DateTime**](DateTime.md) | The date and time an assessment administration ended. | [optional] 
**administrationEnvironmentDescriptor** | **String** | The environment in which the test was administered. | [optional] 
**administrationLanguageDescriptor** | **String** | The language in which an assessment is written and/or administered. | [optional] 
**assessedMinutes** | **int** | Reported time student was assessed in minutes. | [optional] 
**eventCircumstanceDescriptor** | **String** | An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc. | [optional] 
**eventDescription** | **String** | Describes special events that occur before during or after the assessment session that may impact use of results. | [optional] 
**items** | [**List<EdFiStudentAssessmentItem>**](EdFiStudentAssessmentItem.md) | An unordered collection of studentAssessmentItems. The student's response to an assessment item and the item-level scores such as correct, incorrect, or met standard. | [optional] [default to const []]
**performanceLevels** | [**List<EdFiStudentAssessmentPerformanceLevel>**](EdFiStudentAssessmentPerformanceLevel.md) | An unordered collection of studentAssessmentPerformanceLevels. The performance level(s) achieved for the student assessment. | [optional] [default to const []]
**period** | [**EdFiStudentAssessmentPeriod**](EdFiStudentAssessmentPeriod.md) |  | [optional] 
**platformTypeDescriptor** | **String** | The platform with which the assessment was delivered to the student during the assessment session. | [optional] 
**reasonNotTestedDescriptor** | **String** | The primary reason student is not tested. | [optional] 
**reportedSchoolIdentifier** | **String** | A reported school identifier for the school the enrollment at the time of the assessment used when the assigned SchoolId is not known by the assessment vendor. | [optional] 
**retestIndicatorDescriptor** | **String** | Indicator if the test was a retake. | [optional] 
**scoreResults** | [**List<EdFiStudentAssessmentScoreResult>**](EdFiStudentAssessmentScoreResult.md) | An unordered collection of studentAssessmentScoreResults. A meaningful score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc. | [optional] [default to const []]
**serialNumber** | **String** | The unique number for the assessment form or answer document. | [optional] 
**studentObjectiveAssessments** | [**List<EdFiStudentAssessmentStudentObjectiveAssessment>**](EdFiStudentAssessmentStudentObjectiveAssessment.md) | An unordered collection of studentAssessmentStudentObjectiveAssessments. The student's score and/or performance levels earned for an objective assessment. | [optional] [default to const []]
**whenAssessedGradeLevelDescriptor** | **String** | The grade level of a student when assessed. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


