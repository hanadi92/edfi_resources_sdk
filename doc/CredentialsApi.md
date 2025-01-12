# edfi_resources_sdk.api.CredentialsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteCredentialById**](CredentialsApi.md#deletecredentialbyid) | **DELETE** /ed-fi/credentials/{id} | Deletes an existing resource using the resource identifier.
[**deletesCredentials**](CredentialsApi.md#deletescredentials) | **GET** /ed-fi/credentials/deletes | Retrieves deleted resources based on change version.
[**getCredentials**](CredentialsApi.md#getcredentials) | **GET** /ed-fi/credentials | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getCredentialsById**](CredentialsApi.md#getcredentialsbyid) | **GET** /ed-fi/credentials/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getCredentialsPartitions**](CredentialsApi.md#getcredentialspartitions) | **GET** /ed-fi/credentials/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesCredentials**](CredentialsApi.md#keychangescredentials) | **GET** /ed-fi/credentials/keyChanges | Retrieves resources key changes based on change version.
[**postCredential**](CredentialsApi.md#postcredential) | **POST** /ed-fi/credentials | Creates or updates resources based on the natural key values of the supplied resource.
[**putCredential**](CredentialsApi.md#putcredential) | **PUT** /ed-fi/credentials/{id} | Updates a resource based on the resource identifier.


# **deleteCredentialById**
> deleteCredentialById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CredentialsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteCredentialById(id, ifMatch);
} catch (e) {
    print('Exception when calling CredentialsApi->deleteCredentialById: $e\n');
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

# **deletesCredentials**
> List<TrackedChangesEdFiCredentialDelete> deletesCredentials(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CredentialsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesCredentials(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CredentialsApi->deletesCredentials: $e\n');
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

[**List<TrackedChangesEdFiCredentialDelete>**](TrackedChangesEdFiCredentialDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCredentials**
> List<EdFiCredential> getCredentials(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, stateOfIssueStateAbbreviationDescriptor, credentialIdentifier, credentialFieldDescriptor, credentialTypeDescriptor, teachingCredentialBasisDescriptor, teachingCredentialDescriptor, effectiveDate, expirationDate, id, issuanceDate, namespace, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CredentialsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final stateOfIssueStateAbbreviationDescriptor = stateOfIssueStateAbbreviationDescriptor_example; // String | The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.
final credentialIdentifier = credentialIdentifier_example; // String | Identifier or serial number assigned to the credential.
final credentialFieldDescriptor = credentialFieldDescriptor_example; // String | The field of certification for the certificate (e.g., Mathematics, Music).
final credentialTypeDescriptor = credentialTypeDescriptor_example; // String | An indication of the category of credential an individual holds.
final teachingCredentialBasisDescriptor = teachingCredentialBasisDescriptor_example; // String | An indication of the pre-determined criteria for granting the teaching credential that an individual holds.
final teachingCredentialDescriptor = teachingCredentialDescriptor_example; // String | An indication of the category of a legal document giving authorization to perform teaching assignment services.
final effectiveDate = 2013-10-20; // DateTime | The year, month and day on which an active credential held by an individual was issued.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final expirationDate = 2013-10-20; // DateTime | The month, day, and year on which an active credential held by an individual will expire.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final id = id_example; // String | 
final issuanceDate = 2013-10-20; // DateTime | The month, day, and year on which an active credential was issued to an individual.
final namespace = namespace_example; // String | Namespace for the credential.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getCredentials(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, stateOfIssueStateAbbreviationDescriptor, credentialIdentifier, credentialFieldDescriptor, credentialTypeDescriptor, teachingCredentialBasisDescriptor, teachingCredentialDescriptor, effectiveDate, expirationDate, id, issuanceDate, namespace, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CredentialsApi->getCredentials: $e\n');
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
 **stateOfIssueStateAbbreviationDescriptor** | **String**| The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued. | [optional] 
 **credentialIdentifier** | **String**| Identifier or serial number assigned to the credential. | [optional] 
 **credentialFieldDescriptor** | **String**| The field of certification for the certificate (e.g., Mathematics, Music). | [optional] 
 **credentialTypeDescriptor** | **String**| An indication of the category of credential an individual holds. | [optional] 
 **teachingCredentialBasisDescriptor** | **String**| An indication of the pre-determined criteria for granting the teaching credential that an individual holds. | [optional] 
 **teachingCredentialDescriptor** | **String**| An indication of the category of a legal document giving authorization to perform teaching assignment services. | [optional] 
 **effectiveDate** | **DateTime**| The year, month and day on which an active credential held by an individual was issued.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **expirationDate** | **DateTime**| The month, day, and year on which an active credential held by an individual will expire.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **id** | **String**|  | [optional] 
 **issuanceDate** | **DateTime**| The month, day, and year on which an active credential was issued to an individual. | [optional] 
 **namespace** | **String**| Namespace for the credential. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiCredential>**](EdFiCredential.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCredentialsById**
> EdFiCredential getCredentialsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CredentialsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getCredentialsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CredentialsApi->getCredentialsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiCredential**](EdFiCredential.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCredentialsPartitions**
> GetAcademicWeeksPartitions200Response getCredentialsPartitions(number, minChangeVersion, maxChangeVersion, stateOfIssueStateAbbreviationDescriptor, credentialIdentifier, credentialFieldDescriptor, credentialTypeDescriptor, teachingCredentialBasisDescriptor, teachingCredentialDescriptor, effectiveDate, expirationDate, id, issuanceDate, namespace, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CredentialsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final stateOfIssueStateAbbreviationDescriptor = stateOfIssueStateAbbreviationDescriptor_example; // String | The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.
final credentialIdentifier = credentialIdentifier_example; // String | Identifier or serial number assigned to the credential.
final credentialFieldDescriptor = credentialFieldDescriptor_example; // String | The field of certification for the certificate (e.g., Mathematics, Music).
final credentialTypeDescriptor = credentialTypeDescriptor_example; // String | An indication of the category of credential an individual holds.
final teachingCredentialBasisDescriptor = teachingCredentialBasisDescriptor_example; // String | An indication of the pre-determined criteria for granting the teaching credential that an individual holds.
final teachingCredentialDescriptor = teachingCredentialDescriptor_example; // String | An indication of the category of a legal document giving authorization to perform teaching assignment services.
final effectiveDate = 2013-10-20; // DateTime | The year, month and day on which an active credential held by an individual was issued.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final expirationDate = 2013-10-20; // DateTime | The month, day, and year on which an active credential held by an individual will expire.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final id = id_example; // String | 
final issuanceDate = 2013-10-20; // DateTime | The month, day, and year on which an active credential was issued to an individual.
final namespace = namespace_example; // String | Namespace for the credential.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getCredentialsPartitions(number, minChangeVersion, maxChangeVersion, stateOfIssueStateAbbreviationDescriptor, credentialIdentifier, credentialFieldDescriptor, credentialTypeDescriptor, teachingCredentialBasisDescriptor, teachingCredentialDescriptor, effectiveDate, expirationDate, id, issuanceDate, namespace, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CredentialsApi->getCredentialsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **stateOfIssueStateAbbreviationDescriptor** | **String**| The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued. | [optional] 
 **credentialIdentifier** | **String**| Identifier or serial number assigned to the credential. | [optional] 
 **credentialFieldDescriptor** | **String**| The field of certification for the certificate (e.g., Mathematics, Music). | [optional] 
 **credentialTypeDescriptor** | **String**| An indication of the category of credential an individual holds. | [optional] 
 **teachingCredentialBasisDescriptor** | **String**| An indication of the pre-determined criteria for granting the teaching credential that an individual holds. | [optional] 
 **teachingCredentialDescriptor** | **String**| An indication of the category of a legal document giving authorization to perform teaching assignment services. | [optional] 
 **effectiveDate** | **DateTime**| The year, month and day on which an active credential held by an individual was issued.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **expirationDate** | **DateTime**| The month, day, and year on which an active credential held by an individual will expire.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **id** | **String**|  | [optional] 
 **issuanceDate** | **DateTime**| The month, day, and year on which an active credential was issued to an individual. | [optional] 
 **namespace** | **String**| Namespace for the credential. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesCredentials**
> List<TrackedChangesEdFiCredentialKeyChange> keyChangesCredentials(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CredentialsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesCredentials(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CredentialsApi->keyChangesCredentials: $e\n');
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

[**List<TrackedChangesEdFiCredentialKeyChange>**](TrackedChangesEdFiCredentialKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCredential**
> postCredential(edFiCredential)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CredentialsApi();
final edFiCredential = EdFiCredential(); // EdFiCredential | The JSON representation of the \"credential\" resource to be created or updated.

try {
    api_instance.postCredential(edFiCredential);
} catch (e) {
    print('Exception when calling CredentialsApi->postCredential: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiCredential** | [**EdFiCredential**](EdFiCredential.md)| The JSON representation of the \"credential\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putCredential**
> putCredential(id, edFiCredential, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CredentialsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiCredential = EdFiCredential(); // EdFiCredential | The JSON representation of the \"credential\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putCredential(id, edFiCredential, ifMatch);
} catch (e) {
    print('Exception when calling CredentialsApi->putCredential: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiCredential** | [**EdFiCredential**](EdFiCredential.md)| The JSON representation of the \"credential\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

