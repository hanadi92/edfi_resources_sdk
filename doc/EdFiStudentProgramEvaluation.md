# edfi_resources_sdk.model.EdFiStudentProgramEvaluation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**evaluationDate** | [**DateTime**](DateTime.md) | The month, day, and year on which the evaluation was conducted. | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | [optional] 
**programEvaluationReference** | [**EdFiProgramEvaluationReference**](EdFiProgramEvaluationReference.md) |  | 
**staffEvaluatorStaffReference** | [**EdFiStaffReference**](EdFiStaffReference.md) |  | [optional] 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**evaluationDuration** | **int** | The actual number of minutes to conduct the evaluation. | [optional] 
**externalEvaluators** | [**List<EdFiStudentProgramEvaluationExternalEvaluator>**](EdFiStudentProgramEvaluationExternalEvaluator.md) | An unordered collection of studentProgramEvaluationExternalEvaluators. The external person(s) - not staff - that conducted the evaluation. | [optional] [default to const []]
**studentEvaluationElements** | [**List<EdFiStudentProgramEvaluationStudentEvaluationElement>**](EdFiStudentProgramEvaluationStudentEvaluationElement.md) | An unordered collection of studentProgramEvaluationStudentEvaluationElements. The student's rating and/or rating levels earned for a program evaluation element. | [optional] [default to const []]
**studentEvaluationObjectives** | [**List<EdFiStudentProgramEvaluationStudentEvaluationObjective>**](EdFiStudentProgramEvaluationStudentEvaluationObjective.md) | An unordered collection of studentProgramEvaluationStudentEvaluationObjectives. The student's rating and/or rating levels earned for a program evaluation objective. | [optional] [default to const []]
**summaryEvaluationComment** | **String** | Any comments about the summary evaluation to be captured. | [optional] 
**summaryEvaluationNumericRating** | **double** | The numerical summary rating or score for the evaluation. | [optional] 
**summaryEvaluationRatingLevelDescriptor** | **String** | The summary rating level achieved based upon the rating or score. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


