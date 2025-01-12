# edfi_resources_sdk.model.EdFiGrade

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**gradeTypeDescriptor** | **String** | The type of grade reported (e.g., exam, final, grading period). | 
**gradingPeriodReference** | [**EdFiGradingPeriodReference**](EdFiGradingPeriodReference.md) |  | 
**studentSectionAssociationReference** | [**EdFiStudentSectionAssociationReference**](EdFiStudentSectionAssociationReference.md) |  | 
**currentGradeAsOfDate** | [**DateTime**](DateTime.md) | As-Of date for a grade posted as the current grade. | [optional] 
**currentGradeIndicator** | **bool** | An indicator that the posted grade is an interim grade for the grading period and not the final grade. | [optional] 
**diagnosticStatement** | **String** | A statement provided by the teacher that provides information in addition to the grade or assessment score. | [optional] 
**gradeEarnedDescription** | **String** | A description of the grade earned by the learner. | [optional] 
**learningStandardGrades** | [**List<EdFiGradeLearningStandardGrade>**](EdFiGradeLearningStandardGrade.md) | An unordered collection of gradeLearningStandardGrades. A collection of learning standards associated with the grade. | [optional] [default to const []]
**letterGradeEarned** | **String** | A final or interim (grading period) indicator of student performance in a class as submitted by the instructor. | [optional] 
**numericGradeEarned** | **double** | A final or interim (grading period) indicator of student performance in a class as submitted by the instructor. | [optional] 
**performanceBaseConversionDescriptor** | **String** | A conversion of the level to a standard set of performance levels. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


