# edfi_resources_sdk.model.EdFiProgramEvaluation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**programEvaluationPeriodDescriptor** | **String** | The name of the period for the program evaluation. | 
**programEvaluationTitle** | **String** | An assigned unique identifier for the student program evaluation. | 
**programEvaluationTypeDescriptor** | **String** | The type of program evaluation conducted. | 
**programReference** | [**EdFiProgramReference**](EdFiProgramReference.md) |  | 
**evaluationMaxNumericRating** | **double** | The maximum summary numerical rating or score for the program evaluation. | [optional] 
**evaluationMinNumericRating** | **double** | The minimum summary numerical rating or score for the program evaluation. If omitted, assumed to be 0.0 | [optional] 
**levels** | [**List<EdFiProgramEvaluationLevel>**](EdFiProgramEvaluationLevel.md) | An unordered collection of programEvaluationLevels. The descriptive level(s) of ratings (cut scores) for the program evaluation. | [optional] [default to const []]
**programEvaluationDescription** | **String** | The long description of the program evaluation. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


