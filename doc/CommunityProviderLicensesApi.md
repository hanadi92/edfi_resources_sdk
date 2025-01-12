# edfi_resources_sdk.api.CommunityProviderLicensesApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteCommunityProviderLicenseById**](CommunityProviderLicensesApi.md#deletecommunityproviderlicensebyid) | **DELETE** /ed-fi/communityProviderLicenses/{id} | Deletes an existing resource using the resource identifier.
[**deletesCommunityProviderLicenses**](CommunityProviderLicensesApi.md#deletescommunityproviderlicenses) | **GET** /ed-fi/communityProviderLicenses/deletes | Retrieves deleted resources based on change version.
[**getCommunityProviderLicenses**](CommunityProviderLicensesApi.md#getcommunityproviderlicenses) | **GET** /ed-fi/communityProviderLicenses | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getCommunityProviderLicensesById**](CommunityProviderLicensesApi.md#getcommunityproviderlicensesbyid) | **GET** /ed-fi/communityProviderLicenses/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getCommunityProviderLicensesPartitions**](CommunityProviderLicensesApi.md#getcommunityproviderlicensespartitions) | **GET** /ed-fi/communityProviderLicenses/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesCommunityProviderLicenses**](CommunityProviderLicensesApi.md#keychangescommunityproviderlicenses) | **GET** /ed-fi/communityProviderLicenses/keyChanges | Retrieves resources key changes based on change version.
[**postCommunityProviderLicense**](CommunityProviderLicensesApi.md#postcommunityproviderlicense) | **POST** /ed-fi/communityProviderLicenses | Creates or updates resources based on the natural key values of the supplied resource.
[**putCommunityProviderLicense**](CommunityProviderLicensesApi.md#putcommunityproviderlicense) | **PUT** /ed-fi/communityProviderLicenses/{id} | Updates a resource based on the resource identifier.


# **deleteCommunityProviderLicenseById**
> deleteCommunityProviderLicenseById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CommunityProviderLicensesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteCommunityProviderLicenseById(id, ifMatch);
} catch (e) {
    print('Exception when calling CommunityProviderLicensesApi->deleteCommunityProviderLicenseById: $e\n');
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

# **deletesCommunityProviderLicenses**
> List<TrackedChangesEdFiCommunityProviderLicenseDelete> deletesCommunityProviderLicenses(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CommunityProviderLicensesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesCommunityProviderLicenses(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CommunityProviderLicensesApi->deletesCommunityProviderLicenses: $e\n');
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

[**List<TrackedChangesEdFiCommunityProviderLicenseDelete>**](TrackedChangesEdFiCommunityProviderLicenseDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommunityProviderLicenses**
> List<EdFiCommunityProviderLicense> getCommunityProviderLicenses(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, licenseIdentifier, licensingOrganization, communityProviderId, licenseStatusDescriptor, licenseTypeDescriptor, authorizedFacilityCapacity, id, licenseEffectiveDate, licenseExpirationDate, licenseIssueDate, oldestAgeAuthorizedToServe, youngestAgeAuthorizedToServe, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CommunityProviderLicensesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final licenseIdentifier = licenseIdentifier_example; // String | The unique identifier issued by the licensing organization.
final licensingOrganization = licensingOrganization_example; // String | The organization issuing the license.
final communityProviderId = 789; // int | The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final licenseStatusDescriptor = licenseStatusDescriptor_example; // String | An indication of the status of the license.
final licenseTypeDescriptor = licenseTypeDescriptor_example; // String | An indication of the category of the license.
final authorizedFacilityCapacity = 56; // int | The maximum number that can be contained or accommodated which a provider is authorized or licensed to serve.
final id = id_example; // String | 
final licenseEffectiveDate = 2013-10-20; // DateTime | The month, day, and year on which a license is active or becomes effective.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final licenseExpirationDate = 2013-10-20; // DateTime | The month, day, and year on which a license will expire.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final licenseIssueDate = 2013-10-20; // DateTime | The month, day, and year on which an active license was issued.
final oldestAgeAuthorizedToServe = 56; // int | The oldest age of children a provider is authorized or licensed to serve.
final youngestAgeAuthorizedToServe = 56; // int | The youngest age of children a provider is authorized or licensed to serve.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getCommunityProviderLicenses(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, licenseIdentifier, licensingOrganization, communityProviderId, licenseStatusDescriptor, licenseTypeDescriptor, authorizedFacilityCapacity, id, licenseEffectiveDate, licenseExpirationDate, licenseIssueDate, oldestAgeAuthorizedToServe, youngestAgeAuthorizedToServe, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CommunityProviderLicensesApi->getCommunityProviderLicenses: $e\n');
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
 **licenseIdentifier** | **String**| The unique identifier issued by the licensing organization. | [optional] 
 **licensingOrganization** | **String**| The organization issuing the license. | [optional] 
 **communityProviderId** | **int**| The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **licenseStatusDescriptor** | **String**| An indication of the status of the license. | [optional] 
 **licenseTypeDescriptor** | **String**| An indication of the category of the license. | [optional] 
 **authorizedFacilityCapacity** | **int**| The maximum number that can be contained or accommodated which a provider is authorized or licensed to serve. | [optional] 
 **id** | **String**|  | [optional] 
 **licenseEffectiveDate** | **DateTime**| The month, day, and year on which a license is active or becomes effective.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **licenseExpirationDate** | **DateTime**| The month, day, and year on which a license will expire.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **licenseIssueDate** | **DateTime**| The month, day, and year on which an active license was issued. | [optional] 
 **oldestAgeAuthorizedToServe** | **int**| The oldest age of children a provider is authorized or licensed to serve. | [optional] 
 **youngestAgeAuthorizedToServe** | **int**| The youngest age of children a provider is authorized or licensed to serve. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiCommunityProviderLicense>**](EdFiCommunityProviderLicense.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommunityProviderLicensesById**
> EdFiCommunityProviderLicense getCommunityProviderLicensesById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CommunityProviderLicensesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getCommunityProviderLicensesById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CommunityProviderLicensesApi->getCommunityProviderLicensesById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiCommunityProviderLicense**](EdFiCommunityProviderLicense.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommunityProviderLicensesPartitions**
> GetAcademicWeeksPartitions200Response getCommunityProviderLicensesPartitions(number, minChangeVersion, maxChangeVersion, licenseIdentifier, licensingOrganization, communityProviderId, licenseStatusDescriptor, licenseTypeDescriptor, authorizedFacilityCapacity, id, licenseEffectiveDate, licenseExpirationDate, licenseIssueDate, oldestAgeAuthorizedToServe, youngestAgeAuthorizedToServe, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CommunityProviderLicensesApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final licenseIdentifier = licenseIdentifier_example; // String | The unique identifier issued by the licensing organization.
final licensingOrganization = licensingOrganization_example; // String | The organization issuing the license.
final communityProviderId = 789; // int | The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final licenseStatusDescriptor = licenseStatusDescriptor_example; // String | An indication of the status of the license.
final licenseTypeDescriptor = licenseTypeDescriptor_example; // String | An indication of the category of the license.
final authorizedFacilityCapacity = 56; // int | The maximum number that can be contained or accommodated which a provider is authorized or licensed to serve.
final id = id_example; // String | 
final licenseEffectiveDate = 2013-10-20; // DateTime | The month, day, and year on which a license is active or becomes effective.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final licenseExpirationDate = 2013-10-20; // DateTime | The month, day, and year on which a license will expire.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final licenseIssueDate = 2013-10-20; // DateTime | The month, day, and year on which an active license was issued.
final oldestAgeAuthorizedToServe = 56; // int | The oldest age of children a provider is authorized or licensed to serve.
final youngestAgeAuthorizedToServe = 56; // int | The youngest age of children a provider is authorized or licensed to serve.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getCommunityProviderLicensesPartitions(number, minChangeVersion, maxChangeVersion, licenseIdentifier, licensingOrganization, communityProviderId, licenseStatusDescriptor, licenseTypeDescriptor, authorizedFacilityCapacity, id, licenseEffectiveDate, licenseExpirationDate, licenseIssueDate, oldestAgeAuthorizedToServe, youngestAgeAuthorizedToServe, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CommunityProviderLicensesApi->getCommunityProviderLicensesPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **licenseIdentifier** | **String**| The unique identifier issued by the licensing organization. | [optional] 
 **licensingOrganization** | **String**| The organization issuing the license. | [optional] 
 **communityProviderId** | **int**| The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **licenseStatusDescriptor** | **String**| An indication of the status of the license. | [optional] 
 **licenseTypeDescriptor** | **String**| An indication of the category of the license. | [optional] 
 **authorizedFacilityCapacity** | **int**| The maximum number that can be contained or accommodated which a provider is authorized or licensed to serve. | [optional] 
 **id** | **String**|  | [optional] 
 **licenseEffectiveDate** | **DateTime**| The month, day, and year on which a license is active or becomes effective.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **licenseExpirationDate** | **DateTime**| The month, day, and year on which a license will expire.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **licenseIssueDate** | **DateTime**| The month, day, and year on which an active license was issued. | [optional] 
 **oldestAgeAuthorizedToServe** | **int**| The oldest age of children a provider is authorized or licensed to serve. | [optional] 
 **youngestAgeAuthorizedToServe** | **int**| The youngest age of children a provider is authorized or licensed to serve. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesCommunityProviderLicenses**
> List<TrackedChangesEdFiCommunityProviderLicenseKeyChange> keyChangesCommunityProviderLicenses(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CommunityProviderLicensesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesCommunityProviderLicenses(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CommunityProviderLicensesApi->keyChangesCommunityProviderLicenses: $e\n');
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

[**List<TrackedChangesEdFiCommunityProviderLicenseKeyChange>**](TrackedChangesEdFiCommunityProviderLicenseKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCommunityProviderLicense**
> postCommunityProviderLicense(edFiCommunityProviderLicense)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CommunityProviderLicensesApi();
final edFiCommunityProviderLicense = EdFiCommunityProviderLicense(); // EdFiCommunityProviderLicense | The JSON representation of the \"communityProviderLicense\" resource to be created or updated.

try {
    api_instance.postCommunityProviderLicense(edFiCommunityProviderLicense);
} catch (e) {
    print('Exception when calling CommunityProviderLicensesApi->postCommunityProviderLicense: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiCommunityProviderLicense** | [**EdFiCommunityProviderLicense**](EdFiCommunityProviderLicense.md)| The JSON representation of the \"communityProviderLicense\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putCommunityProviderLicense**
> putCommunityProviderLicense(id, edFiCommunityProviderLicense, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CommunityProviderLicensesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiCommunityProviderLicense = EdFiCommunityProviderLicense(); // EdFiCommunityProviderLicense | The JSON representation of the \"communityProviderLicense\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putCommunityProviderLicense(id, edFiCommunityProviderLicense, ifMatch);
} catch (e) {
    print('Exception when calling CommunityProviderLicensesApi->putCommunityProviderLicense: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiCommunityProviderLicense** | [**EdFiCommunityProviderLicense**](EdFiCommunityProviderLicense.md)| The JSON representation of the \"communityProviderLicense\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

