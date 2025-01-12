# edfi_resources_sdk.model.EdFiStudentCompetencyObjective

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**gradingPeriodReference** | [**EdFiGradingPeriodReference**](EdFiGradingPeriodReference.md) |  | 
**objectiveCompetencyObjectiveReference** | [**EdFiCompetencyObjectiveReference**](EdFiCompetencyObjectiveReference.md) |  | 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**competencyLevelDescriptor** | **String** | The competency level assessed for the student for the referenced competency objective. | 
**diagnosticStatement** | **String** | A statement provided by the teacher that provides information in addition to the grade or assessment score. | [optional] 
**generalStudentProgramAssociations** | [**List<EdFiStudentCompetencyObjectiveGeneralStudentProgramAssociation>**](EdFiStudentCompetencyObjectiveGeneralStudentProgramAssociation.md) | An unordered collection of studentCompetencyObjectiveGeneralStudentProgramAssociations. Relates the student and program associated with the competency objective. | [optional] [default to const []]
**studentSectionAssociations** | [**List<EdFiStudentCompetencyObjectiveStudentSectionAssociation>**](EdFiStudentCompetencyObjectiveStudentSectionAssociation.md) | An unordered collection of studentCompetencyObjectiveStudentSectionAssociations. Relates the student and section associated with the competency objective. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


