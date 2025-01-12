# edfi_resources_sdk.model.EdFiGraduationPlanCreditsByCourse

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**courseSetName** | **String** | Identifying name given to a collection of courses. | 
**creditTypeDescriptor** | **String** | The type of credits or units of value awarded for the completion of a course. | [optional] 
**whenTakenGradeLevelDescriptor** | **String** | The grade level when the student is planned to take the course. | [optional] 
**creditConversion** | **double** | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
**credits** | **double** | The value of credits or units of value awarded for the completion of a course. | 
**courses** | [**List<EdFiGraduationPlanCreditsByCourseCourse>**](EdFiGraduationPlanCreditsByCourseCourse.md) | An unordered collection of graduationPlanCreditsByCourseCourses. The course reference that identifies the organization of subject matter and related learning experiences provided for the instruction of students. | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


