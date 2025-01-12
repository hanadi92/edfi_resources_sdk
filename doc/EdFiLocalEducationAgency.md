# edfi_resources_sdk.model.EdFiLocalEducationAgency

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**categories** | [**List<EdFiEducationOrganizationCategory>**](EdFiEducationOrganizationCategory.md) | An unordered collection of educationOrganizationCategories. The classification of the education agency within the geographic boundaries of a state according to the level of administrative and operational control granted by the state. | [default to const []]
**localEducationAgencyId** | **int** | The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication. | 
**educationServiceCenterReference** | [**EdFiEducationServiceCenterReference**](EdFiEducationServiceCenterReference.md) |  | [optional] 
**parentLocalEducationAgencyReference** | [**EdFiLocalEducationAgencyReference**](EdFiLocalEducationAgencyReference.md) |  | [optional] 
**stateEducationAgencyReference** | [**EdFiStateEducationAgencyReference**](EdFiStateEducationAgencyReference.md) |  | [optional] 
**accountabilities** | [**List<EdFiLocalEducationAgencyAccountability>**](EdFiLocalEducationAgencyAccountability.md) | An unordered collection of localEducationAgencyAccountabilities. This entity maintains information about federal reporting and accountability for local education agencies. | [optional] [default to const []]
**addresses** | [**List<EdFiEducationOrganizationAddress>**](EdFiEducationOrganizationAddress.md) | An unordered collection of educationOrganizationAddresses. The set of elements that describes an address for the education entity, including the street address, city, state, ZIP code, and ZIP code + 4. | [optional] [default to const []]
**charterStatusDescriptor** | **String** | A school or agency providing free public elementary or secondary education to eligible students under a specific charter granted by the state legislature or other appropriate authority and designated by such authority to be a charter school. | [optional] 
**federalFunds** | [**List<EdFiLocalEducationAgencyFederalFunds>**](EdFiLocalEducationAgencyFederalFunds.md) | An unordered collection of localEducationAgencyFederalFunds. Contains the information about the reception and use of federal funds for reporting purposes. | [optional] [default to const []]
**identificationCodes** | [**List<EdFiEducationOrganizationIdentificationCode>**](EdFiEducationOrganizationIdentificationCode.md) | An unordered collection of educationOrganizationIdentificationCodes. A unique number or alphanumeric code assigned to an education organization by a school, school system, a state, or other agency or entity. | [optional] [default to const []]
**indicators** | [**List<EdFiEducationOrganizationIndicator>**](EdFiEducationOrganizationIndicator.md) | An unordered collection of educationOrganizationIndicators. An indicator or metric of an education organization. | [optional] [default to const []]
**institutionTelephones** | [**List<EdFiEducationOrganizationInstitutionTelephone>**](EdFiEducationOrganizationInstitutionTelephone.md) | An unordered collection of educationOrganizationInstitutionTelephones. The 10-digit telephone number, including the area code, for the education entity. | [optional] [default to const []]
**internationalAddresses** | [**List<EdFiEducationOrganizationInternationalAddress>**](EdFiEducationOrganizationInternationalAddress.md) | An unordered collection of educationOrganizationInternationalAddresses. The set of elements that describes the international physical location of the education entity. | [optional] [default to const []]
**localEducationAgencyCategoryDescriptor** | **String** | The category of local education agency/district. | 
**nameOfInstitution** | **String** | The full, legally accepted name of the institution. | 
**operationalStatusDescriptor** | **String** | The current operational status of the education organization (e.g., active, inactive). | [optional] 
**shortNameOfInstitution** | **String** | A short name for the institution. | [optional] 
**webSite** | **String** | The public web site address (URL) for the education organization. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


