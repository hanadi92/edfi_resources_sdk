# edfi_resources_sdk.model.EdFiStudentSchoolAttendanceEvent

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**attendanceEventCategoryDescriptor** | **String** | A code describing the attendance event, for example:         Present         Unexcused absence         Excused absence         Tardy. | 
**eventDate** | [**DateTime**](DateTime.md) | Date for this attendance event. | 
**schoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | 
**sessionReference** | [**EdFiSessionReference**](EdFiSessionReference.md) |  | 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**arrivalTime** | **String** | The time of day the student arrived for the attendance event in ISO 8601 format. | [optional] 
**attendanceEventReason** | **String** | The reported reason for a student's absence. | [optional] 
**departureTime** | **String** | The time of day the student departed for the attendance event in ISO 8601 format. | [optional] 
**educationalEnvironmentDescriptor** | **String** | The setting in which a child receives education and related services. This attribute is only used if it differs from the EducationalEnvironment of the Section. This is only used in the AttendanceEvent if different from the associated Section. | [optional] 
**eventDuration** | **double** | The amount of time in days for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33. | [optional] 
**schoolAttendanceDuration** | **int** | The duration in minutes of the school attendance event. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


