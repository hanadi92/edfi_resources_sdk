# edfi_resources_sdk.model.EdFiCommunityProvider

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**categories** | [**List<EdFiEducationOrganizationCategory>**](EdFiEducationOrganizationCategory.md) | An unordered collection of educationOrganizationCategories. The classification of the education agency within the geographic boundaries of a state according to the level of administrative and operational control granted by the state. | [default to const []]
**communityProviderId** | **int** | The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | 
**communityOrganizationReference** | [**EdFiCommunityOrganizationReference**](EdFiCommunityOrganizationReference.md) |  | [optional] 
**addresses** | [**List<EdFiEducationOrganizationAddress>**](EdFiEducationOrganizationAddress.md) | An unordered collection of educationOrganizationAddresses. The set of elements that describes an address for the education entity, including the street address, city, state, ZIP code, and ZIP code + 4. | [optional] [default to const []]
**identificationCodes** | [**List<EdFiEducationOrganizationIdentificationCode>**](EdFiEducationOrganizationIdentificationCode.md) | An unordered collection of educationOrganizationIdentificationCodes. A unique number or alphanumeric code assigned to an education organization by a school, school system, a state, or other agency or entity. | [optional] [default to const []]
**indicators** | [**List<EdFiEducationOrganizationIndicator>**](EdFiEducationOrganizationIndicator.md) | An unordered collection of educationOrganizationIndicators. An indicator or metric of an education organization. | [optional] [default to const []]
**institutionTelephones** | [**List<EdFiEducationOrganizationInstitutionTelephone>**](EdFiEducationOrganizationInstitutionTelephone.md) | An unordered collection of educationOrganizationInstitutionTelephones. The 10-digit telephone number, including the area code, for the education entity. | [optional] [default to const []]
**internationalAddresses** | [**List<EdFiEducationOrganizationInternationalAddress>**](EdFiEducationOrganizationInternationalAddress.md) | An unordered collection of educationOrganizationInternationalAddresses. The set of elements that describes the international physical location of the education entity. | [optional] [default to const []]
**licenseExemptIndicator** | **bool** | An indication of whether the provider is exempt from having a license. | [optional] 
**nameOfInstitution** | **String** | The full, legally accepted name of the institution. | 
**operationalStatusDescriptor** | **String** | The current operational status of the education organization (e.g., active, inactive). | [optional] 
**providerCategoryDescriptor** | **String** | Indicates the category of the provider. | 
**providerProfitabilityDescriptor** | **String** | Indicates the profitability status of the provider. | [optional] 
**providerStatusDescriptor** | **String** | Indicates the status of the provider. | 
**schoolIndicator** | **bool** | An indication of whether the community provider is a school. | [optional] 
**shortNameOfInstitution** | **String** | A short name for the institution. | [optional] 
**webSite** | **String** | The public web site address (URL) for the education organization. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


