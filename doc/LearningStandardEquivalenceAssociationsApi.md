# edfi_resources_sdk.api.LearningStandardEquivalenceAssociationsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteLearningStandardEquivalenceAssociationById**](LearningStandardEquivalenceAssociationsApi.md#deletelearningstandardequivalenceassociationbyid) | **DELETE** /ed-fi/learningStandardEquivalenceAssociations/{id} | Deletes an existing resource using the resource identifier.
[**deletesLearningStandardEquivalenceAssociations**](LearningStandardEquivalenceAssociationsApi.md#deleteslearningstandardequivalenceassociations) | **GET** /ed-fi/learningStandardEquivalenceAssociations/deletes | Retrieves deleted resources based on change version.
[**getLearningStandardEquivalenceAssociations**](LearningStandardEquivalenceAssociationsApi.md#getlearningstandardequivalenceassociations) | **GET** /ed-fi/learningStandardEquivalenceAssociations | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getLearningStandardEquivalenceAssociationsById**](LearningStandardEquivalenceAssociationsApi.md#getlearningstandardequivalenceassociationsbyid) | **GET** /ed-fi/learningStandardEquivalenceAssociations/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getLearningStandardEquivalenceAssociationsPartitions**](LearningStandardEquivalenceAssociationsApi.md#getlearningstandardequivalenceassociationspartitions) | **GET** /ed-fi/learningStandardEquivalenceAssociations/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesLearningStandardEquivalenceAssociations**](LearningStandardEquivalenceAssociationsApi.md#keychangeslearningstandardequivalenceassociations) | **GET** /ed-fi/learningStandardEquivalenceAssociations/keyChanges | Retrieves resources key changes based on change version.
[**postLearningStandardEquivalenceAssociation**](LearningStandardEquivalenceAssociationsApi.md#postlearningstandardequivalenceassociation) | **POST** /ed-fi/learningStandardEquivalenceAssociations | Creates or updates resources based on the natural key values of the supplied resource.
[**putLearningStandardEquivalenceAssociation**](LearningStandardEquivalenceAssociationsApi.md#putlearningstandardequivalenceassociation) | **PUT** /ed-fi/learningStandardEquivalenceAssociations/{id} | Updates a resource based on the resource identifier.


# **deleteLearningStandardEquivalenceAssociationById**
> deleteLearningStandardEquivalenceAssociationById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LearningStandardEquivalenceAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteLearningStandardEquivalenceAssociationById(id, ifMatch);
} catch (e) {
    print('Exception when calling LearningStandardEquivalenceAssociationsApi->deleteLearningStandardEquivalenceAssociationById: $e\n');
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

# **deletesLearningStandardEquivalenceAssociations**
> List<TrackedChangesEdFiLearningStandardEquivalenceAssociationDelete> deletesLearningStandardEquivalenceAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LearningStandardEquivalenceAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesLearningStandardEquivalenceAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling LearningStandardEquivalenceAssociationsApi->deletesLearningStandardEquivalenceAssociations: $e\n');
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

[**List<TrackedChangesEdFiLearningStandardEquivalenceAssociationDelete>**](TrackedChangesEdFiLearningStandardEquivalenceAssociationDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLearningStandardEquivalenceAssociations**
> List<EdFiLearningStandardEquivalenceAssociation> getLearningStandardEquivalenceAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, namespace, sourceLearningStandardId, targetLearningStandardId, learningStandardEquivalenceStrengthDescriptor, effectiveDate, id, learningStandardEquivalenceStrengthDescription, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LearningStandardEquivalenceAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final namespace = namespace_example; // String | The namespace of the organization that has created and owns the association.
final sourceLearningStandardId = sourceLearningStandardId_example; // String | The identifier for the specific learning standard (e.g., 111.15.3.1.A).
final targetLearningStandardId = targetLearningStandardId_example; // String | The identifier for the specific learning standard (e.g., 111.15.3.1.A).
final learningStandardEquivalenceStrengthDescriptor = learningStandardEquivalenceStrengthDescriptor_example; // String | A measure that indicates the strength or quality of the equivalence relationship.
final effectiveDate = 2013-10-20; // DateTime | The date that the association is considered to be applicable or effective.
final id = id_example; // String | 
final learningStandardEquivalenceStrengthDescription = learningStandardEquivalenceStrengthDescription_example; // String | Captures supplemental information on the relationship. Recommended for use only when the match is partial.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getLearningStandardEquivalenceAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, namespace, sourceLearningStandardId, targetLearningStandardId, learningStandardEquivalenceStrengthDescriptor, effectiveDate, id, learningStandardEquivalenceStrengthDescription, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling LearningStandardEquivalenceAssociationsApi->getLearningStandardEquivalenceAssociations: $e\n');
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
 **namespace** | **String**| The namespace of the organization that has created and owns the association. | [optional] 
 **sourceLearningStandardId** | **String**| The identifier for the specific learning standard (e.g., 111.15.3.1.A). | [optional] 
 **targetLearningStandardId** | **String**| The identifier for the specific learning standard (e.g., 111.15.3.1.A). | [optional] 
 **learningStandardEquivalenceStrengthDescriptor** | **String**| A measure that indicates the strength or quality of the equivalence relationship. | [optional] 
 **effectiveDate** | **DateTime**| The date that the association is considered to be applicable or effective. | [optional] 
 **id** | **String**|  | [optional] 
 **learningStandardEquivalenceStrengthDescription** | **String**| Captures supplemental information on the relationship. Recommended for use only when the match is partial. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiLearningStandardEquivalenceAssociation>**](EdFiLearningStandardEquivalenceAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLearningStandardEquivalenceAssociationsById**
> EdFiLearningStandardEquivalenceAssociation getLearningStandardEquivalenceAssociationsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LearningStandardEquivalenceAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getLearningStandardEquivalenceAssociationsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling LearningStandardEquivalenceAssociationsApi->getLearningStandardEquivalenceAssociationsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiLearningStandardEquivalenceAssociation**](EdFiLearningStandardEquivalenceAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLearningStandardEquivalenceAssociationsPartitions**
> GetAcademicWeeksPartitions200Response getLearningStandardEquivalenceAssociationsPartitions(number, minChangeVersion, maxChangeVersion, namespace, sourceLearningStandardId, targetLearningStandardId, learningStandardEquivalenceStrengthDescriptor, effectiveDate, id, learningStandardEquivalenceStrengthDescription, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LearningStandardEquivalenceAssociationsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final namespace = namespace_example; // String | The namespace of the organization that has created and owns the association.
final sourceLearningStandardId = sourceLearningStandardId_example; // String | The identifier for the specific learning standard (e.g., 111.15.3.1.A).
final targetLearningStandardId = targetLearningStandardId_example; // String | The identifier for the specific learning standard (e.g., 111.15.3.1.A).
final learningStandardEquivalenceStrengthDescriptor = learningStandardEquivalenceStrengthDescriptor_example; // String | A measure that indicates the strength or quality of the equivalence relationship.
final effectiveDate = 2013-10-20; // DateTime | The date that the association is considered to be applicable or effective.
final id = id_example; // String | 
final learningStandardEquivalenceStrengthDescription = learningStandardEquivalenceStrengthDescription_example; // String | Captures supplemental information on the relationship. Recommended for use only when the match is partial.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getLearningStandardEquivalenceAssociationsPartitions(number, minChangeVersion, maxChangeVersion, namespace, sourceLearningStandardId, targetLearningStandardId, learningStandardEquivalenceStrengthDescriptor, effectiveDate, id, learningStandardEquivalenceStrengthDescription, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling LearningStandardEquivalenceAssociationsApi->getLearningStandardEquivalenceAssociationsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **namespace** | **String**| The namespace of the organization that has created and owns the association. | [optional] 
 **sourceLearningStandardId** | **String**| The identifier for the specific learning standard (e.g., 111.15.3.1.A). | [optional] 
 **targetLearningStandardId** | **String**| The identifier for the specific learning standard (e.g., 111.15.3.1.A). | [optional] 
 **learningStandardEquivalenceStrengthDescriptor** | **String**| A measure that indicates the strength or quality of the equivalence relationship. | [optional] 
 **effectiveDate** | **DateTime**| The date that the association is considered to be applicable or effective. | [optional] 
 **id** | **String**|  | [optional] 
 **learningStandardEquivalenceStrengthDescription** | **String**| Captures supplemental information on the relationship. Recommended for use only when the match is partial. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesLearningStandardEquivalenceAssociations**
> List<TrackedChangesEdFiLearningStandardEquivalenceAssociationKeyChange> keyChangesLearningStandardEquivalenceAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LearningStandardEquivalenceAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesLearningStandardEquivalenceAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling LearningStandardEquivalenceAssociationsApi->keyChangesLearningStandardEquivalenceAssociations: $e\n');
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

[**List<TrackedChangesEdFiLearningStandardEquivalenceAssociationKeyChange>**](TrackedChangesEdFiLearningStandardEquivalenceAssociationKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postLearningStandardEquivalenceAssociation**
> postLearningStandardEquivalenceAssociation(edFiLearningStandardEquivalenceAssociation)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LearningStandardEquivalenceAssociationsApi();
final edFiLearningStandardEquivalenceAssociation = EdFiLearningStandardEquivalenceAssociation(); // EdFiLearningStandardEquivalenceAssociation | The JSON representation of the \"learningStandardEquivalenceAssociation\" resource to be created or updated.

try {
    api_instance.postLearningStandardEquivalenceAssociation(edFiLearningStandardEquivalenceAssociation);
} catch (e) {
    print('Exception when calling LearningStandardEquivalenceAssociationsApi->postLearningStandardEquivalenceAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiLearningStandardEquivalenceAssociation** | [**EdFiLearningStandardEquivalenceAssociation**](EdFiLearningStandardEquivalenceAssociation.md)| The JSON representation of the \"learningStandardEquivalenceAssociation\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putLearningStandardEquivalenceAssociation**
> putLearningStandardEquivalenceAssociation(id, edFiLearningStandardEquivalenceAssociation, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = LearningStandardEquivalenceAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiLearningStandardEquivalenceAssociation = EdFiLearningStandardEquivalenceAssociation(); // EdFiLearningStandardEquivalenceAssociation | The JSON representation of the \"learningStandardEquivalenceAssociation\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putLearningStandardEquivalenceAssociation(id, edFiLearningStandardEquivalenceAssociation, ifMatch);
} catch (e) {
    print('Exception when calling LearningStandardEquivalenceAssociationsApi->putLearningStandardEquivalenceAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiLearningStandardEquivalenceAssociation** | [**EdFiLearningStandardEquivalenceAssociation**](EdFiLearningStandardEquivalenceAssociation.md)| The JSON representation of the \"learningStandardEquivalenceAssociation\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

