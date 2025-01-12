# edfi_resources_sdk.model.EdFiStudentGradebookEntry

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**gradebookEntryReference** | [**EdFiGradebookEntryReference**](EdFiGradebookEntryReference.md) |  | 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**assignmentLateStatusDescriptor** | **String** | Status of whether the assignment was submitted after the due date and/or marked as. | [optional] 
**competencyLevelDescriptor** | **String** | The competency level assessed for the student for the referenced learning objective. | [optional] 
**dateFulfilled** | [**DateTime**](DateTime.md) | The date an assignment was turned in or the date of an assessment. | [optional] 
**diagnosticStatement** | **String** | A statement provided by the teacher that provides information in addition to the grade or assessment score. | [optional] 
**letterGradeEarned** | **String** | A final or interim (grading period) indicator of student performance in a class as submitted by the instructor. | [optional] 
**numericGradeEarned** | **double** | A final or interim (grading period) indicator of student performance in a class as submitted by the instructor. | [optional] 
**pointsEarned** | **double** | The points earned for the submission. With extra credit, the points earned may exceed the max points. | [optional] 
**submissionStatusDescriptor** | **String** | The status of the student's submission. | [optional] 
**timeFulfilled** | **String** | The time an assignment was turned in on the date fulfilled. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


