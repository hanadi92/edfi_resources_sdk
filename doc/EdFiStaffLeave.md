# edfi_resources_sdk.model.EdFiStaffLeave

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**beginDate** | [**DateTime**](DateTime.md) | The begin date of the staff leave.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**staffLeaveEventCategoryDescriptor** | **String** | The code describing the type of leave taken. | 
**staffReference** | [**EdFiStaffReference**](EdFiStaffReference.md) |  | 
**endDate** | [**DateTime**](DateTime.md) | The end date of the staff leave.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**reason** | **String** | Expanded reason for the staff leave. | [optional] 
**substituteAssigned** | **bool** | Indicator of whether a substitute was assigned during the period of staff leave. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


