# edfi_resources_sdk.model.EdFiSession

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**sessionName** | **String** | The identifier for the calendar for the academic session. | 
**schoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | 
**schoolYearTypeReference** | [**EdFiSchoolYearTypeReference**](EdFiSchoolYearTypeReference.md) |  | 
**academicWeeks** | [**List<EdFiSessionAcademicWeek>**](EdFiSessionAcademicWeek.md) | An unordered collection of sessionAcademicWeeks. The academic weeks associated with the school year. | [optional] [default to const []]
**beginDate** | [**DateTime**](DateTime.md) | Month, day, and year of the first day of the session.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**endDate** | [**DateTime**](DateTime.md) | Month, day and year of the last day of the session.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**gradingPeriods** | [**List<EdFiSessionGradingPeriod>**](EdFiSessionGradingPeriod.md) | An unordered collection of sessionGradingPeriods. Grading periods associated with the session. | [optional] [default to const []]
**termDescriptor** | **String** | A descriptor value to indicate the term that the session is associated with. | 
**totalInstructionalDays** | **int** | The total number of instructional days in the school calendar. | 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


