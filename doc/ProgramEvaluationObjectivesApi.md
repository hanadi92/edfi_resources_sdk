# edfi_resources_sdk.api.ProgramEvaluationObjectivesApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteProgramEvaluationObjectiveById**](ProgramEvaluationObjectivesApi.md#deleteprogramevaluationobjectivebyid) | **DELETE** /ed-fi/programEvaluationObjectives/{id} | Deletes an existing resource using the resource identifier.
[**deletesProgramEvaluationObjectives**](ProgramEvaluationObjectivesApi.md#deletesprogramevaluationobjectives) | **GET** /ed-fi/programEvaluationObjectives/deletes | Retrieves deleted resources based on change version.
[**getProgramEvaluationObjectives**](ProgramEvaluationObjectivesApi.md#getprogramevaluationobjectives) | **GET** /ed-fi/programEvaluationObjectives | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getProgramEvaluationObjectivesById**](ProgramEvaluationObjectivesApi.md#getprogramevaluationobjectivesbyid) | **GET** /ed-fi/programEvaluationObjectives/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getProgramEvaluationObjectivesPartitions**](ProgramEvaluationObjectivesApi.md#getprogramevaluationobjectivespartitions) | **GET** /ed-fi/programEvaluationObjectives/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesProgramEvaluationObjectives**](ProgramEvaluationObjectivesApi.md#keychangesprogramevaluationobjectives) | **GET** /ed-fi/programEvaluationObjectives/keyChanges | Retrieves resources key changes based on change version.
[**postProgramEvaluationObjective**](ProgramEvaluationObjectivesApi.md#postprogramevaluationobjective) | **POST** /ed-fi/programEvaluationObjectives | Creates or updates resources based on the natural key values of the supplied resource.
[**putProgramEvaluationObjective**](ProgramEvaluationObjectivesApi.md#putprogramevaluationobjective) | **PUT** /ed-fi/programEvaluationObjectives/{id} | Updates a resource based on the resource identifier.


# **deleteProgramEvaluationObjectiveById**
> deleteProgramEvaluationObjectiveById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationObjectivesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteProgramEvaluationObjectiveById(id, ifMatch);
} catch (e) {
    print('Exception when calling ProgramEvaluationObjectivesApi->deleteProgramEvaluationObjectiveById: $e\n');
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

# **deletesProgramEvaluationObjectives**
> List<TrackedChangesEdFiProgramEvaluationObjectiveDelete> deletesProgramEvaluationObjectives(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationObjectivesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesProgramEvaluationObjectives(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ProgramEvaluationObjectivesApi->deletesProgramEvaluationObjectives: $e\n');
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

[**List<TrackedChangesEdFiProgramEvaluationObjectiveDelete>**](TrackedChangesEdFiProgramEvaluationObjectiveDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProgramEvaluationObjectives**
> List<EdFiProgramEvaluationObjective> getProgramEvaluationObjectives(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, programEvaluationObjectiveTitle, programEducationOrganizationId, programEvaluationPeriodDescriptor, programEvaluationTitle, programEvaluationTypeDescriptor, programName, programTypeDescriptor, id, objectiveMaxNumericRating, objectiveMinNumericRating, objectiveSortOrder, programEvaluationObjectiveDescription, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationObjectivesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final programEvaluationObjectiveTitle = programEvaluationObjectiveTitle_example; // String | The name or title of the program evaluation objective.
final programEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programEvaluationPeriodDescriptor = programEvaluationPeriodDescriptor_example; // String | The name of the period for the program evaluation.
final programEvaluationTitle = programEvaluationTitle_example; // String | An assigned unique identifier for the student program evaluation.
final programEvaluationTypeDescriptor = programEvaluationTypeDescriptor_example; // String | The type of program evaluation conducted.
final programName = programName_example; // String | The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
final programTypeDescriptor = programTypeDescriptor_example; // String | The type of program.
final id = id_example; // String | 
final objectiveMaxNumericRating = 1.2; // double | The maximum summary numerical rating or score for the program evaluation objective.
final objectiveMinNumericRating = 1.2; // double | The minimum summary numerical rating or score for the program evaluation objective. If omitted, assumed to be 0.0
final objectiveSortOrder = 56; // int | The sort order of this program evaluation objective.
final programEvaluationObjectiveDescription = programEvaluationObjectiveDescription_example; // String | The long description of the program evaluation objective.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getProgramEvaluationObjectives(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, programEvaluationObjectiveTitle, programEducationOrganizationId, programEvaluationPeriodDescriptor, programEvaluationTitle, programEvaluationTypeDescriptor, programName, programTypeDescriptor, id, objectiveMaxNumericRating, objectiveMinNumericRating, objectiveSortOrder, programEvaluationObjectiveDescription, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ProgramEvaluationObjectivesApi->getProgramEvaluationObjectives: $e\n');
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
 **programEvaluationObjectiveTitle** | **String**| The name or title of the program evaluation objective. | [optional] 
 **programEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **programEvaluationPeriodDescriptor** | **String**| The name of the period for the program evaluation. | [optional] 
 **programEvaluationTitle** | **String**| An assigned unique identifier for the student program evaluation. | [optional] 
 **programEvaluationTypeDescriptor** | **String**| The type of program evaluation conducted. | [optional] 
 **programName** | **String**| The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies. | [optional] 
 **programTypeDescriptor** | **String**| The type of program. | [optional] 
 **id** | **String**|  | [optional] 
 **objectiveMaxNumericRating** | **double**| The maximum summary numerical rating or score for the program evaluation objective. | [optional] 
 **objectiveMinNumericRating** | **double**| The minimum summary numerical rating or score for the program evaluation objective. If omitted, assumed to be 0.0 | [optional] 
 **objectiveSortOrder** | **int**| The sort order of this program evaluation objective. | [optional] 
 **programEvaluationObjectiveDescription** | **String**| The long description of the program evaluation objective. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiProgramEvaluationObjective>**](EdFiProgramEvaluationObjective.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProgramEvaluationObjectivesById**
> EdFiProgramEvaluationObjective getProgramEvaluationObjectivesById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationObjectivesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getProgramEvaluationObjectivesById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ProgramEvaluationObjectivesApi->getProgramEvaluationObjectivesById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiProgramEvaluationObjective**](EdFiProgramEvaluationObjective.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProgramEvaluationObjectivesPartitions**
> GetAcademicWeeksPartitions200Response getProgramEvaluationObjectivesPartitions(number, minChangeVersion, maxChangeVersion, programEvaluationObjectiveTitle, programEducationOrganizationId, programEvaluationPeriodDescriptor, programEvaluationTitle, programEvaluationTypeDescriptor, programName, programTypeDescriptor, id, objectiveMaxNumericRating, objectiveMinNumericRating, objectiveSortOrder, programEvaluationObjectiveDescription, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationObjectivesApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final programEvaluationObjectiveTitle = programEvaluationObjectiveTitle_example; // String | The name or title of the program evaluation objective.
final programEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programEvaluationPeriodDescriptor = programEvaluationPeriodDescriptor_example; // String | The name of the period for the program evaluation.
final programEvaluationTitle = programEvaluationTitle_example; // String | An assigned unique identifier for the student program evaluation.
final programEvaluationTypeDescriptor = programEvaluationTypeDescriptor_example; // String | The type of program evaluation conducted.
final programName = programName_example; // String | The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
final programTypeDescriptor = programTypeDescriptor_example; // String | The type of program.
final id = id_example; // String | 
final objectiveMaxNumericRating = 1.2; // double | The maximum summary numerical rating or score for the program evaluation objective.
final objectiveMinNumericRating = 1.2; // double | The minimum summary numerical rating or score for the program evaluation objective. If omitted, assumed to be 0.0
final objectiveSortOrder = 56; // int | The sort order of this program evaluation objective.
final programEvaluationObjectiveDescription = programEvaluationObjectiveDescription_example; // String | The long description of the program evaluation objective.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getProgramEvaluationObjectivesPartitions(number, minChangeVersion, maxChangeVersion, programEvaluationObjectiveTitle, programEducationOrganizationId, programEvaluationPeriodDescriptor, programEvaluationTitle, programEvaluationTypeDescriptor, programName, programTypeDescriptor, id, objectiveMaxNumericRating, objectiveMinNumericRating, objectiveSortOrder, programEvaluationObjectiveDescription, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ProgramEvaluationObjectivesApi->getProgramEvaluationObjectivesPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **programEvaluationObjectiveTitle** | **String**| The name or title of the program evaluation objective. | [optional] 
 **programEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **programEvaluationPeriodDescriptor** | **String**| The name of the period for the program evaluation. | [optional] 
 **programEvaluationTitle** | **String**| An assigned unique identifier for the student program evaluation. | [optional] 
 **programEvaluationTypeDescriptor** | **String**| The type of program evaluation conducted. | [optional] 
 **programName** | **String**| The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies. | [optional] 
 **programTypeDescriptor** | **String**| The type of program. | [optional] 
 **id** | **String**|  | [optional] 
 **objectiveMaxNumericRating** | **double**| The maximum summary numerical rating or score for the program evaluation objective. | [optional] 
 **objectiveMinNumericRating** | **double**| The minimum summary numerical rating or score for the program evaluation objective. If omitted, assumed to be 0.0 | [optional] 
 **objectiveSortOrder** | **int**| The sort order of this program evaluation objective. | [optional] 
 **programEvaluationObjectiveDescription** | **String**| The long description of the program evaluation objective. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesProgramEvaluationObjectives**
> List<TrackedChangesEdFiProgramEvaluationObjectiveKeyChange> keyChangesProgramEvaluationObjectives(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationObjectivesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesProgramEvaluationObjectives(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ProgramEvaluationObjectivesApi->keyChangesProgramEvaluationObjectives: $e\n');
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

[**List<TrackedChangesEdFiProgramEvaluationObjectiveKeyChange>**](TrackedChangesEdFiProgramEvaluationObjectiveKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postProgramEvaluationObjective**
> postProgramEvaluationObjective(edFiProgramEvaluationObjective)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationObjectivesApi();
final edFiProgramEvaluationObjective = EdFiProgramEvaluationObjective(); // EdFiProgramEvaluationObjective | The JSON representation of the \"programEvaluationObjective\" resource to be created or updated.

try {
    api_instance.postProgramEvaluationObjective(edFiProgramEvaluationObjective);
} catch (e) {
    print('Exception when calling ProgramEvaluationObjectivesApi->postProgramEvaluationObjective: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiProgramEvaluationObjective** | [**EdFiProgramEvaluationObjective**](EdFiProgramEvaluationObjective.md)| The JSON representation of the \"programEvaluationObjective\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putProgramEvaluationObjective**
> putProgramEvaluationObjective(id, edFiProgramEvaluationObjective, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationObjectivesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiProgramEvaluationObjective = EdFiProgramEvaluationObjective(); // EdFiProgramEvaluationObjective | The JSON representation of the \"programEvaluationObjective\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putProgramEvaluationObjective(id, edFiProgramEvaluationObjective, ifMatch);
} catch (e) {
    print('Exception when calling ProgramEvaluationObjectivesApi->putProgramEvaluationObjective: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiProgramEvaluationObjective** | [**EdFiProgramEvaluationObjective**](EdFiProgramEvaluationObjective.md)| The JSON representation of the \"programEvaluationObjective\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

