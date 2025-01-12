# edfi_resources_sdk.api.StudentAssessmentRegistrationBatteryPartAssociationsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStudentAssessmentRegistrationBatteryPartAssociationById**](StudentAssessmentRegistrationBatteryPartAssociationsApi.md#deletestudentassessmentregistrationbatterypartassociationbyid) | **DELETE** /ed-fi/studentAssessmentRegistrationBatteryPartAssociations/{id} | Deletes an existing resource using the resource identifier.
[**deletesStudentAssessmentRegistrationBatteryPartAssociations**](StudentAssessmentRegistrationBatteryPartAssociationsApi.md#deletesstudentassessmentregistrationbatterypartassociations) | **GET** /ed-fi/studentAssessmentRegistrationBatteryPartAssociations/deletes | Retrieves deleted resources based on change version.
[**getStudentAssessmentRegistrationBatteryPartAssociations**](StudentAssessmentRegistrationBatteryPartAssociationsApi.md#getstudentassessmentregistrationbatterypartassociations) | **GET** /ed-fi/studentAssessmentRegistrationBatteryPartAssociations | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStudentAssessmentRegistrationBatteryPartAssociationsById**](StudentAssessmentRegistrationBatteryPartAssociationsApi.md#getstudentassessmentregistrationbatterypartassociationsbyid) | **GET** /ed-fi/studentAssessmentRegistrationBatteryPartAssociations/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStudentAssessmentRegistrationBatteryPartAssociationsPartitions**](StudentAssessmentRegistrationBatteryPartAssociationsApi.md#getstudentassessmentregistrationbatterypartassociationspartitions) | **GET** /ed-fi/studentAssessmentRegistrationBatteryPartAssociations/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStudentAssessmentRegistrationBatteryPartAssociations**](StudentAssessmentRegistrationBatteryPartAssociationsApi.md#keychangesstudentassessmentregistrationbatterypartassociations) | **GET** /ed-fi/studentAssessmentRegistrationBatteryPartAssociations/keyChanges | Retrieves resources key changes based on change version.
[**postStudentAssessmentRegistrationBatteryPartAssociation**](StudentAssessmentRegistrationBatteryPartAssociationsApi.md#poststudentassessmentregistrationbatterypartassociation) | **POST** /ed-fi/studentAssessmentRegistrationBatteryPartAssociations | Creates or updates resources based on the natural key values of the supplied resource.
[**putStudentAssessmentRegistrationBatteryPartAssociation**](StudentAssessmentRegistrationBatteryPartAssociationsApi.md#putstudentassessmentregistrationbatterypartassociation) | **PUT** /ed-fi/studentAssessmentRegistrationBatteryPartAssociations/{id} | Updates a resource based on the resource identifier.


# **deleteStudentAssessmentRegistrationBatteryPartAssociationById**
> deleteStudentAssessmentRegistrationBatteryPartAssociationById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentRegistrationBatteryPartAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStudentAssessmentRegistrationBatteryPartAssociationById(id, ifMatch);
} catch (e) {
    print('Exception when calling StudentAssessmentRegistrationBatteryPartAssociationsApi->deleteStudentAssessmentRegistrationBatteryPartAssociationById: $e\n');
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

# **deletesStudentAssessmentRegistrationBatteryPartAssociations**
> List<TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationDelete> deletesStudentAssessmentRegistrationBatteryPartAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentRegistrationBatteryPartAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStudentAssessmentRegistrationBatteryPartAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAssessmentRegistrationBatteryPartAssociationsApi->deletesStudentAssessmentRegistrationBatteryPartAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationDelete>**](TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentAssessmentRegistrationBatteryPartAssociations**
> List<EdFiStudentAssessmentRegistrationBatteryPartAssociation> getStudentAssessmentRegistrationBatteryPartAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, assessmentBatteryPartName, assessmentIdentifier, namespace, administrationIdentifier, assigningEducationOrganizationId, educationOrganizationId, studentUniqueId, id, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentRegistrationBatteryPartAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final assessmentBatteryPartName = assessmentBatteryPartName_example; // String | The name of the part of an assessment battery.
final assessmentIdentifier = assessmentIdentifier_example; // String | A unique number or alphanumeric code assigned to an assessment.
final namespace = namespace_example; // String | Namespace for the assessment.
final administrationIdentifier = administrationIdentifier_example; // String | The title or name of the assessment in the context of its administration.
final assigningEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final id = id_example; // String | 
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentAssessmentRegistrationBatteryPartAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, assessmentBatteryPartName, assessmentIdentifier, namespace, administrationIdentifier, assigningEducationOrganizationId, educationOrganizationId, studentUniqueId, id, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAssessmentRegistrationBatteryPartAssociationsApi->getStudentAssessmentRegistrationBatteryPartAssociations: $e\n');
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
 **assessmentBatteryPartName** | **String**| The name of the part of an assessment battery. | [optional] 
 **assessmentIdentifier** | **String**| A unique number or alphanumeric code assigned to an assessment. | [optional] 
 **namespace** | **String**| Namespace for the assessment. | [optional] 
 **administrationIdentifier** | **String**| The title or name of the assessment in the context of its administration. | [optional] 
 **assigningEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **id** | **String**|  | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStudentAssessmentRegistrationBatteryPartAssociation>**](EdFiStudentAssessmentRegistrationBatteryPartAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentAssessmentRegistrationBatteryPartAssociationsById**
> EdFiStudentAssessmentRegistrationBatteryPartAssociation getStudentAssessmentRegistrationBatteryPartAssociationsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentRegistrationBatteryPartAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentAssessmentRegistrationBatteryPartAssociationsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAssessmentRegistrationBatteryPartAssociationsApi->getStudentAssessmentRegistrationBatteryPartAssociationsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStudentAssessmentRegistrationBatteryPartAssociation**](EdFiStudentAssessmentRegistrationBatteryPartAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentAssessmentRegistrationBatteryPartAssociationsPartitions**
> GetAcademicWeeksPartitions200Response getStudentAssessmentRegistrationBatteryPartAssociationsPartitions(number, minChangeVersion, maxChangeVersion, assessmentBatteryPartName, assessmentIdentifier, namespace, administrationIdentifier, assigningEducationOrganizationId, educationOrganizationId, studentUniqueId, id, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentRegistrationBatteryPartAssociationsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final assessmentBatteryPartName = assessmentBatteryPartName_example; // String | The name of the part of an assessment battery.
final assessmentIdentifier = assessmentIdentifier_example; // String | A unique number or alphanumeric code assigned to an assessment.
final namespace = namespace_example; // String | Namespace for the assessment.
final administrationIdentifier = administrationIdentifier_example; // String | The title or name of the assessment in the context of its administration.
final assigningEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final id = id_example; // String | 
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentAssessmentRegistrationBatteryPartAssociationsPartitions(number, minChangeVersion, maxChangeVersion, assessmentBatteryPartName, assessmentIdentifier, namespace, administrationIdentifier, assigningEducationOrganizationId, educationOrganizationId, studentUniqueId, id, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAssessmentRegistrationBatteryPartAssociationsApi->getStudentAssessmentRegistrationBatteryPartAssociationsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **assessmentBatteryPartName** | **String**| The name of the part of an assessment battery. | [optional] 
 **assessmentIdentifier** | **String**| A unique number or alphanumeric code assigned to an assessment. | [optional] 
 **namespace** | **String**| Namespace for the assessment. | [optional] 
 **administrationIdentifier** | **String**| The title or name of the assessment in the context of its administration. | [optional] 
 **assigningEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
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

# **keyChangesStudentAssessmentRegistrationBatteryPartAssociations**
> List<TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKeyChange> keyChangesStudentAssessmentRegistrationBatteryPartAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentRegistrationBatteryPartAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStudentAssessmentRegistrationBatteryPartAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAssessmentRegistrationBatteryPartAssociationsApi->keyChangesStudentAssessmentRegistrationBatteryPartAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKeyChange>**](TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStudentAssessmentRegistrationBatteryPartAssociation**
> postStudentAssessmentRegistrationBatteryPartAssociation(edFiStudentAssessmentRegistrationBatteryPartAssociation)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentRegistrationBatteryPartAssociationsApi();
final edFiStudentAssessmentRegistrationBatteryPartAssociation = EdFiStudentAssessmentRegistrationBatteryPartAssociation(); // EdFiStudentAssessmentRegistrationBatteryPartAssociation | The JSON representation of the \"studentAssessmentRegistrationBatteryPartAssociation\" resource to be created or updated.

try {
    api_instance.postStudentAssessmentRegistrationBatteryPartAssociation(edFiStudentAssessmentRegistrationBatteryPartAssociation);
} catch (e) {
    print('Exception when calling StudentAssessmentRegistrationBatteryPartAssociationsApi->postStudentAssessmentRegistrationBatteryPartAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStudentAssessmentRegistrationBatteryPartAssociation** | [**EdFiStudentAssessmentRegistrationBatteryPartAssociation**](EdFiStudentAssessmentRegistrationBatteryPartAssociation.md)| The JSON representation of the \"studentAssessmentRegistrationBatteryPartAssociation\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStudentAssessmentRegistrationBatteryPartAssociation**
> putStudentAssessmentRegistrationBatteryPartAssociation(id, edFiStudentAssessmentRegistrationBatteryPartAssociation, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentRegistrationBatteryPartAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStudentAssessmentRegistrationBatteryPartAssociation = EdFiStudentAssessmentRegistrationBatteryPartAssociation(); // EdFiStudentAssessmentRegistrationBatteryPartAssociation | The JSON representation of the \"studentAssessmentRegistrationBatteryPartAssociation\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStudentAssessmentRegistrationBatteryPartAssociation(id, edFiStudentAssessmentRegistrationBatteryPartAssociation, ifMatch);
} catch (e) {
    print('Exception when calling StudentAssessmentRegistrationBatteryPartAssociationsApi->putStudentAssessmentRegistrationBatteryPartAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStudentAssessmentRegistrationBatteryPartAssociation** | [**EdFiStudentAssessmentRegistrationBatteryPartAssociation**](EdFiStudentAssessmentRegistrationBatteryPartAssociation.md)| The JSON representation of the \"studentAssessmentRegistrationBatteryPartAssociation\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

