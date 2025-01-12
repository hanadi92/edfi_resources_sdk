# edfi_resources_sdk.model.EdFiStaffAbsenceEvent

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**absenceEventCategoryDescriptor** | **String** | The code describing the type of absence. | 
**eventDate** | [**DateTime**](DateTime.md) | Date for this leave event. | 
**staffReference** | [**EdFiStaffReference**](EdFiStaffReference.md) |  | 
**absenceEventReason** | **String** | Expanded reason for the staff absence. | [optional] 
**hoursAbsent** | **double** | The hours the staff was absent, if not the entire working day. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


