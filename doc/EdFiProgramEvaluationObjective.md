# edfi_resources_sdk.model.EdFiProgramEvaluationObjective

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**programEvaluationObjectiveTitle** | **String** | The name or title of the program evaluation objective. | 
**programEvaluationReference** | [**EdFiProgramEvaluationReference**](EdFiProgramEvaluationReference.md) |  | 
**objectiveMaxNumericRating** | **double** | The maximum summary numerical rating or score for the program evaluation objective. | [optional] 
**objectiveMinNumericRating** | **double** | The minimum summary numerical rating or score for the program evaluation objective. If omitted, assumed to be 0.0 | [optional] 
**objectiveSortOrder** | **int** | The sort order of this program evaluation objective. | [optional] 
**programEvaluationLevels** | [**List<EdFiProgramEvaluationObjectiveProgramEvaluationLevel>**](EdFiProgramEvaluationObjectiveProgramEvaluationLevel.md) | An unordered collection of programEvaluationObjectiveProgramEvaluationLevels. The descriptive level(s) of ratings (cut scores) for the program evaluation objective. | [optional] [default to const []]
**programEvaluationObjectiveDescription** | **String** | The long description of the program evaluation objective. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


