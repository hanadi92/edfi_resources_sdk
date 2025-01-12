# edfi_resources_sdk.model.TpdmEvaluationRating

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**evaluationDate** | [**DateTime**](DateTime.md) | The date for the person's evaluation. | 
**evaluationReference** | [**TpdmEvaluationReference**](TpdmEvaluationReference.md) |  | 
**performanceEvaluationRatingReference** | [**TpdmPerformanceEvaluationRatingReference**](TpdmPerformanceEvaluationRatingReference.md) |  | 
**sectionReference** | [**EdFiSectionReference**](EdFiSectionReference.md) |  | [optional] 
**actualDuration** | **int** | The actual or estimated number of clock minutes during which the evaluation was conducted. | [optional] 
**comments** | **String** | Any comments about the evaluation to be captured. | [optional] 
**evaluationRatingLevelDescriptor** | **String** | The rating level achieved based upon the rating or score. | [optional] 
**evaluationRatingStatusDescriptor** | **String** | The Status of the poerformance evaluation. | [optional] 
**results** | [**List<TpdmEvaluationRatingResult>**](TpdmEvaluationRatingResult.md) | An unordered collection of evaluationRatingResults. The numerical summary rating or score for the evaluation. | [optional] [default to const []]
**reviewers** | [**List<TpdmEvaluationRatingReviewer>**](TpdmEvaluationRatingReviewer.md) | An unordered collection of evaluationRatingReviewers. The person(s) that conducted the performance evaluation. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


