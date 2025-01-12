# edfi_resources_sdk.model.EdFiStudentDisciplineIncidentNonOffenderAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**disciplineIncidentReference** | [**EdFiDisciplineIncidentReference**](EdFiDisciplineIncidentReference.md) |  | 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**disciplineIncidentParticipationCodes** | [**List<EdFiStudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode>**](EdFiStudentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCode.md) | An unordered collection of studentDisciplineIncidentNonOffenderAssociationDisciplineIncidentParticipationCodes. The role or type of participation of a student in a discipline incident. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


