# edfi_resources_sdk.api.GradebookEntriesApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteGradebookEntryById**](GradebookEntriesApi.md#deletegradebookentrybyid) | **DELETE** /ed-fi/gradebookEntries/{id} | Deletes an existing resource using the resource identifier.
[**deletesGradebookEntries**](GradebookEntriesApi.md#deletesgradebookentries) | **GET** /ed-fi/gradebookEntries/deletes | Retrieves deleted resources based on change version.
[**getGradebookEntries**](GradebookEntriesApi.md#getgradebookentries) | **GET** /ed-fi/gradebookEntries | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getGradebookEntriesById**](GradebookEntriesApi.md#getgradebookentriesbyid) | **GET** /ed-fi/gradebookEntries/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getGradebookEntriesPartitions**](GradebookEntriesApi.md#getgradebookentriespartitions) | **GET** /ed-fi/gradebookEntries/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesGradebookEntries**](GradebookEntriesApi.md#keychangesgradebookentries) | **GET** /ed-fi/gradebookEntries/keyChanges | Retrieves resources key changes based on change version.
[**postGradebookEntry**](GradebookEntriesApi.md#postgradebookentry) | **POST** /ed-fi/gradebookEntries | Creates or updates resources based on the natural key values of the supplied resource.
[**putGradebookEntry**](GradebookEntriesApi.md#putgradebookentry) | **PUT** /ed-fi/gradebookEntries/{id} | Updates a resource based on the resource identifier.


# **deleteGradebookEntryById**
> deleteGradebookEntryById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GradebookEntriesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteGradebookEntryById(id, ifMatch);
} catch (e) {
    print('Exception when calling GradebookEntriesApi->deleteGradebookEntryById: $e\n');
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

# **deletesGradebookEntries**
> List<TrackedChangesEdFiGradebookEntryDelete> deletesGradebookEntries(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GradebookEntriesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesGradebookEntries(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling GradebookEntriesApi->deletesGradebookEntries: $e\n');
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

[**List<TrackedChangesEdFiGradebookEntryDelete>**](TrackedChangesEdFiGradebookEntryDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGradebookEntries**
> List<EdFiGradebookEntry> getGradebookEntries(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, gradebookEntryIdentifier, namespace, gradingPeriodDescriptor, gradingPeriodName, schoolId, schoolYear, localCourseCode, sectionIdentifier, sessionName, gradebookEntryTypeDescriptor, dateAssigned, description, dueDate, dueTime, id, maxPoints, sourceSectionIdentifier, title, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GradebookEntriesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final gradebookEntryIdentifier = gradebookEntryIdentifier_example; // String | A unique number or alphanumeric code assigned to a gradebook entry by the source system.
final namespace = namespace_example; // String | Namespace URI for the source of the gradebook entry.
final gradingPeriodDescriptor = gradingPeriodDescriptor_example; // String | The state's name of the period for which grades are reported.
final gradingPeriodName = gradingPeriodName_example; // String | The school's descriptive name of the grading period.
final schoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final schoolYear = 56; // int | The identifier for the school year.
final localCourseCode = localCourseCode_example; // String | The local code assigned by the School that identifies the course offering provided for the instruction of students.
final sectionIdentifier = sectionIdentifier_example; // String | The local identifier assigned to a section.
final sessionName = sessionName_example; // String | The identifier for the calendar for the academic session.
final gradebookEntryTypeDescriptor = gradebookEntryTypeDescriptor_example; // String | The type of the gradebook entry.
final dateAssigned = 2013-10-20; // DateTime | The date the assignment, homework, or assessment was assigned or executed.
final description = description_example; // String | A description of the assignment, homework, or classroom assessment.
final dueDate = 2013-10-20; // DateTime | The date the assignment, homework, or assessment is due.
final dueTime = dueTime_example; // String | The time the assignment, homework, or assessment is due.
final id = id_example; // String | 
final maxPoints = 1.2; // double | The maximum number of points  that can be earned for the submission.
final sourceSectionIdentifier = sourceSectionIdentifier_example; // String | The local identifier assigned to a section.
final title = title_example; // String | The name or title of the activity to be recorded in the gradebook entry.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getGradebookEntries(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, gradebookEntryIdentifier, namespace, gradingPeriodDescriptor, gradingPeriodName, schoolId, schoolYear, localCourseCode, sectionIdentifier, sessionName, gradebookEntryTypeDescriptor, dateAssigned, description, dueDate, dueTime, id, maxPoints, sourceSectionIdentifier, title, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling GradebookEntriesApi->getGradebookEntries: $e\n');
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
 **gradingPeriodDescriptor** | **String**| The state's name of the period for which grades are reported. | [optional] 
 **gradingPeriodName** | **String**| The school's descriptive name of the grading period. | [optional] 
 **schoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **localCourseCode** | **String**| The local code assigned by the School that identifies the course offering provided for the instruction of students. | [optional] 
 **sectionIdentifier** | **String**| The local identifier assigned to a section. | [optional] 
 **sessionName** | **String**| The identifier for the calendar for the academic session. | [optional] 
 **gradebookEntryTypeDescriptor** | **String**| The type of the gradebook entry. | [optional] 
 **dateAssigned** | **DateTime**| The date the assignment, homework, or assessment was assigned or executed. | [optional] 
 **description** | **String**| A description of the assignment, homework, or classroom assessment. | [optional] 
 **dueDate** | **DateTime**| The date the assignment, homework, or assessment is due. | [optional] 
 **dueTime** | **String**| The time the assignment, homework, or assessment is due. | [optional] 
 **id** | **String**|  | [optional] 
 **maxPoints** | **double**| The maximum number of points  that can be earned for the submission. | [optional] 
 **sourceSectionIdentifier** | **String**| The local identifier assigned to a section. | [optional] 
 **title** | **String**| The name or title of the activity to be recorded in the gradebook entry. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiGradebookEntry>**](EdFiGradebookEntry.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGradebookEntriesById**
> EdFiGradebookEntry getGradebookEntriesById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GradebookEntriesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getGradebookEntriesById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling GradebookEntriesApi->getGradebookEntriesById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiGradebookEntry**](EdFiGradebookEntry.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGradebookEntriesPartitions**
> GetAcademicWeeksPartitions200Response getGradebookEntriesPartitions(number, minChangeVersion, maxChangeVersion, gradebookEntryIdentifier, namespace, gradingPeriodDescriptor, gradingPeriodName, schoolId, schoolYear, localCourseCode, sectionIdentifier, sessionName, gradebookEntryTypeDescriptor, dateAssigned, description, dueDate, dueTime, id, maxPoints, sourceSectionIdentifier, title, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GradebookEntriesApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final gradebookEntryIdentifier = gradebookEntryIdentifier_example; // String | A unique number or alphanumeric code assigned to a gradebook entry by the source system.
final namespace = namespace_example; // String | Namespace URI for the source of the gradebook entry.
final gradingPeriodDescriptor = gradingPeriodDescriptor_example; // String | The state's name of the period for which grades are reported.
final gradingPeriodName = gradingPeriodName_example; // String | The school's descriptive name of the grading period.
final schoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final schoolYear = 56; // int | The identifier for the school year.
final localCourseCode = localCourseCode_example; // String | The local code assigned by the School that identifies the course offering provided for the instruction of students.
final sectionIdentifier = sectionIdentifier_example; // String | The local identifier assigned to a section.
final sessionName = sessionName_example; // String | The identifier for the calendar for the academic session.
final gradebookEntryTypeDescriptor = gradebookEntryTypeDescriptor_example; // String | The type of the gradebook entry.
final dateAssigned = 2013-10-20; // DateTime | The date the assignment, homework, or assessment was assigned or executed.
final description = description_example; // String | A description of the assignment, homework, or classroom assessment.
final dueDate = 2013-10-20; // DateTime | The date the assignment, homework, or assessment is due.
final dueTime = dueTime_example; // String | The time the assignment, homework, or assessment is due.
final id = id_example; // String | 
final maxPoints = 1.2; // double | The maximum number of points  that can be earned for the submission.
final sourceSectionIdentifier = sourceSectionIdentifier_example; // String | The local identifier assigned to a section.
final title = title_example; // String | The name or title of the activity to be recorded in the gradebook entry.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getGradebookEntriesPartitions(number, minChangeVersion, maxChangeVersion, gradebookEntryIdentifier, namespace, gradingPeriodDescriptor, gradingPeriodName, schoolId, schoolYear, localCourseCode, sectionIdentifier, sessionName, gradebookEntryTypeDescriptor, dateAssigned, description, dueDate, dueTime, id, maxPoints, sourceSectionIdentifier, title, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling GradebookEntriesApi->getGradebookEntriesPartitions: $e\n');
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
 **gradingPeriodDescriptor** | **String**| The state's name of the period for which grades are reported. | [optional] 
 **gradingPeriodName** | **String**| The school's descriptive name of the grading period. | [optional] 
 **schoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **localCourseCode** | **String**| The local code assigned by the School that identifies the course offering provided for the instruction of students. | [optional] 
 **sectionIdentifier** | **String**| The local identifier assigned to a section. | [optional] 
 **sessionName** | **String**| The identifier for the calendar for the academic session. | [optional] 
 **gradebookEntryTypeDescriptor** | **String**| The type of the gradebook entry. | [optional] 
 **dateAssigned** | **DateTime**| The date the assignment, homework, or assessment was assigned or executed. | [optional] 
 **description** | **String**| A description of the assignment, homework, or classroom assessment. | [optional] 
 **dueDate** | **DateTime**| The date the assignment, homework, or assessment is due. | [optional] 
 **dueTime** | **String**| The time the assignment, homework, or assessment is due. | [optional] 
 **id** | **String**|  | [optional] 
 **maxPoints** | **double**| The maximum number of points  that can be earned for the submission. | [optional] 
 **sourceSectionIdentifier** | **String**| The local identifier assigned to a section. | [optional] 
 **title** | **String**| The name or title of the activity to be recorded in the gradebook entry. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesGradebookEntries**
> List<TrackedChangesEdFiGradebookEntryKeyChange> keyChangesGradebookEntries(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GradebookEntriesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesGradebookEntries(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling GradebookEntriesApi->keyChangesGradebookEntries: $e\n');
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

[**List<TrackedChangesEdFiGradebookEntryKeyChange>**](TrackedChangesEdFiGradebookEntryKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postGradebookEntry**
> postGradebookEntry(edFiGradebookEntry)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GradebookEntriesApi();
final edFiGradebookEntry = EdFiGradebookEntry(); // EdFiGradebookEntry | The JSON representation of the \"gradebookEntry\" resource to be created or updated.

try {
    api_instance.postGradebookEntry(edFiGradebookEntry);
} catch (e) {
    print('Exception when calling GradebookEntriesApi->postGradebookEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiGradebookEntry** | [**EdFiGradebookEntry**](EdFiGradebookEntry.md)| The JSON representation of the \"gradebookEntry\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putGradebookEntry**
> putGradebookEntry(id, edFiGradebookEntry, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, if natural key values are being updated by the JSON body, those changes will be applied to the resource and will also cascade through to dependent resources.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GradebookEntriesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiGradebookEntry = EdFiGradebookEntry(); // EdFiGradebookEntry | The JSON representation of the \"gradebookEntry\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putGradebookEntry(id, edFiGradebookEntry, ifMatch);
} catch (e) {
    print('Exception when calling GradebookEntriesApi->putGradebookEntry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiGradebookEntry** | [**EdFiGradebookEntry**](EdFiGradebookEntry.md)| The JSON representation of the \"gradebookEntry\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

