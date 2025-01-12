# edfi_resources_sdk.api.EducationContentsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteEducationContentById**](EducationContentsApi.md#deleteeducationcontentbyid) | **DELETE** /ed-fi/educationContents/{id} | Deletes an existing resource using the resource identifier.
[**deletesEducationContents**](EducationContentsApi.md#deleteseducationcontents) | **GET** /ed-fi/educationContents/deletes | Retrieves deleted resources based on change version.
[**getEducationContents**](EducationContentsApi.md#geteducationcontents) | **GET** /ed-fi/educationContents | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getEducationContentsById**](EducationContentsApi.md#geteducationcontentsbyid) | **GET** /ed-fi/educationContents/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getEducationContentsPartitions**](EducationContentsApi.md#geteducationcontentspartitions) | **GET** /ed-fi/educationContents/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesEducationContents**](EducationContentsApi.md#keychangeseducationcontents) | **GET** /ed-fi/educationContents/keyChanges | Retrieves resources key changes based on change version.
[**postEducationContent**](EducationContentsApi.md#posteducationcontent) | **POST** /ed-fi/educationContents | Creates or updates resources based on the natural key values of the supplied resource.
[**putEducationContent**](EducationContentsApi.md#puteducationcontent) | **PUT** /ed-fi/educationContents/{id} | Updates a resource based on the resource identifier.


# **deleteEducationContentById**
> deleteEducationContentById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EducationContentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteEducationContentById(id, ifMatch);
} catch (e) {
    print('Exception when calling EducationContentsApi->deleteEducationContentById: $e\n');
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

# **deletesEducationContents**
> List<TrackedChangesEdFiEducationContentDelete> deletesEducationContents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EducationContentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesEducationContents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling EducationContentsApi->deletesEducationContents: $e\n');
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

[**List<TrackedChangesEdFiEducationContentDelete>**](TrackedChangesEdFiEducationContentDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEducationContents**
> List<EdFiEducationContent> getEducationContents(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, contentIdentifier, learningStandardId, contentClassDescriptor, costRateDescriptor, interactivityStyleDescriptor, additionalAuthorsIndicator, cost, description, id, learningResourceMetadataURI, namespace, publicationDate, publicationYear, publisher, shortDescription, timeRequired, useRightsURL, version, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EducationContentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final contentIdentifier = contentIdentifier_example; // String | A unique identifier for the education content.
final learningStandardId = learningStandardId_example; // String | The identifier for the specific learning standard (e.g., 111.15.3.1.A).
final contentClassDescriptor = contentClassDescriptor_example; // String | The predominate type or kind characterizing the learning resource.
final costRateDescriptor = costRateDescriptor_example; // String | The rate by which the cost applies.
final interactivityStyleDescriptor = interactivityStyleDescriptor_example; // String | The predominate mode of learning supported by the learning resource. Acceptable values are active, expositive, or mixed.
final additionalAuthorsIndicator = true; // bool | Indicates whether there are additional un-named authors. In a research report, this is often marked by the abbreviation \"et al\".
final cost = 1.2; // double | An amount that has to be paid or spent to buy or obtain the education content.
final description = description_example; // String | An extended written representation of the education content.
final id = id_example; // String | 
final learningResourceMetadataURI = learningResourceMetadataURI_example; // String | The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.
final namespace = namespace_example; // String | Namespace for the education content.
final publicationDate = 2013-10-20; // DateTime | The date on which this content was first published.
final publicationYear = 56; // int | The year at which this content was first published.
final publisher = publisher_example; // String | The organization credited with publishing the resource.
final shortDescription = shortDescription_example; // String | A short description or name of the entity.
final timeRequired = timeRequired_example; // String | Approximate or typical time that it takes to work with or through this learning resource for the typical intended target audience expressed in minutes.
final useRightsURL = useRightsURL_example; // String | The URL where the owner specifies permissions for using the resource.
final version = version_example; // String | The version identifier for the content.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getEducationContents(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, contentIdentifier, learningStandardId, contentClassDescriptor, costRateDescriptor, interactivityStyleDescriptor, additionalAuthorsIndicator, cost, description, id, learningResourceMetadataURI, namespace, publicationDate, publicationYear, publisher, shortDescription, timeRequired, useRightsURL, version, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling EducationContentsApi->getEducationContents: $e\n');
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
 **contentIdentifier** | **String**| A unique identifier for the education content. | [optional] 
 **learningStandardId** | **String**| The identifier for the specific learning standard (e.g., 111.15.3.1.A). | [optional] 
 **contentClassDescriptor** | **String**| The predominate type or kind characterizing the learning resource. | [optional] 
 **costRateDescriptor** | **String**| The rate by which the cost applies. | [optional] 
 **interactivityStyleDescriptor** | **String**| The predominate mode of learning supported by the learning resource. Acceptable values are active, expositive, or mixed. | [optional] 
 **additionalAuthorsIndicator** | **bool**| Indicates whether there are additional un-named authors. In a research report, this is often marked by the abbreviation \"et al\". | [optional] 
 **cost** | **double**| An amount that has to be paid or spent to buy or obtain the education content. | [optional] 
 **description** | **String**| An extended written representation of the education content. | [optional] 
 **id** | **String**|  | [optional] 
 **learningResourceMetadataURI** | **String**| The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item. | [optional] 
 **namespace** | **String**| Namespace for the education content. | [optional] 
 **publicationDate** | **DateTime**| The date on which this content was first published. | [optional] 
 **publicationYear** | **int**| The year at which this content was first published. | [optional] 
 **publisher** | **String**| The organization credited with publishing the resource. | [optional] 
 **shortDescription** | **String**| A short description or name of the entity. | [optional] 
 **timeRequired** | **String**| Approximate or typical time that it takes to work with or through this learning resource for the typical intended target audience expressed in minutes. | [optional] 
 **useRightsURL** | **String**| The URL where the owner specifies permissions for using the resource. | [optional] 
 **version** | **String**| The version identifier for the content. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiEducationContent>**](EdFiEducationContent.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEducationContentsById**
> EdFiEducationContent getEducationContentsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EducationContentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getEducationContentsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling EducationContentsApi->getEducationContentsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiEducationContent**](EdFiEducationContent.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEducationContentsPartitions**
> GetAcademicWeeksPartitions200Response getEducationContentsPartitions(number, minChangeVersion, maxChangeVersion, contentIdentifier, learningStandardId, contentClassDescriptor, costRateDescriptor, interactivityStyleDescriptor, additionalAuthorsIndicator, cost, description, id, learningResourceMetadataURI, namespace, publicationDate, publicationYear, publisher, shortDescription, timeRequired, useRightsURL, version, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EducationContentsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final contentIdentifier = contentIdentifier_example; // String | A unique identifier for the education content.
final learningStandardId = learningStandardId_example; // String | The identifier for the specific learning standard (e.g., 111.15.3.1.A).
final contentClassDescriptor = contentClassDescriptor_example; // String | The predominate type or kind characterizing the learning resource.
final costRateDescriptor = costRateDescriptor_example; // String | The rate by which the cost applies.
final interactivityStyleDescriptor = interactivityStyleDescriptor_example; // String | The predominate mode of learning supported by the learning resource. Acceptable values are active, expositive, or mixed.
final additionalAuthorsIndicator = true; // bool | Indicates whether there are additional un-named authors. In a research report, this is often marked by the abbreviation \"et al\".
final cost = 1.2; // double | An amount that has to be paid or spent to buy or obtain the education content.
final description = description_example; // String | An extended written representation of the education content.
final id = id_example; // String | 
final learningResourceMetadataURI = learningResourceMetadataURI_example; // String | The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.
final namespace = namespace_example; // String | Namespace for the education content.
final publicationDate = 2013-10-20; // DateTime | The date on which this content was first published.
final publicationYear = 56; // int | The year at which this content was first published.
final publisher = publisher_example; // String | The organization credited with publishing the resource.
final shortDescription = shortDescription_example; // String | A short description or name of the entity.
final timeRequired = timeRequired_example; // String | Approximate or typical time that it takes to work with or through this learning resource for the typical intended target audience expressed in minutes.
final useRightsURL = useRightsURL_example; // String | The URL where the owner specifies permissions for using the resource.
final version = version_example; // String | The version identifier for the content.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getEducationContentsPartitions(number, minChangeVersion, maxChangeVersion, contentIdentifier, learningStandardId, contentClassDescriptor, costRateDescriptor, interactivityStyleDescriptor, additionalAuthorsIndicator, cost, description, id, learningResourceMetadataURI, namespace, publicationDate, publicationYear, publisher, shortDescription, timeRequired, useRightsURL, version, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling EducationContentsApi->getEducationContentsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **contentIdentifier** | **String**| A unique identifier for the education content. | [optional] 
 **learningStandardId** | **String**| The identifier for the specific learning standard (e.g., 111.15.3.1.A). | [optional] 
 **contentClassDescriptor** | **String**| The predominate type or kind characterizing the learning resource. | [optional] 
 **costRateDescriptor** | **String**| The rate by which the cost applies. | [optional] 
 **interactivityStyleDescriptor** | **String**| The predominate mode of learning supported by the learning resource. Acceptable values are active, expositive, or mixed. | [optional] 
 **additionalAuthorsIndicator** | **bool**| Indicates whether there are additional un-named authors. In a research report, this is often marked by the abbreviation \"et al\". | [optional] 
 **cost** | **double**| An amount that has to be paid or spent to buy or obtain the education content. | [optional] 
 **description** | **String**| An extended written representation of the education content. | [optional] 
 **id** | **String**|  | [optional] 
 **learningResourceMetadataURI** | **String**| The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item. | [optional] 
 **namespace** | **String**| Namespace for the education content. | [optional] 
 **publicationDate** | **DateTime**| The date on which this content was first published. | [optional] 
 **publicationYear** | **int**| The year at which this content was first published. | [optional] 
 **publisher** | **String**| The organization credited with publishing the resource. | [optional] 
 **shortDescription** | **String**| A short description or name of the entity. | [optional] 
 **timeRequired** | **String**| Approximate or typical time that it takes to work with or through this learning resource for the typical intended target audience expressed in minutes. | [optional] 
 **useRightsURL** | **String**| The URL where the owner specifies permissions for using the resource. | [optional] 
 **version** | **String**| The version identifier for the content. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesEducationContents**
> List<TrackedChangesEdFiEducationContentKeyChange> keyChangesEducationContents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EducationContentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesEducationContents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling EducationContentsApi->keyChangesEducationContents: $e\n');
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

[**List<TrackedChangesEdFiEducationContentKeyChange>**](TrackedChangesEdFiEducationContentKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postEducationContent**
> postEducationContent(edFiEducationContent)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EducationContentsApi();
final edFiEducationContent = EdFiEducationContent(); // EdFiEducationContent | The JSON representation of the \"educationContent\" resource to be created or updated.

try {
    api_instance.postEducationContent(edFiEducationContent);
} catch (e) {
    print('Exception when calling EducationContentsApi->postEducationContent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiEducationContent** | [**EdFiEducationContent**](EdFiEducationContent.md)| The JSON representation of the \"educationContent\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putEducationContent**
> putEducationContent(id, edFiEducationContent, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EducationContentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiEducationContent = EdFiEducationContent(); // EdFiEducationContent | The JSON representation of the \"educationContent\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putEducationContent(id, edFiEducationContent, ifMatch);
} catch (e) {
    print('Exception when calling EducationContentsApi->putEducationContent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiEducationContent** | [**EdFiEducationContent**](EdFiEducationContent.md)| The JSON representation of the \"educationContent\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

