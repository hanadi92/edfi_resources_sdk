# edfi_resources_sdk.api.SchoolYearTypesApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSchoolYearTypeById**](SchoolYearTypesApi.md#deleteschoolyeartypebyid) | **DELETE** /ed-fi/schoolYearTypes/{id} | Deletes an existing resource using the resource identifier.
[**getSchoolYearTypes**](SchoolYearTypesApi.md#getschoolyeartypes) | **GET** /ed-fi/schoolYearTypes | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getSchoolYearTypesById**](SchoolYearTypesApi.md#getschoolyeartypesbyid) | **GET** /ed-fi/schoolYearTypes/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getSchoolYearTypesPartitions**](SchoolYearTypesApi.md#getschoolyeartypespartitions) | **GET** /ed-fi/schoolYearTypes/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**postSchoolYearType**](SchoolYearTypesApi.md#postschoolyeartype) | **POST** /ed-fi/schoolYearTypes | Creates or updates resources based on the natural key values of the supplied resource.
[**putSchoolYearType**](SchoolYearTypesApi.md#putschoolyeartype) | **PUT** /ed-fi/schoolYearTypes/{id} | Updates a resource based on the resource identifier.


# **deleteSchoolYearTypeById**
> deleteSchoolYearTypeById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SchoolYearTypesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteSchoolYearTypeById(id, ifMatch);
} catch (e) {
    print('Exception when calling SchoolYearTypesApi->deleteSchoolYearTypeById: $e\n');
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

# **getSchoolYearTypes**
> List<EdFiSchoolYearType> getSchoolYearTypes(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, schoolYear, currentSchoolYear, id, schoolYearDescription, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SchoolYearTypesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final schoolYear = 56; // int | Key for School Year
final currentSchoolYear = true; // bool | The code for the current school year.
final id = id_example; // String | 
final schoolYearDescription = schoolYearDescription_example; // String | The description for the SchoolYear type.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getSchoolYearTypes(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, schoolYear, currentSchoolYear, id, schoolYearDescription, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling SchoolYearTypesApi->getSchoolYearTypes: $e\n');
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
 **schoolYear** | **int**| Key for School Year | [optional] 
 **currentSchoolYear** | **bool**| The code for the current school year. | [optional] 
 **id** | **String**|  | [optional] 
 **schoolYearDescription** | **String**| The description for the SchoolYear type. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiSchoolYearType>**](EdFiSchoolYearType.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSchoolYearTypesById**
> EdFiSchoolYearType getSchoolYearTypesById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SchoolYearTypesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getSchoolYearTypesById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling SchoolYearTypesApi->getSchoolYearTypesById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiSchoolYearType**](EdFiSchoolYearType.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSchoolYearTypesPartitions**
> GetAcademicWeeksPartitions200Response getSchoolYearTypesPartitions(number, minChangeVersion, maxChangeVersion, schoolYear, currentSchoolYear, id, schoolYearDescription, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SchoolYearTypesApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final schoolYear = 56; // int | Key for School Year
final currentSchoolYear = true; // bool | The code for the current school year.
final id = id_example; // String | 
final schoolYearDescription = schoolYearDescription_example; // String | The description for the SchoolYear type.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getSchoolYearTypesPartitions(number, minChangeVersion, maxChangeVersion, schoolYear, currentSchoolYear, id, schoolYearDescription, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling SchoolYearTypesApi->getSchoolYearTypesPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **schoolYear** | **int**| Key for School Year | [optional] 
 **currentSchoolYear** | **bool**| The code for the current school year. | [optional] 
 **id** | **String**|  | [optional] 
 **schoolYearDescription** | **String**| The description for the SchoolYear type. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postSchoolYearType**
> postSchoolYearType(edFiSchoolYearType)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SchoolYearTypesApi();
final edFiSchoolYearType = EdFiSchoolYearType(); // EdFiSchoolYearType | The JSON representation of the \"schoolYearType\" resource to be created or updated.

try {
    api_instance.postSchoolYearType(edFiSchoolYearType);
} catch (e) {
    print('Exception when calling SchoolYearTypesApi->postSchoolYearType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiSchoolYearType** | [**EdFiSchoolYearType**](EdFiSchoolYearType.md)| The JSON representation of the \"schoolYearType\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putSchoolYearType**
> putSchoolYearType(id, edFiSchoolYearType, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SchoolYearTypesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiSchoolYearType = EdFiSchoolYearType(); // EdFiSchoolYearType | The JSON representation of the \"schoolYearType\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putSchoolYearType(id, edFiSchoolYearType, ifMatch);
} catch (e) {
    print('Exception when calling SchoolYearTypesApi->putSchoolYearType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiSchoolYearType** | [**EdFiSchoolYearType**](EdFiSchoolYearType.md)| The JSON representation of the \"schoolYearType\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

