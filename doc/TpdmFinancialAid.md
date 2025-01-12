# edfi_resources_sdk.model.TpdmFinancialAid

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**aidTypeDescriptor** | **String** | The classification of financial aid awarded to a person for the academic term/year. | 
**beginDate** | [**DateTime**](DateTime.md) | The date the award was designated.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**aidAmount** | **double** | The amount of financial aid awarded to a person for the term/year. | [optional] 
**aidConditionDescription** | **String** | The description of the condition (e.g., placement in a high need school) under which the aid was given. | [optional] 
**endDate** | [**DateTime**](DateTime.md) | The date the award was removed.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**pellGrantRecipient** | **bool** | Indicates a person who receives Pell Grant aid. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


