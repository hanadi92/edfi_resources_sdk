# edfi_resources_sdk.api.EvaluationElementsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteEvaluationElementById**](EvaluationElementsApi.md#deleteevaluationelementbyid) | **DELETE** /tpdm/evaluationElements/{id} | Deletes an existing resource using the resource identifier.
[**deletesEvaluationElements**](EvaluationElementsApi.md#deletesevaluationelements) | **GET** /tpdm/evaluationElements/deletes | Retrieves deleted resources based on change version.
[**getEvaluationElements**](EvaluationElementsApi.md#getevaluationelements) | **GET** /tpdm/evaluationElements | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getEvaluationElementsById**](EvaluationElementsApi.md#getevaluationelementsbyid) | **GET** /tpdm/evaluationElements/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getEvaluationElementsPartitions**](EvaluationElementsApi.md#getevaluationelementspartitions) | **GET** /tpdm/evaluationElements/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesEvaluationElements**](EvaluationElementsApi.md#keychangesevaluationelements) | **GET** /tpdm/evaluationElements/keyChanges | Retrieves resources key changes based on change version.
[**postEvaluationElement**](EvaluationElementsApi.md#postevaluationelement) | **POST** /tpdm/evaluationElements | Creates or updates resources based on the natural key values of the supplied resource.
[**putEvaluationElement**](EvaluationElementsApi.md#putevaluationelement) | **PUT** /tpdm/evaluationElements/{id} | Updates a resource based on the resource identifier.


# **deleteEvaluationElementById**
> deleteEvaluationElementById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EvaluationElementsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteEvaluationElementById(id, ifMatch);
} catch (e) {
    print('Exception when calling EvaluationElementsApi->deleteEvaluationElementById: $e\n');
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

# **deletesEvaluationElements**
> List<TrackedChangesTpdmEvaluationElementDelete> deletesEvaluationElements(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EvaluationElementsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesEvaluationElements(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling EvaluationElementsApi->deletesEvaluationElements: $e\n');
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

[**List<TrackedChangesTpdmEvaluationElementDelete>**](TrackedChangesTpdmEvaluationElementDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEvaluationElements**
> List<TpdmEvaluationElement> getEvaluationElements(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, evaluationElementTitle, educationOrganizationId, evaluationObjectiveTitle, evaluationPeriodDescriptor, evaluationTitle, performanceEvaluationTitle, performanceEvaluationTypeDescriptor, schoolYear, termDescriptor, evaluationTypeDescriptor, id, maxRating, minRating, sortOrder, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EvaluationElementsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final evaluationElementTitle = evaluationElementTitle_example; // String | The name or title of the evaluation element.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final evaluationObjectiveTitle = evaluationObjectiveTitle_example; // String | The name or title of the evaluation Objective.
final evaluationPeriodDescriptor = evaluationPeriodDescriptor_example; // String | The period for the evaluation.
final evaluationTitle = evaluationTitle_example; // String | The name or title of the evaluation.
final performanceEvaluationTitle = performanceEvaluationTitle_example; // String | An assigned unique identifier for the performance evaluation.
final performanceEvaluationTypeDescriptor = performanceEvaluationTypeDescriptor_example; // String | The type of performance evaluation conducted.
final schoolYear = 56; // int | The identifier for the school year.
final termDescriptor = termDescriptor_example; // String | The term for the session during the school year.
final evaluationTypeDescriptor = evaluationTypeDescriptor_example; // String | The type of the evaluation (e.g., observation, principal, peer, student survey, student growth).
final id = id_example; // String | 
final maxRating = 1.2; // double | The maximum summary numerical rating or score for the evaluation element.
final minRating = 1.2; // double | The minimum summary numerical rating or score for the evaluation element. If omitted, assumed to be 0.0.
final sortOrder = 56; // int | The sort order of this Evaluation Element.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getEvaluationElements(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, evaluationElementTitle, educationOrganizationId, evaluationObjectiveTitle, evaluationPeriodDescriptor, evaluationTitle, performanceEvaluationTitle, performanceEvaluationTypeDescriptor, schoolYear, termDescriptor, evaluationTypeDescriptor, id, maxRating, minRating, sortOrder, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling EvaluationElementsApi->getEvaluationElements: $e\n');
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
 **evaluationElementTitle** | **String**| The name or title of the evaluation element. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **evaluationObjectiveTitle** | **String**| The name or title of the evaluation Objective. | [optional] 
 **evaluationPeriodDescriptor** | **String**| The period for the evaluation. | [optional] 
 **evaluationTitle** | **String**| The name or title of the evaluation. | [optional] 
 **performanceEvaluationTitle** | **String**| An assigned unique identifier for the performance evaluation. | [optional] 
 **performanceEvaluationTypeDescriptor** | **String**| The type of performance evaluation conducted. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **termDescriptor** | **String**| The term for the session during the school year. | [optional] 
 **evaluationTypeDescriptor** | **String**| The type of the evaluation (e.g., observation, principal, peer, student survey, student growth). | [optional] 
 **id** | **String**|  | [optional] 
 **maxRating** | **double**| The maximum summary numerical rating or score for the evaluation element. | [optional] 
 **minRating** | **double**| The minimum summary numerical rating or score for the evaluation element. If omitted, assumed to be 0.0. | [optional] 
 **sortOrder** | **int**| The sort order of this Evaluation Element. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<TpdmEvaluationElement>**](TpdmEvaluationElement.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEvaluationElementsById**
> TpdmEvaluationElement getEvaluationElementsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EvaluationElementsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getEvaluationElementsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling EvaluationElementsApi->getEvaluationElementsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**TpdmEvaluationElement**](TpdmEvaluationElement.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEvaluationElementsPartitions**
> GetAcademicWeeksPartitions200Response getEvaluationElementsPartitions(number, minChangeVersion, maxChangeVersion, evaluationElementTitle, educationOrganizationId, evaluationObjectiveTitle, evaluationPeriodDescriptor, evaluationTitle, performanceEvaluationTitle, performanceEvaluationTypeDescriptor, schoolYear, termDescriptor, evaluationTypeDescriptor, id, maxRating, minRating, sortOrder, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EvaluationElementsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final evaluationElementTitle = evaluationElementTitle_example; // String | The name or title of the evaluation element.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final evaluationObjectiveTitle = evaluationObjectiveTitle_example; // String | The name or title of the evaluation Objective.
final evaluationPeriodDescriptor = evaluationPeriodDescriptor_example; // String | The period for the evaluation.
final evaluationTitle = evaluationTitle_example; // String | The name or title of the evaluation.
final performanceEvaluationTitle = performanceEvaluationTitle_example; // String | An assigned unique identifier for the performance evaluation.
final performanceEvaluationTypeDescriptor = performanceEvaluationTypeDescriptor_example; // String | The type of performance evaluation conducted.
final schoolYear = 56; // int | The identifier for the school year.
final termDescriptor = termDescriptor_example; // String | The term for the session during the school year.
final evaluationTypeDescriptor = evaluationTypeDescriptor_example; // String | The type of the evaluation (e.g., observation, principal, peer, student survey, student growth).
final id = id_example; // String | 
final maxRating = 1.2; // double | The maximum summary numerical rating or score for the evaluation element.
final minRating = 1.2; // double | The minimum summary numerical rating or score for the evaluation element. If omitted, assumed to be 0.0.
final sortOrder = 56; // int | The sort order of this Evaluation Element.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getEvaluationElementsPartitions(number, minChangeVersion, maxChangeVersion, evaluationElementTitle, educationOrganizationId, evaluationObjectiveTitle, evaluationPeriodDescriptor, evaluationTitle, performanceEvaluationTitle, performanceEvaluationTypeDescriptor, schoolYear, termDescriptor, evaluationTypeDescriptor, id, maxRating, minRating, sortOrder, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling EvaluationElementsApi->getEvaluationElementsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **evaluationElementTitle** | **String**| The name or title of the evaluation element. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **evaluationObjectiveTitle** | **String**| The name or title of the evaluation Objective. | [optional] 
 **evaluationPeriodDescriptor** | **String**| The period for the evaluation. | [optional] 
 **evaluationTitle** | **String**| The name or title of the evaluation. | [optional] 
 **performanceEvaluationTitle** | **String**| An assigned unique identifier for the performance evaluation. | [optional] 
 **performanceEvaluationTypeDescriptor** | **String**| The type of performance evaluation conducted. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **termDescriptor** | **String**| The term for the session during the school year. | [optional] 
 **evaluationTypeDescriptor** | **String**| The type of the evaluation (e.g., observation, principal, peer, student survey, student growth). | [optional] 
 **id** | **String**|  | [optional] 
 **maxRating** | **double**| The maximum summary numerical rating or score for the evaluation element. | [optional] 
 **minRating** | **double**| The minimum summary numerical rating or score for the evaluation element. If omitted, assumed to be 0.0. | [optional] 
 **sortOrder** | **int**| The sort order of this Evaluation Element. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesEvaluationElements**
> List<TrackedChangesTpdmEvaluationElementKeyChange> keyChangesEvaluationElements(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EvaluationElementsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesEvaluationElements(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling EvaluationElementsApi->keyChangesEvaluationElements: $e\n');
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

[**List<TrackedChangesTpdmEvaluationElementKeyChange>**](TrackedChangesTpdmEvaluationElementKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postEvaluationElement**
> postEvaluationElement(tpdmEvaluationElement)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EvaluationElementsApi();
final tpdmEvaluationElement = TpdmEvaluationElement(); // TpdmEvaluationElement | The JSON representation of the \"evaluationElement\" resource to be created or updated.

try {
    api_instance.postEvaluationElement(tpdmEvaluationElement);
} catch (e) {
    print('Exception when calling EvaluationElementsApi->postEvaluationElement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tpdmEvaluationElement** | [**TpdmEvaluationElement**](TpdmEvaluationElement.md)| The JSON representation of the \"evaluationElement\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putEvaluationElement**
> putEvaluationElement(id, tpdmEvaluationElement, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EvaluationElementsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final tpdmEvaluationElement = TpdmEvaluationElement(); // TpdmEvaluationElement | The JSON representation of the \"evaluationElement\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putEvaluationElement(id, tpdmEvaluationElement, ifMatch);
} catch (e) {
    print('Exception when calling EvaluationElementsApi->putEvaluationElement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **tpdmEvaluationElement** | [**TpdmEvaluationElement**](TpdmEvaluationElement.md)| The JSON representation of the \"evaluationElement\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

