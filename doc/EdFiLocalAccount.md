# edfi_resources_sdk.model.EdFiLocalAccount

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**accountIdentifier** | **String** | Code value for the valid combination of account dimensions by LEA under which financials are reported. | 
**fiscalYear** | **int** | The fiscal year for the account. | 
**chartOfAccountReference** | [**EdFiChartOfAccountReference**](EdFiChartOfAccountReference.md) |  | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**accountName** | **String** | A descriptive name for the account. | [optional] 
**reportingTags** | [**List<EdFiLocalAccountReportingTag>**](EdFiLocalAccountReportingTag.md) | An unordered collection of localAccountReportingTags. Optional tag for accountability reporting. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


