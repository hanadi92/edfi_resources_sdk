# edfi_resources_sdk.model.TpdmEvaluationElement

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**evaluationElementTitle** | **String** | The name or title of the evaluation element. | 
**evaluationObjectiveReference** | [**TpdmEvaluationObjectiveReference**](TpdmEvaluationObjectiveReference.md) |  | 
**evaluationTypeDescriptor** | **String** | The type of the evaluation (e.g., observation, principal, peer, student survey, student growth). | [optional] 
**maxRating** | **double** | The maximum summary numerical rating or score for the evaluation element. | [optional] 
**minRating** | **double** | The minimum summary numerical rating or score for the evaluation element. If omitted, assumed to be 0.0. | [optional] 
**ratingLevels** | [**List<TpdmEvaluationElementRatingLevel>**](TpdmEvaluationElementRatingLevel.md) | An unordered collection of evaluationElementRatingLevels. The descriptive level(s) of ratings (cut scores) for evaluation element. | [optional] [default to const []]
**sortOrder** | **int** | The sort order of this Evaluation Element. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


