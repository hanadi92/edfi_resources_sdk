# edfi_resources_sdk.model.EdFiCourseTranscript

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**courseAttemptResultDescriptor** | **String** | The result from the student's attempt to take the course. | 
**courseReference** | [**EdFiCourseReference**](EdFiCourseReference.md) |  | 
**externalEducationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | [optional] 
**responsibleTeacherStaffReference** | [**EdFiStaffReference**](EdFiStaffReference.md) |  | [optional] 
**studentAcademicRecordReference** | [**EdFiStudentAcademicRecordReference**](EdFiStudentAcademicRecordReference.md) |  | 
**academicSubjects** | [**List<EdFiCourseTranscriptAcademicSubject>**](EdFiCourseTranscriptAcademicSubject.md) | An unordered collection of courseTranscriptAcademicSubjects. The subject area for the course transcript credits awarded in the course transcript. | [optional] [default to const []]
**alternativeCourseIdentificationCodes** | [**List<EdFiCourseTranscriptAlternativeCourseIdentificationCode>**](EdFiCourseTranscriptAlternativeCourseIdentificationCode.md) | An unordered collection of courseTranscriptAlternativeCourseIdentificationCodes. The code that identifies the course, course offering, the code from an external educational organization, or other alternate course code. | [optional] [default to const []]
**alternativeCourseTitle** | **String** | The descriptive name given to a course of study offered in the school, if different from the CourseTitle. | [optional] 
**assigningOrganizationIdentificationCode** | **String** | The organization code or name assigning the course identification code. | [optional] 
**attemptedCreditConversion** | **double** | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
**attemptedCredits** | **double** | The value of credits or units of value awarded for the completion of a course. | [optional] 
**attemptedCreditTypeDescriptor** | **String** | The type of credits or units of value awarded for the completion of a course. | [optional] 
**courseCatalogURL** | **String** | The URL for the course catalog that defines the course identification code. | [optional] 
**coursePrograms** | [**List<EdFiCourseTranscriptCourseProgram>**](EdFiCourseTranscriptCourseProgram.md) | An unordered collection of courseTranscriptCoursePrograms. The program(s) that the student participated in the context of the course. | [optional] [default to const []]
**courseRepeatCodeDescriptor** | **String** | Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student's academic grade average. | [optional] 
**courseTitle** | **String** | The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, language arts). | [optional] 
**creditCategories** | [**List<EdFiCourseTranscriptCreditCategory>**](EdFiCourseTranscriptCreditCategory.md) | An unordered collection of courseTranscriptCreditCategories. A categorization for the course transcript credits awarded in the course transcript. | [optional] [default to const []]
**earnedAdditionalCredits** | [**List<EdFiCourseTranscriptEarnedAdditionalCredits>**](EdFiCourseTranscriptEarnedAdditionalCredits.md) | An unordered collection of courseTranscriptEarnedAdditionalCredits. The number of additional credits a student attempted and could earn for successfully completing a given course. | [optional] [default to const []]
**earnedCreditConversion** | **double** | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
**earnedCredits** | **double** | The value of credits or units of value awarded for the completion of a course. | [optional] 
**earnedCreditTypeDescriptor** | **String** | The type of credits or units of value awarded for the completion of a course. | [optional] 
**externalEducationOrganizationNameOfInstitution** | **String** | Name of the external institution where the student completed the course; to be used only when the reference external education organization is not available. | [optional] 
**finalLetterGradeEarned** | **String** | The final indicator of student performance in a class as submitted by the instructor. | [optional] 
**finalNumericGradeEarned** | **double** | The final indicator of student performance in a class as submitted by the instructor. | [optional] 
**methodCreditEarnedDescriptor** | **String** | The method the credits were earned. | [optional] 
**partialCourseTranscriptAwards** | [**List<EdFiCourseTranscriptPartialCourseTranscriptAwards>**](EdFiCourseTranscriptPartialCourseTranscriptAwards.md) | An unordered collection of courseTranscriptPartialCourseTranscriptAwards. A collection of partial credits and/or grades a student earned against the course over the session, used when awards of credit are incremental. | [optional] [default to const []]
**sections** | [**List<EdFiCourseTranscriptSection>**](EdFiCourseTranscriptSection.md) | An unordered collection of courseTranscriptSections. The section(s) associated with the course transcript. | [optional] [default to const []]
**whenTakenGradeLevelDescriptor** | **String** | Student's grade level at time of course. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


