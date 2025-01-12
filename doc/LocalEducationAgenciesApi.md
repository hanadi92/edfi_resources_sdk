# edfi_resources_sdk.api.LocalEducationAgenciesApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteLocalEducationAgencyById**](LocalEducationAgenciesApi.md#deletelocaleducationagencybyid) | **DELETE** /ed-fi/localEducationAgencies/{id} | Deletes an existing resource using the resource identifier.
[**deletesLocalEducationAgencies**](LocalEducationAgenciesApi.md#deleteslocaleducationagencies) | **GET** /ed-fi/localEducationAgencies/deletes | Retrieves deleted resources based on change version.
[**getLocalEducationAgencies**](LocalEducationAgenciesApi.md#getlocaleducationagencies) | **GET** /ed-fi/localEducationAgencies | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getLocalEducationAgenciesById**](LocalEducationAgenciesApi.md#getlocaleducationagenciesbyid) | **GET** /ed-fi/localEducationAgencies/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getLocalEducationAgenciesPartitions**](LocalEducationAgenciesApi.md#getlocaleducationagenciespartitions) | **GET** /ed-fi/localEducationAgencies/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesLocalEducationAgencies**](LocalEducationAgenciesApi.md#keychangeslocaleducationagencies) | **GET** /ed-fi/localEducationAgencies/keyChanges | Retrieves resources key changes based on change version.
[**postLocalEducationAgency**](LocalEducationAgenciesApi.md#postlocaleducationagency) | **POST** /ed-fi/localEducationAgencies | Creates or updates resources based on the natural key values of the supplied resource.
[**putLocalEducationAgency**](LocalEducationAgenciesApi.md#putlocaleducationagency) | **PUT** /ed-fi/localEducationAgencies/{id} | Updates a resource based on the resource identifier.


# **deleteLocalEducationAgencyById**
> deleteLocalEducationAgencyById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LocalEducationAgenciesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteLocalEducationAgencyById(id, ifMatch);
} catch (e) {
    print('Exception when calling LocalEducationAgenciesApi->deleteLocalEducationAgencyById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifMatch** | **String**| The ETag header value used to prevent the DELETE from removing a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletesLocalEducationAgencies**
> List<TrackedChangesEdFiLocalEducationAgencyDelete> deletesLocalEducationAgencies(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LocalEducationAgenciesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesLocalEducationAgencies(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling LocalEducationAgenciesApi->deletesLocalEducationAgencies: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Indicates how many items should be skipped before returning results. | [optional] 
 **limit** | **int**| Indicates the maximum number of items that should be returned in the results. | [optional] [default to 25]
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **totalCount** | **bool**| Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken). | [optional] [default to false]
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<TrackedChangesEdFiLocalEducationAgencyDelete>**](TrackedChangesEdFiLocalEducationAgencyDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocalEducationAgencies**
> List<EdFiLocalEducationAgency> getLocalEducationAgencies(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, localEducationAgencyId, educationServiceCenterId, parentLocalEducationAgencyId, stateEducationAgencyId, charterStatusDescriptor, localEducationAgencyCategoryDescriptor, operationalStatusDescriptor, id, nameOfInstitution, shortNameOfInstitution, webSite, useSnapshot, educationOrganizationIdentificationSystemDescriptor, identificationCode)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LocalEducationAgenciesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final localEducationAgencyId = 789; // int | The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.
final educationServiceCenterId = 789; // int | The identifier assigned to an education service center. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final parentLocalEducationAgencyId = 789; // int | The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.
final stateEducationAgencyId = 789; // int | The identifier assigned to a state education agency. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final charterStatusDescriptor = charterStatusDescriptor_example; // String | A school or agency providing free public elementary or secondary education to eligible students under a specific charter granted by the state legislature or other appropriate authority and designated by such authority to be a charter school.
final localEducationAgencyCategoryDescriptor = localEducationAgencyCategoryDescriptor_example; // String | The category of local education agency/district.
final operationalStatusDescriptor = operationalStatusDescriptor_example; // String | The current operational status of the education organization (e.g., active, inactive).
final id = id_example; // String | 
final nameOfInstitution = nameOfInstitution_example; // String | The full, legally accepted name of the institution.
final shortNameOfInstitution = shortNameOfInstitution_example; // String | A short name for the institution.
final webSite = webSite_example; // String | The public web site address (URL) for the education organization.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.
final educationOrganizationIdentificationSystemDescriptor = educationOrganizationIdentificationSystemDescriptor_example; // String | The school system, state, or agency assigning the identification code.
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code that is assigned to an education organization by a school, school system, state, or other agency or entity.

try {
    final result = api_instance.getLocalEducationAgencies(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, localEducationAgencyId, educationServiceCenterId, parentLocalEducationAgencyId, stateEducationAgencyId, charterStatusDescriptor, localEducationAgencyCategoryDescriptor, operationalStatusDescriptor, id, nameOfInstitution, shortNameOfInstitution, webSite, useSnapshot, educationOrganizationIdentificationSystemDescriptor, identificationCode);
    print(result);
} catch (e) {
    print('Exception when calling LocalEducationAgenciesApi->getLocalEducationAgencies: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Indicates how many items should be skipped before returning results. | [optional] 
 **limit** | **int**| Indicates the maximum number of items that should be returned in the results. | [optional] [default to 25]
 **pageToken** | **String**| The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging. | [optional] 
 **pageSize** | **int**| The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only. | [optional] [default to 25]
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **totalCount** | **bool**| Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken). | [optional] [default to false]
 **localEducationAgencyId** | **int**| The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication. | [optional] 
 **educationServiceCenterId** | **int**| The identifier assigned to an education service center. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **parentLocalEducationAgencyId** | **int**| The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication. | [optional] 
 **stateEducationAgencyId** | **int**| The identifier assigned to a state education agency. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **charterStatusDescriptor** | **String**| A school or agency providing free public elementary or secondary education to eligible students under a specific charter granted by the state legislature or other appropriate authority and designated by such authority to be a charter school. | [optional] 
 **localEducationAgencyCategoryDescriptor** | **String**| The category of local education agency/district. | [optional] 
 **operationalStatusDescriptor** | **String**| The current operational status of the education organization (e.g., active, inactive). | [optional] 
 **id** | **String**|  | [optional] 
 **nameOfInstitution** | **String**| The full, legally accepted name of the institution. | [optional] 
 **shortNameOfInstitution** | **String**| A short name for the institution. | [optional] 
 **webSite** | **String**| The public web site address (URL) for the education organization. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]
 **educationOrganizationIdentificationSystemDescriptor** | **String**| The school system, state, or agency assigning the identification code. | [optional] 
 **identificationCode** | **String**| A unique number or alphanumeric code that is assigned to an education organization by a school, school system, state, or other agency or entity. | [optional] 

### Return type

[**List<EdFiLocalEducationAgency>**](EdFiLocalEducationAgency.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocalEducationAgenciesById**
> EdFiLocalEducationAgency getLocalEducationAgenciesById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LocalEducationAgenciesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getLocalEducationAgenciesById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling LocalEducationAgenciesApi->getLocalEducationAgenciesById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiLocalEducationAgency**](EdFiLocalEducationAgency.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocalEducationAgenciesPartitions**
> GetAcademicWeeksPartitions200Response getLocalEducationAgenciesPartitions(number, minChangeVersion, maxChangeVersion, localEducationAgencyId, educationServiceCenterId, parentLocalEducationAgencyId, stateEducationAgencyId, charterStatusDescriptor, localEducationAgencyCategoryDescriptor, operationalStatusDescriptor, id, nameOfInstitution, shortNameOfInstitution, webSite, useSnapshot, educationOrganizationIdentificationSystemDescriptor, identificationCode)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LocalEducationAgenciesApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final localEducationAgencyId = 789; // int | The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.
final educationServiceCenterId = 789; // int | The identifier assigned to an education service center. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final parentLocalEducationAgencyId = 789; // int | The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication.
final stateEducationAgencyId = 789; // int | The identifier assigned to a state education agency. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final charterStatusDescriptor = charterStatusDescriptor_example; // String | A school or agency providing free public elementary or secondary education to eligible students under a specific charter granted by the state legislature or other appropriate authority and designated by such authority to be a charter school.
final localEducationAgencyCategoryDescriptor = localEducationAgencyCategoryDescriptor_example; // String | The category of local education agency/district.
final operationalStatusDescriptor = operationalStatusDescriptor_example; // String | The current operational status of the education organization (e.g., active, inactive).
final id = id_example; // String | 
final nameOfInstitution = nameOfInstitution_example; // String | The full, legally accepted name of the institution.
final shortNameOfInstitution = shortNameOfInstitution_example; // String | A short name for the institution.
final webSite = webSite_example; // String | The public web site address (URL) for the education organization.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.
final educationOrganizationIdentificationSystemDescriptor = educationOrganizationIdentificationSystemDescriptor_example; // String | The school system, state, or agency assigning the identification code.
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code that is assigned to an education organization by a school, school system, state, or other agency or entity.

try {
    final result = api_instance.getLocalEducationAgenciesPartitions(number, minChangeVersion, maxChangeVersion, localEducationAgencyId, educationServiceCenterId, parentLocalEducationAgencyId, stateEducationAgencyId, charterStatusDescriptor, localEducationAgencyCategoryDescriptor, operationalStatusDescriptor, id, nameOfInstitution, shortNameOfInstitution, webSite, useSnapshot, educationOrganizationIdentificationSystemDescriptor, identificationCode);
    print(result);
} catch (e) {
    print('Exception when calling LocalEducationAgenciesApi->getLocalEducationAgenciesPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **localEducationAgencyId** | **int**| The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication. | [optional] 
 **educationServiceCenterId** | **int**| The identifier assigned to an education service center. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **parentLocalEducationAgencyId** | **int**| The identifier assigned to a local education agency. It must be distinct from any other identifier assigned to educational organizations, such as a SchoolId, to prevent duplication. | [optional] 
 **stateEducationAgencyId** | **int**| The identifier assigned to a state education agency. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **charterStatusDescriptor** | **String**| A school or agency providing free public elementary or secondary education to eligible students under a specific charter granted by the state legislature or other appropriate authority and designated by such authority to be a charter school. | [optional] 
 **localEducationAgencyCategoryDescriptor** | **String**| The category of local education agency/district. | [optional] 
 **operationalStatusDescriptor** | **String**| The current operational status of the education organization (e.g., active, inactive). | [optional] 
 **id** | **String**|  | [optional] 
 **nameOfInstitution** | **String**| The full, legally accepted name of the institution. | [optional] 
 **shortNameOfInstitution** | **String**| A short name for the institution. | [optional] 
 **webSite** | **String**| The public web site address (URL) for the education organization. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]
 **educationOrganizationIdentificationSystemDescriptor** | **String**| The school system, state, or agency assigning the identification code. | [optional] 
 **identificationCode** | **String**| A unique number or alphanumeric code that is assigned to an education organization by a school, school system, state, or other agency or entity. | [optional] 

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesLocalEducationAgencies**
> List<TrackedChangesEdFiLocalEducationAgencyKeyChange> keyChangesLocalEducationAgencies(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LocalEducationAgenciesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesLocalEducationAgencies(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling LocalEducationAgenciesApi->keyChangesLocalEducationAgencies: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Indicates how many items should be skipped before returning results. | [optional] 
 **limit** | **int**| Indicates the maximum number of items that should be returned in the results. | [optional] [default to 25]
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **totalCount** | **bool**| Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken). | [optional] [default to false]
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<TrackedChangesEdFiLocalEducationAgencyKeyChange>**](TrackedChangesEdFiLocalEducationAgencyKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postLocalEducationAgency**
> postLocalEducationAgency(edFiLocalEducationAgency)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LocalEducationAgenciesApi();
final edFiLocalEducationAgency = EdFiLocalEducationAgency(); // EdFiLocalEducationAgency | The JSON representation of the \"localEducationAgency\" resource to be created or updated.

try {
    api_instance.postLocalEducationAgency(edFiLocalEducationAgency);
} catch (e) {
    print('Exception when calling LocalEducationAgenciesApi->postLocalEducationAgency: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiLocalEducationAgency** | [**EdFiLocalEducationAgency**](EdFiLocalEducationAgency.md)| The JSON representation of the \"localEducationAgency\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putLocalEducationAgency**
> putLocalEducationAgency(id, edFiLocalEducationAgency, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LocalEducationAgenciesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiLocalEducationAgency = EdFiLocalEducationAgency(); // EdFiLocalEducationAgency | The JSON representation of the \"localEducationAgency\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putLocalEducationAgency(id, edFiLocalEducationAgency, ifMatch);
} catch (e) {
    print('Exception when calling LocalEducationAgenciesApi->putLocalEducationAgency: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiLocalEducationAgency** | [**EdFiLocalEducationAgency**](EdFiLocalEducationAgency.md)| The JSON representation of the \"localEducationAgency\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

