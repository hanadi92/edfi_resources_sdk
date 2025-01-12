# edfi_resources_sdk.model.EdFiGraduationPlan

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**graduationPlanTypeDescriptor** | **String** | The type of academic plan the student is following for graduation. | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**graduationSchoolYearTypeReference** | [**EdFiSchoolYearTypeReference**](EdFiSchoolYearTypeReference.md) |  | 
**creditsByCourses** | [**List<EdFiGraduationPlanCreditsByCourse>**](EdFiGraduationPlanCreditsByCourse.md) | An unordered collection of graduationPlanCreditsByCourses. The total credits required for graduation by taking a specific course, or by taking one or more from a set of courses. | [optional] [default to const []]
**creditsByCreditCategories** | [**List<EdFiGraduationPlanCreditsByCreditCategory>**](EdFiGraduationPlanCreditsByCreditCategory.md) | An unordered collection of graduationPlanCreditsByCreditCategories. The total credits required for graduation based on the credit category. | [optional] [default to const []]
**creditsBySubjects** | [**List<EdFiGraduationPlanCreditsBySubject>**](EdFiGraduationPlanCreditsBySubject.md) | An unordered collection of graduationPlanCreditsBySubjects. The total credits required in subject to graduate. Only those courses identified as a high school course requirement are eligible to meet subject credit requirements. | [optional] [default to const []]
**individualPlan** | **bool** | An indicator of whether the graduation plan is tailored for an individual. | [optional] 
**requiredAssessments** | [**List<EdFiGraduationPlanRequiredAssessment>**](EdFiGraduationPlanRequiredAssessment.md) | An unordered collection of graduationPlanRequiredAssessments. The assessments and associated required score and performance level needed to satisfy graduation requirements. | [optional] [default to const []]
**totalRequiredCreditConversion** | **double** | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
**totalRequiredCredits** | **double** | The value of credits or units of value awarded for the completion of a course. | 
**totalRequiredCreditTypeDescriptor** | **String** | The type of credits or units of value awarded for the completion of a course. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


