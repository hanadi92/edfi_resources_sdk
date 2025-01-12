# edfi_resources_sdk.model.EdFiObjectiveAssessment

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**identificationCode** | **String** | A unique number or alphanumeric code assigned to an objective assessment by a school, school system, a state, or other agency or entity. | 
**assessmentReference** | [**EdFiAssessmentReference**](EdFiAssessmentReference.md) |  | 
**parentObjectiveAssessmentReference** | [**EdFiObjectiveAssessmentReference**](EdFiObjectiveAssessmentReference.md) |  | [optional] 
**academicSubjectDescriptor** | **String** | The subject area of the objective assessment. | [optional] 
**assessmentItems** | [**List<EdFiObjectiveAssessmentAssessmentItem>**](EdFiObjectiveAssessmentAssessmentItem.md) | An unordered collection of objectiveAssessmentAssessmentItems. References individual test items, if appropriate. | [optional] [default to const []]
**description** | **String** | The description of the objective assessment (e.g., vocabulary, measurement, or geometry). | [optional] 
**learningStandards** | [**List<EdFiObjectiveAssessmentLearningStandard>**](EdFiObjectiveAssessmentLearningStandard.md) | An unordered collection of objectiveAssessmentLearningStandards. Learning standard tested by this objective assessment. | [optional] [default to const []]
**maxRawScore** | **double** | The maximum raw score achievable across all assessment items that are correct and scored at the maximum. | [optional] 
**nomenclature** | **String** | Reflects the specific nomenclature used for this level of objective assessment. | [optional] 
**percentOfAssessment** | **double** | The percentage of the assessment that tests this objective. | [optional] 
**performanceLevels** | [**List<EdFiObjectiveAssessmentPerformanceLevel>**](EdFiObjectiveAssessmentPerformanceLevel.md) | An unordered collection of objectiveAssessmentPerformanceLevels. Definition of the performance levels and the associated cut scores. Three styles are supported: 1. Specification of performance level by minimum and maximum score, 2. Specification of performance level by cut score, using only minimum score, 3. Specification of performance level without any mapping to scores | [optional] [default to const []]
**scores** | [**List<EdFiObjectiveAssessmentScore>**](EdFiObjectiveAssessmentScore.md) | An unordered collection of objectiveAssessmentScores. Definition of the scores to be expected from this objective assessment. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


