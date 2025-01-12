# edfi_resources_sdk.model.EdFiBalanceSheetDimension

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**code** | **String** | The code representation of the account balance sheet dimension. | 
**fiscalYear** | **int** | The fiscal year for which the account balance sheet dimension is valid. | 
**codeName** | **String** | A description of the account balance sheet dimension. | [optional] 
**reportingTags** | [**List<EdFiBalanceSheetDimensionReportingTag>**](EdFiBalanceSheetDimensionReportingTag.md) | An unordered collection of balanceSheetDimensionReportingTags. Optional tag for accountability reporting. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


