# edfi_resources_sdk.api.ProgramEvaluationElementsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteProgramEvaluationElementById**](ProgramEvaluationElementsApi.md#deleteprogramevaluationelementbyid) | **DELETE** /ed-fi/programEvaluationElements/{id} | Deletes an existing resource using the resource identifier.
[**deletesProgramEvaluationElements**](ProgramEvaluationElementsApi.md#deletesprogramevaluationelements) | **GET** /ed-fi/programEvaluationElements/deletes | Retrieves deleted resources based on change version.
[**getProgramEvaluationElements**](ProgramEvaluationElementsApi.md#getprogramevaluationelements) | **GET** /ed-fi/programEvaluationElements | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getProgramEvaluationElementsById**](ProgramEvaluationElementsApi.md#getprogramevaluationelementsbyid) | **GET** /ed-fi/programEvaluationElements/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getProgramEvaluationElementsPartitions**](ProgramEvaluationElementsApi.md#getprogramevaluationelementspartitions) | **GET** /ed-fi/programEvaluationElements/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesProgramEvaluationElements**](ProgramEvaluationElementsApi.md#keychangesprogramevaluationelements) | **GET** /ed-fi/programEvaluationElements/keyChanges | Retrieves resources key changes based on change version.
[**postProgramEvaluationElement**](ProgramEvaluationElementsApi.md#postprogramevaluationelement) | **POST** /ed-fi/programEvaluationElements | Creates or updates resources based on the natural key values of the supplied resource.
[**putProgramEvaluationElement**](ProgramEvaluationElementsApi.md#putprogramevaluationelement) | **PUT** /ed-fi/programEvaluationElements/{id} | Updates a resource based on the resource identifier.


# **deleteProgramEvaluationElementById**
> deleteProgramEvaluationElementById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationElementsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteProgramEvaluationElementById(id, ifMatch);
} catch (e) {
    print('Exception when calling ProgramEvaluationElementsApi->deleteProgramEvaluationElementById: $e\n');
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

# **deletesProgramEvaluationElements**
> List<TrackedChangesEdFiProgramEvaluationElementDelete> deletesProgramEvaluationElements(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationElementsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesProgramEvaluationElements(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ProgramEvaluationElementsApi->deletesProgramEvaluationElements: $e\n');
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

[**List<TrackedChangesEdFiProgramEvaluationElementDelete>**](TrackedChangesEdFiProgramEvaluationElementDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProgramEvaluationElements**
> List<EdFiProgramEvaluationElement> getProgramEvaluationElements(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, programEvaluationElementTitle, programEducationOrganizationId, programEvaluationPeriodDescriptor, programEvaluationTitle, programEvaluationTypeDescriptor, programName, programTypeDescriptor, programEvaluationObjectiveTitle, elementMaxNumericRating, elementMinNumericRating, elementSortOrder, id, programEvaluationElementDescription, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationElementsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final programEvaluationElementTitle = programEvaluationElementTitle_example; // String | The name or title of the program evaluation element.
final programEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programEvaluationPeriodDescriptor = programEvaluationPeriodDescriptor_example; // String | The name of the period for the program evaluation.
final programEvaluationTitle = programEvaluationTitle_example; // String | An assigned unique identifier for the student program evaluation.
final programEvaluationTypeDescriptor = programEvaluationTypeDescriptor_example; // String | The type of program evaluation conducted.
final programName = programName_example; // String | The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
final programTypeDescriptor = programTypeDescriptor_example; // String | The type of program.
final programEvaluationObjectiveTitle = programEvaluationObjectiveTitle_example; // String | The name or title of the program evaluation objective.
final elementMaxNumericRating = 1.2; // double | The maximum summary numerical rating or score for the program evaluation element.
final elementMinNumericRating = 1.2; // double | The minimum summary numerical rating or score for the program evaluation element. If omitted, assumed to be 0.0.
final elementSortOrder = 56; // int | The sort order of this program evaluation element.
final id = id_example; // String | 
final programEvaluationElementDescription = programEvaluationElementDescription_example; // String | The long description of the program evaluation element.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getProgramEvaluationElements(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, programEvaluationElementTitle, programEducationOrganizationId, programEvaluationPeriodDescriptor, programEvaluationTitle, programEvaluationTypeDescriptor, programName, programTypeDescriptor, programEvaluationObjectiveTitle, elementMaxNumericRating, elementMinNumericRating, elementSortOrder, id, programEvaluationElementDescription, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ProgramEvaluationElementsApi->getProgramEvaluationElements: $e\n');
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
 **programEvaluationElementTitle** | **String**| The name or title of the program evaluation element. | [optional] 
 **programEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **programEvaluationPeriodDescriptor** | **String**| The name of the period for the program evaluation. | [optional] 
 **programEvaluationTitle** | **String**| An assigned unique identifier for the student program evaluation. | [optional] 
 **programEvaluationTypeDescriptor** | **String**| The type of program evaluation conducted. | [optional] 
 **programName** | **String**| The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies. | [optional] 
 **programTypeDescriptor** | **String**| The type of program. | [optional] 
 **programEvaluationObjectiveTitle** | **String**| The name or title of the program evaluation objective. | [optional] 
 **elementMaxNumericRating** | **double**| The maximum summary numerical rating or score for the program evaluation element. | [optional] 
 **elementMinNumericRating** | **double**| The minimum summary numerical rating or score for the program evaluation element. If omitted, assumed to be 0.0. | [optional] 
 **elementSortOrder** | **int**| The sort order of this program evaluation element. | [optional] 
 **id** | **String**|  | [optional] 
 **programEvaluationElementDescription** | **String**| The long description of the program evaluation element. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiProgramEvaluationElement>**](EdFiProgramEvaluationElement.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProgramEvaluationElementsById**
> EdFiProgramEvaluationElement getProgramEvaluationElementsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationElementsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getProgramEvaluationElementsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ProgramEvaluationElementsApi->getProgramEvaluationElementsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiProgramEvaluationElement**](EdFiProgramEvaluationElement.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProgramEvaluationElementsPartitions**
> GetAcademicWeeksPartitions200Response getProgramEvaluationElementsPartitions(number, minChangeVersion, maxChangeVersion, programEvaluationElementTitle, programEducationOrganizationId, programEvaluationPeriodDescriptor, programEvaluationTitle, programEvaluationTypeDescriptor, programName, programTypeDescriptor, programEvaluationObjectiveTitle, elementMaxNumericRating, elementMinNumericRating, elementSortOrder, id, programEvaluationElementDescription, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationElementsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final programEvaluationElementTitle = programEvaluationElementTitle_example; // String | The name or title of the program evaluation element.
final programEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programEvaluationPeriodDescriptor = programEvaluationPeriodDescriptor_example; // String | The name of the period for the program evaluation.
final programEvaluationTitle = programEvaluationTitle_example; // String | An assigned unique identifier for the student program evaluation.
final programEvaluationTypeDescriptor = programEvaluationTypeDescriptor_example; // String | The type of program evaluation conducted.
final programName = programName_example; // String | The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
final programTypeDescriptor = programTypeDescriptor_example; // String | The type of program.
final programEvaluationObjectiveTitle = programEvaluationObjectiveTitle_example; // String | The name or title of the program evaluation objective.
final elementMaxNumericRating = 1.2; // double | The maximum summary numerical rating or score for the program evaluation element.
final elementMinNumericRating = 1.2; // double | The minimum summary numerical rating or score for the program evaluation element. If omitted, assumed to be 0.0.
final elementSortOrder = 56; // int | The sort order of this program evaluation element.
final id = id_example; // String | 
final programEvaluationElementDescription = programEvaluationElementDescription_example; // String | The long description of the program evaluation element.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getProgramEvaluationElementsPartitions(number, minChangeVersion, maxChangeVersion, programEvaluationElementTitle, programEducationOrganizationId, programEvaluationPeriodDescriptor, programEvaluationTitle, programEvaluationTypeDescriptor, programName, programTypeDescriptor, programEvaluationObjectiveTitle, elementMaxNumericRating, elementMinNumericRating, elementSortOrder, id, programEvaluationElementDescription, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ProgramEvaluationElementsApi->getProgramEvaluationElementsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **programEvaluationElementTitle** | **String**| The name or title of the program evaluation element. | [optional] 
 **programEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **programEvaluationPeriodDescriptor** | **String**| The name of the period for the program evaluation. | [optional] 
 **programEvaluationTitle** | **String**| An assigned unique identifier for the student program evaluation. | [optional] 
 **programEvaluationTypeDescriptor** | **String**| The type of program evaluation conducted. | [optional] 
 **programName** | **String**| The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies. | [optional] 
 **programTypeDescriptor** | **String**| The type of program. | [optional] 
 **programEvaluationObjectiveTitle** | **String**| The name or title of the program evaluation objective. | [optional] 
 **elementMaxNumericRating** | **double**| The maximum summary numerical rating or score for the program evaluation element. | [optional] 
 **elementMinNumericRating** | **double**| The minimum summary numerical rating or score for the program evaluation element. If omitted, assumed to be 0.0. | [optional] 
 **elementSortOrder** | **int**| The sort order of this program evaluation element. | [optional] 
 **id** | **String**|  | [optional] 
 **programEvaluationElementDescription** | **String**| The long description of the program evaluation element. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesProgramEvaluationElements**
> List<TrackedChangesEdFiProgramEvaluationElementKeyChange> keyChangesProgramEvaluationElements(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationElementsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesProgramEvaluationElements(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ProgramEvaluationElementsApi->keyChangesProgramEvaluationElements: $e\n');
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

[**List<TrackedChangesEdFiProgramEvaluationElementKeyChange>**](TrackedChangesEdFiProgramEvaluationElementKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postProgramEvaluationElement**
> postProgramEvaluationElement(edFiProgramEvaluationElement)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationElementsApi();
final edFiProgramEvaluationElement = EdFiProgramEvaluationElement(); // EdFiProgramEvaluationElement | The JSON representation of the \"programEvaluationElement\" resource to be created or updated.

try {
    api_instance.postProgramEvaluationElement(edFiProgramEvaluationElement);
} catch (e) {
    print('Exception when calling ProgramEvaluationElementsApi->postProgramEvaluationElement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiProgramEvaluationElement** | [**EdFiProgramEvaluationElement**](EdFiProgramEvaluationElement.md)| The JSON representation of the \"programEvaluationElement\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putProgramEvaluationElement**
> putProgramEvaluationElement(id, edFiProgramEvaluationElement, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ProgramEvaluationElementsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiProgramEvaluationElement = EdFiProgramEvaluationElement(); // EdFiProgramEvaluationElement | The JSON representation of the \"programEvaluationElement\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putProgramEvaluationElement(id, edFiProgramEvaluationElement, ifMatch);
} catch (e) {
    print('Exception when calling ProgramEvaluationElementsApi->putProgramEvaluationElement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiProgramEvaluationElement** | [**EdFiProgramEvaluationElement**](EdFiProgramEvaluationElement.md)| The JSON representation of the \"programEvaluationElement\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

