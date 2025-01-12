# edfi_resources_sdk.api.SurveySectionResponseEducationOrganizationTargetAssociationsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSurveySectionResponseEducationOrganizationTargetAssociationById**](SurveySectionResponseEducationOrganizationTargetAssociationsApi.md#deletesurveysectionresponseeducationorganizationtargetassociationbyid) | **DELETE** /ed-fi/surveySectionResponseEducationOrganizationTargetAssociations/{id} | Deletes an existing resource using the resource identifier.
[**deletesSurveySectionResponseEducationOrganizationTargetAssociations**](SurveySectionResponseEducationOrganizationTargetAssociationsApi.md#deletessurveysectionresponseeducationorganizationtargetassociations) | **GET** /ed-fi/surveySectionResponseEducationOrganizationTargetAssociations/deletes | Retrieves deleted resources based on change version.
[**getSurveySectionResponseEducationOrganizationTargetAssociations**](SurveySectionResponseEducationOrganizationTargetAssociationsApi.md#getsurveysectionresponseeducationorganizationtargetassociations) | **GET** /ed-fi/surveySectionResponseEducationOrganizationTargetAssociations | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getSurveySectionResponseEducationOrganizationTargetAssociationsById**](SurveySectionResponseEducationOrganizationTargetAssociationsApi.md#getsurveysectionresponseeducationorganizationtargetassociationsbyid) | **GET** /ed-fi/surveySectionResponseEducationOrganizationTargetAssociations/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getSurveySectionResponseEducationOrganizationTargetAssociationsPartitions**](SurveySectionResponseEducationOrganizationTargetAssociationsApi.md#getsurveysectionresponseeducationorganizationtargetassociationspartitions) | **GET** /ed-fi/surveySectionResponseEducationOrganizationTargetAssociations/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesSurveySectionResponseEducationOrganizationTargetAssociations**](SurveySectionResponseEducationOrganizationTargetAssociationsApi.md#keychangessurveysectionresponseeducationorganizationtargetassociations) | **GET** /ed-fi/surveySectionResponseEducationOrganizationTargetAssociations/keyChanges | Retrieves resources key changes based on change version.
[**postSurveySectionResponseEducationOrganizationTargetAssociation**](SurveySectionResponseEducationOrganizationTargetAssociationsApi.md#postsurveysectionresponseeducationorganizationtargetassociation) | **POST** /ed-fi/surveySectionResponseEducationOrganizationTargetAssociations | Creates or updates resources based on the natural key values of the supplied resource.
[**putSurveySectionResponseEducationOrganizationTargetAssociation**](SurveySectionResponseEducationOrganizationTargetAssociationsApi.md#putsurveysectionresponseeducationorganizationtargetassociation) | **PUT** /ed-fi/surveySectionResponseEducationOrganizationTargetAssociations/{id} | Updates a resource based on the resource identifier.


# **deleteSurveySectionResponseEducationOrganizationTargetAssociationById**
> deleteSurveySectionResponseEducationOrganizationTargetAssociationById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SurveySectionResponseEducationOrganizationTargetAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteSurveySectionResponseEducationOrganizationTargetAssociationById(id, ifMatch);
} catch (e) {
    print('Exception when calling SurveySectionResponseEducationOrganizationTargetAssociationsApi->deleteSurveySectionResponseEducationOrganizationTargetAssociationById: $e\n');
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

# **deletesSurveySectionResponseEducationOrganizationTargetAssociations**
> List<TrackedChangesEdFiSurveySectionResponseEducationOrganizationTargetAssociationDelete> deletesSurveySectionResponseEducationOrganizationTargetAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SurveySectionResponseEducationOrganizationTargetAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesSurveySectionResponseEducationOrganizationTargetAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling SurveySectionResponseEducationOrganizationTargetAssociationsApi->deletesSurveySectionResponseEducationOrganizationTargetAssociations: $e\n');
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

[**List<TrackedChangesEdFiSurveySectionResponseEducationOrganizationTargetAssociationDelete>**](TrackedChangesEdFiSurveySectionResponseEducationOrganizationTargetAssociationDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSurveySectionResponseEducationOrganizationTargetAssociations**
> List<EdFiSurveySectionResponseEducationOrganizationTargetAssociation> getSurveySectionResponseEducationOrganizationTargetAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, educationOrganizationId, namespace, surveyIdentifier, surveyResponseIdentifier, surveySectionTitle, id, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SurveySectionResponseEducationOrganizationTargetAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final namespace = namespace_example; // String | Namespace for the survey.
final surveyIdentifier = surveyIdentifier_example; // String | The unique survey identifier from the survey tool.
final surveyResponseIdentifier = surveyResponseIdentifier_example; // String | The identifier of the survey typically from the survey application.
final surveySectionTitle = surveySectionTitle_example; // String | The title or label for the survey section.
final id = id_example; // String | 
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getSurveySectionResponseEducationOrganizationTargetAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, educationOrganizationId, namespace, surveyIdentifier, surveyResponseIdentifier, surveySectionTitle, id, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling SurveySectionResponseEducationOrganizationTargetAssociationsApi->getSurveySectionResponseEducationOrganizationTargetAssociations: $e\n');
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
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **namespace** | **String**| Namespace for the survey. | [optional] 
 **surveyIdentifier** | **String**| The unique survey identifier from the survey tool. | [optional] 
 **surveyResponseIdentifier** | **String**| The identifier of the survey typically from the survey application. | [optional] 
 **surveySectionTitle** | **String**| The title or label for the survey section. | [optional] 
 **id** | **String**|  | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiSurveySectionResponseEducationOrganizationTargetAssociation>**](EdFiSurveySectionResponseEducationOrganizationTargetAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSurveySectionResponseEducationOrganizationTargetAssociationsById**
> EdFiSurveySectionResponseEducationOrganizationTargetAssociation getSurveySectionResponseEducationOrganizationTargetAssociationsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SurveySectionResponseEducationOrganizationTargetAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getSurveySectionResponseEducationOrganizationTargetAssociationsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling SurveySectionResponseEducationOrganizationTargetAssociationsApi->getSurveySectionResponseEducationOrganizationTargetAssociationsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiSurveySectionResponseEducationOrganizationTargetAssociation**](EdFiSurveySectionResponseEducationOrganizationTargetAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSurveySectionResponseEducationOrganizationTargetAssociationsPartitions**
> GetAcademicWeeksPartitions200Response getSurveySectionResponseEducationOrganizationTargetAssociationsPartitions(number, minChangeVersion, maxChangeVersion, educationOrganizationId, namespace, surveyIdentifier, surveyResponseIdentifier, surveySectionTitle, id, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SurveySectionResponseEducationOrganizationTargetAssociationsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final namespace = namespace_example; // String | Namespace for the survey.
final surveyIdentifier = surveyIdentifier_example; // String | The unique survey identifier from the survey tool.
final surveyResponseIdentifier = surveyResponseIdentifier_example; // String | The identifier of the survey typically from the survey application.
final surveySectionTitle = surveySectionTitle_example; // String | The title or label for the survey section.
final id = id_example; // String | 
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getSurveySectionResponseEducationOrganizationTargetAssociationsPartitions(number, minChangeVersion, maxChangeVersion, educationOrganizationId, namespace, surveyIdentifier, surveyResponseIdentifier, surveySectionTitle, id, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling SurveySectionResponseEducationOrganizationTargetAssociationsApi->getSurveySectionResponseEducationOrganizationTargetAssociationsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **namespace** | **String**| Namespace for the survey. | [optional] 
 **surveyIdentifier** | **String**| The unique survey identifier from the survey tool. | [optional] 
 **surveyResponseIdentifier** | **String**| The identifier of the survey typically from the survey application. | [optional] 
 **surveySectionTitle** | **String**| The title or label for the survey section. | [optional] 
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

# **keyChangesSurveySectionResponseEducationOrganizationTargetAssociations**
> List<TrackedChangesEdFiSurveySectionResponseEducationOrganizationTargetAssociationKeyChange> keyChangesSurveySectionResponseEducationOrganizationTargetAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SurveySectionResponseEducationOrganizationTargetAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesSurveySectionResponseEducationOrganizationTargetAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling SurveySectionResponseEducationOrganizationTargetAssociationsApi->keyChangesSurveySectionResponseEducationOrganizationTargetAssociations: $e\n');
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

[**List<TrackedChangesEdFiSurveySectionResponseEducationOrganizationTargetAssociationKeyChange>**](TrackedChangesEdFiSurveySectionResponseEducationOrganizationTargetAssociationKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postSurveySectionResponseEducationOrganizationTargetAssociation**
> postSurveySectionResponseEducationOrganizationTargetAssociation(edFiSurveySectionResponseEducationOrganizationTargetAssociation)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SurveySectionResponseEducationOrganizationTargetAssociationsApi();
final edFiSurveySectionResponseEducationOrganizationTargetAssociation = EdFiSurveySectionResponseEducationOrganizationTargetAssociation(); // EdFiSurveySectionResponseEducationOrganizationTargetAssociation | The JSON representation of the \"surveySectionResponseEducationOrganizationTargetAssociation\" resource to be created or updated.

try {
    api_instance.postSurveySectionResponseEducationOrganizationTargetAssociation(edFiSurveySectionResponseEducationOrganizationTargetAssociation);
} catch (e) {
    print('Exception when calling SurveySectionResponseEducationOrganizationTargetAssociationsApi->postSurveySectionResponseEducationOrganizationTargetAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiSurveySectionResponseEducationOrganizationTargetAssociation** | [**EdFiSurveySectionResponseEducationOrganizationTargetAssociation**](EdFiSurveySectionResponseEducationOrganizationTargetAssociation.md)| The JSON representation of the \"surveySectionResponseEducationOrganizationTargetAssociation\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putSurveySectionResponseEducationOrganizationTargetAssociation**
> putSurveySectionResponseEducationOrganizationTargetAssociation(id, edFiSurveySectionResponseEducationOrganizationTargetAssociation, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SurveySectionResponseEducationOrganizationTargetAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiSurveySectionResponseEducationOrganizationTargetAssociation = EdFiSurveySectionResponseEducationOrganizationTargetAssociation(); // EdFiSurveySectionResponseEducationOrganizationTargetAssociation | The JSON representation of the \"surveySectionResponseEducationOrganizationTargetAssociation\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putSurveySectionResponseEducationOrganizationTargetAssociation(id, edFiSurveySectionResponseEducationOrganizationTargetAssociation, ifMatch);
} catch (e) {
    print('Exception when calling SurveySectionResponseEducationOrganizationTargetAssociationsApi->putSurveySectionResponseEducationOrganizationTargetAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiSurveySectionResponseEducationOrganizationTargetAssociation** | [**EdFiSurveySectionResponseEducationOrganizationTargetAssociation**](EdFiSurveySectionResponseEducationOrganizationTargetAssociation.md)| The JSON representation of the \"surveySectionResponseEducationOrganizationTargetAssociation\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

