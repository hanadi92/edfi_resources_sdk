# edfi_resources_sdk.api.PerformanceEvaluationRatingsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePerformanceEvaluationRatingById**](PerformanceEvaluationRatingsApi.md#deleteperformanceevaluationratingbyid) | **DELETE** /tpdm/performanceEvaluationRatings/{id} | Deletes an existing resource using the resource identifier.
[**deletesPerformanceEvaluationRatings**](PerformanceEvaluationRatingsApi.md#deletesperformanceevaluationratings) | **GET** /tpdm/performanceEvaluationRatings/deletes | Retrieves deleted resources based on change version.
[**getPerformanceEvaluationRatings**](PerformanceEvaluationRatingsApi.md#getperformanceevaluationratings) | **GET** /tpdm/performanceEvaluationRatings | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getPerformanceEvaluationRatingsById**](PerformanceEvaluationRatingsApi.md#getperformanceevaluationratingsbyid) | **GET** /tpdm/performanceEvaluationRatings/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getPerformanceEvaluationRatingsPartitions**](PerformanceEvaluationRatingsApi.md#getperformanceevaluationratingspartitions) | **GET** /tpdm/performanceEvaluationRatings/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesPerformanceEvaluationRatings**](PerformanceEvaluationRatingsApi.md#keychangesperformanceevaluationratings) | **GET** /tpdm/performanceEvaluationRatings/keyChanges | Retrieves resources key changes based on change version.
[**postPerformanceEvaluationRating**](PerformanceEvaluationRatingsApi.md#postperformanceevaluationrating) | **POST** /tpdm/performanceEvaluationRatings | Creates or updates resources based on the natural key values of the supplied resource.
[**putPerformanceEvaluationRating**](PerformanceEvaluationRatingsApi.md#putperformanceevaluationrating) | **PUT** /tpdm/performanceEvaluationRatings/{id} | Updates a resource based on the resource identifier.


# **deletePerformanceEvaluationRatingById**
> deletePerformanceEvaluationRatingById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PerformanceEvaluationRatingsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deletePerformanceEvaluationRatingById(id, ifMatch);
} catch (e) {
    print('Exception when calling PerformanceEvaluationRatingsApi->deletePerformanceEvaluationRatingById: $e\n');
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

# **deletesPerformanceEvaluationRatings**
> List<TrackedChangesTpdmPerformanceEvaluationRatingDelete> deletesPerformanceEvaluationRatings(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PerformanceEvaluationRatingsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesPerformanceEvaluationRatings(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling PerformanceEvaluationRatingsApi->deletesPerformanceEvaluationRatings: $e\n');
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

[**List<TrackedChangesTpdmPerformanceEvaluationRatingDelete>**](TrackedChangesTpdmPerformanceEvaluationRatingDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPerformanceEvaluationRatings**
> List<TpdmPerformanceEvaluationRating> getPerformanceEvaluationRatings(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, educationOrganizationId, evaluationPeriodDescriptor, performanceEvaluationTitle, performanceEvaluationTypeDescriptor, schoolYear, termDescriptor, personId, sourceSystemDescriptor, coteachingStyleObservedDescriptor, performanceEvaluationRatingLevelDescriptor, actualDate, actualDuration, actualTime, announced, comments, id, scheduleDate, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PerformanceEvaluationRatingsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final evaluationPeriodDescriptor = evaluationPeriodDescriptor_example; // String | The period for the evaluation.
final performanceEvaluationTitle = performanceEvaluationTitle_example; // String | An assigned unique identifier for the performance evaluation.
final performanceEvaluationTypeDescriptor = performanceEvaluationTypeDescriptor_example; // String | The type of performance evaluation conducted.
final schoolYear = 56; // int | The identifier for the school year.
final termDescriptor = termDescriptor_example; // String | The term for the session during the school year.
final personId = personId_example; // String | A unique alphanumeric code assigned to a person.
final sourceSystemDescriptor = sourceSystemDescriptor_example; // String | This descriptor defines the originating record source system for the person.
final coteachingStyleObservedDescriptor = coteachingStyleObservedDescriptor_example; // String | A type of co-teaching observed as part of the performance evaluation.
final performanceEvaluationRatingLevelDescriptor = performanceEvaluationRatingLevelDescriptor_example; // String | The rating level achieved based upon the rating or score.
final actualDate = 2013-10-20; // DateTime | The month, day, and year on which the performance evaluation was conducted.
final actualDuration = 56; // int | The actual or estimated number of clock minutes during which the performance evaluation was conducted.
final actualTime = actualTime_example; // String | An indication of the the time at which the performance evaluation was conducted.
final announced = true; // bool | An indicator of whether the performance evaluation was announced or not.
final comments = comments_example; // String | Any comments about the performance evaluation to be captured.
final id = id_example; // String | 
final scheduleDate = 2013-10-20; // DateTime | The month, day, and year on which the performance evaluation was scheduled.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getPerformanceEvaluationRatings(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, educationOrganizationId, evaluationPeriodDescriptor, performanceEvaluationTitle, performanceEvaluationTypeDescriptor, schoolYear, termDescriptor, personId, sourceSystemDescriptor, coteachingStyleObservedDescriptor, performanceEvaluationRatingLevelDescriptor, actualDate, actualDuration, actualTime, announced, comments, id, scheduleDate, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling PerformanceEvaluationRatingsApi->getPerformanceEvaluationRatings: $e\n');
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
 **evaluationPeriodDescriptor** | **String**| The period for the evaluation. | [optional] 
 **performanceEvaluationTitle** | **String**| An assigned unique identifier for the performance evaluation. | [optional] 
 **performanceEvaluationTypeDescriptor** | **String**| The type of performance evaluation conducted. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **termDescriptor** | **String**| The term for the session during the school year. | [optional] 
 **personId** | **String**| A unique alphanumeric code assigned to a person. | [optional] 
 **sourceSystemDescriptor** | **String**| This descriptor defines the originating record source system for the person. | [optional] 
 **coteachingStyleObservedDescriptor** | **String**| A type of co-teaching observed as part of the performance evaluation. | [optional] 
 **performanceEvaluationRatingLevelDescriptor** | **String**| The rating level achieved based upon the rating or score. | [optional] 
 **actualDate** | **DateTime**| The month, day, and year on which the performance evaluation was conducted. | [optional] 
 **actualDuration** | **int**| The actual or estimated number of clock minutes during which the performance evaluation was conducted. | [optional] 
 **actualTime** | **String**| An indication of the the time at which the performance evaluation was conducted. | [optional] 
 **announced** | **bool**| An indicator of whether the performance evaluation was announced or not. | [optional] 
 **comments** | **String**| Any comments about the performance evaluation to be captured. | [optional] 
 **id** | **String**|  | [optional] 
 **scheduleDate** | **DateTime**| The month, day, and year on which the performance evaluation was scheduled. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<TpdmPerformanceEvaluationRating>**](TpdmPerformanceEvaluationRating.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPerformanceEvaluationRatingsById**
> TpdmPerformanceEvaluationRating getPerformanceEvaluationRatingsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PerformanceEvaluationRatingsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getPerformanceEvaluationRatingsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling PerformanceEvaluationRatingsApi->getPerformanceEvaluationRatingsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**TpdmPerformanceEvaluationRating**](TpdmPerformanceEvaluationRating.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPerformanceEvaluationRatingsPartitions**
> GetAcademicWeeksPartitions200Response getPerformanceEvaluationRatingsPartitions(number, minChangeVersion, maxChangeVersion, educationOrganizationId, evaluationPeriodDescriptor, performanceEvaluationTitle, performanceEvaluationTypeDescriptor, schoolYear, termDescriptor, personId, sourceSystemDescriptor, coteachingStyleObservedDescriptor, performanceEvaluationRatingLevelDescriptor, actualDate, actualDuration, actualTime, announced, comments, id, scheduleDate, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PerformanceEvaluationRatingsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final evaluationPeriodDescriptor = evaluationPeriodDescriptor_example; // String | The period for the evaluation.
final performanceEvaluationTitle = performanceEvaluationTitle_example; // String | An assigned unique identifier for the performance evaluation.
final performanceEvaluationTypeDescriptor = performanceEvaluationTypeDescriptor_example; // String | The type of performance evaluation conducted.
final schoolYear = 56; // int | The identifier for the school year.
final termDescriptor = termDescriptor_example; // String | The term for the session during the school year.
final personId = personId_example; // String | A unique alphanumeric code assigned to a person.
final sourceSystemDescriptor = sourceSystemDescriptor_example; // String | This descriptor defines the originating record source system for the person.
final coteachingStyleObservedDescriptor = coteachingStyleObservedDescriptor_example; // String | A type of co-teaching observed as part of the performance evaluation.
final performanceEvaluationRatingLevelDescriptor = performanceEvaluationRatingLevelDescriptor_example; // String | The rating level achieved based upon the rating or score.
final actualDate = 2013-10-20; // DateTime | The month, day, and year on which the performance evaluation was conducted.
final actualDuration = 56; // int | The actual or estimated number of clock minutes during which the performance evaluation was conducted.
final actualTime = actualTime_example; // String | An indication of the the time at which the performance evaluation was conducted.
final announced = true; // bool | An indicator of whether the performance evaluation was announced or not.
final comments = comments_example; // String | Any comments about the performance evaluation to be captured.
final id = id_example; // String | 
final scheduleDate = 2013-10-20; // DateTime | The month, day, and year on which the performance evaluation was scheduled.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getPerformanceEvaluationRatingsPartitions(number, minChangeVersion, maxChangeVersion, educationOrganizationId, evaluationPeriodDescriptor, performanceEvaluationTitle, performanceEvaluationTypeDescriptor, schoolYear, termDescriptor, personId, sourceSystemDescriptor, coteachingStyleObservedDescriptor, performanceEvaluationRatingLevelDescriptor, actualDate, actualDuration, actualTime, announced, comments, id, scheduleDate, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling PerformanceEvaluationRatingsApi->getPerformanceEvaluationRatingsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **evaluationPeriodDescriptor** | **String**| The period for the evaluation. | [optional] 
 **performanceEvaluationTitle** | **String**| An assigned unique identifier for the performance evaluation. | [optional] 
 **performanceEvaluationTypeDescriptor** | **String**| The type of performance evaluation conducted. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **termDescriptor** | **String**| The term for the session during the school year. | [optional] 
 **personId** | **String**| A unique alphanumeric code assigned to a person. | [optional] 
 **sourceSystemDescriptor** | **String**| This descriptor defines the originating record source system for the person. | [optional] 
 **coteachingStyleObservedDescriptor** | **String**| A type of co-teaching observed as part of the performance evaluation. | [optional] 
 **performanceEvaluationRatingLevelDescriptor** | **String**| The rating level achieved based upon the rating or score. | [optional] 
 **actualDate** | **DateTime**| The month, day, and year on which the performance evaluation was conducted. | [optional] 
 **actualDuration** | **int**| The actual or estimated number of clock minutes during which the performance evaluation was conducted. | [optional] 
 **actualTime** | **String**| An indication of the the time at which the performance evaluation was conducted. | [optional] 
 **announced** | **bool**| An indicator of whether the performance evaluation was announced or not. | [optional] 
 **comments** | **String**| Any comments about the performance evaluation to be captured. | [optional] 
 **id** | **String**|  | [optional] 
 **scheduleDate** | **DateTime**| The month, day, and year on which the performance evaluation was scheduled. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesPerformanceEvaluationRatings**
> List<TrackedChangesTpdmPerformanceEvaluationRatingKeyChange> keyChangesPerformanceEvaluationRatings(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PerformanceEvaluationRatingsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesPerformanceEvaluationRatings(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling PerformanceEvaluationRatingsApi->keyChangesPerformanceEvaluationRatings: $e\n');
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

[**List<TrackedChangesTpdmPerformanceEvaluationRatingKeyChange>**](TrackedChangesTpdmPerformanceEvaluationRatingKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPerformanceEvaluationRating**
> postPerformanceEvaluationRating(tpdmPerformanceEvaluationRating)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PerformanceEvaluationRatingsApi();
final tpdmPerformanceEvaluationRating = TpdmPerformanceEvaluationRating(); // TpdmPerformanceEvaluationRating | The JSON representation of the \"performanceEvaluationRating\" resource to be created or updated.

try {
    api_instance.postPerformanceEvaluationRating(tpdmPerformanceEvaluationRating);
} catch (e) {
    print('Exception when calling PerformanceEvaluationRatingsApi->postPerformanceEvaluationRating: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tpdmPerformanceEvaluationRating** | [**TpdmPerformanceEvaluationRating**](TpdmPerformanceEvaluationRating.md)| The JSON representation of the \"performanceEvaluationRating\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPerformanceEvaluationRating**
> putPerformanceEvaluationRating(id, tpdmPerformanceEvaluationRating, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = PerformanceEvaluationRatingsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final tpdmPerformanceEvaluationRating = TpdmPerformanceEvaluationRating(); // TpdmPerformanceEvaluationRating | The JSON representation of the \"performanceEvaluationRating\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putPerformanceEvaluationRating(id, tpdmPerformanceEvaluationRating, ifMatch);
} catch (e) {
    print('Exception when calling PerformanceEvaluationRatingsApi->putPerformanceEvaluationRating: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **tpdmPerformanceEvaluationRating** | [**TpdmPerformanceEvaluationRating**](TpdmPerformanceEvaluationRating.md)| The JSON representation of the \"performanceEvaluationRating\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

