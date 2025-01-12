# edfi_resources_sdk.model.EdFiStudentLanguageInstructionProgramAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**beginDate** | [**DateTime**](DateTime.md) | The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**programReference** | [**EdFiProgramReference**](EdFiProgramReference.md) |  | 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**dosage** | **int** | The duration of time in minutes for which the student was assigned to participate in the program. | [optional] 
**endDate** | [**DateTime**](DateTime.md) | The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**englishLanguageProficiencyAssessments** | [**List<EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment>**](EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment.md) | An unordered collection of studentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessments. Results of yearly English language assessment. | [optional] [default to const []]
**englishLearnerParticipation** | **bool** | An indication that an English learner student is served by an English language instruction educational program supported with Title III of ESEA funds. | [optional] 
**languageInstructionProgramServices** | [**List<EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService>**](EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService.md) | An unordered collection of studentLanguageInstructionProgramAssociationLanguageInstructionProgramServices. Indicates the service(s) being provided to the student by the language instruction program. | [optional] [default to const []]
**programParticipationStatuses** | [**List<EdFiGeneralStudentProgramAssociationProgramParticipationStatus>**](EdFiGeneralStudentProgramAssociationProgramParticipationStatus.md) | An unordered collection of generalStudentProgramAssociationProgramParticipationStatuses. The status of the student's program participation. | [optional] [default to const []]
**reasonExitedDescriptor** | **String** | The reason the student left the program within a school or district. | [optional] 
**servedOutsideOfRegularSession** | **bool** | Indicates whether the student received services during the summer session or between sessions. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


