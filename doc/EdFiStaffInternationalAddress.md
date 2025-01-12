# edfi_resources_sdk.model.EdFiStaffInternationalAddress

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addressTypeDescriptor** | **String** | The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.) | 
**countryDescriptor** | **String** | The name of the country. It is strongly recommended that entries use only ISO 3166 2-letter country codes. | 
**addressLine1** | **String** | The first line of the address. | 
**addressLine2** | **String** | The second line of the address. | [optional] 
**addressLine3** | **String** | The third line of the address. | [optional] 
**addressLine4** | **String** | The fourth line of the address. | [optional] 
**beginDate** | [**DateTime**](DateTime.md) | The first date the address is valid. For physical addresses, the date the individual moved to that address.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**endDate** | [**DateTime**](DateTime.md) | The last date the address is valid. For physical addresses, the date the individual moved from that address.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**latitude** | **String** | The geographic latitude of the physical address. | [optional] 
**longitude** | **String** | The geographic longitude of the physical address. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


