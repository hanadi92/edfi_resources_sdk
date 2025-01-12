# edfi_resources_sdk.model.EdFiCalendarDate

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**calendarEvents** | [**List<EdFiCalendarDateCalendarEvent>**](EdFiCalendarDateCalendarEvent.md) | An unordered collection of calendarDateCalendarEvents. The type of scheduled or unscheduled event for the day. | [default to const []]
**date** | [**DateTime**](DateTime.md) | The month, day, and year of the calendar event. | 
**calendarReference** | [**EdFiCalendarReference**](EdFiCalendarReference.md) |  | 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


