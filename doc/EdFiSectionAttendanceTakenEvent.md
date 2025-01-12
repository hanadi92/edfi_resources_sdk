# edfi_resources_sdk.model.EdFiSectionAttendanceTakenEvent

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**calendarDateReference** | [**EdFiCalendarDateReference**](EdFiCalendarDateReference.md) |  | 
**sectionReference** | [**EdFiSectionReference**](EdFiSectionReference.md) |  | 
**staffReference** | [**EdFiStaffReference**](EdFiStaffReference.md) |  | [optional] 
**eventDate** | [**DateTime**](DateTime.md) | The date the section attendance taken event was submitted, which could be a different date than the instructional day. | 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


