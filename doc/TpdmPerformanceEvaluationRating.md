# edfi_resources_sdk.model.TpdmPerformanceEvaluationRating

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**performanceEvaluationReference** | [**TpdmPerformanceEvaluationReference**](TpdmPerformanceEvaluationReference.md) |  | 
**personReference** | [**EdFiPersonReference**](EdFiPersonReference.md) |  | 
**actualDate** | [**DateTime**](DateTime.md) | The month, day, and year on which the performance evaluation was conducted. | 
**actualDuration** | **int** | The actual or estimated number of clock minutes during which the performance evaluation was conducted. | [optional] 
**actualTime** | **String** | An indication of the the time at which the performance evaluation was conducted. | [optional] 
**announced** | **bool** | An indicator of whether the performance evaluation was announced or not. | [optional] 
**comments** | **String** | Any comments about the performance evaluation to be captured. | [optional] 
**coteachingStyleObservedDescriptor** | **String** | A type of co-teaching observed as part of the performance evaluation. | [optional] 
**performanceEvaluationRatingLevelDescriptor** | **String** | The rating level achieved based upon the rating or score. | [optional] 
**results** | [**List<TpdmPerformanceEvaluationRatingResult>**](TpdmPerformanceEvaluationRatingResult.md) | An unordered collection of performanceEvaluationRatingResults. The numerical summary rating or score for the performance evaluation. | [optional] [default to const []]
**reviewers** | [**List<TpdmPerformanceEvaluationRatingReviewer>**](TpdmPerformanceEvaluationRatingReviewer.md) | An unordered collection of performanceEvaluationRatingReviewers. The person(s) that conducted the performance evaluation. | [optional] [default to const []]
**scheduleDate** | [**DateTime**](DateTime.md) | The month, day, and year on which the performance evaluation was scheduled. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


