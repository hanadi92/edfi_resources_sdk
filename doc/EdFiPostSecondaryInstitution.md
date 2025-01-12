# edfi_resources_sdk.model.EdFiPostSecondaryInstitution

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**categories** | [**List<EdFiEducationOrganizationCategory>**](EdFiEducationOrganizationCategory.md) | An unordered collection of educationOrganizationCategories. The classification of the education agency within the geographic boundaries of a state according to the level of administrative and operational control granted by the state. | [default to const []]
**postSecondaryInstitutionId** | **int** | The ID of the post secondary institution. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | 
**addresses** | [**List<EdFiEducationOrganizationAddress>**](EdFiEducationOrganizationAddress.md) | An unordered collection of educationOrganizationAddresses. The set of elements that describes an address for the education entity, including the street address, city, state, ZIP code, and ZIP code + 4. | [optional] [default to const []]
**administrativeFundingControlDescriptor** | **String** | A classification of whether a postsecondary institution is operated by publicly elected or appointed officials (public control) or by privately elected or appointed officials and derives its major source of funds from private sources (private control). | [optional] 
**identificationCodes** | [**List<EdFiEducationOrganizationIdentificationCode>**](EdFiEducationOrganizationIdentificationCode.md) | An unordered collection of educationOrganizationIdentificationCodes. A unique number or alphanumeric code assigned to an education organization by a school, school system, a state, or other agency or entity. | [optional] [default to const []]
**indicators** | [**List<EdFiEducationOrganizationIndicator>**](EdFiEducationOrganizationIndicator.md) | An unordered collection of educationOrganizationIndicators. An indicator or metric of an education organization. | [optional] [default to const []]
**institutionTelephones** | [**List<EdFiEducationOrganizationInstitutionTelephone>**](EdFiEducationOrganizationInstitutionTelephone.md) | An unordered collection of educationOrganizationInstitutionTelephones. The 10-digit telephone number, including the area code, for the education entity. | [optional] [default to const []]
**internationalAddresses** | [**List<EdFiEducationOrganizationInternationalAddress>**](EdFiEducationOrganizationInternationalAddress.md) | An unordered collection of educationOrganizationInternationalAddresses. The set of elements that describes the international physical location of the education entity. | [optional] [default to const []]
**mediumOfInstructions** | [**List<EdFiPostSecondaryInstitutionMediumOfInstruction>**](EdFiPostSecondaryInstitutionMediumOfInstruction.md) | An unordered collection of postSecondaryInstitutionMediumOfInstructions. The categories in which an institution serves the students. | [optional] [default to const []]
**nameOfInstitution** | **String** | The full, legally accepted name of the institution. | 
**operationalStatusDescriptor** | **String** | The current operational status of the education organization (e.g., active, inactive). | [optional] 
**postSecondaryInstitutionLevelDescriptor** | **String** | A classification of whether a post secondary institution's highest level of offering is a program of 4-years or higher (4 year), 2-but-less-than 4-years (2 year), or less than 2-years. | [optional] 
**shortNameOfInstitution** | **String** | A short name for the institution. | [optional] 
**webSite** | **String** | The public web site address (URL) for the education organization. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


