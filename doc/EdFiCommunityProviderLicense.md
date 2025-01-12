# edfi_resources_sdk.model.EdFiCommunityProviderLicense

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**licenseIdentifier** | **String** | The unique identifier issued by the licensing organization. | 
**licensingOrganization** | **String** | The organization issuing the license. | 
**communityProviderReference** | [**EdFiCommunityProviderReference**](EdFiCommunityProviderReference.md) |  | 
**authorizedFacilityCapacity** | **int** | The maximum number that can be contained or accommodated which a provider is authorized or licensed to serve. | [optional] 
**licenseEffectiveDate** | [**DateTime**](DateTime.md) | The month, day, and year on which a license is active or becomes effective.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**licenseExpirationDate** | [**DateTime**](DateTime.md) | The month, day, and year on which a license will expire.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**licenseIssueDate** | [**DateTime**](DateTime.md) | The month, day, and year on which an active license was issued. | [optional] 
**licenseStatusDescriptor** | **String** | An indication of the status of the license. | [optional] 
**licenseTypeDescriptor** | **String** | An indication of the category of the license. | 
**oldestAgeAuthorizedToServe** | **int** | The oldest age of children a provider is authorized or licensed to serve. | [optional] 
**youngestAgeAuthorizedToServe** | **int** | The youngest age of children a provider is authorized or licensed to serve. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


