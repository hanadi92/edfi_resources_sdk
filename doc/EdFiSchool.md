# edfi_resources_sdk.model.EdFiSchool

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**educationOrganizationCategories** | [**List<EdFiEducationOrganizationCategory>**](EdFiEducationOrganizationCategory.md) | An unordered collection of educationOrganizationCategories. The classification of the education agency within the geographic boundaries of a state according to the level of administrative and operational control granted by the state. | [default to const []]
**gradeLevels** | [**List<EdFiSchoolGradeLevel>**](EdFiSchoolGradeLevel.md) | An unordered collection of schoolGradeLevels. The grade levels served at the school. | [default to const []]
**schoolId** | **int** | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | 
**charterApprovalSchoolYearTypeReference** | [**EdFiSchoolYearTypeReference**](EdFiSchoolYearTypeReference.md) |  | [optional] 
**localEducationAgencyReference** | [**EdFiLocalEducationAgencyReference**](EdFiLocalEducationAgencyReference.md) |  | [optional] 
**addresses** | [**List<EdFiEducationOrganizationAddress>**](EdFiEducationOrganizationAddress.md) | An unordered collection of educationOrganizationAddresses. The set of elements that describes an address for the education entity, including the street address, city, state, ZIP code, and ZIP code + 4. | [optional] [default to const []]
**administrativeFundingControlDescriptor** | **String** | The type of education institution as classified by its funding source, for example public or private. | [optional] 
**charterApprovalAgencyTypeDescriptor** | **String** | The type of agency that approved the establishment or continuation of a charter school. | [optional] 
**charterStatusDescriptor** | **String** | A school or agency providing free public elementary or secondary education to eligible students under a specific charter granted by the state legislature or other appropriate authority and designated by such authority to be a charter school. | [optional] 
**identificationCodes** | [**List<EdFiEducationOrganizationIdentificationCode>**](EdFiEducationOrganizationIdentificationCode.md) | An unordered collection of educationOrganizationIdentificationCodes. A unique number or alphanumeric code assigned to an education organization by a school, school system, a state, or other agency or entity. | [optional] [default to const []]
**indicators** | [**List<EdFiEducationOrganizationIndicator>**](EdFiEducationOrganizationIndicator.md) | An unordered collection of educationOrganizationIndicators. An indicator or metric of an education organization. | [optional] [default to const []]
**institutionTelephones** | [**List<EdFiEducationOrganizationInstitutionTelephone>**](EdFiEducationOrganizationInstitutionTelephone.md) | An unordered collection of educationOrganizationInstitutionTelephones. The 10-digit telephone number, including the area code, for the education entity. | [optional] [default to const []]
**internationalAddresses** | [**List<EdFiEducationOrganizationInternationalAddress>**](EdFiEducationOrganizationInternationalAddress.md) | An unordered collection of educationOrganizationInternationalAddresses. The set of elements that describes the international physical location of the education entity. | [optional] [default to const []]
**internetAccessDescriptor** | **String** | The type of Internet access available. | [optional] 
**magnetSpecialProgramEmphasisSchoolDescriptor** | **String** | A school that has been designed: 1) to attract students of different racial/ethnic backgrounds for the purpose of reducing, preventing, or eliminating racial isolation; and/or 2) to provide an academic or social focus on a particular theme (e.g., science/math, performing arts, gifted/talented, or foreign language). | [optional] 
**nameOfInstitution** | **String** | The full, legally accepted name of the institution. | 
**operationalStatusDescriptor** | **String** | The current operational status of the education organization (e.g., active, inactive). | [optional] 
**schoolCategories** | [**List<EdFiSchoolCategory>**](EdFiSchoolCategory.md) | An unordered collection of schoolCategories. The one or more categories of school. | [optional] [default to const []]
**schoolTypeDescriptor** | **String** | The type of education institution as classified by its primary focus. | [optional] 
**shortNameOfInstitution** | **String** | A short name for the institution. | [optional] 
**titleIPartASchoolDesignationDescriptor** | **String** | Denotes the Title I Part A designation for the school. | [optional] 
**webSite** | **String** | The public web site address (URL) for the education organization. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 
**ext** | [**SchoolExtensions**](SchoolExtensions.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


