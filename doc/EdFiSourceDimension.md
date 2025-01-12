# edfi_resources_sdk.model.EdFiSourceDimension

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**code** | **String** | The code representation of the account source dimension. | 
**fiscalYear** | **int** | The fiscal year for which the account source dimension is valid. | 
**codeName** | **String** | A description of the account source dimension. | [optional] 
**reportingTags** | [**List<EdFiSourceDimensionReportingTag>**](EdFiSourceDimensionReportingTag.md) | An unordered collection of sourceDimensionReportingTags. Optional tag for accountability reporting. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


