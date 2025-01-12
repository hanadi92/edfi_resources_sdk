# edfi_resources_sdk.api.StaffAbsenceEventsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStaffAbsenceEventById**](StaffAbsenceEventsApi.md#deletestaffabsenceeventbyid) | **DELETE** /ed-fi/staffAbsenceEvents/{id} | Deletes an existing resource using the resource identifier.
[**deletesStaffAbsenceEvents**](StaffAbsenceEventsApi.md#deletesstaffabsenceevents) | **GET** /ed-fi/staffAbsenceEvents/deletes | Retrieves deleted resources based on change version.
[**getStaffAbsenceEvents**](StaffAbsenceEventsApi.md#getstaffabsenceevents) | **GET** /ed-fi/staffAbsenceEvents | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStaffAbsenceEventsById**](StaffAbsenceEventsApi.md#getstaffabsenceeventsbyid) | **GET** /ed-fi/staffAbsenceEvents/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStaffAbsenceEventsPartitions**](StaffAbsenceEventsApi.md#getstaffabsenceeventspartitions) | **GET** /ed-fi/staffAbsenceEvents/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStaffAbsenceEvents**](StaffAbsenceEventsApi.md#keychangesstaffabsenceevents) | **GET** /ed-fi/staffAbsenceEvents/keyChanges | Retrieves resources key changes based on change version.
[**postStaffAbsenceEvent**](StaffAbsenceEventsApi.md#poststaffabsenceevent) | **POST** /ed-fi/staffAbsenceEvents | Creates or updates resources based on the natural key values of the supplied resource.
[**putStaffAbsenceEvent**](StaffAbsenceEventsApi.md#putstaffabsenceevent) | **PUT** /ed-fi/staffAbsenceEvents/{id} | Updates a resource based on the resource identifier.


# **deleteStaffAbsenceEventById**
> deleteStaffAbsenceEventById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffAbsenceEventsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStaffAbsenceEventById(id, ifMatch);
} catch (e) {
    print('Exception when calling StaffAbsenceEventsApi->deleteStaffAbsenceEventById: $e\n');
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

# **deletesStaffAbsenceEvents**
> List<TrackedChangesEdFiStaffAbsenceEventDelete> deletesStaffAbsenceEvents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffAbsenceEventsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStaffAbsenceEvents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffAbsenceEventsApi->deletesStaffAbsenceEvents: $e\n');
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

[**List<TrackedChangesEdFiStaffAbsenceEventDelete>**](TrackedChangesEdFiStaffAbsenceEventDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStaffAbsenceEvents**
> List<EdFiStaffAbsenceEvent> getStaffAbsenceEvents(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, absenceEventCategoryDescriptor, eventDate, staffUniqueId, absenceEventReason, hoursAbsent, id, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffAbsenceEventsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final absenceEventCategoryDescriptor = absenceEventCategoryDescriptor_example; // String | The code describing the type of absence.
final eventDate = 2013-10-20; // DateTime | Date for this leave event.
final staffUniqueId = staffUniqueId_example; // String | A unique alphanumeric code assigned to a staff.
final absenceEventReason = absenceEventReason_example; // String | Expanded reason for the staff absence.
final hoursAbsent = 1.2; // double | The hours the staff was absent, if not the entire working day.
final id = id_example; // String | 
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStaffAbsenceEvents(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, absenceEventCategoryDescriptor, eventDate, staffUniqueId, absenceEventReason, hoursAbsent, id, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffAbsenceEventsApi->getStaffAbsenceEvents: $e\n');
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
 **absenceEventCategoryDescriptor** | **String**| The code describing the type of absence. | [optional] 
 **eventDate** | **DateTime**| Date for this leave event. | [optional] 
 **staffUniqueId** | **String**| A unique alphanumeric code assigned to a staff. | [optional] 
 **absenceEventReason** | **String**| Expanded reason for the staff absence. | [optional] 
 **hoursAbsent** | **double**| The hours the staff was absent, if not the entire working day. | [optional] 
 **id** | **String**|  | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStaffAbsenceEvent>**](EdFiStaffAbsenceEvent.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStaffAbsenceEventsById**
> EdFiStaffAbsenceEvent getStaffAbsenceEventsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffAbsenceEventsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStaffAbsenceEventsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffAbsenceEventsApi->getStaffAbsenceEventsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStaffAbsenceEvent**](EdFiStaffAbsenceEvent.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStaffAbsenceEventsPartitions**
> GetAcademicWeeksPartitions200Response getStaffAbsenceEventsPartitions(number, minChangeVersion, maxChangeVersion, absenceEventCategoryDescriptor, eventDate, staffUniqueId, absenceEventReason, hoursAbsent, id, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffAbsenceEventsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final absenceEventCategoryDescriptor = absenceEventCategoryDescriptor_example; // String | The code describing the type of absence.
final eventDate = 2013-10-20; // DateTime | Date for this leave event.
final staffUniqueId = staffUniqueId_example; // String | A unique alphanumeric code assigned to a staff.
final absenceEventReason = absenceEventReason_example; // String | Expanded reason for the staff absence.
final hoursAbsent = 1.2; // double | The hours the staff was absent, if not the entire working day.
final id = id_example; // String | 
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStaffAbsenceEventsPartitions(number, minChangeVersion, maxChangeVersion, absenceEventCategoryDescriptor, eventDate, staffUniqueId, absenceEventReason, hoursAbsent, id, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffAbsenceEventsApi->getStaffAbsenceEventsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **absenceEventCategoryDescriptor** | **String**| The code describing the type of absence. | [optional] 
 **eventDate** | **DateTime**| Date for this leave event. | [optional] 
 **staffUniqueId** | **String**| A unique alphanumeric code assigned to a staff. | [optional] 
 **absenceEventReason** | **String**| Expanded reason for the staff absence. | [optional] 
 **hoursAbsent** | **double**| The hours the staff was absent, if not the entire working day. | [optional] 
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

# **keyChangesStaffAbsenceEvents**
> List<TrackedChangesEdFiStaffAbsenceEventKeyChange> keyChangesStaffAbsenceEvents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffAbsenceEventsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStaffAbsenceEvents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffAbsenceEventsApi->keyChangesStaffAbsenceEvents: $e\n');
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

[**List<TrackedChangesEdFiStaffAbsenceEventKeyChange>**](TrackedChangesEdFiStaffAbsenceEventKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStaffAbsenceEvent**
> postStaffAbsenceEvent(edFiStaffAbsenceEvent)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffAbsenceEventsApi();
final edFiStaffAbsenceEvent = EdFiStaffAbsenceEvent(); // EdFiStaffAbsenceEvent | The JSON representation of the \"staffAbsenceEvent\" resource to be created or updated.

try {
    api_instance.postStaffAbsenceEvent(edFiStaffAbsenceEvent);
} catch (e) {
    print('Exception when calling StaffAbsenceEventsApi->postStaffAbsenceEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStaffAbsenceEvent** | [**EdFiStaffAbsenceEvent**](EdFiStaffAbsenceEvent.md)| The JSON representation of the \"staffAbsenceEvent\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStaffAbsenceEvent**
> putStaffAbsenceEvent(id, edFiStaffAbsenceEvent, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffAbsenceEventsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStaffAbsenceEvent = EdFiStaffAbsenceEvent(); // EdFiStaffAbsenceEvent | The JSON representation of the \"staffAbsenceEvent\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStaffAbsenceEvent(id, edFiStaffAbsenceEvent, ifMatch);
} catch (e) {
    print('Exception when calling StaffAbsenceEventsApi->putStaffAbsenceEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStaffAbsenceEvent** | [**EdFiStaffAbsenceEvent**](EdFiStaffAbsenceEvent.md)| The JSON representation of the \"staffAbsenceEvent\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

