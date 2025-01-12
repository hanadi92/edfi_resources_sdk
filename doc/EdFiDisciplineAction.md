# edfi_resources_sdk.model.EdFiDisciplineAction

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**disciplineActionIdentifier** | **String** | Identifier assigned by the education organization to the discipline action. | 
**disciplineDate** | [**DateTime**](DateTime.md) | The date of the discipline action. | 
**disciplines** | [**List<EdFiDisciplineActionDiscipline>**](EdFiDisciplineActionDiscipline.md) | An unordered collection of disciplineActionDisciplines. Type of action, such as removal from the classroom, used to discipline the student involved as a perpetrator in a discipline incident. | [default to const []]
**assignmentSchoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | [optional] 
**responsibilitySchoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**actualDisciplineActionLength** | **double** | Indicates the actual length in school days of a student's disciplinary assignment. | [optional] 
**disciplineActionLength** | **double** | The length of time in school days for the discipline action (e.g. removal, detention), if applicable. | [optional] 
**disciplineActionLengthDifferenceReasonDescriptor** | **String** | Indicates the reason for the difference, if any, between the official and actual lengths of a student's disciplinary assignment. | [optional] 
**iepPlacementMeetingIndicator** | **bool** | An indication as to whether an offense and/or disciplinary action resulted in a meeting of a student's Individualized Education Program (IEP) team to determine appropriate placement. | [optional] 
**relatedToZeroTolerancePolicy** | **bool** | An indication of whether or not this disciplinary action taken against a student was imposed as a consequence of state or local zero tolerance policies. | [optional] 
**staffs** | [**List<EdFiDisciplineActionStaff>**](EdFiDisciplineActionStaff.md) | An unordered collection of disciplineActionStaffs. The staff responsible for enforcing the discipline action. | [optional] [default to const []]
**studentDisciplineIncidentBehaviorAssociations** | [**List<EdFiDisciplineActionStudentDisciplineIncidentBehaviorAssociation>**](EdFiDisciplineActionStudentDisciplineIncidentBehaviorAssociation.md) | An unordered collection of disciplineActionStudentDisciplineIncidentBehaviorAssociations. A reference to the behavior(s) by the student that led or contributed to this specific action. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


