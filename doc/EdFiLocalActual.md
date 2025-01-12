# edfi_resources_sdk.model.EdFiLocalActual

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**asOfDate** | [**DateTime**](DateTime.md) | The date of the reported amount for the account. | 
**localAccountReference** | [**EdFiLocalAccountReference**](EdFiLocalAccountReference.md) |  | 
**amount** | **double** | Current balance for the account. | 
**financialCollectionDescriptor** | **String** | The accounting period or grouping for which the amount is collected. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


