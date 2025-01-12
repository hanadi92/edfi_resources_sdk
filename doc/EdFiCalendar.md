# edfi_resources_sdk.model.EdFiCalendar

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**calendarCode** | **String** | The identifier for the calendar. | 
**schoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | 
**schoolYearTypeReference** | [**EdFiSchoolYearTypeReference**](EdFiSchoolYearTypeReference.md) |  | 
**calendarTypeDescriptor** | **String** | Indicates the type of calendar. | 
**gradeLevels** | [**List<EdFiCalendarGradeLevel>**](EdFiCalendarGradeLevel.md) | An unordered collection of calendarGradeLevels. Indicates the grade level associated with the calendar. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


