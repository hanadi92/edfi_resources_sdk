# edfi_resources_sdk.model.EdFiCourse

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**courseCode** | **String** | A unique alphanumeric code assigned to a course. | 
**identificationCodes** | [**List<EdFiCourseIdentificationCode>**](EdFiCourseIdentificationCode.md) | An unordered collection of courseIdentificationCodes. The code that identifies the organization of subject matter and related learning experiences provided for the instruction of students. | [default to const []]
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**academicSubjects** | [**List<EdFiCourseAcademicSubject>**](EdFiCourseAcademicSubject.md) | An unordered collection of courseAcademicSubjects. The intended major subject/s area of the course. | [optional] [default to const []]
**careerPathwayDescriptor** | **String** | Indicates the career cluster or pathway the course is associated with as part of a CTE curriculum. | [optional] 
**competencyLevels** | [**List<EdFiCourseCompetencyLevel>**](EdFiCourseCompetencyLevel.md) | An unordered collection of courseCompetencyLevels. The competency levels defined to rate the student for the course. | [optional] [default to const []]
**courseDefinedByDescriptor** | **String** | Specifies whether the course was defined by the SEA, LEA, School, or national organization. | [optional] 
**courseDescription** | **String** | A description of the content standards and goals covered in the course. Reference may be made to state or national content standards. | [optional] 
**courseGPAApplicabilityDescriptor** | **String** | An indicator of whether or not the course being described is included in the computation of the student's grade point average, and if so, if it is weighted differently from regular courses. | [optional] 
**courseTitle** | **String** | The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, and language arts). | 
**dateCourseAdopted** | [**DateTime**](DateTime.md) | Date the course was adopted by the education agency. | [optional] 
**highSchoolCourseRequirement** | **bool** | An indication that this course may satisfy high school graduation requirements in the course's subject area. | [optional] 
**learningStandards** | [**List<EdFiCourseLearningStandard>**](EdFiCourseLearningStandard.md) | An unordered collection of courseLearningStandards. Learning standard(s) to be taught by the course. | [optional] [default to const []]
**levelCharacteristics** | [**List<EdFiCourseLevelCharacteristic>**](EdFiCourseLevelCharacteristic.md) | An unordered collection of courseLevelCharacteristics. The type of specific program or designation with which the course is associated (e.g., AP, IB, Dual Credit, CTE). | [optional] [default to const []]
**maxCompletionsForCredit** | **int** | Designates how many times the course may be taken with credit received by the student. | [optional] 
**maximumAvailableCreditConversion** | **double** | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
**maximumAvailableCredits** | **double** | The value of credits or units of value awarded for the completion of a course. | [optional] 
**maximumAvailableCreditTypeDescriptor** | **String** | The type of credits or units of value awarded for the completion of a course. | [optional] 
**minimumAvailableCreditConversion** | **double** | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
**minimumAvailableCredits** | **double** | The value of credits or units of value awarded for the completion of a course. | [optional] 
**minimumAvailableCreditTypeDescriptor** | **String** | The type of credits or units of value awarded for the completion of a course. | [optional] 
**numberOfParts** | **int** | The number of parts identified for a course. | 
**offeredGradeLevels** | [**List<EdFiCourseOfferedGradeLevel>**](EdFiCourseOfferedGradeLevel.md) | An unordered collection of courseOfferedGradeLevels. The grade levels in which the course is offered. | [optional] [default to const []]
**timeRequiredForCompletion** | **int** | The actual or estimated number of clock minutes required for class completion. This number is especially important for career and technical education classes and may represent (in minutes) the clock hour requirement of the class. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


