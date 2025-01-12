# edfi_resources_sdk.model.EdFiStudentSchoolAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**entryDate** | [**DateTime**](DateTime.md) | The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student's enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**calendarReference** | [**EdFiCalendarReference**](EdFiCalendarReference.md) |  | [optional] 
**classOfSchoolYearTypeReference** | [**EdFiSchoolYearTypeReference**](EdFiSchoolYearTypeReference.md) |  | [optional] 
**graduationPlanReference** | [**EdFiGraduationPlanReference**](EdFiGraduationPlanReference.md) |  | [optional] 
**nextYearSchoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | [optional] 
**schoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | 
**schoolYearTypeReference** | [**EdFiSchoolYearTypeReference**](EdFiSchoolYearTypeReference.md) |  | [optional] 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**alternativeGraduationPlans** | [**List<EdFiStudentSchoolAssociationAlternativeGraduationPlan>**](EdFiStudentSchoolAssociationAlternativeGraduationPlan.md) | An unordered collection of studentSchoolAssociationAlternativeGraduationPlans. The secondary graduation plan or plans associated with the student enrolled in the school. | [optional] [default to const []]
**educationPlans** | [**List<EdFiStudentSchoolAssociationEducationPlan>**](EdFiStudentSchoolAssociationEducationPlan.md) | An unordered collection of studentSchoolAssociationEducationPlans. The type of education plan(s) the student is following, if appropriate. | [optional] [default to const []]
**employedWhileEnrolled** | **bool** | An individual who is a paid employee or works in his or her own business, profession, or farm and at the same time is enrolled in secondary, postsecondary, or adult education. | [optional] 
**enrollmentTypeDescriptor** | **String** | The type of enrollment reflected by the StudentSchoolAssociation. | [optional] 
**entryGradeLevelDescriptor** | **String** | The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session. | 
**entryGradeLevelReasonDescriptor** | **String** | The primary reason as to why a staff member determined that a student should be promoted or not (or be demoted) at the end of a given school term. | [optional] 
**entryTypeDescriptor** | **String** | The process by which a student enters a school during a given academic session. | [optional] 
**exitWithdrawDate** | [**DateTime**](DateTime.md) | The recorded exit or withdraw date for the student.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**exitWithdrawTypeDescriptor** | **String** | The circumstances under which the student exited from membership in an educational institution. | [optional] 
**fullTimeEquivalency** | **double** | The full-time equivalent ratio for the student s assignment to a school for services or instruction. For example, a full-time student would have an FTE value of 1 while a half-time student would have an FTE value of 0.5. | [optional] 
**nextYearGradeLevelDescriptor** | **String** | The anticipated grade level for the student for the next school year. | [optional] 
**primarySchool** | **bool** | Indicates if a given enrollment record should be considered the primary record for a student. | [optional] 
**repeatGradeIndicator** | **bool** | An indicator of whether the student is enrolling to repeat a grade level, either by failure or an agreement to hold the student back. | [optional] 
**residencyStatusDescriptor** | **String** | An indication of the location of a persons legal residence relative to (within or outside of) the boundaries of the public school attended and its administrative unit. | [optional] 
**schoolChoice** | **bool** | An indication of whether the student enrolled in this school under the provisions for public school choice | [optional] 
**schoolChoiceBasisDescriptor** | **String** | The legal basis for the school choice enrollment according to local, state or federal policy or regulation. (The descriptor provides the list of available bases specific to the state | [optional] 
**schoolChoiceTransfer** | **bool** | An indication of whether students transferred in or out of the school did so during the school year under the provisions for public school choice in accordance with Title I, Part A, Section 1116. | [optional] 
**termCompletionIndicator** | **bool** | Idicates whether or not a student completed the most recent school term. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


