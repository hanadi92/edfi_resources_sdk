# edfi_resources_sdk.api.OpenStaffPositionsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteOpenStaffPositionById**](OpenStaffPositionsApi.md#deleteopenstaffpositionbyid) | **DELETE** /ed-fi/openStaffPositions/{id} | Deletes an existing resource using the resource identifier.
[**deletesOpenStaffPositions**](OpenStaffPositionsApi.md#deletesopenstaffpositions) | **GET** /ed-fi/openStaffPositions/deletes | Retrieves deleted resources based on change version.
[**getOpenStaffPositions**](OpenStaffPositionsApi.md#getopenstaffpositions) | **GET** /ed-fi/openStaffPositions | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getOpenStaffPositionsById**](OpenStaffPositionsApi.md#getopenstaffpositionsbyid) | **GET** /ed-fi/openStaffPositions/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getOpenStaffPositionsPartitions**](OpenStaffPositionsApi.md#getopenstaffpositionspartitions) | **GET** /ed-fi/openStaffPositions/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesOpenStaffPositions**](OpenStaffPositionsApi.md#keychangesopenstaffpositions) | **GET** /ed-fi/openStaffPositions/keyChanges | Retrieves resources key changes based on change version.
[**postOpenStaffPosition**](OpenStaffPositionsApi.md#postopenstaffposition) | **POST** /ed-fi/openStaffPositions | Creates or updates resources based on the natural key values of the supplied resource.
[**putOpenStaffPosition**](OpenStaffPositionsApi.md#putopenstaffposition) | **PUT** /ed-fi/openStaffPositions/{id} | Updates a resource based on the resource identifier.


# **deleteOpenStaffPositionById**
> deleteOpenStaffPositionById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = OpenStaffPositionsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteOpenStaffPositionById(id, ifMatch);
} catch (e) {
    print('Exception when calling OpenStaffPositionsApi->deleteOpenStaffPositionById: $e\n');
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

# **deletesOpenStaffPositions**
> List<TrackedChangesEdFiOpenStaffPositionDelete> deletesOpenStaffPositions(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = OpenStaffPositionsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesOpenStaffPositions(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling OpenStaffPositionsApi->deletesOpenStaffPositions: $e\n');
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

[**List<TrackedChangesEdFiOpenStaffPositionDelete>**](TrackedChangesEdFiOpenStaffPositionDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOpenStaffPositions**
> List<EdFiOpenStaffPosition> getOpenStaffPositions(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, requisitionNumber, educationOrganizationId, employmentStatusDescriptor, postingResultDescriptor, programAssignmentDescriptor, staffClassificationDescriptor, datePosted, datePostingRemoved, id, positionTitle, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = OpenStaffPositionsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final requisitionNumber = requisitionNumber_example; // String | The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final employmentStatusDescriptor = employmentStatusDescriptor_example; // String | Reflects the type of employment or contract desired for the position.
final postingResultDescriptor = postingResultDescriptor_example; // String | Indication of whether the OpenStaffPosition was filled or retired without filling.
final programAssignmentDescriptor = programAssignmentDescriptor_example; // String | The name of the program for which the open staff position will be assigned.
final staffClassificationDescriptor = staffClassificationDescriptor_example; // String | The titles of employment, official status, or rank of education staff.
final datePosted = 2013-10-20; // DateTime | Date the open staff position was posted.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final datePostingRemoved = 2013-10-20; // DateTime | The date the posting was removed or filled.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final id = id_example; // String | 
final positionTitle = positionTitle_example; // String | The descriptive name of an individual's position.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getOpenStaffPositions(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, requisitionNumber, educationOrganizationId, employmentStatusDescriptor, postingResultDescriptor, programAssignmentDescriptor, staffClassificationDescriptor, datePosted, datePostingRemoved, id, positionTitle, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling OpenStaffPositionsApi->getOpenStaffPositions: $e\n');
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
 **requisitionNumber** | **String**| The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **employmentStatusDescriptor** | **String**| Reflects the type of employment or contract desired for the position. | [optional] 
 **postingResultDescriptor** | **String**| Indication of whether the OpenStaffPosition was filled or retired without filling. | [optional] 
 **programAssignmentDescriptor** | **String**| The name of the program for which the open staff position will be assigned. | [optional] 
 **staffClassificationDescriptor** | **String**| The titles of employment, official status, or rank of education staff. | [optional] 
 **datePosted** | **DateTime**| Date the open staff position was posted.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **datePostingRemoved** | **DateTime**| The date the posting was removed or filled.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **id** | **String**|  | [optional] 
 **positionTitle** | **String**| The descriptive name of an individual's position. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiOpenStaffPosition>**](EdFiOpenStaffPosition.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOpenStaffPositionsById**
> EdFiOpenStaffPosition getOpenStaffPositionsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = OpenStaffPositionsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getOpenStaffPositionsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling OpenStaffPositionsApi->getOpenStaffPositionsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiOpenStaffPosition**](EdFiOpenStaffPosition.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOpenStaffPositionsPartitions**
> GetAcademicWeeksPartitions200Response getOpenStaffPositionsPartitions(number, minChangeVersion, maxChangeVersion, requisitionNumber, educationOrganizationId, employmentStatusDescriptor, postingResultDescriptor, programAssignmentDescriptor, staffClassificationDescriptor, datePosted, datePostingRemoved, id, positionTitle, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = OpenStaffPositionsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final requisitionNumber = requisitionNumber_example; // String | The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final employmentStatusDescriptor = employmentStatusDescriptor_example; // String | Reflects the type of employment or contract desired for the position.
final postingResultDescriptor = postingResultDescriptor_example; // String | Indication of whether the OpenStaffPosition was filled or retired without filling.
final programAssignmentDescriptor = programAssignmentDescriptor_example; // String | The name of the program for which the open staff position will be assigned.
final staffClassificationDescriptor = staffClassificationDescriptor_example; // String | The titles of employment, official status, or rank of education staff.
final datePosted = 2013-10-20; // DateTime | Date the open staff position was posted.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final datePostingRemoved = 2013-10-20; // DateTime | The date the posting was removed or filled.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final id = id_example; // String | 
final positionTitle = positionTitle_example; // String | The descriptive name of an individual's position.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getOpenStaffPositionsPartitions(number, minChangeVersion, maxChangeVersion, requisitionNumber, educationOrganizationId, employmentStatusDescriptor, postingResultDescriptor, programAssignmentDescriptor, staffClassificationDescriptor, datePosted, datePostingRemoved, id, positionTitle, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling OpenStaffPositionsApi->getOpenStaffPositionsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **requisitionNumber** | **String**| The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **employmentStatusDescriptor** | **String**| Reflects the type of employment or contract desired for the position. | [optional] 
 **postingResultDescriptor** | **String**| Indication of whether the OpenStaffPosition was filled or retired without filling. | [optional] 
 **programAssignmentDescriptor** | **String**| The name of the program for which the open staff position will be assigned. | [optional] 
 **staffClassificationDescriptor** | **String**| The titles of employment, official status, or rank of education staff. | [optional] 
 **datePosted** | **DateTime**| Date the open staff position was posted.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **datePostingRemoved** | **DateTime**| The date the posting was removed or filled.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **id** | **String**|  | [optional] 
 **positionTitle** | **String**| The descriptive name of an individual's position. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesOpenStaffPositions**
> List<TrackedChangesEdFiOpenStaffPositionKeyChange> keyChangesOpenStaffPositions(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = OpenStaffPositionsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesOpenStaffPositions(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling OpenStaffPositionsApi->keyChangesOpenStaffPositions: $e\n');
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

[**List<TrackedChangesEdFiOpenStaffPositionKeyChange>**](TrackedChangesEdFiOpenStaffPositionKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postOpenStaffPosition**
> postOpenStaffPosition(edFiOpenStaffPosition)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = OpenStaffPositionsApi();
final edFiOpenStaffPosition = EdFiOpenStaffPosition(); // EdFiOpenStaffPosition | The JSON representation of the \"openStaffPosition\" resource to be created or updated.

try {
    api_instance.postOpenStaffPosition(edFiOpenStaffPosition);
} catch (e) {
    print('Exception when calling OpenStaffPositionsApi->postOpenStaffPosition: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiOpenStaffPosition** | [**EdFiOpenStaffPosition**](EdFiOpenStaffPosition.md)| The JSON representation of the \"openStaffPosition\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putOpenStaffPosition**
> putOpenStaffPosition(id, edFiOpenStaffPosition, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = OpenStaffPositionsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiOpenStaffPosition = EdFiOpenStaffPosition(); // EdFiOpenStaffPosition | The JSON representation of the \"openStaffPosition\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putOpenStaffPosition(id, edFiOpenStaffPosition, ifMatch);
} catch (e) {
    print('Exception when calling OpenStaffPositionsApi->putOpenStaffPosition: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiOpenStaffPosition** | [**EdFiOpenStaffPosition**](EdFiOpenStaffPosition.md)| The JSON representation of the \"openStaffPosition\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

