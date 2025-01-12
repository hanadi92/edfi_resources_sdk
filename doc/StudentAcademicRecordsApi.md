# edfi_resources_sdk.api.StudentAcademicRecordsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStudentAcademicRecordById**](StudentAcademicRecordsApi.md#deletestudentacademicrecordbyid) | **DELETE** /ed-fi/studentAcademicRecords/{id} | Deletes an existing resource using the resource identifier.
[**deletesStudentAcademicRecords**](StudentAcademicRecordsApi.md#deletesstudentacademicrecords) | **GET** /ed-fi/studentAcademicRecords/deletes | Retrieves deleted resources based on change version.
[**getStudentAcademicRecords**](StudentAcademicRecordsApi.md#getstudentacademicrecords) | **GET** /ed-fi/studentAcademicRecords | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStudentAcademicRecordsById**](StudentAcademicRecordsApi.md#getstudentacademicrecordsbyid) | **GET** /ed-fi/studentAcademicRecords/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStudentAcademicRecordsPartitions**](StudentAcademicRecordsApi.md#getstudentacademicrecordspartitions) | **GET** /ed-fi/studentAcademicRecords/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStudentAcademicRecords**](StudentAcademicRecordsApi.md#keychangesstudentacademicrecords) | **GET** /ed-fi/studentAcademicRecords/keyChanges | Retrieves resources key changes based on change version.
[**postStudentAcademicRecord**](StudentAcademicRecordsApi.md#poststudentacademicrecord) | **POST** /ed-fi/studentAcademicRecords | Creates or updates resources based on the natural key values of the supplied resource.
[**putStudentAcademicRecord**](StudentAcademicRecordsApi.md#putstudentacademicrecord) | **PUT** /ed-fi/studentAcademicRecords/{id} | Updates a resource based on the resource identifier.


# **deleteStudentAcademicRecordById**
> deleteStudentAcademicRecordById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAcademicRecordsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStudentAcademicRecordById(id, ifMatch);
} catch (e) {
    print('Exception when calling StudentAcademicRecordsApi->deleteStudentAcademicRecordById: $e\n');
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

# **deletesStudentAcademicRecords**
> List<TrackedChangesEdFiStudentAcademicRecordDelete> deletesStudentAcademicRecords(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAcademicRecordsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStudentAcademicRecords(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAcademicRecordsApi->deletesStudentAcademicRecords: $e\n');
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

[**List<TrackedChangesEdFiStudentAcademicRecordDelete>**](TrackedChangesEdFiStudentAcademicRecordDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentAcademicRecords**
> List<EdFiStudentAcademicRecord> getStudentAcademicRecords(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, termDescriptor, educationOrganizationId, schoolYear, studentUniqueId, cumulativeEarnedCreditTypeDescriptor, cumulativeAttemptedCreditTypeDescriptor, sessionEarnedCreditTypeDescriptor, sessionAttemptedCreditTypeDescriptor, cumulativeAttemptedCreditConversion, cumulativeAttemptedCredits, cumulativeEarnedCreditConversion, cumulativeEarnedCredits, id, projectedGraduationDate, sessionAttemptedCreditConversion, sessionAttemptedCredits, sessionEarnedCreditConversion, sessionEarnedCredits, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAcademicRecordsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final termDescriptor = termDescriptor_example; // String | The term for the session during the school year.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final schoolYear = 56; // int | The identifier for the school year.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final cumulativeEarnedCreditTypeDescriptor = cumulativeEarnedCreditTypeDescriptor_example; // String | The type of credits or units of value awarded for the completion of a course.
final cumulativeAttemptedCreditTypeDescriptor = cumulativeAttemptedCreditTypeDescriptor_example; // String | The type of credits or units of value awarded for the completion of a course.
final sessionEarnedCreditTypeDescriptor = sessionEarnedCreditTypeDescriptor_example; // String | The type of credits or units of value awarded for the completion of a course.
final sessionAttemptedCreditTypeDescriptor = sessionAttemptedCreditTypeDescriptor_example; // String | The type of credits or units of value awarded for the completion of a course.
final cumulativeAttemptedCreditConversion = 1.2; // double | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
final cumulativeAttemptedCredits = 1.2; // double | The value of credits or units of value awarded for the completion of a course.
final cumulativeEarnedCreditConversion = 1.2; // double | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
final cumulativeEarnedCredits = 1.2; // double | The value of credits or units of value awarded for the completion of a course.
final id = id_example; // String | 
final projectedGraduationDate = 2013-10-20; // DateTime | The month and year the student is projected to graduate.
final sessionAttemptedCreditConversion = 1.2; // double | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
final sessionAttemptedCredits = 1.2; // double | The value of credits or units of value awarded for the completion of a course.
final sessionEarnedCreditConversion = 1.2; // double | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
final sessionEarnedCredits = 1.2; // double | The value of credits or units of value awarded for the completion of a course.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentAcademicRecords(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, termDescriptor, educationOrganizationId, schoolYear, studentUniqueId, cumulativeEarnedCreditTypeDescriptor, cumulativeAttemptedCreditTypeDescriptor, sessionEarnedCreditTypeDescriptor, sessionAttemptedCreditTypeDescriptor, cumulativeAttemptedCreditConversion, cumulativeAttemptedCredits, cumulativeEarnedCreditConversion, cumulativeEarnedCredits, id, projectedGraduationDate, sessionAttemptedCreditConversion, sessionAttemptedCredits, sessionEarnedCreditConversion, sessionEarnedCredits, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAcademicRecordsApi->getStudentAcademicRecords: $e\n');
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
 **termDescriptor** | **String**| The term for the session during the school year. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **cumulativeEarnedCreditTypeDescriptor** | **String**| The type of credits or units of value awarded for the completion of a course. | [optional] 
 **cumulativeAttemptedCreditTypeDescriptor** | **String**| The type of credits or units of value awarded for the completion of a course. | [optional] 
 **sessionEarnedCreditTypeDescriptor** | **String**| The type of credits or units of value awarded for the completion of a course. | [optional] 
 **sessionAttemptedCreditTypeDescriptor** | **String**| The type of credits or units of value awarded for the completion of a course. | [optional] 
 **cumulativeAttemptedCreditConversion** | **double**| Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
 **cumulativeAttemptedCredits** | **double**| The value of credits or units of value awarded for the completion of a course. | [optional] 
 **cumulativeEarnedCreditConversion** | **double**| Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
 **cumulativeEarnedCredits** | **double**| The value of credits or units of value awarded for the completion of a course. | [optional] 
 **id** | **String**|  | [optional] 
 **projectedGraduationDate** | **DateTime**| The month and year the student is projected to graduate. | [optional] 
 **sessionAttemptedCreditConversion** | **double**| Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
 **sessionAttemptedCredits** | **double**| The value of credits or units of value awarded for the completion of a course. | [optional] 
 **sessionEarnedCreditConversion** | **double**| Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
 **sessionEarnedCredits** | **double**| The value of credits or units of value awarded for the completion of a course. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStudentAcademicRecord>**](EdFiStudentAcademicRecord.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentAcademicRecordsById**
> EdFiStudentAcademicRecord getStudentAcademicRecordsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAcademicRecordsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentAcademicRecordsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAcademicRecordsApi->getStudentAcademicRecordsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStudentAcademicRecord**](EdFiStudentAcademicRecord.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentAcademicRecordsPartitions**
> GetAcademicWeeksPartitions200Response getStudentAcademicRecordsPartitions(number, minChangeVersion, maxChangeVersion, termDescriptor, educationOrganizationId, schoolYear, studentUniqueId, cumulativeEarnedCreditTypeDescriptor, cumulativeAttemptedCreditTypeDescriptor, sessionEarnedCreditTypeDescriptor, sessionAttemptedCreditTypeDescriptor, cumulativeAttemptedCreditConversion, cumulativeAttemptedCredits, cumulativeEarnedCreditConversion, cumulativeEarnedCredits, id, projectedGraduationDate, sessionAttemptedCreditConversion, sessionAttemptedCredits, sessionEarnedCreditConversion, sessionEarnedCredits, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAcademicRecordsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final termDescriptor = termDescriptor_example; // String | The term for the session during the school year.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final schoolYear = 56; // int | The identifier for the school year.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final cumulativeEarnedCreditTypeDescriptor = cumulativeEarnedCreditTypeDescriptor_example; // String | The type of credits or units of value awarded for the completion of a course.
final cumulativeAttemptedCreditTypeDescriptor = cumulativeAttemptedCreditTypeDescriptor_example; // String | The type of credits or units of value awarded for the completion of a course.
final sessionEarnedCreditTypeDescriptor = sessionEarnedCreditTypeDescriptor_example; // String | The type of credits or units of value awarded for the completion of a course.
final sessionAttemptedCreditTypeDescriptor = sessionAttemptedCreditTypeDescriptor_example; // String | The type of credits or units of value awarded for the completion of a course.
final cumulativeAttemptedCreditConversion = 1.2; // double | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
final cumulativeAttemptedCredits = 1.2; // double | The value of credits or units of value awarded for the completion of a course.
final cumulativeEarnedCreditConversion = 1.2; // double | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
final cumulativeEarnedCredits = 1.2; // double | The value of credits or units of value awarded for the completion of a course.
final id = id_example; // String | 
final projectedGraduationDate = 2013-10-20; // DateTime | The month and year the student is projected to graduate.
final sessionAttemptedCreditConversion = 1.2; // double | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
final sessionAttemptedCredits = 1.2; // double | The value of credits or units of value awarded for the completion of a course.
final sessionEarnedCreditConversion = 1.2; // double | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
final sessionEarnedCredits = 1.2; // double | The value of credits or units of value awarded for the completion of a course.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentAcademicRecordsPartitions(number, minChangeVersion, maxChangeVersion, termDescriptor, educationOrganizationId, schoolYear, studentUniqueId, cumulativeEarnedCreditTypeDescriptor, cumulativeAttemptedCreditTypeDescriptor, sessionEarnedCreditTypeDescriptor, sessionAttemptedCreditTypeDescriptor, cumulativeAttemptedCreditConversion, cumulativeAttemptedCredits, cumulativeEarnedCreditConversion, cumulativeEarnedCredits, id, projectedGraduationDate, sessionAttemptedCreditConversion, sessionAttemptedCredits, sessionEarnedCreditConversion, sessionEarnedCredits, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAcademicRecordsApi->getStudentAcademicRecordsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **termDescriptor** | **String**| The term for the session during the school year. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **cumulativeEarnedCreditTypeDescriptor** | **String**| The type of credits or units of value awarded for the completion of a course. | [optional] 
 **cumulativeAttemptedCreditTypeDescriptor** | **String**| The type of credits or units of value awarded for the completion of a course. | [optional] 
 **sessionEarnedCreditTypeDescriptor** | **String**| The type of credits or units of value awarded for the completion of a course. | [optional] 
 **sessionAttemptedCreditTypeDescriptor** | **String**| The type of credits or units of value awarded for the completion of a course. | [optional] 
 **cumulativeAttemptedCreditConversion** | **double**| Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
 **cumulativeAttemptedCredits** | **double**| The value of credits or units of value awarded for the completion of a course. | [optional] 
 **cumulativeEarnedCreditConversion** | **double**| Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
 **cumulativeEarnedCredits** | **double**| The value of credits or units of value awarded for the completion of a course. | [optional] 
 **id** | **String**|  | [optional] 
 **projectedGraduationDate** | **DateTime**| The month and year the student is projected to graduate. | [optional] 
 **sessionAttemptedCreditConversion** | **double**| Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
 **sessionAttemptedCredits** | **double**| The value of credits or units of value awarded for the completion of a course. | [optional] 
 **sessionEarnedCreditConversion** | **double**| Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
 **sessionEarnedCredits** | **double**| The value of credits or units of value awarded for the completion of a course. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesStudentAcademicRecords**
> List<TrackedChangesEdFiStudentAcademicRecordKeyChange> keyChangesStudentAcademicRecords(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAcademicRecordsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStudentAcademicRecords(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAcademicRecordsApi->keyChangesStudentAcademicRecords: $e\n');
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

[**List<TrackedChangesEdFiStudentAcademicRecordKeyChange>**](TrackedChangesEdFiStudentAcademicRecordKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStudentAcademicRecord**
> postStudentAcademicRecord(edFiStudentAcademicRecord)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAcademicRecordsApi();
final edFiStudentAcademicRecord = EdFiStudentAcademicRecord(); // EdFiStudentAcademicRecord | The JSON representation of the \"studentAcademicRecord\" resource to be created or updated.

try {
    api_instance.postStudentAcademicRecord(edFiStudentAcademicRecord);
} catch (e) {
    print('Exception when calling StudentAcademicRecordsApi->postStudentAcademicRecord: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStudentAcademicRecord** | [**EdFiStudentAcademicRecord**](EdFiStudentAcademicRecord.md)| The JSON representation of the \"studentAcademicRecord\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStudentAcademicRecord**
> putStudentAcademicRecord(id, edFiStudentAcademicRecord, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAcademicRecordsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStudentAcademicRecord = EdFiStudentAcademicRecord(); // EdFiStudentAcademicRecord | The JSON representation of the \"studentAcademicRecord\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStudentAcademicRecord(id, edFiStudentAcademicRecord, ifMatch);
} catch (e) {
    print('Exception when calling StudentAcademicRecordsApi->putStudentAcademicRecord: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStudentAcademicRecord** | [**EdFiStudentAcademicRecord**](EdFiStudentAcademicRecord.md)| The JSON representation of the \"studentAcademicRecord\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

