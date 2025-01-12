# edfi_resources_sdk.model.EdFiBellSchedule

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**bellScheduleName** | **String** | Name or title of the bell schedule. | 
**classPeriods** | [**List<EdFiBellScheduleClassPeriod>**](EdFiBellScheduleClassPeriod.md) | An unordered collection of bellScheduleClassPeriods. The class periods that compose this bell schedule. | [default to const []]
**schoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | 
**alternateDayName** | **String** | An alternate name for the day (e.g., Red, Blue). | [optional] 
**dates** | [**List<EdFiBellScheduleDate>**](EdFiBellScheduleDate.md) | An unordered collection of bellScheduleDates. The dates for which the bell schedule applies. | [optional] [default to const []]
**endTime** | **String** | An indication of the time of day the bell schedule ends. | [optional] 
**gradeLevels** | [**List<EdFiBellScheduleGradeLevel>**](EdFiBellScheduleGradeLevel.md) | An unordered collection of bellScheduleGradeLevels. The grade levels the particular bell schedule applies to. | [optional] [default to const []]
**startTime** | **String** | An indication of the time of day the bell schedule begins. | [optional] 
**totalInstructionalTime** | **int** | The total instructional time in minutes per day for the bell schedule. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


