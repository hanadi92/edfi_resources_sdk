# edfi_resources_sdk.model.EdFiStudentDisciplineIncidentBehaviorAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**behaviorDescriptor** | **String** | Describes behavior by category. | 
**disciplineIncidentReference** | [**EdFiDisciplineIncidentReference**](EdFiDisciplineIncidentReference.md) |  | 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**behaviorDetailedDescription** | **String** | Specifies a more granular level of detail of a behavior involved in the incident. | [optional] 
**disciplineIncidentParticipationCodes** | [**List<EdFiStudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode>**](EdFiStudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode.md) | An unordered collection of studentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCodes. The role or type of participation of a student in a discipline incident. | [optional] [default to const []]
**weapons** | [**List<EdFiStudentDisciplineIncidentBehaviorAssociationWeapon>**](EdFiStudentDisciplineIncidentBehaviorAssociationWeapon.md) | An unordered collection of studentDisciplineIncidentBehaviorAssociationWeapons. Identifies the type(s) of weapon used by the student during a discipline incident. The Federal Gun-Free Schools Act requires states to report the number of students expelled for bringing firearms to school by type of firearm. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


