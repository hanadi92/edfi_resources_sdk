# edfi_resources_sdk.model.EdFiEducationOrganizationIndicator

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**indicatorDescriptor** | **String** | The name or code for the indicator or metric. | 
**indicatorGroupDescriptor** | **String** | The name for a group of indicators. | [optional] 
**indicatorLevelDescriptor** | **String** | The value of the indicator or metric, as a value from a controlled vocabulary. The semantics of an empty value is \"not submitted.\" | [optional] 
**designatedBy** | **String** | The person, organization, or department that defined the metric. | [optional] 
**indicatorValue** | **String** | The value of the indicator or metric. The semantics of an empty value is \"not submitted.\" | [optional] 
**periods** | [**List<EdFiEducationOrganizationIndicatorPeriod>**](EdFiEducationOrganizationIndicatorPeriod.md) | An unordered collection of educationOrganizationIndicatorPeriods. The time period or as-of date for the indicator. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


