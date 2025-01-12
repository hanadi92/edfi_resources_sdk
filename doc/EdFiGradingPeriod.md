# edfi_resources_sdk.model.EdFiGradingPeriod

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**gradingPeriodDescriptor** | **String** | The state's name of the period for which grades are reported. | 
**gradingPeriodName** | **String** | The school's descriptive name of the grading period. | 
**schoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | 
**schoolYearTypeReference** | [**EdFiSchoolYearTypeReference**](EdFiSchoolYearTypeReference.md) |  | 
**beginDate** | [**DateTime**](DateTime.md) | Month, day, and year of the first day of the grading period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**endDate** | [**DateTime**](DateTime.md) | Month, day, and year of the last day of the grading period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**periodSequence** | **int** | The sequential order of this period relative to other periods. | [optional] 
**totalInstructionalDays** | **int** | Total days available for educational instruction during the grading period. | 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


