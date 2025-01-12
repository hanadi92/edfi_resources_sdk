# edfi_resources_sdk.api.AccountabilityRatingsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAccountabilityRatingById**](AccountabilityRatingsApi.md#deleteaccountabilityratingbyid) | **DELETE** /ed-fi/accountabilityRatings/{id} | Deletes an existing resource using the resource identifier.
[**deletesAccountabilityRatings**](AccountabilityRatingsApi.md#deletesaccountabilityratings) | **GET** /ed-fi/accountabilityRatings/deletes | Retrieves deleted resources based on change version.
[**getAccountabilityRatings**](AccountabilityRatingsApi.md#getaccountabilityratings) | **GET** /ed-fi/accountabilityRatings | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getAccountabilityRatingsById**](AccountabilityRatingsApi.md#getaccountabilityratingsbyid) | **GET** /ed-fi/accountabilityRatings/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getAccountabilityRatingsPartitions**](AccountabilityRatingsApi.md#getaccountabilityratingspartitions) | **GET** /ed-fi/accountabilityRatings/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesAccountabilityRatings**](AccountabilityRatingsApi.md#keychangesaccountabilityratings) | **GET** /ed-fi/accountabilityRatings/keyChanges | Retrieves resources key changes based on change version.
[**postAccountabilityRating**](AccountabilityRatingsApi.md#postaccountabilityrating) | **POST** /ed-fi/accountabilityRatings | Creates or updates resources based on the natural key values of the supplied resource.
[**putAccountabilityRating**](AccountabilityRatingsApi.md#putaccountabilityrating) | **PUT** /ed-fi/accountabilityRatings/{id} | Updates a resource based on the resource identifier.


# **deleteAccountabilityRatingById**
> deleteAccountabilityRatingById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AccountabilityRatingsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteAccountabilityRatingById(id, ifMatch);
} catch (e) {
    print('Exception when calling AccountabilityRatingsApi->deleteAccountabilityRatingById: $e\n');
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

# **deletesAccountabilityRatings**
> List<TrackedChangesEdFiAccountabilityRatingDelete> deletesAccountabilityRatings(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AccountabilityRatingsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesAccountabilityRatings(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AccountabilityRatingsApi->deletesAccountabilityRatings: $e\n');
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

[**List<TrackedChangesEdFiAccountabilityRatingDelete>**](TrackedChangesEdFiAccountabilityRatingDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountabilityRatings**
> List<EdFiAccountabilityRating> getAccountabilityRatings(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, ratingTitle, educationOrganizationId, schoolYear, id, rating, ratingDate, ratingOrganization, ratingProgram, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AccountabilityRatingsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final ratingTitle = ratingTitle_example; // String | The title of the rating.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final schoolYear = 56; // int | The school year for which the accountability rating is assessed.
final id = id_example; // String | 
final rating = rating_example; // String | An accountability rating level, designation, or assessment.
final ratingDate = 2013-10-20; // DateTime | The date the rating was awarded.
final ratingOrganization = ratingOrganization_example; // String | The organization that assessed the rating.
final ratingProgram = ratingProgram_example; // String | The program associated with the accountability rating (e.g., NCLB, AEIS).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getAccountabilityRatings(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, ratingTitle, educationOrganizationId, schoolYear, id, rating, ratingDate, ratingOrganization, ratingProgram, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AccountabilityRatingsApi->getAccountabilityRatings: $e\n');
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
 **ratingTitle** | **String**| The title of the rating. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **schoolYear** | **int**| The school year for which the accountability rating is assessed. | [optional] 
 **id** | **String**|  | [optional] 
 **rating** | **String**| An accountability rating level, designation, or assessment. | [optional] 
 **ratingDate** | **DateTime**| The date the rating was awarded. | [optional] 
 **ratingOrganization** | **String**| The organization that assessed the rating. | [optional] 
 **ratingProgram** | **String**| The program associated with the accountability rating (e.g., NCLB, AEIS). | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiAccountabilityRating>**](EdFiAccountabilityRating.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountabilityRatingsById**
> EdFiAccountabilityRating getAccountabilityRatingsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AccountabilityRatingsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getAccountabilityRatingsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AccountabilityRatingsApi->getAccountabilityRatingsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiAccountabilityRating**](EdFiAccountabilityRating.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountabilityRatingsPartitions**
> GetAcademicWeeksPartitions200Response getAccountabilityRatingsPartitions(number, minChangeVersion, maxChangeVersion, ratingTitle, educationOrganizationId, schoolYear, id, rating, ratingDate, ratingOrganization, ratingProgram, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AccountabilityRatingsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final ratingTitle = ratingTitle_example; // String | The title of the rating.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final schoolYear = 56; // int | The school year for which the accountability rating is assessed.
final id = id_example; // String | 
final rating = rating_example; // String | An accountability rating level, designation, or assessment.
final ratingDate = 2013-10-20; // DateTime | The date the rating was awarded.
final ratingOrganization = ratingOrganization_example; // String | The organization that assessed the rating.
final ratingProgram = ratingProgram_example; // String | The program associated with the accountability rating (e.g., NCLB, AEIS).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getAccountabilityRatingsPartitions(number, minChangeVersion, maxChangeVersion, ratingTitle, educationOrganizationId, schoolYear, id, rating, ratingDate, ratingOrganization, ratingProgram, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AccountabilityRatingsApi->getAccountabilityRatingsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **ratingTitle** | **String**| The title of the rating. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **schoolYear** | **int**| The school year for which the accountability rating is assessed. | [optional] 
 **id** | **String**|  | [optional] 
 **rating** | **String**| An accountability rating level, designation, or assessment. | [optional] 
 **ratingDate** | **DateTime**| The date the rating was awarded. | [optional] 
 **ratingOrganization** | **String**| The organization that assessed the rating. | [optional] 
 **ratingProgram** | **String**| The program associated with the accountability rating (e.g., NCLB, AEIS). | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesAccountabilityRatings**
> List<TrackedChangesEdFiAccountabilityRatingKeyChange> keyChangesAccountabilityRatings(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AccountabilityRatingsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesAccountabilityRatings(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AccountabilityRatingsApi->keyChangesAccountabilityRatings: $e\n');
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

[**List<TrackedChangesEdFiAccountabilityRatingKeyChange>**](TrackedChangesEdFiAccountabilityRatingKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAccountabilityRating**
> postAccountabilityRating(edFiAccountabilityRating)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AccountabilityRatingsApi();
final edFiAccountabilityRating = EdFiAccountabilityRating(); // EdFiAccountabilityRating | The JSON representation of the \"accountabilityRating\" resource to be created or updated.

try {
    api_instance.postAccountabilityRating(edFiAccountabilityRating);
} catch (e) {
    print('Exception when calling AccountabilityRatingsApi->postAccountabilityRating: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiAccountabilityRating** | [**EdFiAccountabilityRating**](EdFiAccountabilityRating.md)| The JSON representation of the \"accountabilityRating\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAccountabilityRating**
> putAccountabilityRating(id, edFiAccountabilityRating, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AccountabilityRatingsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiAccountabilityRating = EdFiAccountabilityRating(); // EdFiAccountabilityRating | The JSON representation of the \"accountabilityRating\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putAccountabilityRating(id, edFiAccountabilityRating, ifMatch);
} catch (e) {
    print('Exception when calling AccountabilityRatingsApi->putAccountabilityRating: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiAccountabilityRating** | [**EdFiAccountabilityRating**](EdFiAccountabilityRating.md)| The JSON representation of the \"accountabilityRating\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

