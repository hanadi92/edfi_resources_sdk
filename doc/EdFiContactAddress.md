# edfi_resources_sdk.model.EdFiContactAddress

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addressTypeDescriptor** | **String** | The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.) | 
**stateAbbreviationDescriptor** | **String** | The abbreviation for the state (within the United States) or outlying area in which an address is located. | 
**city** | **String** | The name of the city in which an address is located. | 
**postalCode** | **String** | The five or nine digit zip code or overseas postal code portion of an address. | 
**streetNumberName** | **String** | The street number and street name or post office box number of an address. | 
**localeDescriptor** | **String** | A general geographic indicator that categorizes U.S. territory (e.g., City, Suburban). | [optional] 
**apartmentRoomSuiteNumber** | **String** | The apartment, room, or suite number of an address. | [optional] 
**buildingSiteNumber** | **String** | The number of the building on the site, if more than one building shares the same address. | [optional] 
**congressionalDistrict** | **String** | The congressional district in which an address is located. | [optional] 
**countyFIPSCode** | **String** | The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the \"first-order subdivisions\" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code. | [optional] 
**doNotPublishIndicator** | **bool** | An indication that the address should not be published. | [optional] 
**latitude** | **String** | The geographic latitude of the physical address. | [optional] 
**longitude** | **String** | The geographic longitude of the physical address. | [optional] 
**nameOfCounty** | **String** | The name of the county, parish, borough, or comparable unit (within a state) in which an address is located. | [optional] 
**periods** | [**List<EdFiContactAddressPeriod>**](EdFiContactAddressPeriod.md) | An unordered collection of contactAddressPeriods. The time periods for which the address is valid. For physical addresses, the periods in which the person lived at that address. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


