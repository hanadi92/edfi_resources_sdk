# edfi_resources_sdk.api.StudentContactAssociationsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStudentContactAssociationById**](StudentContactAssociationsApi.md#deletestudentcontactassociationbyid) | **DELETE** /ed-fi/studentContactAssociations/{id} | Deletes an existing resource using the resource identifier.
[**deletesStudentContactAssociations**](StudentContactAssociationsApi.md#deletesstudentcontactassociations) | **GET** /ed-fi/studentContactAssociations/deletes | Retrieves deleted resources based on change version.
[**getStudentContactAssociations**](StudentContactAssociationsApi.md#getstudentcontactassociations) | **GET** /ed-fi/studentContactAssociations | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStudentContactAssociationsById**](StudentContactAssociationsApi.md#getstudentcontactassociationsbyid) | **GET** /ed-fi/studentContactAssociations/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStudentContactAssociationsPartitions**](StudentContactAssociationsApi.md#getstudentcontactassociationspartitions) | **GET** /ed-fi/studentContactAssociations/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStudentContactAssociations**](StudentContactAssociationsApi.md#keychangesstudentcontactassociations) | **GET** /ed-fi/studentContactAssociations/keyChanges | Retrieves resources key changes based on change version.
[**postStudentContactAssociation**](StudentContactAssociationsApi.md#poststudentcontactassociation) | **POST** /ed-fi/studentContactAssociations | Creates or updates resources based on the natural key values of the supplied resource.
[**putStudentContactAssociation**](StudentContactAssociationsApi.md#putstudentcontactassociation) | **PUT** /ed-fi/studentContactAssociations/{id} | Updates a resource based on the resource identifier.


# **deleteStudentContactAssociationById**
> deleteStudentContactAssociationById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentContactAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStudentContactAssociationById(id, ifMatch);
} catch (e) {
    print('Exception when calling StudentContactAssociationsApi->deleteStudentContactAssociationById: $e\n');
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

# **deletesStudentContactAssociations**
> List<TrackedChangesEdFiStudentContactAssociationDelete> deletesStudentContactAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentContactAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStudentContactAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentContactAssociationsApi->deletesStudentContactAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentContactAssociationDelete>**](TrackedChangesEdFiStudentContactAssociationDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentContactAssociations**
> List<EdFiStudentContactAssociation> getStudentContactAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, contactUniqueId, studentUniqueId, relationDescriptor, contactPriority, contactRestrictions, emergencyContactStatus, id, legalGuardian, livesWith, primaryContactStatus, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentContactAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final contactUniqueId = contactUniqueId_example; // String | A unique alphanumeric code assigned to a contact.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final relationDescriptor = relationDescriptor_example; // String | The nature of an individual's relationship to a student, primarily used to capture family relationships.
final contactPriority = 56; // int | The numeric order of the preferred sequence or priority of contact.
final contactRestrictions = contactRestrictions_example; // String | Restrictions for student and/or teacher contact with the individual (e.g., the student may not be picked up by the individual).
final emergencyContactStatus = true; // bool | Indicator of whether the person is a designated emergency contact for the student.
final id = id_example; // String | 
final legalGuardian = true; // bool | Indicator of whether the person is a legal guardian for the student.
final livesWith = true; // bool | Indicator of whether the student lives with the associated contact.
final primaryContactStatus = true; // bool | Indicator of whether the person is a primary contact for the student.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentContactAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, contactUniqueId, studentUniqueId, relationDescriptor, contactPriority, contactRestrictions, emergencyContactStatus, id, legalGuardian, livesWith, primaryContactStatus, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentContactAssociationsApi->getStudentContactAssociations: $e\n');
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
 **contactUniqueId** | **String**| A unique alphanumeric code assigned to a contact. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **relationDescriptor** | **String**| The nature of an individual's relationship to a student, primarily used to capture family relationships. | [optional] 
 **contactPriority** | **int**| The numeric order of the preferred sequence or priority of contact. | [optional] 
 **contactRestrictions** | **String**| Restrictions for student and/or teacher contact with the individual (e.g., the student may not be picked up by the individual). | [optional] 
 **emergencyContactStatus** | **bool**| Indicator of whether the person is a designated emergency contact for the student. | [optional] 
 **id** | **String**|  | [optional] 
 **legalGuardian** | **bool**| Indicator of whether the person is a legal guardian for the student. | [optional] 
 **livesWith** | **bool**| Indicator of whether the student lives with the associated contact. | [optional] 
 **primaryContactStatus** | **bool**| Indicator of whether the person is a primary contact for the student. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStudentContactAssociation>**](EdFiStudentContactAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentContactAssociationsById**
> EdFiStudentContactAssociation getStudentContactAssociationsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentContactAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentContactAssociationsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentContactAssociationsApi->getStudentContactAssociationsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStudentContactAssociation**](EdFiStudentContactAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentContactAssociationsPartitions**
> GetAcademicWeeksPartitions200Response getStudentContactAssociationsPartitions(number, minChangeVersion, maxChangeVersion, contactUniqueId, studentUniqueId, relationDescriptor, contactPriority, contactRestrictions, emergencyContactStatus, id, legalGuardian, livesWith, primaryContactStatus, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentContactAssociationsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final contactUniqueId = contactUniqueId_example; // String | A unique alphanumeric code assigned to a contact.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final relationDescriptor = relationDescriptor_example; // String | The nature of an individual's relationship to a student, primarily used to capture family relationships.
final contactPriority = 56; // int | The numeric order of the preferred sequence or priority of contact.
final contactRestrictions = contactRestrictions_example; // String | Restrictions for student and/or teacher contact with the individual (e.g., the student may not be picked up by the individual).
final emergencyContactStatus = true; // bool | Indicator of whether the person is a designated emergency contact for the student.
final id = id_example; // String | 
final legalGuardian = true; // bool | Indicator of whether the person is a legal guardian for the student.
final livesWith = true; // bool | Indicator of whether the student lives with the associated contact.
final primaryContactStatus = true; // bool | Indicator of whether the person is a primary contact for the student.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentContactAssociationsPartitions(number, minChangeVersion, maxChangeVersion, contactUniqueId, studentUniqueId, relationDescriptor, contactPriority, contactRestrictions, emergencyContactStatus, id, legalGuardian, livesWith, primaryContactStatus, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentContactAssociationsApi->getStudentContactAssociationsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **contactUniqueId** | **String**| A unique alphanumeric code assigned to a contact. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **relationDescriptor** | **String**| The nature of an individual's relationship to a student, primarily used to capture family relationships. | [optional] 
 **contactPriority** | **int**| The numeric order of the preferred sequence or priority of contact. | [optional] 
 **contactRestrictions** | **String**| Restrictions for student and/or teacher contact with the individual (e.g., the student may not be picked up by the individual). | [optional] 
 **emergencyContactStatus** | **bool**| Indicator of whether the person is a designated emergency contact for the student. | [optional] 
 **id** | **String**|  | [optional] 
 **legalGuardian** | **bool**| Indicator of whether the person is a legal guardian for the student. | [optional] 
 **livesWith** | **bool**| Indicator of whether the student lives with the associated contact. | [optional] 
 **primaryContactStatus** | **bool**| Indicator of whether the person is a primary contact for the student. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesStudentContactAssociations**
> List<TrackedChangesEdFiStudentContactAssociationKeyChange> keyChangesStudentContactAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentContactAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStudentContactAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentContactAssociationsApi->keyChangesStudentContactAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentContactAssociationKeyChange>**](TrackedChangesEdFiStudentContactAssociationKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStudentContactAssociation**
> postStudentContactAssociation(edFiStudentContactAssociation)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentContactAssociationsApi();
final edFiStudentContactAssociation = EdFiStudentContactAssociation(); // EdFiStudentContactAssociation | The JSON representation of the \"studentContactAssociation\" resource to be created or updated.

try {
    api_instance.postStudentContactAssociation(edFiStudentContactAssociation);
} catch (e) {
    print('Exception when calling StudentContactAssociationsApi->postStudentContactAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStudentContactAssociation** | [**EdFiStudentContactAssociation**](EdFiStudentContactAssociation.md)| The JSON representation of the \"studentContactAssociation\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStudentContactAssociation**
> putStudentContactAssociation(id, edFiStudentContactAssociation, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentContactAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStudentContactAssociation = EdFiStudentContactAssociation(); // EdFiStudentContactAssociation | The JSON representation of the \"studentContactAssociation\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStudentContactAssociation(id, edFiStudentContactAssociation, ifMatch);
} catch (e) {
    print('Exception when calling StudentContactAssociationsApi->putStudentContactAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStudentContactAssociation** | [**EdFiStudentContactAssociation**](EdFiStudentContactAssociation.md)| The JSON representation of the \"studentContactAssociation\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

