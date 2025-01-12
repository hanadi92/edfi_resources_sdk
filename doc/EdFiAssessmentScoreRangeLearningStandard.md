# edfi_resources_sdk.model.EdFiAssessmentScoreRangeLearningStandard

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**learningStandards** | [**List<EdFiAssessmentScoreRangeLearningStandardLearningStandard>**](EdFiAssessmentScoreRangeLearningStandardLearningStandard.md) | An unordered collection of assessmentScoreRangeLearningStandardLearningStandards. Learning standard associated with the score range. | [default to const []]
**scoreRangeId** | **String** | A unique number or alphanumeric code assigned to the score range associated with one or more learning standards. | 
**assessmentReference** | [**EdFiAssessmentReference**](EdFiAssessmentReference.md) |  | 
**objectiveAssessmentReference** | [**EdFiObjectiveAssessmentReference**](EdFiObjectiveAssessmentReference.md) |  | [optional] 
**assessmentReportingMethodDescriptor** | **String** | The assessment reporting method defined (e.g., scale score, RIT scale score) associated with the referenced learning standard(s). | [optional] 
**maximumScore** | **String** | The maximum score in the score range. | 
**minimumScore** | **String** | The minimum score in the score range. | 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


