# edfi_resources_sdk.model.TpdmEvaluationObjectiveRating

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**evaluationObjectiveReference** | [**TpdmEvaluationObjectiveReference**](TpdmEvaluationObjectiveReference.md) |  | 
**evaluationRatingReference** | [**TpdmEvaluationRatingReference**](TpdmEvaluationRatingReference.md) |  | 
**comments** | **String** | Any comments about the performance evaluation to be captured. | [optional] 
**objectiveRatingLevelDescriptor** | **String** | The rating level achieved based upon the rating or score. | [optional] 
**results** | [**List<TpdmEvaluationObjectiveRatingResult>**](TpdmEvaluationObjectiveRatingResult.md) | An unordered collection of evaluationObjectiveRatingResults. The numerical summary rating or score for the evaluation Objective. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


