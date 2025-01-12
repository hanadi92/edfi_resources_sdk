# edfi_resources_sdk.api.ProgramEvaluationsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteProgramEvaluationById**](ProgramEvaluationsApi.md#deleteprogramevaluationbyid) | **DELETE** /ed-fi/programEvaluations/{id} | Deletes an existing resource using the resource identifier.
[**deletesProgramEvaluations**](ProgramEvaluationsApi.md#deletesprogramevaluations) | **GET** /ed-fi/programEvaluations/deletes | Retrieves deleted resources based on change version.
[**getProgramEvaluations**](ProgramEvaluationsApi.md#getprogramevaluations) | **GET** /ed-fi/programEvaluations | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getProgramEvaluationsById**](ProgramEvaluationsApi.md#getprogramevaluationsbyid) | **GET** /ed-fi/programEvaluations/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getProgramEvaluationsPartitions**](ProgramEvaluationsApi.md#getprogramevaluationspartitions) | **GET** /ed-fi/programEvaluations/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesProgramEvaluations**](ProgramEvaluationsApi.md#keychangesprogramevaluations) | **GET** /ed-fi/programEvaluations/keyChanges | Retrieves resources key changes based on change version.
[**postProgramEvaluation**](ProgramEvaluationsApi.md#postprogramevaluation) | **POST** /ed-fi/programEvaluations | Creates or updates resources based on the natural key values of the supplied resource.
[**putProgramEvaluation**](ProgramEvaluationsApi.md#putprogramevaluation) | **PUT** /ed-fi/programEvaluations/{id} | Updates a resource based on the resource identifier.


# **deleteProgramEvaluationById**
> deleteProgramEvaluationById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteProgramEvaluationById(id, ifMatch);
} catch (e) {
    print('Exception when calling ProgramEvaluationsApi->deleteProgramEvaluationById: $e\n');
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

# **deletesProgramEvaluations**
> List<TrackedChangesEdFiProgramEvaluationDelete> deletesProgramEvaluations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesProgramEvaluations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ProgramEvaluationsApi->deletesProgramEvaluations: $e\n');
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

[**List<TrackedChangesEdFiProgramEvaluationDelete>**](TrackedChangesEdFiProgramEvaluationDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProgramEvaluations**
> List<EdFiProgramEvaluation> getProgramEvaluations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, programEvaluationPeriodDescriptor, programEvaluationTypeDescriptor, programEvaluationTitle, programEducationOrganizationId, programName, programTypeDescriptor, evaluationMaxNumericRating, evaluationMinNumericRating, id, programEvaluationDescription, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final programEvaluationPeriodDescriptor = programEvaluationPeriodDescriptor_example; // String | The name of the period for the program evaluation.
final programEvaluationTypeDescriptor = programEvaluationTypeDescriptor_example; // String | The type of program evaluation conducted.
final programEvaluationTitle = programEvaluationTitle_example; // String | An assigned unique identifier for the student program evaluation.
final programEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programName = programName_example; // String | The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
final programTypeDescriptor = programTypeDescriptor_example; // String | The type of program.
final evaluationMaxNumericRating = 1.2; // double | The maximum summary numerical rating or score for the program evaluation.
final evaluationMinNumericRating = 1.2; // double | The minimum summary numerical rating or score for the program evaluation. If omitted, assumed to be 0.0
final id = id_example; // String | 
final programEvaluationDescription = programEvaluationDescription_example; // String | The long description of the program evaluation.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getProgramEvaluations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, programEvaluationPeriodDescriptor, programEvaluationTypeDescriptor, programEvaluationTitle, programEducationOrganizationId, programName, programTypeDescriptor, evaluationMaxNumericRating, evaluationMinNumericRating, id, programEvaluationDescription, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ProgramEvaluationsApi->getProgramEvaluations: $e\n');
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
 **programEvaluationPeriodDescriptor** | **String**| The name of the period for the program evaluation. | [optional] 
 **programEvaluationTypeDescriptor** | **String**| The type of program evaluation conducted. | [optional] 
 **programEvaluationTitle** | **String**| An assigned unique identifier for the student program evaluation. | [optional] 
 **programEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **programName** | **String**| The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies. | [optional] 
 **programTypeDescriptor** | **String**| The type of program. | [optional] 
 **evaluationMaxNumericRating** | **double**| The maximum summary numerical rating or score for the program evaluation. | [optional] 
 **evaluationMinNumericRating** | **double**| The minimum summary numerical rating or score for the program evaluation. If omitted, assumed to be 0.0 | [optional] 
 **id** | **String**|  | [optional] 
 **programEvaluationDescription** | **String**| The long description of the program evaluation. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiProgramEvaluation>**](EdFiProgramEvaluation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProgramEvaluationsById**
> EdFiProgramEvaluation getProgramEvaluationsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getProgramEvaluationsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ProgramEvaluationsApi->getProgramEvaluationsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiProgramEvaluation**](EdFiProgramEvaluation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProgramEvaluationsPartitions**
> GetAcademicWeeksPartitions200Response getProgramEvaluationsPartitions(number, minChangeVersion, maxChangeVersion, programEvaluationPeriodDescriptor, programEvaluationTypeDescriptor, programEvaluationTitle, programEducationOrganizationId, programName, programTypeDescriptor, evaluationMaxNumericRating, evaluationMinNumericRating, id, programEvaluationDescription, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final programEvaluationPeriodDescriptor = programEvaluationPeriodDescriptor_example; // String | The name of the period for the program evaluation.
final programEvaluationTypeDescriptor = programEvaluationTypeDescriptor_example; // String | The type of program evaluation conducted.
final programEvaluationTitle = programEvaluationTitle_example; // String | An assigned unique identifier for the student program evaluation.
final programEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programName = programName_example; // String | The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
final programTypeDescriptor = programTypeDescriptor_example; // String | The type of program.
final evaluationMaxNumericRating = 1.2; // double | The maximum summary numerical rating or score for the program evaluation.
final evaluationMinNumericRating = 1.2; // double | The minimum summary numerical rating or score for the program evaluation. If omitted, assumed to be 0.0
final id = id_example; // String | 
final programEvaluationDescription = programEvaluationDescription_example; // String | The long description of the program evaluation.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getProgramEvaluationsPartitions(number, minChangeVersion, maxChangeVersion, programEvaluationPeriodDescriptor, programEvaluationTypeDescriptor, programEvaluationTitle, programEducationOrganizationId, programName, programTypeDescriptor, evaluationMaxNumericRating, evaluationMinNumericRating, id, programEvaluationDescription, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ProgramEvaluationsApi->getProgramEvaluationsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **programEvaluationPeriodDescriptor** | **String**| The name of the period for the program evaluation. | [optional] 
 **programEvaluationTypeDescriptor** | **String**| The type of program evaluation conducted. | [optional] 
 **programEvaluationTitle** | **String**| An assigned unique identifier for the student program evaluation. | [optional] 
 **programEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **programName** | **String**| The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies. | [optional] 
 **programTypeDescriptor** | **String**| The type of program. | [optional] 
 **evaluationMaxNumericRating** | **double**| The maximum summary numerical rating or score for the program evaluation. | [optional] 
 **evaluationMinNumericRating** | **double**| The minimum summary numerical rating or score for the program evaluation. If omitted, assumed to be 0.0 | [optional] 
 **id** | **String**|  | [optional] 
 **programEvaluationDescription** | **String**| The long description of the program evaluation. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesProgramEvaluations**
> List<TrackedChangesEdFiProgramEvaluationKeyChange> keyChangesProgramEvaluations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesProgramEvaluations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ProgramEvaluationsApi->keyChangesProgramEvaluations: $e\n');
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

[**List<TrackedChangesEdFiProgramEvaluationKeyChange>**](TrackedChangesEdFiProgramEvaluationKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postProgramEvaluation**
> postProgramEvaluation(edFiProgramEvaluation)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationsApi();
final edFiProgramEvaluation = EdFiProgramEvaluation(); // EdFiProgramEvaluation | The JSON representation of the \"programEvaluation\" resource to be created or updated.

try {
    api_instance.postProgramEvaluation(edFiProgramEvaluation);
} catch (e) {
    print('Exception when calling ProgramEvaluationsApi->postProgramEvaluation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiProgramEvaluation** | [**EdFiProgramEvaluation**](EdFiProgramEvaluation.md)| The JSON representation of the \"programEvaluation\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putProgramEvaluation**
> putProgramEvaluation(id, edFiProgramEvaluation, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiProgramEvaluation = EdFiProgramEvaluation(); // EdFiProgramEvaluation | The JSON representation of the \"programEvaluation\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putProgramEvaluation(id, edFiProgramEvaluation, ifMatch);
} catch (e) {
    print('Exception when calling ProgramEvaluationsApi->putProgramEvaluation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiProgramEvaluation** | [**EdFiProgramEvaluation**](EdFiProgramEvaluation.md)| The JSON representation of the \"programEvaluation\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

