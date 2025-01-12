# edfi_resources_sdk.api.GraduationPlansApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteGraduationPlanById**](GraduationPlansApi.md#deletegraduationplanbyid) | **DELETE** /ed-fi/graduationPlans/{id} | Deletes an existing resource using the resource identifier.
[**deletesGraduationPlans**](GraduationPlansApi.md#deletesgraduationplans) | **GET** /ed-fi/graduationPlans/deletes | Retrieves deleted resources based on change version.
[**getGraduationPlans**](GraduationPlansApi.md#getgraduationplans) | **GET** /ed-fi/graduationPlans | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getGraduationPlansById**](GraduationPlansApi.md#getgraduationplansbyid) | **GET** /ed-fi/graduationPlans/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getGraduationPlansPartitions**](GraduationPlansApi.md#getgraduationplanspartitions) | **GET** /ed-fi/graduationPlans/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesGraduationPlans**](GraduationPlansApi.md#keychangesgraduationplans) | **GET** /ed-fi/graduationPlans/keyChanges | Retrieves resources key changes based on change version.
[**postGraduationPlan**](GraduationPlansApi.md#postgraduationplan) | **POST** /ed-fi/graduationPlans | Creates or updates resources based on the natural key values of the supplied resource.
[**putGraduationPlan**](GraduationPlansApi.md#putgraduationplan) | **PUT** /ed-fi/graduationPlans/{id} | Updates a resource based on the resource identifier.


# **deleteGraduationPlanById**
> deleteGraduationPlanById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GraduationPlansApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteGraduationPlanById(id, ifMatch);
} catch (e) {
    print('Exception when calling GraduationPlansApi->deleteGraduationPlanById: $e\n');
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

# **deletesGraduationPlans**
> List<TrackedChangesEdFiGraduationPlanDelete> deletesGraduationPlans(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GraduationPlansApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesGraduationPlans(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling GraduationPlansApi->deletesGraduationPlans: $e\n');
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

[**List<TrackedChangesEdFiGraduationPlanDelete>**](TrackedChangesEdFiGraduationPlanDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGraduationPlans**
> List<EdFiGraduationPlan> getGraduationPlans(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, graduationPlanTypeDescriptor, educationOrganizationId, graduationSchoolYear, totalRequiredCreditTypeDescriptor, id, individualPlan, totalRequiredCreditConversion, totalRequiredCredits, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GraduationPlansApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final graduationPlanTypeDescriptor = graduationPlanTypeDescriptor_example; // String | The type of academic plan the student is following for graduation.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final graduationSchoolYear = 56; // int | The school year the student is expected to graduate.
final totalRequiredCreditTypeDescriptor = totalRequiredCreditTypeDescriptor_example; // String | The type of credits or units of value awarded for the completion of a course.
final id = id_example; // String | 
final individualPlan = true; // bool | An indicator of whether the graduation plan is tailored for an individual.
final totalRequiredCreditConversion = 1.2; // double | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
final totalRequiredCredits = 1.2; // double | The value of credits or units of value awarded for the completion of a course.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getGraduationPlans(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, graduationPlanTypeDescriptor, educationOrganizationId, graduationSchoolYear, totalRequiredCreditTypeDescriptor, id, individualPlan, totalRequiredCreditConversion, totalRequiredCredits, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling GraduationPlansApi->getGraduationPlans: $e\n');
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
 **graduationPlanTypeDescriptor** | **String**| The type of academic plan the student is following for graduation. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **graduationSchoolYear** | **int**| The school year the student is expected to graduate. | [optional] 
 **totalRequiredCreditTypeDescriptor** | **String**| The type of credits or units of value awarded for the completion of a course. | [optional] 
 **id** | **String**|  | [optional] 
 **individualPlan** | **bool**| An indicator of whether the graduation plan is tailored for an individual. | [optional] 
 **totalRequiredCreditConversion** | **double**| Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
 **totalRequiredCredits** | **double**| The value of credits or units of value awarded for the completion of a course. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiGraduationPlan>**](EdFiGraduationPlan.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGraduationPlansById**
> EdFiGraduationPlan getGraduationPlansById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GraduationPlansApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getGraduationPlansById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling GraduationPlansApi->getGraduationPlansById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiGraduationPlan**](EdFiGraduationPlan.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGraduationPlansPartitions**
> GetAcademicWeeksPartitions200Response getGraduationPlansPartitions(number, minChangeVersion, maxChangeVersion, graduationPlanTypeDescriptor, educationOrganizationId, graduationSchoolYear, totalRequiredCreditTypeDescriptor, id, individualPlan, totalRequiredCreditConversion, totalRequiredCredits, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GraduationPlansApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final graduationPlanTypeDescriptor = graduationPlanTypeDescriptor_example; // String | The type of academic plan the student is following for graduation.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final graduationSchoolYear = 56; // int | The school year the student is expected to graduate.
final totalRequiredCreditTypeDescriptor = totalRequiredCreditTypeDescriptor_example; // String | The type of credits or units of value awarded for the completion of a course.
final id = id_example; // String | 
final individualPlan = true; // bool | An indicator of whether the graduation plan is tailored for an individual.
final totalRequiredCreditConversion = 1.2; // double | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
final totalRequiredCredits = 1.2; // double | The value of credits or units of value awarded for the completion of a course.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getGraduationPlansPartitions(number, minChangeVersion, maxChangeVersion, graduationPlanTypeDescriptor, educationOrganizationId, graduationSchoolYear, totalRequiredCreditTypeDescriptor, id, individualPlan, totalRequiredCreditConversion, totalRequiredCredits, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling GraduationPlansApi->getGraduationPlansPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **graduationPlanTypeDescriptor** | **String**| The type of academic plan the student is following for graduation. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **graduationSchoolYear** | **int**| The school year the student is expected to graduate. | [optional] 
 **totalRequiredCreditTypeDescriptor** | **String**| The type of credits or units of value awarded for the completion of a course. | [optional] 
 **id** | **String**|  | [optional] 
 **individualPlan** | **bool**| An indicator of whether the graduation plan is tailored for an individual. | [optional] 
 **totalRequiredCreditConversion** | **double**| Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
 **totalRequiredCredits** | **double**| The value of credits or units of value awarded for the completion of a course. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesGraduationPlans**
> List<TrackedChangesEdFiGraduationPlanKeyChange> keyChangesGraduationPlans(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GraduationPlansApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesGraduationPlans(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling GraduationPlansApi->keyChangesGraduationPlans: $e\n');
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

[**List<TrackedChangesEdFiGraduationPlanKeyChange>**](TrackedChangesEdFiGraduationPlanKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postGraduationPlan**
> postGraduationPlan(edFiGraduationPlan)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GraduationPlansApi();
final edFiGraduationPlan = EdFiGraduationPlan(); // EdFiGraduationPlan | The JSON representation of the \"graduationPlan\" resource to be created or updated.

try {
    api_instance.postGraduationPlan(edFiGraduationPlan);
} catch (e) {
    print('Exception when calling GraduationPlansApi->postGraduationPlan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiGraduationPlan** | [**EdFiGraduationPlan**](EdFiGraduationPlan.md)| The JSON representation of the \"graduationPlan\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putGraduationPlan**
> putGraduationPlan(id, edFiGraduationPlan, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GraduationPlansApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiGraduationPlan = EdFiGraduationPlan(); // EdFiGraduationPlan | The JSON representation of the \"graduationPlan\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putGraduationPlan(id, edFiGraduationPlan, ifMatch);
} catch (e) {
    print('Exception when calling GraduationPlansApi->putGraduationPlan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiGraduationPlan** | [**EdFiGraduationPlan**](EdFiGraduationPlan.md)| The JSON representation of the \"graduationPlan\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

