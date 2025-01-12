# edfi_resources_sdk.api.ObjectiveAssessmentsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteObjectiveAssessmentById**](ObjectiveAssessmentsApi.md#deleteobjectiveassessmentbyid) | **DELETE** /ed-fi/objectiveAssessments/{id} | Deletes an existing resource using the resource identifier.
[**deletesObjectiveAssessments**](ObjectiveAssessmentsApi.md#deletesobjectiveassessments) | **GET** /ed-fi/objectiveAssessments/deletes | Retrieves deleted resources based on change version.
[**getObjectiveAssessments**](ObjectiveAssessmentsApi.md#getobjectiveassessments) | **GET** /ed-fi/objectiveAssessments | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getObjectiveAssessmentsById**](ObjectiveAssessmentsApi.md#getobjectiveassessmentsbyid) | **GET** /ed-fi/objectiveAssessments/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getObjectiveAssessmentsPartitions**](ObjectiveAssessmentsApi.md#getobjectiveassessmentspartitions) | **GET** /ed-fi/objectiveAssessments/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesObjectiveAssessments**](ObjectiveAssessmentsApi.md#keychangesobjectiveassessments) | **GET** /ed-fi/objectiveAssessments/keyChanges | Retrieves resources key changes based on change version.
[**postObjectiveAssessment**](ObjectiveAssessmentsApi.md#postobjectiveassessment) | **POST** /ed-fi/objectiveAssessments | Creates or updates resources based on the natural key values of the supplied resource.
[**putObjectiveAssessment**](ObjectiveAssessmentsApi.md#putobjectiveassessment) | **PUT** /ed-fi/objectiveAssessments/{id} | Updates a resource based on the resource identifier.


# **deleteObjectiveAssessmentById**
> deleteObjectiveAssessmentById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ObjectiveAssessmentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteObjectiveAssessmentById(id, ifMatch);
} catch (e) {
    print('Exception when calling ObjectiveAssessmentsApi->deleteObjectiveAssessmentById: $e\n');
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

# **deletesObjectiveAssessments**
> List<TrackedChangesEdFiObjectiveAssessmentDelete> deletesObjectiveAssessments(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ObjectiveAssessmentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesObjectiveAssessments(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ObjectiveAssessmentsApi->deletesObjectiveAssessments: $e\n');
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

[**List<TrackedChangesEdFiObjectiveAssessmentDelete>**](TrackedChangesEdFiObjectiveAssessmentDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getObjectiveAssessments**
> List<EdFiObjectiveAssessment> getObjectiveAssessments(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, identificationCode, assessmentIdentifier, namespace, parentIdentificationCode, academicSubjectDescriptor, description, id, maxRawScore, nomenclature, percentOfAssessment, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ObjectiveAssessmentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code assigned to an objective assessment by a school, school system, a state, or other agency or entity.
final assessmentIdentifier = assessmentIdentifier_example; // String | A unique number or alphanumeric code assigned to an assessment.
final namespace = namespace_example; // String | Namespace for the assessment.
final parentIdentificationCode = parentIdentificationCode_example; // String | A unique number or alphanumeric code assigned to an objective assessment by a school, school system, a state, or other agency or entity.
final academicSubjectDescriptor = academicSubjectDescriptor_example; // String | The subject area of the objective assessment.
final description = description_example; // String | The description of the objective assessment (e.g., vocabulary, measurement, or geometry).
final id = id_example; // String | 
final maxRawScore = 1.2; // double | The maximum raw score achievable across all assessment items that are correct and scored at the maximum.
final nomenclature = nomenclature_example; // String | Reflects the specific nomenclature used for this level of objective assessment.
final percentOfAssessment = 1.2; // double | The percentage of the assessment that tests this objective.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getObjectiveAssessments(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, identificationCode, assessmentIdentifier, namespace, parentIdentificationCode, academicSubjectDescriptor, description, id, maxRawScore, nomenclature, percentOfAssessment, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ObjectiveAssessmentsApi->getObjectiveAssessments: $e\n');
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
 **identificationCode** | **String**| A unique number or alphanumeric code assigned to an objective assessment by a school, school system, a state, or other agency or entity. | [optional] 
 **assessmentIdentifier** | **String**| A unique number or alphanumeric code assigned to an assessment. | [optional] 
 **namespace** | **String**| Namespace for the assessment. | [optional] 
 **parentIdentificationCode** | **String**| A unique number or alphanumeric code assigned to an objective assessment by a school, school system, a state, or other agency or entity. | [optional] 
 **academicSubjectDescriptor** | **String**| The subject area of the objective assessment. | [optional] 
 **description** | **String**| The description of the objective assessment (e.g., vocabulary, measurement, or geometry). | [optional] 
 **id** | **String**|  | [optional] 
 **maxRawScore** | **double**| The maximum raw score achievable across all assessment items that are correct and scored at the maximum. | [optional] 
 **nomenclature** | **String**| Reflects the specific nomenclature used for this level of objective assessment. | [optional] 
 **percentOfAssessment** | **double**| The percentage of the assessment that tests this objective. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiObjectiveAssessment>**](EdFiObjectiveAssessment.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getObjectiveAssessmentsById**
> EdFiObjectiveAssessment getObjectiveAssessmentsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ObjectiveAssessmentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getObjectiveAssessmentsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ObjectiveAssessmentsApi->getObjectiveAssessmentsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiObjectiveAssessment**](EdFiObjectiveAssessment.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getObjectiveAssessmentsPartitions**
> GetAcademicWeeksPartitions200Response getObjectiveAssessmentsPartitions(number, minChangeVersion, maxChangeVersion, identificationCode, assessmentIdentifier, namespace, parentIdentificationCode, academicSubjectDescriptor, description, id, maxRawScore, nomenclature, percentOfAssessment, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ObjectiveAssessmentsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code assigned to an objective assessment by a school, school system, a state, or other agency or entity.
final assessmentIdentifier = assessmentIdentifier_example; // String | A unique number or alphanumeric code assigned to an assessment.
final namespace = namespace_example; // String | Namespace for the assessment.
final parentIdentificationCode = parentIdentificationCode_example; // String | A unique number or alphanumeric code assigned to an objective assessment by a school, school system, a state, or other agency or entity.
final academicSubjectDescriptor = academicSubjectDescriptor_example; // String | The subject area of the objective assessment.
final description = description_example; // String | The description of the objective assessment (e.g., vocabulary, measurement, or geometry).
final id = id_example; // String | 
final maxRawScore = 1.2; // double | The maximum raw score achievable across all assessment items that are correct and scored at the maximum.
final nomenclature = nomenclature_example; // String | Reflects the specific nomenclature used for this level of objective assessment.
final percentOfAssessment = 1.2; // double | The percentage of the assessment that tests this objective.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getObjectiveAssessmentsPartitions(number, minChangeVersion, maxChangeVersion, identificationCode, assessmentIdentifier, namespace, parentIdentificationCode, academicSubjectDescriptor, description, id, maxRawScore, nomenclature, percentOfAssessment, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ObjectiveAssessmentsApi->getObjectiveAssessmentsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **identificationCode** | **String**| A unique number or alphanumeric code assigned to an objective assessment by a school, school system, a state, or other agency or entity. | [optional] 
 **assessmentIdentifier** | **String**| A unique number or alphanumeric code assigned to an assessment. | [optional] 
 **namespace** | **String**| Namespace for the assessment. | [optional] 
 **parentIdentificationCode** | **String**| A unique number or alphanumeric code assigned to an objective assessment by a school, school system, a state, or other agency or entity. | [optional] 
 **academicSubjectDescriptor** | **String**| The subject area of the objective assessment. | [optional] 
 **description** | **String**| The description of the objective assessment (e.g., vocabulary, measurement, or geometry). | [optional] 
 **id** | **String**|  | [optional] 
 **maxRawScore** | **double**| The maximum raw score achievable across all assessment items that are correct and scored at the maximum. | [optional] 
 **nomenclature** | **String**| Reflects the specific nomenclature used for this level of objective assessment. | [optional] 
 **percentOfAssessment** | **double**| The percentage of the assessment that tests this objective. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesObjectiveAssessments**
> List<TrackedChangesEdFiObjectiveAssessmentKeyChange> keyChangesObjectiveAssessments(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ObjectiveAssessmentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesObjectiveAssessments(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ObjectiveAssessmentsApi->keyChangesObjectiveAssessments: $e\n');
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

[**List<TrackedChangesEdFiObjectiveAssessmentKeyChange>**](TrackedChangesEdFiObjectiveAssessmentKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postObjectiveAssessment**
> postObjectiveAssessment(edFiObjectiveAssessment)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ObjectiveAssessmentsApi();
final edFiObjectiveAssessment = EdFiObjectiveAssessment(); // EdFiObjectiveAssessment | The JSON representation of the \"objectiveAssessment\" resource to be created or updated.

try {
    api_instance.postObjectiveAssessment(edFiObjectiveAssessment);
} catch (e) {
    print('Exception when calling ObjectiveAssessmentsApi->postObjectiveAssessment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiObjectiveAssessment** | [**EdFiObjectiveAssessment**](EdFiObjectiveAssessment.md)| The JSON representation of the \"objectiveAssessment\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putObjectiveAssessment**
> putObjectiveAssessment(id, edFiObjectiveAssessment, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ObjectiveAssessmentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiObjectiveAssessment = EdFiObjectiveAssessment(); // EdFiObjectiveAssessment | The JSON representation of the \"objectiveAssessment\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putObjectiveAssessment(id, edFiObjectiveAssessment, ifMatch);
} catch (e) {
    print('Exception when calling ObjectiveAssessmentsApi->putObjectiveAssessment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiObjectiveAssessment** | [**EdFiObjectiveAssessment**](EdFiObjectiveAssessment.md)| The JSON representation of the \"objectiveAssessment\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

