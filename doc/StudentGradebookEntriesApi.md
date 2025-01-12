# edfi_resources_sdk.api.StudentGradebookEntriesApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStudentGradebookEntryById**](StudentGradebookEntriesApi.md#deletestudentgradebookentrybyid) | **DELETE** /ed-fi/studentGradebookEntries/{id} | Deletes an existing resource using the resource identifier.
[**deletesStudentGradebookEntries**](StudentGradebookEntriesApi.md#deletesstudentgradebookentries) | **GET** /ed-fi/studentGradebookEntries/deletes | Retrieves deleted resources based on change version.
[**getStudentGradebookEntries**](StudentGradebookEntriesApi.md#getstudentgradebookentries) | **GET** /ed-fi/studentGradebookEntries | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStudentGradebookEntriesById**](StudentGradebookEntriesApi.md#getstudentgradebookentriesbyid) | **GET** /ed-fi/studentGradebookEntries/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStudentGradebookEntriesPartitions**](StudentGradebookEntriesApi.md#getstudentgradebookentriespartitions) | **GET** /ed-fi/studentGradebookEntries/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStudentGradebookEntries**](StudentGradebookEntriesApi.md#keychangesstudentgradebookentries) | **GET** /ed-fi/studentGradebookEntries/keyChanges | Retrieves resources key changes based on change version.
[**postStudentGradebookEntry**](StudentGradebookEntriesApi.md#poststudentgradebookentry) | **POST** /ed-fi/studentGradebookEntries | Creates or updates resources based on the natural key values of the supplied resource.
[**putStudentGradebookEntry**](StudentGradebookEntriesApi.md#putstudentgradebookentry) | **PUT** /ed-fi/studentGradebookEntries/{id} | Updates a resource based on the resource identifier.


# **deleteStudentGradebookEntryById**
> deleteStudentGradebookEntryById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentGradebookEntriesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStudentGradebookEntryById(id, ifMatch);
} catch (e) {
    print('Exception when calling StudentGradebookEntriesApi->deleteStudentGradebookEntryById: $e\n');
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

# **deletesStudentGradebookEntries**
> List<TrackedChangesEdFiStudentGradebookEntryDelete> deletesStudentGradebookEntries(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentGradebookEntriesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStudentGradebookEntries(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentGradebookEntriesApi->deletesStudentGradebookEntries: $e\n');
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

[**List<TrackedChangesEdFiStudentGradebookEntryDelete>**](TrackedChangesEdFiStudentGradebookEntryDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentGradebookEntries**
> List<EdFiStudentGradebookEntry> getStudentGradebookEntries(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, gradebookEntryIdentifier, namespace, studentUniqueId, assignmentLateStatusDescriptor, competencyLevelDescriptor, submissionStatusDescriptor, dateFulfilled, diagnosticStatement, id, letterGradeEarned, numericGradeEarned, pointsEarned, timeFulfilled, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentGradebookEntriesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final gradebookEntryIdentifier = gradebookEntryIdentifier_example; // String | A unique number or alphanumeric code assigned to a gradebook entry by the source system.
final namespace = namespace_example; // String | Namespace URI for the source of the gradebook entry.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final assignmentLateStatusDescriptor = assignmentLateStatusDescriptor_example; // String | Status of whether the assignment was submitted after the due date and/or marked as.
final competencyLevelDescriptor = competencyLevelDescriptor_example; // String | The competency level assessed for the student for the referenced learning objective.
final submissionStatusDescriptor = submissionStatusDescriptor_example; // String | The status of the student's submission.
final dateFulfilled = 2013-10-20; // DateTime | The date an assignment was turned in or the date of an assessment.
final diagnosticStatement = diagnosticStatement_example; // String | A statement provided by the teacher that provides information in addition to the grade or assessment score.
final id = id_example; // String | 
final letterGradeEarned = letterGradeEarned_example; // String | A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
final numericGradeEarned = 1.2; // double | A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
final pointsEarned = 1.2; // double | The points earned for the submission. With extra credit, the points earned may exceed the max points.
final timeFulfilled = timeFulfilled_example; // String | The time an assignment was turned in on the date fulfilled.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentGradebookEntries(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, gradebookEntryIdentifier, namespace, studentUniqueId, assignmentLateStatusDescriptor, competencyLevelDescriptor, submissionStatusDescriptor, dateFulfilled, diagnosticStatement, id, letterGradeEarned, numericGradeEarned, pointsEarned, timeFulfilled, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentGradebookEntriesApi->getStudentGradebookEntries: $e\n');
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
 **gradebookEntryIdentifier** | **String**| A unique number or alphanumeric code assigned to a gradebook entry by the source system. | [optional] 
 **namespace** | **String**| Namespace URI for the source of the gradebook entry. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **assignmentLateStatusDescriptor** | **String**| Status of whether the assignment was submitted after the due date and/or marked as. | [optional] 
 **competencyLevelDescriptor** | **String**| The competency level assessed for the student for the referenced learning objective. | [optional] 
 **submissionStatusDescriptor** | **String**| The status of the student's submission. | [optional] 
 **dateFulfilled** | **DateTime**| The date an assignment was turned in or the date of an assessment. | [optional] 
 **diagnosticStatement** | **String**| A statement provided by the teacher that provides information in addition to the grade or assessment score. | [optional] 
 **id** | **String**|  | [optional] 
 **letterGradeEarned** | **String**| A final or interim (grading period) indicator of student performance in a class as submitted by the instructor. | [optional] 
 **numericGradeEarned** | **double**| A final or interim (grading period) indicator of student performance in a class as submitted by the instructor. | [optional] 
 **pointsEarned** | **double**| The points earned for the submission. With extra credit, the points earned may exceed the max points. | [optional] 
 **timeFulfilled** | **String**| The time an assignment was turned in on the date fulfilled. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStudentGradebookEntry>**](EdFiStudentGradebookEntry.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentGradebookEntriesById**
> EdFiStudentGradebookEntry getStudentGradebookEntriesById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentGradebookEntriesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentGradebookEntriesById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentGradebookEntriesApi->getStudentGradebookEntriesById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStudentGradebookEntry**](EdFiStudentGradebookEntry.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentGradebookEntriesPartitions**
> GetAcademicWeeksPartitions200Response getStudentGradebookEntriesPartitions(number, minChangeVersion, maxChangeVersion, gradebookEntryIdentifier, namespace, studentUniqueId, assignmentLateStatusDescriptor, competencyLevelDescriptor, submissionStatusDescriptor, dateFulfilled, diagnosticStatement, id, letterGradeEarned, numericGradeEarned, pointsEarned, timeFulfilled, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentGradebookEntriesApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final gradebookEntryIdentifier = gradebookEntryIdentifier_example; // String | A unique number or alphanumeric code assigned to a gradebook entry by the source system.
final namespace = namespace_example; // String | Namespace URI for the source of the gradebook entry.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final assignmentLateStatusDescriptor = assignmentLateStatusDescriptor_example; // String | Status of whether the assignment was submitted after the due date and/or marked as.
final competencyLevelDescriptor = competencyLevelDescriptor_example; // String | The competency level assessed for the student for the referenced learning objective.
final submissionStatusDescriptor = submissionStatusDescriptor_example; // String | The status of the student's submission.
final dateFulfilled = 2013-10-20; // DateTime | The date an assignment was turned in or the date of an assessment.
final diagnosticStatement = diagnosticStatement_example; // String | A statement provided by the teacher that provides information in addition to the grade or assessment score.
final id = id_example; // String | 
final letterGradeEarned = letterGradeEarned_example; // String | A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
final numericGradeEarned = 1.2; // double | A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
final pointsEarned = 1.2; // double | The points earned for the submission. With extra credit, the points earned may exceed the max points.
final timeFulfilled = timeFulfilled_example; // String | The time an assignment was turned in on the date fulfilled.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentGradebookEntriesPartitions(number, minChangeVersion, maxChangeVersion, gradebookEntryIdentifier, namespace, studentUniqueId, assignmentLateStatusDescriptor, competencyLevelDescriptor, submissionStatusDescriptor, dateFulfilled, diagnosticStatement, id, letterGradeEarned, numericGradeEarned, pointsEarned, timeFulfilled, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentGradebookEntriesApi->getStudentGradebookEntriesPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **gradebookEntryIdentifier** | **String**| A unique number or alphanumeric code assigned to a gradebook entry by the source system. | [optional] 
 **namespace** | **String**| Namespace URI for the source of the gradebook entry. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **assignmentLateStatusDescriptor** | **String**| Status of whether the assignment was submitted after the due date and/or marked as. | [optional] 
 **competencyLevelDescriptor** | **String**| The competency level assessed for the student for the referenced learning objective. | [optional] 
 **submissionStatusDescriptor** | **String**| The status of the student's submission. | [optional] 
 **dateFulfilled** | **DateTime**| The date an assignment was turned in or the date of an assessment. | [optional] 
 **diagnosticStatement** | **String**| A statement provided by the teacher that provides information in addition to the grade or assessment score. | [optional] 
 **id** | **String**|  | [optional] 
 **letterGradeEarned** | **String**| A final or interim (grading period) indicator of student performance in a class as submitted by the instructor. | [optional] 
 **numericGradeEarned** | **double**| A final or interim (grading period) indicator of student performance in a class as submitted by the instructor. | [optional] 
 **pointsEarned** | **double**| The points earned for the submission. With extra credit, the points earned may exceed the max points. | [optional] 
 **timeFulfilled** | **String**| The time an assignment was turned in on the date fulfilled. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesStudentGradebookEntries**
> List<TrackedChangesEdFiStudentGradebookEntryKeyChange> keyChangesStudentGradebookEntries(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentGradebookEntriesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStudentGradebookEntries(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentGradebookEntriesApi->keyChangesStudentGradebookEntries: $e\n');
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

[**List<TrackedChangesEdFiStudentGradebookEntryKeyChange>**](TrackedChangesEdFiStudentGradebookEntryKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStudentGradebookEntry**
> postStudentGradebookEntry(edFiStudentGradebookEntry)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentGradebookEntriesApi();
final edFiStudentGradebookEntry = EdFiStudentGradebookEntry(); // EdFiStudentGradebookEntry | The JSON representation of the \"studentGradebookEntry\" resource to be created or updated.

try {
    api_instance.postStudentGradebookEntry(edFiStudentGradebookEntry);
} catch (e) {
    print('Exception when calling StudentGradebookEntriesApi->postStudentGradebookEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStudentGradebookEntry** | [**EdFiStudentGradebookEntry**](EdFiStudentGradebookEntry.md)| The JSON representation of the \"studentGradebookEntry\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStudentGradebookEntry**
> putStudentGradebookEntry(id, edFiStudentGradebookEntry, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentGradebookEntriesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStudentGradebookEntry = EdFiStudentGradebookEntry(); // EdFiStudentGradebookEntry | The JSON representation of the \"studentGradebookEntry\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStudentGradebookEntry(id, edFiStudentGradebookEntry, ifMatch);
} catch (e) {
    print('Exception when calling StudentGradebookEntriesApi->putStudentGradebookEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStudentGradebookEntry** | [**EdFiStudentGradebookEntry**](EdFiStudentGradebookEntry.md)| The JSON representation of the \"studentGradebookEntry\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

