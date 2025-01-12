# edfi_resources_sdk.model.EdFiDisciplineIncident

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**incidentIdentifier** | **String** | A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders. | 
**schoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | 
**behaviors** | [**List<EdFiDisciplineIncidentBehavior>**](EdFiDisciplineIncidentBehavior.md) | An unordered collection of disciplineIncidentBehaviors. Describes behavior by category and provides a detailed description. | [optional] [default to const []]
**caseNumber** | **String** | The case number assigned to the DisciplineIncident by law enforcement or other organization. | [optional] 
**externalParticipants** | [**List<EdFiDisciplineIncidentExternalParticipant>**](EdFiDisciplineIncidentExternalParticipant.md) | An unordered collection of disciplineIncidentExternalParticipants. Information on an individual involved in the discipline incident. | [optional] [default to const []]
**incidentCost** | **double** | The value of any quantifiable monetary loss directly resulting from the discipline incident. Examples include the value of repairs necessitated by vandalism of a school facility, or the value of personnel resources used for repairs or consumed by the incident. | [optional] 
**incidentDate** | [**DateTime**](DateTime.md) | The month, day, and year on which the discipline incident occurred. | 
**incidentDescription** | **String** | The description for an incident. | [optional] 
**incidentLocationDescriptor** | **String** | Identifies where the discipline incident occurred and whether or not it occurred on school. | [optional] 
**incidentTime** | **String** | An indication of the time of day the incident took place. | [optional] 
**reportedToLawEnforcement** | **bool** | Indicator of whether the incident was reported to law enforcement. | [optional] 
**reporterDescriptionDescriptor** | **String** | Information on the type of individual who reported the discipline incident. When known and/or if useful, use a more specific option code (e.g., \"Counselor\" rather than \"Professional Staff\"). | [optional] 
**reporterName** | **String** | Identifies the reporter of the discipline incident by name. | [optional] 
**weapons** | [**List<EdFiDisciplineIncidentWeapon>**](EdFiDisciplineIncidentWeapon.md) | An unordered collection of disciplineIncidentWeapons. Identifies the type of weapon used during an incident. The Federal Gun-Free Schools Act requires states to report the number of students expelled for bringing firearms to school by type of firearm. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


