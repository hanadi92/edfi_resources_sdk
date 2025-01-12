# edfi_resources_sdk.model.EdFiStudentSectionAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**beginDate** | [**DateTime**](DateTime.md) | Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**dualCreditEducationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | [optional] 
**sectionReference** | [**EdFiSectionReference**](EdFiSectionReference.md) |  | 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**attemptStatusDescriptor** | **String** | An indication of the student's completion status for the section. | [optional] 
**dualCreditIndicator** | **bool** | Indicates whether the student assigned to the section is to receive dual credit upon successful completion. | [optional] 
**dualCreditInstitutionDescriptor** | **String** | Descriptor for the postsecondary institution offering college credit. This descriptor may be used to select a postsecondary institution that is not defined as an education organization, and/or select a general type of postsecondary institution. | [optional] 
**dualCreditTypeDescriptor** | **String** | For a student taking a dual credit course in a college or high school setting, indicates the type of dual credit program. | [optional] 
**dualHighSchoolCreditIndicator** | **bool** | Indicates whether successful completion of the course will result in credits toward high school graduation. | [optional] 
**endDate** | [**DateTime**](DateTime.md) | Month, day, and year of the withdrawal or exit of the student from the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**homeroomIndicator** | **bool** | Indicates the section is the student's homeroom. Homeroom period may the convention for taking daily attendance. | [optional] 
**programs** | [**List<EdFiStudentSectionAssociationProgram>**](EdFiStudentSectionAssociationProgram.md) | An unordered collection of studentSectionAssociationPrograms. The program(s) that the student is participating in the context of the course. | [optional] [default to const []]
**repeatIdentifierDescriptor** | **String** | An indication as to whether a student has previously taken a given course. | [optional] 
**teacherStudentDataLinkExclusion** | **bool** | Indicates that the student-section combination is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


