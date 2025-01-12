# edfi_resources_sdk.api.StudentInterventionAttendanceEventsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStudentInterventionAttendanceEventById**](StudentInterventionAttendanceEventsApi.md#deletestudentinterventionattendanceeventbyid) | **DELETE** /ed-fi/studentInterventionAttendanceEvents/{id} | Deletes an existing resource using the resource identifier.
[**deletesStudentInterventionAttendanceEvents**](StudentInterventionAttendanceEventsApi.md#deletesstudentinterventionattendanceevents) | **GET** /ed-fi/studentInterventionAttendanceEvents/deletes | Retrieves deleted resources based on change version.
[**getStudentInterventionAttendanceEvents**](StudentInterventionAttendanceEventsApi.md#getstudentinterventionattendanceevents) | **GET** /ed-fi/studentInterventionAttendanceEvents | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStudentInterventionAttendanceEventsById**](StudentInterventionAttendanceEventsApi.md#getstudentinterventionattendanceeventsbyid) | **GET** /ed-fi/studentInterventionAttendanceEvents/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStudentInterventionAttendanceEventsPartitions**](StudentInterventionAttendanceEventsApi.md#getstudentinterventionattendanceeventspartitions) | **GET** /ed-fi/studentInterventionAttendanceEvents/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStudentInterventionAttendanceEvents**](StudentInterventionAttendanceEventsApi.md#keychangesstudentinterventionattendanceevents) | **GET** /ed-fi/studentInterventionAttendanceEvents/keyChanges | Retrieves resources key changes based on change version.
[**postStudentInterventionAttendanceEvent**](StudentInterventionAttendanceEventsApi.md#poststudentinterventionattendanceevent) | **POST** /ed-fi/studentInterventionAttendanceEvents | Creates or updates resources based on the natural key values of the supplied resource.
[**putStudentInterventionAttendanceEvent**](StudentInterventionAttendanceEventsApi.md#putstudentinterventionattendanceevent) | **PUT** /ed-fi/studentInterventionAttendanceEvents/{id} | Updates a resource based on the resource identifier.


# **deleteStudentInterventionAttendanceEventById**
> deleteStudentInterventionAttendanceEventById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentInterventionAttendanceEventsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStudentInterventionAttendanceEventById(id, ifMatch);
} catch (e) {
    print('Exception when calling StudentInterventionAttendanceEventsApi->deleteStudentInterventionAttendanceEventById: $e\n');
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

# **deletesStudentInterventionAttendanceEvents**
> List<TrackedChangesEdFiStudentInterventionAttendanceEventDelete> deletesStudentInterventionAttendanceEvents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentInterventionAttendanceEventsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStudentInterventionAttendanceEvents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentInterventionAttendanceEventsApi->deletesStudentInterventionAttendanceEvents: $e\n');
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

[**List<TrackedChangesEdFiStudentInterventionAttendanceEventDelete>**](TrackedChangesEdFiStudentInterventionAttendanceEventDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentInterventionAttendanceEvents**
> List<EdFiStudentInterventionAttendanceEvent> getStudentInterventionAttendanceEvents(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, attendanceEventCategoryDescriptor, eventDate, educationOrganizationId, interventionIdentificationCode, studentUniqueId, educationalEnvironmentDescriptor, attendanceEventReason, eventDuration, id, interventionDuration, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentInterventionAttendanceEventsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final attendanceEventCategoryDescriptor = attendanceEventCategoryDescriptor_example; // String | A code describing the attendance event, for example:         Present         Unexcused absence         Excused absence         Tardy.
final eventDate = 2013-10-20; // DateTime | Date for this attendance event.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final interventionIdentificationCode = interventionIdentificationCode_example; // String | A unique number or alphanumeric code assigned to an intervention.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final educationalEnvironmentDescriptor = educationalEnvironmentDescriptor_example; // String | The setting in which a child receives education and related services. This attribute is only used if it differs from the EducationalEnvironment of the Section. This is only used in the AttendanceEvent if different from the associated Section.
final attendanceEventReason = attendanceEventReason_example; // String | The reported reason for a student's absence.
final eventDuration = 1.2; // double | The amount of time in days for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.
final id = id_example; // String | 
final interventionDuration = 56; // int | The duration in minutes of the intervention attendance event.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentInterventionAttendanceEvents(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, attendanceEventCategoryDescriptor, eventDate, educationOrganizationId, interventionIdentificationCode, studentUniqueId, educationalEnvironmentDescriptor, attendanceEventReason, eventDuration, id, interventionDuration, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentInterventionAttendanceEventsApi->getStudentInterventionAttendanceEvents: $e\n');
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
 **attendanceEventCategoryDescriptor** | **String**| A code describing the attendance event, for example:         Present         Unexcused absence         Excused absence         Tardy. | [optional] 
 **eventDate** | **DateTime**| Date for this attendance event. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **interventionIdentificationCode** | **String**| A unique number or alphanumeric code assigned to an intervention. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **educationalEnvironmentDescriptor** | **String**| The setting in which a child receives education and related services. This attribute is only used if it differs from the EducationalEnvironment of the Section. This is only used in the AttendanceEvent if different from the associated Section. | [optional] 
 **attendanceEventReason** | **String**| The reported reason for a student's absence. | [optional] 
 **eventDuration** | **double**| The amount of time in days for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33. | [optional] 
 **id** | **String**|  | [optional] 
 **interventionDuration** | **int**| The duration in minutes of the intervention attendance event. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStudentInterventionAttendanceEvent>**](EdFiStudentInterventionAttendanceEvent.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentInterventionAttendanceEventsById**
> EdFiStudentInterventionAttendanceEvent getStudentInterventionAttendanceEventsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentInterventionAttendanceEventsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentInterventionAttendanceEventsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentInterventionAttendanceEventsApi->getStudentInterventionAttendanceEventsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStudentInterventionAttendanceEvent**](EdFiStudentInterventionAttendanceEvent.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentInterventionAttendanceEventsPartitions**
> GetAcademicWeeksPartitions200Response getStudentInterventionAttendanceEventsPartitions(number, minChangeVersion, maxChangeVersion, attendanceEventCategoryDescriptor, eventDate, educationOrganizationId, interventionIdentificationCode, studentUniqueId, educationalEnvironmentDescriptor, attendanceEventReason, eventDuration, id, interventionDuration, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentInterventionAttendanceEventsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final attendanceEventCategoryDescriptor = attendanceEventCategoryDescriptor_example; // String | A code describing the attendance event, for example:         Present         Unexcused absence         Excused absence         Tardy.
final eventDate = 2013-10-20; // DateTime | Date for this attendance event.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final interventionIdentificationCode = interventionIdentificationCode_example; // String | A unique number or alphanumeric code assigned to an intervention.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final educationalEnvironmentDescriptor = educationalEnvironmentDescriptor_example; // String | The setting in which a child receives education and related services. This attribute is only used if it differs from the EducationalEnvironment of the Section. This is only used in the AttendanceEvent if different from the associated Section.
final attendanceEventReason = attendanceEventReason_example; // String | The reported reason for a student's absence.
final eventDuration = 1.2; // double | The amount of time in days for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.
final id = id_example; // String | 
final interventionDuration = 56; // int | The duration in minutes of the intervention attendance event.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentInterventionAttendanceEventsPartitions(number, minChangeVersion, maxChangeVersion, attendanceEventCategoryDescriptor, eventDate, educationOrganizationId, interventionIdentificationCode, studentUniqueId, educationalEnvironmentDescriptor, attendanceEventReason, eventDuration, id, interventionDuration, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentInterventionAttendanceEventsApi->getStudentInterventionAttendanceEventsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **attendanceEventCategoryDescriptor** | **String**| A code describing the attendance event, for example:         Present         Unexcused absence         Excused absence         Tardy. | [optional] 
 **eventDate** | **DateTime**| Date for this attendance event. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **interventionIdentificationCode** | **String**| A unique number or alphanumeric code assigned to an intervention. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **educationalEnvironmentDescriptor** | **String**| The setting in which a child receives education and related services. This attribute is only used if it differs from the EducationalEnvironment of the Section. This is only used in the AttendanceEvent if different from the associated Section. | [optional] 
 **attendanceEventReason** | **String**| The reported reason for a student's absence. | [optional] 
 **eventDuration** | **double**| The amount of time in days for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33. | [optional] 
 **id** | **String**|  | [optional] 
 **interventionDuration** | **int**| The duration in minutes of the intervention attendance event. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesStudentInterventionAttendanceEvents**
> List<TrackedChangesEdFiStudentInterventionAttendanceEventKeyChange> keyChangesStudentInterventionAttendanceEvents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentInterventionAttendanceEventsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStudentInterventionAttendanceEvents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentInterventionAttendanceEventsApi->keyChangesStudentInterventionAttendanceEvents: $e\n');
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

[**List<TrackedChangesEdFiStudentInterventionAttendanceEventKeyChange>**](TrackedChangesEdFiStudentInterventionAttendanceEventKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStudentInterventionAttendanceEvent**
> postStudentInterventionAttendanceEvent(edFiStudentInterventionAttendanceEvent)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentInterventionAttendanceEventsApi();
final edFiStudentInterventionAttendanceEvent = EdFiStudentInterventionAttendanceEvent(); // EdFiStudentInterventionAttendanceEvent | The JSON representation of the \"studentInterventionAttendanceEvent\" resource to be created or updated.

try {
    api_instance.postStudentInterventionAttendanceEvent(edFiStudentInterventionAttendanceEvent);
} catch (e) {
    print('Exception when calling StudentInterventionAttendanceEventsApi->postStudentInterventionAttendanceEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStudentInterventionAttendanceEvent** | [**EdFiStudentInterventionAttendanceEvent**](EdFiStudentInterventionAttendanceEvent.md)| The JSON representation of the \"studentInterventionAttendanceEvent\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStudentInterventionAttendanceEvent**
> putStudentInterventionAttendanceEvent(id, edFiStudentInterventionAttendanceEvent, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentInterventionAttendanceEventsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStudentInterventionAttendanceEvent = EdFiStudentInterventionAttendanceEvent(); // EdFiStudentInterventionAttendanceEvent | The JSON representation of the \"studentInterventionAttendanceEvent\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStudentInterventionAttendanceEvent(id, edFiStudentInterventionAttendanceEvent, ifMatch);
} catch (e) {
    print('Exception when calling StudentInterventionAttendanceEventsApi->putStudentInterventionAttendanceEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStudentInterventionAttendanceEvent** | [**EdFiStudentInterventionAttendanceEvent**](EdFiStudentInterventionAttendanceEvent.md)| The JSON representation of the \"studentInterventionAttendanceEvent\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

