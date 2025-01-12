# edfi_resources_sdk.model.EdFiSurvey

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**namespace** | **String** | Namespace for the survey. | 
**surveyIdentifier** | **String** | The unique survey identifier from the survey tool. | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | [optional] 
**schoolYearTypeReference** | [**EdFiSchoolYearTypeReference**](EdFiSchoolYearTypeReference.md) |  | 
**sessionReference** | [**EdFiSessionReference**](EdFiSessionReference.md) |  | [optional] 
**numberAdministered** | **int** | Number of persons to whom this survey was administered. | [optional] 
**surveyCategoryDescriptor** | **String** | The category or type of survey. | [optional] 
**surveyTitle** | **String** | The title of the survey. | 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


