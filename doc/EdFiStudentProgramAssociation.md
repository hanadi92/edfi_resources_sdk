# edfi_resources_sdk.model.EdFiStudentProgramAssociation

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
**endDate** | [**DateTime**](DateTime.md) | The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**programParticipationStatuses** | [**List<EdFiGeneralStudentProgramAssociationProgramParticipationStatus>**](EdFiGeneralStudentProgramAssociationProgramParticipationStatus.md) | An unordered collection of generalStudentProgramAssociationProgramParticipationStatuses. The status of the student's program participation. | [optional] [default to const []]
**reasonExitedDescriptor** | **String** | The reason the student left the program within a school or district. | [optional] 
**servedOutsideOfRegularSession** | **bool** | Indicates whether the student received services during the summer session or between sessions. | [optional] 
**services** | [**List<EdFiStudentProgramAssociationService>**](EdFiStudentProgramAssociationService.md) | An unordered collection of studentProgramAssociationServices. Indicates the service(s) being provided to the student by the program. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


