# edfi_resources_sdk.model.EdFiStudentAssessmentStudentObjectiveAssessment

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**administrationDate** | [**DateTime**](DateTime.md) | The date and time an assessment was completed by the student. The use of ISO-8601 formats with a timezone designator (UTC or time offset) is recommended in order to prevent ambiguity due to time zones. | [optional] 
**administrationEndDate** | [**DateTime**](DateTime.md) | The date and time an assessment administration ended. | [optional] 
**assessedMinutes** | **int** | Reported time student was assessed in minutes. | [optional] 
**objectiveAssessmentReference** | [**EdFiObjectiveAssessmentReference**](EdFiObjectiveAssessmentReference.md) |  | 
**performanceLevels** | [**List<EdFiStudentAssessmentStudentObjectiveAssessmentPerformanceLevel>**](EdFiStudentAssessmentStudentObjectiveAssessmentPerformanceLevel.md) | An unordered collection of studentAssessmentStudentObjectiveAssessmentPerformanceLevels. The performance level(s) achieved for the objective assessment. | [optional] [default to const []]
**scoreResults** | [**List<EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult>**](EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult.md) | An unordered collection of studentAssessmentStudentObjectiveAssessmentScoreResults. A meaningful score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


