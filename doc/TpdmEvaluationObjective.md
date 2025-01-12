# edfi_resources_sdk.model.TpdmEvaluationObjective

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**evaluationObjectiveTitle** | **String** | The name or title of the evaluation Objective. | 
**evaluationReference** | [**TpdmEvaluationReference**](TpdmEvaluationReference.md) |  | 
**evaluationObjectiveDescription** | **String** | The long description of the Evaluation Objective. | [optional] 
**evaluationTypeDescriptor** | **String** | The type of the evaluation Objective (e.g., observation, principal, peer, student survey, student growth). | [optional] 
**maxRating** | **double** | The maximum summary numerical rating or score for the evaluation Objective. | [optional] 
**minRating** | **double** | The minimum summary numerical rating or score for the evaluation Objective. If omitted, assumed to be 0.0. | [optional] 
**ratingLevels** | [**List<TpdmEvaluationObjectiveRatingLevel>**](TpdmEvaluationObjectiveRatingLevel.md) | An unordered collection of evaluationObjectiveRatingLevels. The descriptive level(s) of ratings (cut scores) for evaluation Objective. | [optional] [default to const []]
**sortOrder** | **int** | The sort order of this Evaluation Objective. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


