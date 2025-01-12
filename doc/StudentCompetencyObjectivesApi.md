# edfi_resources_sdk.api.StudentCompetencyObjectivesApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStudentCompetencyObjectiveById**](StudentCompetencyObjectivesApi.md#deletestudentcompetencyobjectivebyid) | **DELETE** /ed-fi/studentCompetencyObjectives/{id} | Deletes an existing resource using the resource identifier.
[**deletesStudentCompetencyObjectives**](StudentCompetencyObjectivesApi.md#deletesstudentcompetencyobjectives) | **GET** /ed-fi/studentCompetencyObjectives/deletes | Retrieves deleted resources based on change version.
[**getStudentCompetencyObjectives**](StudentCompetencyObjectivesApi.md#getstudentcompetencyobjectives) | **GET** /ed-fi/studentCompetencyObjectives | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStudentCompetencyObjectivesById**](StudentCompetencyObjectivesApi.md#getstudentcompetencyobjectivesbyid) | **GET** /ed-fi/studentCompetencyObjectives/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStudentCompetencyObjectivesPartitions**](StudentCompetencyObjectivesApi.md#getstudentcompetencyobjectivespartitions) | **GET** /ed-fi/studentCompetencyObjectives/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStudentCompetencyObjectives**](StudentCompetencyObjectivesApi.md#keychangesstudentcompetencyobjectives) | **GET** /ed-fi/studentCompetencyObjectives/keyChanges | Retrieves resources key changes based on change version.
[**postStudentCompetencyObjective**](StudentCompetencyObjectivesApi.md#poststudentcompetencyobjective) | **POST** /ed-fi/studentCompetencyObjectives | Creates or updates resources based on the natural key values of the supplied resource.
[**putStudentCompetencyObjective**](StudentCompetencyObjectivesApi.md#putstudentcompetencyobjective) | **PUT** /ed-fi/studentCompetencyObjectives/{id} | Updates a resource based on the resource identifier.


# **deleteStudentCompetencyObjectiveById**
> deleteStudentCompetencyObjectiveById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentCompetencyObjectivesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStudentCompetencyObjectiveById(id, ifMatch);
} catch (e) {
    print('Exception when calling StudentCompetencyObjectivesApi->deleteStudentCompetencyObjectiveById: $e\n');
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

# **deletesStudentCompetencyObjectives**
> List<TrackedChangesEdFiStudentCompetencyObjectiveDelete> deletesStudentCompetencyObjectives(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentCompetencyObjectivesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStudentCompetencyObjectives(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentCompetencyObjectivesApi->deletesStudentCompetencyObjectives: $e\n');
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

[**List<TrackedChangesEdFiStudentCompetencyObjectiveDelete>**](TrackedChangesEdFiStudentCompetencyObjectiveDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentCompetencyObjectives**
> List<EdFiStudentCompetencyObjective> getStudentCompetencyObjectives(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, objectiveEducationOrganizationId, objective, objectiveGradeLevelDescriptor, gradingPeriodDescriptor, gradingPeriodName, gradingPeriodSchoolId, gradingPeriodSchoolYear, studentUniqueId, competencyLevelDescriptor, diagnosticStatement, id, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentCompetencyObjectivesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final objectiveEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final objective = objective_example; // String | The designated title of the competency objective.
final objectiveGradeLevelDescriptor = objectiveGradeLevelDescriptor_example; // String | The grade level for which the competency objective is targeted.
final gradingPeriodDescriptor = gradingPeriodDescriptor_example; // String | The state's name of the period for which grades are reported.
final gradingPeriodName = gradingPeriodName_example; // String | The school's descriptive name of the grading period.
final gradingPeriodSchoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final gradingPeriodSchoolYear = 56; // int | The identifier for the grading period school year.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final competencyLevelDescriptor = competencyLevelDescriptor_example; // String | The competency level assessed for the student for the referenced competency objective.
final diagnosticStatement = diagnosticStatement_example; // String | A statement provided by the teacher that provides information in addition to the grade or assessment score.
final id = id_example; // String | 
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentCompetencyObjectives(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, objectiveEducationOrganizationId, objective, objectiveGradeLevelDescriptor, gradingPeriodDescriptor, gradingPeriodName, gradingPeriodSchoolId, gradingPeriodSchoolYear, studentUniqueId, competencyLevelDescriptor, diagnosticStatement, id, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentCompetencyObjectivesApi->getStudentCompetencyObjectives: $e\n');
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
 **objectiveEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **objective** | **String**| The designated title of the competency objective. | [optional] 
 **objectiveGradeLevelDescriptor** | **String**| The grade level for which the competency objective is targeted. | [optional] 
 **gradingPeriodDescriptor** | **String**| The state's name of the period for which grades are reported. | [optional] 
 **gradingPeriodName** | **String**| The school's descriptive name of the grading period. | [optional] 
 **gradingPeriodSchoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **gradingPeriodSchoolYear** | **int**| The identifier for the grading period school year. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **competencyLevelDescriptor** | **String**| The competency level assessed for the student for the referenced competency objective. | [optional] 
 **diagnosticStatement** | **String**| A statement provided by the teacher that provides information in addition to the grade or assessment score. | [optional] 
 **id** | **String**|  | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStudentCompetencyObjective>**](EdFiStudentCompetencyObjective.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentCompetencyObjectivesById**
> EdFiStudentCompetencyObjective getStudentCompetencyObjectivesById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentCompetencyObjectivesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentCompetencyObjectivesById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentCompetencyObjectivesApi->getStudentCompetencyObjectivesById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStudentCompetencyObjective**](EdFiStudentCompetencyObjective.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentCompetencyObjectivesPartitions**
> GetAcademicWeeksPartitions200Response getStudentCompetencyObjectivesPartitions(number, minChangeVersion, maxChangeVersion, objectiveEducationOrganizationId, objective, objectiveGradeLevelDescriptor, gradingPeriodDescriptor, gradingPeriodName, gradingPeriodSchoolId, gradingPeriodSchoolYear, studentUniqueId, competencyLevelDescriptor, diagnosticStatement, id, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentCompetencyObjectivesApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final objectiveEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final objective = objective_example; // String | The designated title of the competency objective.
final objectiveGradeLevelDescriptor = objectiveGradeLevelDescriptor_example; // String | The grade level for which the competency objective is targeted.
final gradingPeriodDescriptor = gradingPeriodDescriptor_example; // String | The state's name of the period for which grades are reported.
final gradingPeriodName = gradingPeriodName_example; // String | The school's descriptive name of the grading period.
final gradingPeriodSchoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final gradingPeriodSchoolYear = 56; // int | The identifier for the grading period school year.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final competencyLevelDescriptor = competencyLevelDescriptor_example; // String | The competency level assessed for the student for the referenced competency objective.
final diagnosticStatement = diagnosticStatement_example; // String | A statement provided by the teacher that provides information in addition to the grade or assessment score.
final id = id_example; // String | 
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentCompetencyObjectivesPartitions(number, minChangeVersion, maxChangeVersion, objectiveEducationOrganizationId, objective, objectiveGradeLevelDescriptor, gradingPeriodDescriptor, gradingPeriodName, gradingPeriodSchoolId, gradingPeriodSchoolYear, studentUniqueId, competencyLevelDescriptor, diagnosticStatement, id, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentCompetencyObjectivesApi->getStudentCompetencyObjectivesPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **objectiveEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **objective** | **String**| The designated title of the competency objective. | [optional] 
 **objectiveGradeLevelDescriptor** | **String**| The grade level for which the competency objective is targeted. | [optional] 
 **gradingPeriodDescriptor** | **String**| The state's name of the period for which grades are reported. | [optional] 
 **gradingPeriodName** | **String**| The school's descriptive name of the grading period. | [optional] 
 **gradingPeriodSchoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **gradingPeriodSchoolYear** | **int**| The identifier for the grading period school year. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **competencyLevelDescriptor** | **String**| The competency level assessed for the student for the referenced competency objective. | [optional] 
 **diagnosticStatement** | **String**| A statement provided by the teacher that provides information in addition to the grade or assessment score. | [optional] 
 **id** | **String**|  | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesStudentCompetencyObjectives**
> List<TrackedChangesEdFiStudentCompetencyObjectiveKeyChange> keyChangesStudentCompetencyObjectives(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentCompetencyObjectivesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStudentCompetencyObjectives(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentCompetencyObjectivesApi->keyChangesStudentCompetencyObjectives: $e\n');
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

[**List<TrackedChangesEdFiStudentCompetencyObjectiveKeyChange>**](TrackedChangesEdFiStudentCompetencyObjectiveKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStudentCompetencyObjective**
> postStudentCompetencyObjective(edFiStudentCompetencyObjective)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentCompetencyObjectivesApi();
final edFiStudentCompetencyObjective = EdFiStudentCompetencyObjective(); // EdFiStudentCompetencyObjective | The JSON representation of the \"studentCompetencyObjective\" resource to be created or updated.

try {
    api_instance.postStudentCompetencyObjective(edFiStudentCompetencyObjective);
} catch (e) {
    print('Exception when calling StudentCompetencyObjectivesApi->postStudentCompetencyObjective: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStudentCompetencyObjective** | [**EdFiStudentCompetencyObjective**](EdFiStudentCompetencyObjective.md)| The JSON representation of the \"studentCompetencyObjective\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStudentCompetencyObjective**
> putStudentCompetencyObjective(id, edFiStudentCompetencyObjective, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentCompetencyObjectivesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStudentCompetencyObjective = EdFiStudentCompetencyObjective(); // EdFiStudentCompetencyObjective | The JSON representation of the \"studentCompetencyObjective\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStudentCompetencyObjective(id, edFiStudentCompetencyObjective, ifMatch);
} catch (e) {
    print('Exception when calling StudentCompetencyObjectivesApi->putStudentCompetencyObjective: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStudentCompetencyObjective** | [**EdFiStudentCompetencyObjective**](EdFiStudentCompetencyObjective.md)| The JSON representation of the \"studentCompetencyObjective\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

