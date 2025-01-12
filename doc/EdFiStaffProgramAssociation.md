# edfi_resources_sdk.model.EdFiStaffProgramAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**beginDate** | [**DateTime**](DateTime.md) | Start date for the association of staff to this program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**programReference** | [**EdFiProgramReference**](EdFiProgramReference.md) |  | 
**staffReference** | [**EdFiStaffReference**](EdFiStaffReference.md) |  | 
**endDate** | [**DateTime**](DateTime.md) | End date for the association of staff to this program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**studentRecordAccess** | **bool** | Indicator of whether the staff has access to the student records of the program per district interpretation of FERPA and other privacy laws, regulations, and policies. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


