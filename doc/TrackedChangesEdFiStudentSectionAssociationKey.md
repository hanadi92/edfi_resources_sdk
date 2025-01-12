# edfi_resources_sdk.model.TrackedChangesEdFiStudentSectionAssociationKey

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**beginDate** | [**DateTime**](DateTime.md) | Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**localCourseCode** | **String** | The local code assigned by the School that identifies the course offering provided for the instruction of students. | [optional] 
**schoolId** | **int** | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
**schoolYear** | **int** | The identifier for the school year. | [optional] 
**sectionIdentifier** | **String** | The local identifier assigned to a section. | [optional] 
**sessionName** | **String** | The identifier for the calendar for the academic session. | [optional] 
**studentUniqueId** | **String** | A unique alphanumeric code assigned to a student. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


