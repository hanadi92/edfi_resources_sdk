# edfi_resources_sdk.model.EdFiGradebookEntry

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**gradebookEntryIdentifier** | **String** | A unique number or alphanumeric code assigned to a gradebook entry by the source system. | 
**namespace** | **String** | Namespace URI for the source of the gradebook entry. | 
**gradingPeriodReference** | [**EdFiGradingPeriodReference**](EdFiGradingPeriodReference.md) |  | [optional] 
**sectionReference** | [**EdFiSectionReference**](EdFiSectionReference.md) |  | [optional] 
**dateAssigned** | [**DateTime**](DateTime.md) | The date the assignment, homework, or assessment was assigned or executed. | 
**description** | **String** | A description of the assignment, homework, or classroom assessment. | [optional] 
**dueDate** | [**DateTime**](DateTime.md) | The date the assignment, homework, or assessment is due. | [optional] 
**dueTime** | **String** | The time the assignment, homework, or assessment is due. | [optional] 
**gradebookEntryTypeDescriptor** | **String** | The type of the gradebook entry. | [optional] 
**learningStandards** | [**List<EdFiGradebookEntryLearningStandard>**](EdFiGradebookEntryLearningStandard.md) | An unordered collection of gradebookEntryLearningStandards. LearningStandard(s) associated with the gradebook entry. | [optional] [default to const []]
**maxPoints** | **double** | The maximum number of points  that can be earned for the submission. | [optional] 
**sourceSectionIdentifier** | **String** | The local identifier assigned to a section. | 
**title** | **String** | The name or title of the activity to be recorded in the gradebook entry. | 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


