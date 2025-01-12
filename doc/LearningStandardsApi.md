# edfi_resources_sdk.api.LearningStandardsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteLearningStandardById**](LearningStandardsApi.md#deletelearningstandardbyid) | **DELETE** /ed-fi/learningStandards/{id} | Deletes an existing resource using the resource identifier.
[**deletesLearningStandards**](LearningStandardsApi.md#deleteslearningstandards) | **GET** /ed-fi/learningStandards/deletes | Retrieves deleted resources based on change version.
[**getLearningStandards**](LearningStandardsApi.md#getlearningstandards) | **GET** /ed-fi/learningStandards | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getLearningStandardsById**](LearningStandardsApi.md#getlearningstandardsbyid) | **GET** /ed-fi/learningStandards/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getLearningStandardsPartitions**](LearningStandardsApi.md#getlearningstandardspartitions) | **GET** /ed-fi/learningStandards/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesLearningStandards**](LearningStandardsApi.md#keychangeslearningstandards) | **GET** /ed-fi/learningStandards/keyChanges | Retrieves resources key changes based on change version.
[**postLearningStandard**](LearningStandardsApi.md#postlearningstandard) | **POST** /ed-fi/learningStandards | Creates or updates resources based on the natural key values of the supplied resource.
[**putLearningStandard**](LearningStandardsApi.md#putlearningstandard) | **PUT** /ed-fi/learningStandards/{id} | Updates a resource based on the resource identifier.


# **deleteLearningStandardById**
> deleteLearningStandardById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LearningStandardsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteLearningStandardById(id, ifMatch);
} catch (e) {
    print('Exception when calling LearningStandardsApi->deleteLearningStandardById: $e\n');
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

# **deletesLearningStandards**
> List<TrackedChangesEdFiLearningStandardDelete> deletesLearningStandards(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LearningStandardsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesLearningStandards(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling LearningStandardsApi->deletesLearningStandards: $e\n');
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

[**List<TrackedChangesEdFiLearningStandardDelete>**](TrackedChangesEdFiLearningStandardDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLearningStandards**
> List<EdFiLearningStandard> getLearningStandards(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, learningStandardId, parentLearningStandardId, learningStandardCategoryDescriptor, learningStandardScopeDescriptor, courseTitle, description, id, learningStandardItemCode, namespace, successCriteria, uri, useSnapshot, contentStandardName, identificationCode)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LearningStandardsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final learningStandardId = learningStandardId_example; // String | The identifier for the specific learning standard (e.g., 111.15.3.1.A).
final parentLearningStandardId = parentLearningStandardId_example; // String | The identifier for the specific learning standard (e.g., 111.15.3.1.A).
final learningStandardCategoryDescriptor = learningStandardCategoryDescriptor_example; // String | An additional classification of the type of a specific learning standard.
final learningStandardScopeDescriptor = learningStandardScopeDescriptor_example; // String | Signals the scope of usage the standard. Does not necessarily relate the standard to the governing body.
final courseTitle = courseTitle_example; // String | The official course title with which this learning standard is associated.
final description = description_example; // String | The text of the statement. The textual content that either describes a specific competency such as \"Apply the Pythagorean Theorem to determine unknown side lengths in right triangles in real-world and mathematical problems in two and three dimensions.\" or describes a less granular group of competencies within the taxonomy of the standards document, e.g. \"Understand and apply the Pythagorean Theorem,\" or \"Geometry\".
final id = id_example; // String | 
final learningStandardItemCode = learningStandardItemCode_example; // String | A code designated by the promulgating body to identify the statement, e.g. 1.N.3 (usually not globally unique).
final namespace = namespace_example; // String | The namespace of the organization or entity who governs the standard. It is recommended the namespaces observe a URI format and begin with a domain name under the governing organization or entity control.
final successCriteria = successCriteria_example; // String | One or more statements that describes the criteria used by teachers and students to check for attainment of a learning standard. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the learning standard.
final uri = uri_example; // String | An unambiguous reference to the statement using a network-resolvable URI.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.
final contentStandardName = contentStandardName_example; // String | The name of the content standard, for example Common Core.
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code assigned to a Learning Standard.

try {
    final result = api_instance.getLearningStandards(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, learningStandardId, parentLearningStandardId, learningStandardCategoryDescriptor, learningStandardScopeDescriptor, courseTitle, description, id, learningStandardItemCode, namespace, successCriteria, uri, useSnapshot, contentStandardName, identificationCode);
    print(result);
} catch (e) {
    print('Exception when calling LearningStandardsApi->getLearningStandards: $e\n');
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
 **learningStandardId** | **String**| The identifier for the specific learning standard (e.g., 111.15.3.1.A). | [optional] 
 **parentLearningStandardId** | **String**| The identifier for the specific learning standard (e.g., 111.15.3.1.A). | [optional] 
 **learningStandardCategoryDescriptor** | **String**| An additional classification of the type of a specific learning standard. | [optional] 
 **learningStandardScopeDescriptor** | **String**| Signals the scope of usage the standard. Does not necessarily relate the standard to the governing body. | [optional] 
 **courseTitle** | **String**| The official course title with which this learning standard is associated. | [optional] 
 **description** | **String**| The text of the statement. The textual content that either describes a specific competency such as \"Apply the Pythagorean Theorem to determine unknown side lengths in right triangles in real-world and mathematical problems in two and three dimensions.\" or describes a less granular group of competencies within the taxonomy of the standards document, e.g. \"Understand and apply the Pythagorean Theorem,\" or \"Geometry\". | [optional] 
 **id** | **String**|  | [optional] 
 **learningStandardItemCode** | **String**| A code designated by the promulgating body to identify the statement, e.g. 1.N.3 (usually not globally unique). | [optional] 
 **namespace** | **String**| The namespace of the organization or entity who governs the standard. It is recommended the namespaces observe a URI format and begin with a domain name under the governing organization or entity control. | [optional] 
 **successCriteria** | **String**| One or more statements that describes the criteria used by teachers and students to check for attainment of a learning standard. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the learning standard. | [optional] 
 **uri** | **String**| An unambiguous reference to the statement using a network-resolvable URI. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]
 **contentStandardName** | **String**| The name of the content standard, for example Common Core. | [optional] 
 **identificationCode** | **String**| A unique number or alphanumeric code assigned to a Learning Standard. | [optional] 

### Return type

[**List<EdFiLearningStandard>**](EdFiLearningStandard.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLearningStandardsById**
> EdFiLearningStandard getLearningStandardsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LearningStandardsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getLearningStandardsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling LearningStandardsApi->getLearningStandardsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiLearningStandard**](EdFiLearningStandard.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLearningStandardsPartitions**
> GetAcademicWeeksPartitions200Response getLearningStandardsPartitions(number, minChangeVersion, maxChangeVersion, learningStandardId, parentLearningStandardId, learningStandardCategoryDescriptor, learningStandardScopeDescriptor, courseTitle, description, id, learningStandardItemCode, namespace, successCriteria, uri, useSnapshot, contentStandardName, identificationCode)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LearningStandardsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final learningStandardId = learningStandardId_example; // String | The identifier for the specific learning standard (e.g., 111.15.3.1.A).
final parentLearningStandardId = parentLearningStandardId_example; // String | The identifier for the specific learning standard (e.g., 111.15.3.1.A).
final learningStandardCategoryDescriptor = learningStandardCategoryDescriptor_example; // String | An additional classification of the type of a specific learning standard.
final learningStandardScopeDescriptor = learningStandardScopeDescriptor_example; // String | Signals the scope of usage the standard. Does not necessarily relate the standard to the governing body.
final courseTitle = courseTitle_example; // String | The official course title with which this learning standard is associated.
final description = description_example; // String | The text of the statement. The textual content that either describes a specific competency such as \"Apply the Pythagorean Theorem to determine unknown side lengths in right triangles in real-world and mathematical problems in two and three dimensions.\" or describes a less granular group of competencies within the taxonomy of the standards document, e.g. \"Understand and apply the Pythagorean Theorem,\" or \"Geometry\".
final id = id_example; // String | 
final learningStandardItemCode = learningStandardItemCode_example; // String | A code designated by the promulgating body to identify the statement, e.g. 1.N.3 (usually not globally unique).
final namespace = namespace_example; // String | The namespace of the organization or entity who governs the standard. It is recommended the namespaces observe a URI format and begin with a domain name under the governing organization or entity control.
final successCriteria = successCriteria_example; // String | One or more statements that describes the criteria used by teachers and students to check for attainment of a learning standard. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the learning standard.
final uri = uri_example; // String | An unambiguous reference to the statement using a network-resolvable URI.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.
final contentStandardName = contentStandardName_example; // String | The name of the content standard, for example Common Core.
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code assigned to a Learning Standard.

try {
    final result = api_instance.getLearningStandardsPartitions(number, minChangeVersion, maxChangeVersion, learningStandardId, parentLearningStandardId, learningStandardCategoryDescriptor, learningStandardScopeDescriptor, courseTitle, description, id, learningStandardItemCode, namespace, successCriteria, uri, useSnapshot, contentStandardName, identificationCode);
    print(result);
} catch (e) {
    print('Exception when calling LearningStandardsApi->getLearningStandardsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **learningStandardId** | **String**| The identifier for the specific learning standard (e.g., 111.15.3.1.A). | [optional] 
 **parentLearningStandardId** | **String**| The identifier for the specific learning standard (e.g., 111.15.3.1.A). | [optional] 
 **learningStandardCategoryDescriptor** | **String**| An additional classification of the type of a specific learning standard. | [optional] 
 **learningStandardScopeDescriptor** | **String**| Signals the scope of usage the standard. Does not necessarily relate the standard to the governing body. | [optional] 
 **courseTitle** | **String**| The official course title with which this learning standard is associated. | [optional] 
 **description** | **String**| The text of the statement. The textual content that either describes a specific competency such as \"Apply the Pythagorean Theorem to determine unknown side lengths in right triangles in real-world and mathematical problems in two and three dimensions.\" or describes a less granular group of competencies within the taxonomy of the standards document, e.g. \"Understand and apply the Pythagorean Theorem,\" or \"Geometry\". | [optional] 
 **id** | **String**|  | [optional] 
 **learningStandardItemCode** | **String**| A code designated by the promulgating body to identify the statement, e.g. 1.N.3 (usually not globally unique). | [optional] 
 **namespace** | **String**| The namespace of the organization or entity who governs the standard. It is recommended the namespaces observe a URI format and begin with a domain name under the governing organization or entity control. | [optional] 
 **successCriteria** | **String**| One or more statements that describes the criteria used by teachers and students to check for attainment of a learning standard. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the learning standard. | [optional] 
 **uri** | **String**| An unambiguous reference to the statement using a network-resolvable URI. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]
 **contentStandardName** | **String**| The name of the content standard, for example Common Core. | [optional] 
 **identificationCode** | **String**| A unique number or alphanumeric code assigned to a Learning Standard. | [optional] 

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesLearningStandards**
> List<TrackedChangesEdFiLearningStandardKeyChange> keyChangesLearningStandards(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LearningStandardsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesLearningStandards(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling LearningStandardsApi->keyChangesLearningStandards: $e\n');
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

[**List<TrackedChangesEdFiLearningStandardKeyChange>**](TrackedChangesEdFiLearningStandardKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postLearningStandard**
> postLearningStandard(edFiLearningStandard)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LearningStandardsApi();
final edFiLearningStandard = EdFiLearningStandard(); // EdFiLearningStandard | The JSON representation of the \"learningStandard\" resource to be created or updated.

try {
    api_instance.postLearningStandard(edFiLearningStandard);
} catch (e) {
    print('Exception when calling LearningStandardsApi->postLearningStandard: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiLearningStandard** | [**EdFiLearningStandard**](EdFiLearningStandard.md)| The JSON representation of the \"learningStandard\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putLearningStandard**
> putLearningStandard(id, edFiLearningStandard, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LearningStandardsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiLearningStandard = EdFiLearningStandard(); // EdFiLearningStandard | The JSON representation of the \"learningStandard\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putLearningStandard(id, edFiLearningStandard, ifMatch);
} catch (e) {
    print('Exception when calling LearningStandardsApi->putLearningStandard: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiLearningStandard** | [**EdFiLearningStandard**](EdFiLearningStandard.md)| The JSON representation of the \"learningStandard\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

