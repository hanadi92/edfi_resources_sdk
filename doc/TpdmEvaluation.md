# edfi_resources_sdk.model.TpdmEvaluation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**evaluationTitle** | **String** | The name or title of the evaluation. | 
**performanceEvaluationReference** | [**TpdmPerformanceEvaluationReference**](TpdmPerformanceEvaluationReference.md) |  | 
**evaluationDescription** | **String** | The long description of the Evaluation. | [optional] 
**evaluationTypeDescriptor** | **String** | The type of the evaluation (e.g., observation, principal, peer, student survey, student growth). | [optional] 
**interRaterReliabilityScore** | **int** | A score indicating how much homogeneity, or consensus, there is in the ratings given by judges. Most commonly a percentage scale (1-100) | [optional] 
**maxRating** | **double** | The maximum summary numerical rating or score for the evaluation. | [optional] 
**minRating** | **double** | The minimum summary numerical rating or score for the evaluation. If omitted, assumed to be 0.0. | [optional] 
**ratingLevels** | [**List<TpdmEvaluationRatingLevel>**](TpdmEvaluationRatingLevel.md) | An unordered collection of evaluationRatingLevels. The descriptive level(s) of ratings (cut scores) for the evaluation. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


