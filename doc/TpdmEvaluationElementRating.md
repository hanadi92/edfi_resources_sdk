# edfi_resources_sdk.model.TpdmEvaluationElementRating

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**evaluationElementReference** | [**TpdmEvaluationElementReference**](TpdmEvaluationElementReference.md) |  | 
**evaluationObjectiveRatingReference** | [**TpdmEvaluationObjectiveRatingReference**](TpdmEvaluationObjectiveRatingReference.md) |  | 
**areaOfRefinement** | **String** | Area identified for person to refine or improve as part of the evaluation. | [optional] 
**areaOfReinforcement** | **String** | Area identified for reinforcement or positive feedback as part of the evaluation. | [optional] 
**comments** | **String** | Any comments about the performance evaluation to be captured. | [optional] 
**evaluationElementRatingLevelDescriptor** | **String** | The rating level achieved based upon the rating or score. | [optional] 
**feedback** | **String** | Feedback provided to the evaluated person. | [optional] 
**results** | [**List<TpdmEvaluationElementRatingResult>**](TpdmEvaluationElementRatingResult.md) | An unordered collection of evaluationElementRatingResults. The numerical summary rating or score for the evaluation element. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


