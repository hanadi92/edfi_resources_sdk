# edfi_resources_sdk.model.TrackedChangesEdFiStudentSectionAttendanceEventKey

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attendanceEventCategoryDescriptor** | **String** | A code describing the attendance event, for example:         Present         Unexcused absence         Excused absence         Tardy. | [optional] 
**eventDate** | [**DateTime**](DateTime.md) | Date for this attendance event. | [optional] 
**localCourseCode** | **String** | The local code assigned by the School that identifies the course offering provided for the instruction of students. | [optional] 
**schoolId** | **int** | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
**schoolYear** | **int** | The identifier for the school year. | [optional] 
**sectionIdentifier** | **String** | The local identifier assigned to a section. | [optional] 
**sessionName** | **String** | The identifier for the calendar for the academic session. | [optional] 
**studentUniqueId** | **String** | A unique alphanumeric code assigned to a student. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


