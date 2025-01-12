# edfi_resources_sdk.api.AssessmentScoreRangeLearningStandardsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAssessmentScoreRangeLearningStandardById**](AssessmentScoreRangeLearningStandardsApi.md#deleteassessmentscorerangelearningstandardbyid) | **DELETE** /ed-fi/assessmentScoreRangeLearningStandards/{id} | Deletes an existing resource using the resource identifier.
[**deletesAssessmentScoreRangeLearningStandards**](AssessmentScoreRangeLearningStandardsApi.md#deletesassessmentscorerangelearningstandards) | **GET** /ed-fi/assessmentScoreRangeLearningStandards/deletes | Retrieves deleted resources based on change version.
[**getAssessmentScoreRangeLearningStandards**](AssessmentScoreRangeLearningStandardsApi.md#getassessmentscorerangelearningstandards) | **GET** /ed-fi/assessmentScoreRangeLearningStandards | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getAssessmentScoreRangeLearningStandardsById**](AssessmentScoreRangeLearningStandardsApi.md#getassessmentscorerangelearningstandardsbyid) | **GET** /ed-fi/assessmentScoreRangeLearningStandards/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getAssessmentScoreRangeLearningStandardsPartitions**](AssessmentScoreRangeLearningStandardsApi.md#getassessmentscorerangelearningstandardspartitions) | **GET** /ed-fi/assessmentScoreRangeLearningStandards/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesAssessmentScoreRangeLearningStandards**](AssessmentScoreRangeLearningStandardsApi.md#keychangesassessmentscorerangelearningstandards) | **GET** /ed-fi/assessmentScoreRangeLearningStandards/keyChanges | Retrieves resources key changes based on change version.
[**postAssessmentScoreRangeLearningStandard**](AssessmentScoreRangeLearningStandardsApi.md#postassessmentscorerangelearningstandard) | **POST** /ed-fi/assessmentScoreRangeLearningStandards | Creates or updates resources based on the natural key values of the supplied resource.
[**putAssessmentScoreRangeLearningStandard**](AssessmentScoreRangeLearningStandardsApi.md#putassessmentscorerangelearningstandard) | **PUT** /ed-fi/assessmentScoreRangeLearningStandards/{id} | Updates a resource based on the resource identifier.


# **deleteAssessmentScoreRangeLearningStandardById**
> deleteAssessmentScoreRangeLearningStandardById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentScoreRangeLearningStandardsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteAssessmentScoreRangeLearningStandardById(id, ifMatch);
} catch (e) {
    print('Exception when calling AssessmentScoreRangeLearningStandardsApi->deleteAssessmentScoreRangeLearningStandardById: $e\n');
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

# **deletesAssessmentScoreRangeLearningStandards**
> List<TrackedChangesEdFiAssessmentScoreRangeLearningStandardDelete> deletesAssessmentScoreRangeLearningStandards(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentScoreRangeLearningStandardsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesAssessmentScoreRangeLearningStandards(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AssessmentScoreRangeLearningStandardsApi->deletesAssessmentScoreRangeLearningStandards: $e\n');
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

[**List<TrackedChangesEdFiAssessmentScoreRangeLearningStandardDelete>**](TrackedChangesEdFiAssessmentScoreRangeLearningStandardDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssessmentScoreRangeLearningStandards**
> List<EdFiAssessmentScoreRangeLearningStandard> getAssessmentScoreRangeLearningStandards(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, scoreRangeId, assessmentIdentifier, namespace, identificationCode, assessmentReportingMethodDescriptor, id, maximumScore, minimumScore, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentScoreRangeLearningStandardsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final scoreRangeId = scoreRangeId_example; // String | A unique number or alphanumeric code assigned to the score range associated with one or more learning standards.
final assessmentIdentifier = assessmentIdentifier_example; // String | A unique number or alphanumeric code assigned to an assessment.
final namespace = namespace_example; // String | Namespace for the assessment.
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code assigned to an objective assessment by a school, school system, a state, or other agency or entity.
final assessmentReportingMethodDescriptor = assessmentReportingMethodDescriptor_example; // String | The assessment reporting method defined (e.g., scale score, RIT scale score) associated with the referenced learning standard(s).
final id = id_example; // String | 
final maximumScore = maximumScore_example; // String | The maximum score in the score range.
final minimumScore = minimumScore_example; // String | The minimum score in the score range.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getAssessmentScoreRangeLearningStandards(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, scoreRangeId, assessmentIdentifier, namespace, identificationCode, assessmentReportingMethodDescriptor, id, maximumScore, minimumScore, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AssessmentScoreRangeLearningStandardsApi->getAssessmentScoreRangeLearningStandards: $e\n');
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
 **scoreRangeId** | **String**| A unique number or alphanumeric code assigned to the score range associated with one or more learning standards. | [optional] 
 **assessmentIdentifier** | **String**| A unique number or alphanumeric code assigned to an assessment. | [optional] 
 **namespace** | **String**| Namespace for the assessment. | [optional] 
 **identificationCode** | **String**| A unique number or alphanumeric code assigned to an objective assessment by a school, school system, a state, or other agency or entity. | [optional] 
 **assessmentReportingMethodDescriptor** | **String**| The assessment reporting method defined (e.g., scale score, RIT scale score) associated with the referenced learning standard(s). | [optional] 
 **id** | **String**|  | [optional] 
 **maximumScore** | **String**| The maximum score in the score range. | [optional] 
 **minimumScore** | **String**| The minimum score in the score range. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiAssessmentScoreRangeLearningStandard>**](EdFiAssessmentScoreRangeLearningStandard.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssessmentScoreRangeLearningStandardsById**
> EdFiAssessmentScoreRangeLearningStandard getAssessmentScoreRangeLearningStandardsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentScoreRangeLearningStandardsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getAssessmentScoreRangeLearningStandardsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AssessmentScoreRangeLearningStandardsApi->getAssessmentScoreRangeLearningStandardsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiAssessmentScoreRangeLearningStandard**](EdFiAssessmentScoreRangeLearningStandard.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssessmentScoreRangeLearningStandardsPartitions**
> GetAcademicWeeksPartitions200Response getAssessmentScoreRangeLearningStandardsPartitions(number, minChangeVersion, maxChangeVersion, scoreRangeId, assessmentIdentifier, namespace, identificationCode, assessmentReportingMethodDescriptor, id, maximumScore, minimumScore, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentScoreRangeLearningStandardsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final scoreRangeId = scoreRangeId_example; // String | A unique number or alphanumeric code assigned to the score range associated with one or more learning standards.
final assessmentIdentifier = assessmentIdentifier_example; // String | A unique number or alphanumeric code assigned to an assessment.
final namespace = namespace_example; // String | Namespace for the assessment.
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code assigned to an objective assessment by a school, school system, a state, or other agency or entity.
final assessmentReportingMethodDescriptor = assessmentReportingMethodDescriptor_example; // String | The assessment reporting method defined (e.g., scale score, RIT scale score) associated with the referenced learning standard(s).
final id = id_example; // String | 
final maximumScore = maximumScore_example; // String | The maximum score in the score range.
final minimumScore = minimumScore_example; // String | The minimum score in the score range.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getAssessmentScoreRangeLearningStandardsPartitions(number, minChangeVersion, maxChangeVersion, scoreRangeId, assessmentIdentifier, namespace, identificationCode, assessmentReportingMethodDescriptor, id, maximumScore, minimumScore, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AssessmentScoreRangeLearningStandardsApi->getAssessmentScoreRangeLearningStandardsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **scoreRangeId** | **String**| A unique number or alphanumeric code assigned to the score range associated with one or more learning standards. | [optional] 
 **assessmentIdentifier** | **String**| A unique number or alphanumeric code assigned to an assessment. | [optional] 
 **namespace** | **String**| Namespace for the assessment. | [optional] 
 **identificationCode** | **String**| A unique number or alphanumeric code assigned to an objective assessment by a school, school system, a state, or other agency or entity. | [optional] 
 **assessmentReportingMethodDescriptor** | **String**| The assessment reporting method defined (e.g., scale score, RIT scale score) associated with the referenced learning standard(s). | [optional] 
 **id** | **String**|  | [optional] 
 **maximumScore** | **String**| The maximum score in the score range. | [optional] 
 **minimumScore** | **String**| The minimum score in the score range. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesAssessmentScoreRangeLearningStandards**
> List<TrackedChangesEdFiAssessmentScoreRangeLearningStandardKeyChange> keyChangesAssessmentScoreRangeLearningStandards(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentScoreRangeLearningStandardsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesAssessmentScoreRangeLearningStandards(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AssessmentScoreRangeLearningStandardsApi->keyChangesAssessmentScoreRangeLearningStandards: $e\n');
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

[**List<TrackedChangesEdFiAssessmentScoreRangeLearningStandardKeyChange>**](TrackedChangesEdFiAssessmentScoreRangeLearningStandardKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAssessmentScoreRangeLearningStandard**
> postAssessmentScoreRangeLearningStandard(edFiAssessmentScoreRangeLearningStandard)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentScoreRangeLearningStandardsApi();
final edFiAssessmentScoreRangeLearningStandard = EdFiAssessmentScoreRangeLearningStandard(); // EdFiAssessmentScoreRangeLearningStandard | The JSON representation of the \"assessmentScoreRangeLearningStandard\" resource to be created or updated.

try {
    api_instance.postAssessmentScoreRangeLearningStandard(edFiAssessmentScoreRangeLearningStandard);
} catch (e) {
    print('Exception when calling AssessmentScoreRangeLearningStandardsApi->postAssessmentScoreRangeLearningStandard: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiAssessmentScoreRangeLearningStandard** | [**EdFiAssessmentScoreRangeLearningStandard**](EdFiAssessmentScoreRangeLearningStandard.md)| The JSON representation of the \"assessmentScoreRangeLearningStandard\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAssessmentScoreRangeLearningStandard**
> putAssessmentScoreRangeLearningStandard(id, edFiAssessmentScoreRangeLearningStandard, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentScoreRangeLearningStandardsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiAssessmentScoreRangeLearningStandard = EdFiAssessmentScoreRangeLearningStandard(); // EdFiAssessmentScoreRangeLearningStandard | The JSON representation of the \"assessmentScoreRangeLearningStandard\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putAssessmentScoreRangeLearningStandard(id, edFiAssessmentScoreRangeLearningStandard, ifMatch);
} catch (e) {
    print('Exception when calling AssessmentScoreRangeLearningStandardsApi->putAssessmentScoreRangeLearningStandard: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiAssessmentScoreRangeLearningStandard** | [**EdFiAssessmentScoreRangeLearningStandard**](EdFiAssessmentScoreRangeLearningStandard.md)| The JSON representation of the \"assessmentScoreRangeLearningStandard\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

