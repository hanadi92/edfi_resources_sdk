# edfi_resources_sdk.model.EdFiReportCard

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**gradingPeriodReference** | [**EdFiGradingPeriodReference**](EdFiGradingPeriodReference.md) |  | 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**gradePointAverages** | [**List<EdFiReportCardGradePointAverage>**](EdFiReportCardGradePointAverage.md) | An unordered collection of reportCardGradePointAverages. A measure of average performance for courses taken by an individual. | [optional] [default to const []]
**grades** | [**List<EdFiReportCardGrade>**](EdFiReportCardGrade.md) | An unordered collection of reportCardGrades. Grades for the classes attended by the student for this grading period. | [optional] [default to const []]
**numberOfDaysAbsent** | **double** | The number of days an individual is absent when school is in session during a given reporting period. | [optional] 
**numberOfDaysInAttendance** | **double** | The number of days an individual is present when school is in session during a given reporting period. | [optional] 
**numberOfDaysTardy** | **int** | The number of days an individual is tardy during a given reporting period. | [optional] 
**studentCompetencyObjectives** | [**List<EdFiReportCardStudentCompetencyObjective>**](EdFiReportCardStudentCompetencyObjective.md) | An unordered collection of reportCardStudentCompetencyObjectives. The student competency evaluations associated for this grading period. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


