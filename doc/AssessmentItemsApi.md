# edfi_resources_sdk.api.AssessmentItemsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAssessmentItemById**](AssessmentItemsApi.md#deleteassessmentitembyid) | **DELETE** /ed-fi/assessmentItems/{id} | Deletes an existing resource using the resource identifier.
[**deletesAssessmentItems**](AssessmentItemsApi.md#deletesassessmentitems) | **GET** /ed-fi/assessmentItems/deletes | Retrieves deleted resources based on change version.
[**getAssessmentItems**](AssessmentItemsApi.md#getassessmentitems) | **GET** /ed-fi/assessmentItems | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getAssessmentItemsById**](AssessmentItemsApi.md#getassessmentitemsbyid) | **GET** /ed-fi/assessmentItems/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getAssessmentItemsPartitions**](AssessmentItemsApi.md#getassessmentitemspartitions) | **GET** /ed-fi/assessmentItems/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesAssessmentItems**](AssessmentItemsApi.md#keychangesassessmentitems) | **GET** /ed-fi/assessmentItems/keyChanges | Retrieves resources key changes based on change version.
[**postAssessmentItem**](AssessmentItemsApi.md#postassessmentitem) | **POST** /ed-fi/assessmentItems | Creates or updates resources based on the natural key values of the supplied resource.
[**putAssessmentItem**](AssessmentItemsApi.md#putassessmentitem) | **PUT** /ed-fi/assessmentItems/{id} | Updates a resource based on the resource identifier.


# **deleteAssessmentItemById**
> deleteAssessmentItemById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentItemsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteAssessmentItemById(id, ifMatch);
} catch (e) {
    print('Exception when calling AssessmentItemsApi->deleteAssessmentItemById: $e\n');
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

# **deletesAssessmentItems**
> List<TrackedChangesEdFiAssessmentItemDelete> deletesAssessmentItems(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentItemsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesAssessmentItems(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AssessmentItemsApi->deletesAssessmentItems: $e\n');
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

[**List<TrackedChangesEdFiAssessmentItemDelete>**](TrackedChangesEdFiAssessmentItemDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssessmentItems**
> List<EdFiAssessmentItem> getAssessmentItems(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, identificationCode, assessmentIdentifier, namespace, assessmentItemCategoryDescriptor, assessmentItemURI, expectedTimeAssessed, id, itemText, maxRawScore, nomenclature, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentItemsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, state, or other agency or entity.
final assessmentIdentifier = assessmentIdentifier_example; // String | A unique number or alphanumeric code assigned to an assessment.
final namespace = namespace_example; // String | Namespace for the assessment.
final assessmentItemCategoryDescriptor = assessmentItemCategoryDescriptor_example; // String | Category or type of the assessment item.
final assessmentItemURI = assessmentItemURI_example; // String | The URI (typical a URL) pointing to the entry in an assessment item bank, which describes this content item.
final expectedTimeAssessed = expectedTimeAssessed_example; // String | The duration allotted for the assessment item expressed in minutes.
final id = id_example; // String | 
final itemText = itemText_example; // String | The text of the item.
final maxRawScore = 1.2; // double | The maximum raw score achievable across all assessment items that are correct and scored at the maximum.
final nomenclature = nomenclature_example; // String | Reflects the specific nomenclature used for assessment item.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getAssessmentItems(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, identificationCode, assessmentIdentifier, namespace, assessmentItemCategoryDescriptor, assessmentItemURI, expectedTimeAssessed, id, itemText, maxRawScore, nomenclature, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AssessmentItemsApi->getAssessmentItems: $e\n');
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
 **identificationCode** | **String**| A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, state, or other agency or entity. | [optional] 
 **assessmentIdentifier** | **String**| A unique number or alphanumeric code assigned to an assessment. | [optional] 
 **namespace** | **String**| Namespace for the assessment. | [optional] 
 **assessmentItemCategoryDescriptor** | **String**| Category or type of the assessment item. | [optional] 
 **assessmentItemURI** | **String**| The URI (typical a URL) pointing to the entry in an assessment item bank, which describes this content item. | [optional] 
 **expectedTimeAssessed** | **String**| The duration allotted for the assessment item expressed in minutes. | [optional] 
 **id** | **String**|  | [optional] 
 **itemText** | **String**| The text of the item. | [optional] 
 **maxRawScore** | **double**| The maximum raw score achievable across all assessment items that are correct and scored at the maximum. | [optional] 
 **nomenclature** | **String**| Reflects the specific nomenclature used for assessment item. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiAssessmentItem>**](EdFiAssessmentItem.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssessmentItemsById**
> EdFiAssessmentItem getAssessmentItemsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentItemsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getAssessmentItemsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AssessmentItemsApi->getAssessmentItemsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiAssessmentItem**](EdFiAssessmentItem.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssessmentItemsPartitions**
> GetAcademicWeeksPartitions200Response getAssessmentItemsPartitions(number, minChangeVersion, maxChangeVersion, identificationCode, assessmentIdentifier, namespace, assessmentItemCategoryDescriptor, assessmentItemURI, expectedTimeAssessed, id, itemText, maxRawScore, nomenclature, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentItemsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, state, or other agency or entity.
final assessmentIdentifier = assessmentIdentifier_example; // String | A unique number or alphanumeric code assigned to an assessment.
final namespace = namespace_example; // String | Namespace for the assessment.
final assessmentItemCategoryDescriptor = assessmentItemCategoryDescriptor_example; // String | Category or type of the assessment item.
final assessmentItemURI = assessmentItemURI_example; // String | The URI (typical a URL) pointing to the entry in an assessment item bank, which describes this content item.
final expectedTimeAssessed = expectedTimeAssessed_example; // String | The duration allotted for the assessment item expressed in minutes.
final id = id_example; // String | 
final itemText = itemText_example; // String | The text of the item.
final maxRawScore = 1.2; // double | The maximum raw score achievable across all assessment items that are correct and scored at the maximum.
final nomenclature = nomenclature_example; // String | Reflects the specific nomenclature used for assessment item.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getAssessmentItemsPartitions(number, minChangeVersion, maxChangeVersion, identificationCode, assessmentIdentifier, namespace, assessmentItemCategoryDescriptor, assessmentItemURI, expectedTimeAssessed, id, itemText, maxRawScore, nomenclature, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AssessmentItemsApi->getAssessmentItemsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **identificationCode** | **String**| A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, state, or other agency or entity. | [optional] 
 **assessmentIdentifier** | **String**| A unique number or alphanumeric code assigned to an assessment. | [optional] 
 **namespace** | **String**| Namespace for the assessment. | [optional] 
 **assessmentItemCategoryDescriptor** | **String**| Category or type of the assessment item. | [optional] 
 **assessmentItemURI** | **String**| The URI (typical a URL) pointing to the entry in an assessment item bank, which describes this content item. | [optional] 
 **expectedTimeAssessed** | **String**| The duration allotted for the assessment item expressed in minutes. | [optional] 
 **id** | **String**|  | [optional] 
 **itemText** | **String**| The text of the item. | [optional] 
 **maxRawScore** | **double**| The maximum raw score achievable across all assessment items that are correct and scored at the maximum. | [optional] 
 **nomenclature** | **String**| Reflects the specific nomenclature used for assessment item. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesAssessmentItems**
> List<TrackedChangesEdFiAssessmentItemKeyChange> keyChangesAssessmentItems(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentItemsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesAssessmentItems(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AssessmentItemsApi->keyChangesAssessmentItems: $e\n');
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

[**List<TrackedChangesEdFiAssessmentItemKeyChange>**](TrackedChangesEdFiAssessmentItemKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAssessmentItem**
> postAssessmentItem(edFiAssessmentItem)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentItemsApi();
final edFiAssessmentItem = EdFiAssessmentItem(); // EdFiAssessmentItem | The JSON representation of the \"assessmentItem\" resource to be created or updated.

try {
    api_instance.postAssessmentItem(edFiAssessmentItem);
} catch (e) {
    print('Exception when calling AssessmentItemsApi->postAssessmentItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiAssessmentItem** | [**EdFiAssessmentItem**](EdFiAssessmentItem.md)| The JSON representation of the \"assessmentItem\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAssessmentItem**
> putAssessmentItem(id, edFiAssessmentItem, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentItemsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiAssessmentItem = EdFiAssessmentItem(); // EdFiAssessmentItem | The JSON representation of the \"assessmentItem\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putAssessmentItem(id, edFiAssessmentItem, ifMatch);
} catch (e) {
    print('Exception when calling AssessmentItemsApi->putAssessmentItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiAssessmentItem** | [**EdFiAssessmentItem**](EdFiAssessmentItem.md)| The JSON representation of the \"assessmentItem\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

