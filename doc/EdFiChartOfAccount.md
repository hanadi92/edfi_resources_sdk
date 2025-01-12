# edfi_resources_sdk.model.EdFiChartOfAccount

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**accountIdentifier** | **String** | SEA populated code value for the valid combination of account dimensions under which financials are reported. | 
**fiscalYear** | **int** | The fiscal year for the account | 
**balanceSheetDimensionReference** | [**EdFiBalanceSheetDimensionReference**](EdFiBalanceSheetDimensionReference.md) |  | [optional] 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**functionDimensionReference** | [**EdFiFunctionDimensionReference**](EdFiFunctionDimensionReference.md) |  | [optional] 
**fundDimensionReference** | [**EdFiFundDimensionReference**](EdFiFundDimensionReference.md) |  | [optional] 
**objectDimensionReference** | [**EdFiObjectDimensionReference**](EdFiObjectDimensionReference.md) |  | [optional] 
**operationalUnitDimensionReference** | [**EdFiOperationalUnitDimensionReference**](EdFiOperationalUnitDimensionReference.md) |  | [optional] 
**programDimensionReference** | [**EdFiProgramDimensionReference**](EdFiProgramDimensionReference.md) |  | [optional] 
**projectDimensionReference** | [**EdFiProjectDimensionReference**](EdFiProjectDimensionReference.md) |  | [optional] 
**sourceDimensionReference** | [**EdFiSourceDimensionReference**](EdFiSourceDimensionReference.md) |  | [optional] 
**accountName** | **String** | A descriptive name for the account. | [optional] 
**accountTypeDescriptor** | **String** | The type of account used in accounting such as revenue, expenditure, or balance sheet. | 
**reportingTags** | [**List<EdFiChartOfAccountReportingTag>**](EdFiChartOfAccountReportingTag.md) | An unordered collection of chartOfAccountReportingTags. Optional tag for accountability reporting. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


