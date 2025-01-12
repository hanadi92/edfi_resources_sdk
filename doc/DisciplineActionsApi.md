# edfi_resources_sdk.api.DisciplineActionsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteDisciplineActionById**](DisciplineActionsApi.md#deletedisciplineactionbyid) | **DELETE** /ed-fi/disciplineActions/{id} | Deletes an existing resource using the resource identifier.
[**deletesDisciplineActions**](DisciplineActionsApi.md#deletesdisciplineactions) | **GET** /ed-fi/disciplineActions/deletes | Retrieves deleted resources based on change version.
[**getDisciplineActions**](DisciplineActionsApi.md#getdisciplineactions) | **GET** /ed-fi/disciplineActions | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getDisciplineActionsById**](DisciplineActionsApi.md#getdisciplineactionsbyid) | **GET** /ed-fi/disciplineActions/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getDisciplineActionsPartitions**](DisciplineActionsApi.md#getdisciplineactionspartitions) | **GET** /ed-fi/disciplineActions/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesDisciplineActions**](DisciplineActionsApi.md#keychangesdisciplineactions) | **GET** /ed-fi/disciplineActions/keyChanges | Retrieves resources key changes based on change version.
[**postDisciplineAction**](DisciplineActionsApi.md#postdisciplineaction) | **POST** /ed-fi/disciplineActions | Creates or updates resources based on the natural key values of the supplied resource.
[**putDisciplineAction**](DisciplineActionsApi.md#putdisciplineaction) | **PUT** /ed-fi/disciplineActions/{id} | Updates a resource based on the resource identifier.


# **deleteDisciplineActionById**
> deleteDisciplineActionById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DisciplineActionsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteDisciplineActionById(id, ifMatch);
} catch (e) {
    print('Exception when calling DisciplineActionsApi->deleteDisciplineActionById: $e\n');
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

# **deletesDisciplineActions**
> List<TrackedChangesEdFiDisciplineActionDelete> deletesDisciplineActions(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DisciplineActionsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesDisciplineActions(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling DisciplineActionsApi->deletesDisciplineActions: $e\n');
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

[**List<TrackedChangesEdFiDisciplineActionDelete>**](TrackedChangesEdFiDisciplineActionDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDisciplineActions**
> List<EdFiDisciplineAction> getDisciplineActions(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, disciplineActionIdentifier, disciplineDate, studentUniqueId, responsibilitySchoolId, assignmentSchoolId, disciplineActionLengthDifferenceReasonDescriptor, actualDisciplineActionLength, disciplineActionLength, id, iepPlacementMeetingIndicator, relatedToZeroTolerancePolicy, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DisciplineActionsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final disciplineActionIdentifier = disciplineActionIdentifier_example; // String | Identifier assigned by the education organization to the discipline action.
final disciplineDate = 2013-10-20; // DateTime | The date of the discipline action.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final responsibilitySchoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final assignmentSchoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final disciplineActionLengthDifferenceReasonDescriptor = disciplineActionLengthDifferenceReasonDescriptor_example; // String | Indicates the reason for the difference, if any, between the official and actual lengths of a student's disciplinary assignment.
final actualDisciplineActionLength = 1.2; // double | Indicates the actual length in school days of a student's disciplinary assignment.
final disciplineActionLength = 1.2; // double | The length of time in school days for the discipline action (e.g. removal, detention), if applicable.
final id = id_example; // String | 
final iepPlacementMeetingIndicator = true; // bool | An indication as to whether an offense and/or disciplinary action resulted in a meeting of a student's Individualized Education Program (IEP) team to determine appropriate placement.
final relatedToZeroTolerancePolicy = true; // bool | An indication of whether or not this disciplinary action taken against a student was imposed as a consequence of state or local zero tolerance policies.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getDisciplineActions(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, disciplineActionIdentifier, disciplineDate, studentUniqueId, responsibilitySchoolId, assignmentSchoolId, disciplineActionLengthDifferenceReasonDescriptor, actualDisciplineActionLength, disciplineActionLength, id, iepPlacementMeetingIndicator, relatedToZeroTolerancePolicy, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling DisciplineActionsApi->getDisciplineActions: $e\n');
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
 **disciplineActionIdentifier** | **String**| Identifier assigned by the education organization to the discipline action. | [optional] 
 **disciplineDate** | **DateTime**| The date of the discipline action. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **responsibilitySchoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **assignmentSchoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **disciplineActionLengthDifferenceReasonDescriptor** | **String**| Indicates the reason for the difference, if any, between the official and actual lengths of a student's disciplinary assignment. | [optional] 
 **actualDisciplineActionLength** | **double**| Indicates the actual length in school days of a student's disciplinary assignment. | [optional] 
 **disciplineActionLength** | **double**| The length of time in school days for the discipline action (e.g. removal, detention), if applicable. | [optional] 
 **id** | **String**|  | [optional] 
 **iepPlacementMeetingIndicator** | **bool**| An indication as to whether an offense and/or disciplinary action resulted in a meeting of a student's Individualized Education Program (IEP) team to determine appropriate placement. | [optional] 
 **relatedToZeroTolerancePolicy** | **bool**| An indication of whether or not this disciplinary action taken against a student was imposed as a consequence of state or local zero tolerance policies. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiDisciplineAction>**](EdFiDisciplineAction.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDisciplineActionsById**
> EdFiDisciplineAction getDisciplineActionsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DisciplineActionsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getDisciplineActionsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling DisciplineActionsApi->getDisciplineActionsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiDisciplineAction**](EdFiDisciplineAction.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDisciplineActionsPartitions**
> GetAcademicWeeksPartitions200Response getDisciplineActionsPartitions(number, minChangeVersion, maxChangeVersion, disciplineActionIdentifier, disciplineDate, studentUniqueId, responsibilitySchoolId, assignmentSchoolId, disciplineActionLengthDifferenceReasonDescriptor, actualDisciplineActionLength, disciplineActionLength, id, iepPlacementMeetingIndicator, relatedToZeroTolerancePolicy, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DisciplineActionsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final disciplineActionIdentifier = disciplineActionIdentifier_example; // String | Identifier assigned by the education organization to the discipline action.
final disciplineDate = 2013-10-20; // DateTime | The date of the discipline action.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final responsibilitySchoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final assignmentSchoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final disciplineActionLengthDifferenceReasonDescriptor = disciplineActionLengthDifferenceReasonDescriptor_example; // String | Indicates the reason for the difference, if any, between the official and actual lengths of a student's disciplinary assignment.
final actualDisciplineActionLength = 1.2; // double | Indicates the actual length in school days of a student's disciplinary assignment.
final disciplineActionLength = 1.2; // double | The length of time in school days for the discipline action (e.g. removal, detention), if applicable.
final id = id_example; // String | 
final iepPlacementMeetingIndicator = true; // bool | An indication as to whether an offense and/or disciplinary action resulted in a meeting of a student's Individualized Education Program (IEP) team to determine appropriate placement.
final relatedToZeroTolerancePolicy = true; // bool | An indication of whether or not this disciplinary action taken against a student was imposed as a consequence of state or local zero tolerance policies.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getDisciplineActionsPartitions(number, minChangeVersion, maxChangeVersion, disciplineActionIdentifier, disciplineDate, studentUniqueId, responsibilitySchoolId, assignmentSchoolId, disciplineActionLengthDifferenceReasonDescriptor, actualDisciplineActionLength, disciplineActionLength, id, iepPlacementMeetingIndicator, relatedToZeroTolerancePolicy, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling DisciplineActionsApi->getDisciplineActionsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **disciplineActionIdentifier** | **String**| Identifier assigned by the education organization to the discipline action. | [optional] 
 **disciplineDate** | **DateTime**| The date of the discipline action. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **responsibilitySchoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **assignmentSchoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **disciplineActionLengthDifferenceReasonDescriptor** | **String**| Indicates the reason for the difference, if any, between the official and actual lengths of a student's disciplinary assignment. | [optional] 
 **actualDisciplineActionLength** | **double**| Indicates the actual length in school days of a student's disciplinary assignment. | [optional] 
 **disciplineActionLength** | **double**| The length of time in school days for the discipline action (e.g. removal, detention), if applicable. | [optional] 
 **id** | **String**|  | [optional] 
 **iepPlacementMeetingIndicator** | **bool**| An indication as to whether an offense and/or disciplinary action resulted in a meeting of a student's Individualized Education Program (IEP) team to determine appropriate placement. | [optional] 
 **relatedToZeroTolerancePolicy** | **bool**| An indication of whether or not this disciplinary action taken against a student was imposed as a consequence of state or local zero tolerance policies. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesDisciplineActions**
> List<TrackedChangesEdFiDisciplineActionKeyChange> keyChangesDisciplineActions(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DisciplineActionsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesDisciplineActions(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling DisciplineActionsApi->keyChangesDisciplineActions: $e\n');
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

[**List<TrackedChangesEdFiDisciplineActionKeyChange>**](TrackedChangesEdFiDisciplineActionKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postDisciplineAction**
> postDisciplineAction(edFiDisciplineAction)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DisciplineActionsApi();
final edFiDisciplineAction = EdFiDisciplineAction(); // EdFiDisciplineAction | The JSON representation of the \"disciplineAction\" resource to be created or updated.

try {
    api_instance.postDisciplineAction(edFiDisciplineAction);
} catch (e) {
    print('Exception when calling DisciplineActionsApi->postDisciplineAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiDisciplineAction** | [**EdFiDisciplineAction**](EdFiDisciplineAction.md)| The JSON representation of the \"disciplineAction\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putDisciplineAction**
> putDisciplineAction(id, edFiDisciplineAction, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DisciplineActionsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiDisciplineAction = EdFiDisciplineAction(); // EdFiDisciplineAction | The JSON representation of the \"disciplineAction\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putDisciplineAction(id, edFiDisciplineAction, ifMatch);
} catch (e) {
    print('Exception when calling DisciplineActionsApi->putDisciplineAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiDisciplineAction** | [**EdFiDisciplineAction**](EdFiDisciplineAction.md)| The JSON representation of the \"disciplineAction\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

