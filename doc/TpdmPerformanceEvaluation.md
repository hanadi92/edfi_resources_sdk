# edfi_resources_sdk.model.TpdmPerformanceEvaluation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**evaluationPeriodDescriptor** | **String** | The period for the evaluation. | 
**performanceEvaluationTitle** | **String** | An assigned unique identifier for the performance evaluation. | 
**performanceEvaluationTypeDescriptor** | **String** | The type of performance evaluation conducted. | 
**termDescriptor** | **String** | The term for the session during the school year. | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**schoolYearTypeReference** | [**EdFiSchoolYearTypeReference**](EdFiSchoolYearTypeReference.md) |  | 
**academicSubjectDescriptor** | **String** | The description of the content or subject area of a performance evaluation. | [optional] 
**gradeLevels** | [**List<TpdmPerformanceEvaluationGradeLevel>**](TpdmPerformanceEvaluationGradeLevel.md) | An unordered collection of performanceEvaluationGradeLevels. The grade levels involved with the performance evaluation. | [optional] [default to const []]
**performanceEvaluationDescription** | **String** | The long description of the Performance Evaluation. | [optional] 
**ratingLevels** | [**List<TpdmPerformanceEvaluationRatingLevel>**](TpdmPerformanceEvaluationRatingLevel.md) | An unordered collection of performanceEvaluationRatingLevels. The descriptive level(s) of ratings (cut scores) for the evaluation. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


