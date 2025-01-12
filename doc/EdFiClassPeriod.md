# edfi_resources_sdk.model.EdFiClassPeriod

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**classPeriodName** | **String** | An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules). | 
**schoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | 
**meetingTimes** | [**List<EdFiClassPeriodMeetingTime>**](EdFiClassPeriodMeetingTime.md) | An unordered collection of classPeriodMeetingTimes. The meeting time(s) for a class period. | [optional] [default to const []]
**officialAttendancePeriod** | **bool** | Indicator of whether this class period is used for official daily attendance. Alternatively, official daily attendance may be tied to a section. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


