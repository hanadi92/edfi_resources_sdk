# edfi_resources_sdk.api.EvaluationRatingsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteEvaluationRatingById**](EvaluationRatingsApi.md#deleteevaluationratingbyid) | **DELETE** /tpdm/evaluationRatings/{id} | Deletes an existing resource using the resource identifier.
[**deletesEvaluationRatings**](EvaluationRatingsApi.md#deletesevaluationratings) | **GET** /tpdm/evaluationRatings/deletes | Retrieves deleted resources based on change version.
[**getEvaluationRatings**](EvaluationRatingsApi.md#getevaluationratings) | **GET** /tpdm/evaluationRatings | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getEvaluationRatingsById**](EvaluationRatingsApi.md#getevaluationratingsbyid) | **GET** /tpdm/evaluationRatings/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getEvaluationRatingsPartitions**](EvaluationRatingsApi.md#getevaluationratingspartitions) | **GET** /tpdm/evaluationRatings/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesEvaluationRatings**](EvaluationRatingsApi.md#keychangesevaluationratings) | **GET** /tpdm/evaluationRatings/keyChanges | Retrieves resources key changes based on change version.
[**postEvaluationRating**](EvaluationRatingsApi.md#postevaluationrating) | **POST** /tpdm/evaluationRatings | Creates or updates resources based on the natural key values of the supplied resource.
[**putEvaluationRating**](EvaluationRatingsApi.md#putevaluationrating) | **PUT** /tpdm/evaluationRatings/{id} | Updates a resource based on the resource identifier.


# **deleteEvaluationRatingById**
> deleteEvaluationRatingById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EvaluationRatingsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteEvaluationRatingById(id, ifMatch);
} catch (e) {
    print('Exception when calling EvaluationRatingsApi->deleteEvaluationRatingById: $e\n');
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

# **deletesEvaluationRatings**
> List<TrackedChangesTpdmEvaluationRatingDelete> deletesEvaluationRatings(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EvaluationRatingsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesEvaluationRatings(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling EvaluationRatingsApi->deletesEvaluationRatings: $e\n');
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

[**List<TrackedChangesTpdmEvaluationRatingDelete>**](TrackedChangesTpdmEvaluationRatingDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEvaluationRatings**
> List<TpdmEvaluationRating> getEvaluationRatings(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, evaluationDate, educationOrganizationId, evaluationPeriodDescriptor, evaluationTitle, performanceEvaluationTitle, performanceEvaluationTypeDescriptor, schoolYear, termDescriptor, personId, sourceSystemDescriptor, localCourseCode, schoolId, sectionIdentifier, sessionName, evaluationRatingLevelDescriptor, evaluationRatingStatusDescriptor, actualDuration, comments, id, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EvaluationRatingsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final evaluationDate = 2013-10-20T19:20:30+01:00; // DateTime | The date for the person's evaluation.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final evaluationPeriodDescriptor = evaluationPeriodDescriptor_example; // String | The period for the evaluation.
final evaluationTitle = evaluationTitle_example; // String | The name or title of the evaluation.
final performanceEvaluationTitle = performanceEvaluationTitle_example; // String | An assigned unique identifier for the performance evaluation.
final performanceEvaluationTypeDescriptor = performanceEvaluationTypeDescriptor_example; // String | The type of performance evaluation conducted.
final schoolYear = 56; // int | The identifier for the school year.
final termDescriptor = termDescriptor_example; // String | The term for the session during the school year.
final personId = personId_example; // String | A unique alphanumeric code assigned to a person.
final sourceSystemDescriptor = sourceSystemDescriptor_example; // String | This descriptor defines the originating record source system for the person.
final localCourseCode = localCourseCode_example; // String | The local code assigned by the School that identifies the course offering provided for the instruction of students.
final schoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final sectionIdentifier = sectionIdentifier_example; // String | The local identifier assigned to a section.
final sessionName = sessionName_example; // String | The identifier for the calendar for the academic session.
final evaluationRatingLevelDescriptor = evaluationRatingLevelDescriptor_example; // String | The rating level achieved based upon the rating or score.
final evaluationRatingStatusDescriptor = evaluationRatingStatusDescriptor_example; // String | The Status of the poerformance evaluation.
final actualDuration = 56; // int | The actual or estimated number of clock minutes during which the evaluation was conducted.
final comments = comments_example; // String | Any comments about the evaluation to be captured.
final id = id_example; // String | 
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getEvaluationRatings(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, evaluationDate, educationOrganizationId, evaluationPeriodDescriptor, evaluationTitle, performanceEvaluationTitle, performanceEvaluationTypeDescriptor, schoolYear, termDescriptor, personId, sourceSystemDescriptor, localCourseCode, schoolId, sectionIdentifier, sessionName, evaluationRatingLevelDescriptor, evaluationRatingStatusDescriptor, actualDuration, comments, id, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling EvaluationRatingsApi->getEvaluationRatings: $e\n');
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
 **evaluationDate** | **DateTime**| The date for the person's evaluation. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **evaluationPeriodDescriptor** | **String**| The period for the evaluation. | [optional] 
 **evaluationTitle** | **String**| The name or title of the evaluation. | [optional] 
 **performanceEvaluationTitle** | **String**| An assigned unique identifier for the performance evaluation. | [optional] 
 **performanceEvaluationTypeDescriptor** | **String**| The type of performance evaluation conducted. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **termDescriptor** | **String**| The term for the session during the school year. | [optional] 
 **personId** | **String**| A unique alphanumeric code assigned to a person. | [optional] 
 **sourceSystemDescriptor** | **String**| This descriptor defines the originating record source system for the person. | [optional] 
 **localCourseCode** | **String**| The local code assigned by the School that identifies the course offering provided for the instruction of students. | [optional] 
 **schoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **sectionIdentifier** | **String**| The local identifier assigned to a section. | [optional] 
 **sessionName** | **String**| The identifier for the calendar for the academic session. | [optional] 
 **evaluationRatingLevelDescriptor** | **String**| The rating level achieved based upon the rating or score. | [optional] 
 **evaluationRatingStatusDescriptor** | **String**| The Status of the poerformance evaluation. | [optional] 
 **actualDuration** | **int**| The actual or estimated number of clock minutes during which the evaluation was conducted. | [optional] 
 **comments** | **String**| Any comments about the evaluation to be captured. | [optional] 
 **id** | **String**|  | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<TpdmEvaluationRating>**](TpdmEvaluationRating.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEvaluationRatingsById**
> TpdmEvaluationRating getEvaluationRatingsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EvaluationRatingsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getEvaluationRatingsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling EvaluationRatingsApi->getEvaluationRatingsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**TpdmEvaluationRating**](TpdmEvaluationRating.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEvaluationRatingsPartitions**
> GetAcademicWeeksPartitions200Response getEvaluationRatingsPartitions(number, minChangeVersion, maxChangeVersion, evaluationDate, educationOrganizationId, evaluationPeriodDescriptor, evaluationTitle, performanceEvaluationTitle, performanceEvaluationTypeDescriptor, schoolYear, termDescriptor, personId, sourceSystemDescriptor, localCourseCode, schoolId, sectionIdentifier, sessionName, evaluationRatingLevelDescriptor, evaluationRatingStatusDescriptor, actualDuration, comments, id, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EvaluationRatingsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final evaluationDate = 2013-10-20T19:20:30+01:00; // DateTime | The date for the person's evaluation.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final evaluationPeriodDescriptor = evaluationPeriodDescriptor_example; // String | The period for the evaluation.
final evaluationTitle = evaluationTitle_example; // String | The name or title of the evaluation.
final performanceEvaluationTitle = performanceEvaluationTitle_example; // String | An assigned unique identifier for the performance evaluation.
final performanceEvaluationTypeDescriptor = performanceEvaluationTypeDescriptor_example; // String | The type of performance evaluation conducted.
final schoolYear = 56; // int | The identifier for the school year.
final termDescriptor = termDescriptor_example; // String | The term for the session during the school year.
final personId = personId_example; // String | A unique alphanumeric code assigned to a person.
final sourceSystemDescriptor = sourceSystemDescriptor_example; // String | This descriptor defines the originating record source system for the person.
final localCourseCode = localCourseCode_example; // String | The local code assigned by the School that identifies the course offering provided for the instruction of students.
final schoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final sectionIdentifier = sectionIdentifier_example; // String | The local identifier assigned to a section.
final sessionName = sessionName_example; // String | The identifier for the calendar for the academic session.
final evaluationRatingLevelDescriptor = evaluationRatingLevelDescriptor_example; // String | The rating level achieved based upon the rating or score.
final evaluationRatingStatusDescriptor = evaluationRatingStatusDescriptor_example; // String | The Status of the poerformance evaluation.
final actualDuration = 56; // int | The actual or estimated number of clock minutes during which the evaluation was conducted.
final comments = comments_example; // String | Any comments about the evaluation to be captured.
final id = id_example; // String | 
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getEvaluationRatingsPartitions(number, minChangeVersion, maxChangeVersion, evaluationDate, educationOrganizationId, evaluationPeriodDescriptor, evaluationTitle, performanceEvaluationTitle, performanceEvaluationTypeDescriptor, schoolYear, termDescriptor, personId, sourceSystemDescriptor, localCourseCode, schoolId, sectionIdentifier, sessionName, evaluationRatingLevelDescriptor, evaluationRatingStatusDescriptor, actualDuration, comments, id, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling EvaluationRatingsApi->getEvaluationRatingsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **evaluationDate** | **DateTime**| The date for the person's evaluation. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **evaluationPeriodDescriptor** | **String**| The period for the evaluation. | [optional] 
 **evaluationTitle** | **String**| The name or title of the evaluation. | [optional] 
 **performanceEvaluationTitle** | **String**| An assigned unique identifier for the performance evaluation. | [optional] 
 **performanceEvaluationTypeDescriptor** | **String**| The type of performance evaluation conducted. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **termDescriptor** | **String**| The term for the session during the school year. | [optional] 
 **personId** | **String**| A unique alphanumeric code assigned to a person. | [optional] 
 **sourceSystemDescriptor** | **String**| This descriptor defines the originating record source system for the person. | [optional] 
 **localCourseCode** | **String**| The local code assigned by the School that identifies the course offering provided for the instruction of students. | [optional] 
 **schoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **sectionIdentifier** | **String**| The local identifier assigned to a section. | [optional] 
 **sessionName** | **String**| The identifier for the calendar for the academic session. | [optional] 
 **evaluationRatingLevelDescriptor** | **String**| The rating level achieved based upon the rating or score. | [optional] 
 **evaluationRatingStatusDescriptor** | **String**| The Status of the poerformance evaluation. | [optional] 
 **actualDuration** | **int**| The actual or estimated number of clock minutes during which the evaluation was conducted. | [optional] 
 **comments** | **String**| Any comments about the evaluation to be captured. | [optional] 
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

# **keyChangesEvaluationRatings**
> List<TrackedChangesTpdmEvaluationRatingKeyChange> keyChangesEvaluationRatings(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EvaluationRatingsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesEvaluationRatings(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling EvaluationRatingsApi->keyChangesEvaluationRatings: $e\n');
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

[**List<TrackedChangesTpdmEvaluationRatingKeyChange>**](TrackedChangesTpdmEvaluationRatingKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postEvaluationRating**
> postEvaluationRating(tpdmEvaluationRating)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EvaluationRatingsApi();
final tpdmEvaluationRating = TpdmEvaluationRating(); // TpdmEvaluationRating | The JSON representation of the \"evaluationRating\" resource to be created or updated.

try {
    api_instance.postEvaluationRating(tpdmEvaluationRating);
} catch (e) {
    print('Exception when calling EvaluationRatingsApi->postEvaluationRating: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tpdmEvaluationRating** | [**TpdmEvaluationRating**](TpdmEvaluationRating.md)| The JSON representation of the \"evaluationRating\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putEvaluationRating**
> putEvaluationRating(id, tpdmEvaluationRating, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = EvaluationRatingsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final tpdmEvaluationRating = TpdmEvaluationRating(); // TpdmEvaluationRating | The JSON representation of the \"evaluationRating\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putEvaluationRating(id, tpdmEvaluationRating, ifMatch);
} catch (e) {
    print('Exception when calling EvaluationRatingsApi->putEvaluationRating: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **tpdmEvaluationRating** | [**TpdmEvaluationRating**](TpdmEvaluationRating.md)| The JSON representation of the \"evaluationRating\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

