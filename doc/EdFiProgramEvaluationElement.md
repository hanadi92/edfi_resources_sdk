# edfi_resources_sdk.model.EdFiProgramEvaluationElement

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**programEvaluationElementTitle** | **String** | The name or title of the program evaluation element. | 
**programEvaluationObjectiveReference** | [**EdFiProgramEvaluationObjectiveReference**](EdFiProgramEvaluationObjectiveReference.md) |  | [optional] 
**programEvaluationReference** | [**EdFiProgramEvaluationReference**](EdFiProgramEvaluationReference.md) |  | 
**elementMaxNumericRating** | **double** | The maximum summary numerical rating or score for the program evaluation element. | [optional] 
**elementMinNumericRating** | **double** | The minimum summary numerical rating or score for the program evaluation element. If omitted, assumed to be 0.0. | [optional] 
**elementSortOrder** | **int** | The sort order of this program evaluation element. | [optional] 
**programEvaluationElementDescription** | **String** | The long description of the program evaluation element. | [optional] 
**programEvaluationLevels** | [**List<EdFiProgramEvaluationElementProgramEvaluationLevel>**](EdFiProgramEvaluationElementProgramEvaluationLevel.md) | An unordered collection of programEvaluationElementProgramEvaluationLevels. The descriptive level(s) of ratings (cut scores) for the program evaluation element. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


