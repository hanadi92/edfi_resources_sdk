# edfi_resources_sdk.model.EdFiStudentAcademicRecord

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**termDescriptor** | **String** | The term for the session during the school year. | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**schoolYearTypeReference** | [**EdFiSchoolYearTypeReference**](EdFiSchoolYearTypeReference.md) |  | 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**academicHonors** | [**List<EdFiStudentAcademicRecordAcademicHonor>**](EdFiStudentAcademicRecordAcademicHonor.md) | An unordered collection of studentAcademicRecordAcademicHonors. Academic distinctions earned by or awarded to the student. | [optional] [default to const []]
**classRanking** | [**EdFiStudentAcademicRecordClassRanking**](EdFiStudentAcademicRecordClassRanking.md) |  | [optional] 
**cumulativeAttemptedCreditConversion** | **double** | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
**cumulativeAttemptedCredits** | **double** | The value of credits or units of value awarded for the completion of a course. | [optional] 
**cumulativeAttemptedCreditTypeDescriptor** | **String** | The type of credits or units of value awarded for the completion of a course. | [optional] 
**cumulativeEarnedCreditConversion** | **double** | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
**cumulativeEarnedCredits** | **double** | The value of credits or units of value awarded for the completion of a course. | [optional] 
**cumulativeEarnedCreditTypeDescriptor** | **String** | The type of credits or units of value awarded for the completion of a course. | [optional] 
**diplomas** | [**List<EdFiStudentAcademicRecordDiploma>**](EdFiStudentAcademicRecordDiploma.md) | An unordered collection of studentAcademicRecordDiplomas. Diploma(s) earned by the student. | [optional] [default to const []]
**gradePointAverages** | [**List<EdFiStudentAcademicRecordGradePointAverage>**](EdFiStudentAcademicRecordGradePointAverage.md) | An unordered collection of studentAcademicRecordGradePointAverages. The grade point average for an individual computed as the grade points earned divided by the number of credits attempted. | [optional] [default to const []]
**projectedGraduationDate** | [**DateTime**](DateTime.md) | The month and year the student is projected to graduate. | [optional] 
**recognitions** | [**List<EdFiStudentAcademicRecordRecognition>**](EdFiStudentAcademicRecordRecognition.md) | An unordered collection of studentAcademicRecordRecognitions. Recognitions given to the student for accomplishments in a co-curricular or extracurricular activity. | [optional] [default to const []]
**reportCards** | [**List<EdFiStudentAcademicRecordReportCard>**](EdFiStudentAcademicRecordReportCard.md) | An unordered collection of studentAcademicRecordReportCards. Report cards for the student. | [optional] [default to const []]
**sessionAttemptedCreditConversion** | **double** | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
**sessionAttemptedCredits** | **double** | The value of credits or units of value awarded for the completion of a course. | [optional] 
**sessionAttemptedCreditTypeDescriptor** | **String** | The type of credits or units of value awarded for the completion of a course. | [optional] 
**sessionEarnedCreditConversion** | **double** | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
**sessionEarnedCredits** | **double** | The value of credits or units of value awarded for the completion of a course. | [optional] 
**sessionEarnedCreditTypeDescriptor** | **String** | The type of credits or units of value awarded for the completion of a course. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


