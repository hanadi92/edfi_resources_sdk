# edfi_resources_sdk.api.StudentAssessmentsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStudentAssessmentById**](StudentAssessmentsApi.md#deletestudentassessmentbyid) | **DELETE** /ed-fi/studentAssessments/{id} | Deletes an existing resource using the resource identifier.
[**deletesStudentAssessments**](StudentAssessmentsApi.md#deletesstudentassessments) | **GET** /ed-fi/studentAssessments/deletes | Retrieves deleted resources based on change version.
[**getStudentAssessments**](StudentAssessmentsApi.md#getstudentassessments) | **GET** /ed-fi/studentAssessments | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStudentAssessmentsById**](StudentAssessmentsApi.md#getstudentassessmentsbyid) | **GET** /ed-fi/studentAssessments/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStudentAssessmentsPartitions**](StudentAssessmentsApi.md#getstudentassessmentspartitions) | **GET** /ed-fi/studentAssessments/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStudentAssessments**](StudentAssessmentsApi.md#keychangesstudentassessments) | **GET** /ed-fi/studentAssessments/keyChanges | Retrieves resources key changes based on change version.
[**postStudentAssessment**](StudentAssessmentsApi.md#poststudentassessment) | **POST** /ed-fi/studentAssessments | Creates or updates resources based on the natural key values of the supplied resource.
[**putStudentAssessment**](StudentAssessmentsApi.md#putstudentassessment) | **PUT** /ed-fi/studentAssessments/{id} | Updates a resource based on the resource identifier.


# **deleteStudentAssessmentById**
> deleteStudentAssessmentById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStudentAssessmentById(id, ifMatch);
} catch (e) {
    print('Exception when calling StudentAssessmentsApi->deleteStudentAssessmentById: $e\n');
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

# **deletesStudentAssessments**
> List<TrackedChangesEdFiStudentAssessmentDelete> deletesStudentAssessments(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStudentAssessments(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAssessmentsApi->deletesStudentAssessments: $e\n');
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

[**List<TrackedChangesEdFiStudentAssessmentDelete>**](TrackedChangesEdFiStudentAssessmentDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentAssessments**
> List<EdFiStudentAssessment> getStudentAssessments(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, studentAssessmentIdentifier, assessmentIdentifier, namespace, studentUniqueId, reportedSchoolId, schoolYear, administrationEnvironmentDescriptor, eventCircumstanceDescriptor, whenAssessedGradeLevelDescriptor, administrationLanguageDescriptor, platformTypeDescriptor, reasonNotTestedDescriptor, retestIndicatorDescriptor, administrationDate, administrationEndDate, assessedMinutes, eventDescription, id, reportedSchoolIdentifier, serialNumber, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final studentAssessmentIdentifier = studentAssessmentIdentifier_example; // String | A unique number or alphanumeric code assigned to an assessment administered to a student.
final assessmentIdentifier = assessmentIdentifier_example; // String | A unique number or alphanumeric code assigned to an assessment.
final namespace = namespace_example; // String | Namespace for the assessment.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final reportedSchoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final schoolYear = 56; // int | The school year for which the assessment was administered to a student. Among other uses, handles cases in which a student takes a prior-year exam in a subsequent school year during an exam re-test.
final administrationEnvironmentDescriptor = administrationEnvironmentDescriptor_example; // String | The environment in which the test was administered.
final eventCircumstanceDescriptor = eventCircumstanceDescriptor_example; // String | An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc.
final whenAssessedGradeLevelDescriptor = whenAssessedGradeLevelDescriptor_example; // String | The grade level of a student when assessed.
final administrationLanguageDescriptor = administrationLanguageDescriptor_example; // String | The language in which an assessment is written and/or administered.
final platformTypeDescriptor = platformTypeDescriptor_example; // String | The platform with which the assessment was delivered to the student during the assessment session.
final reasonNotTestedDescriptor = reasonNotTestedDescriptor_example; // String | The primary reason student is not tested.
final retestIndicatorDescriptor = retestIndicatorDescriptor_example; // String | Indicator if the test was a retake.
final administrationDate = 2013-10-20T19:20:30+01:00; // DateTime | The date and time an assessment was completed by the student. The use of ISO-8601 formats with a timezone designator (UTC or time offset) is recommended in order to prevent ambiguity due to time zones.
final administrationEndDate = 2013-10-20T19:20:30+01:00; // DateTime | The date and time an assessment administration ended.
final assessedMinutes = 56; // int | Reported time student was assessed in minutes.
final eventDescription = eventDescription_example; // String | Describes special events that occur before during or after the assessment session that may impact use of results.
final id = id_example; // String | 
final reportedSchoolIdentifier = reportedSchoolIdentifier_example; // String | A reported school identifier for the school the enrollment at the time of the assessment used when the assigned SchoolId is not known by the assessment vendor.
final serialNumber = serialNumber_example; // String | The unique number for the assessment form or answer document.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentAssessments(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, studentAssessmentIdentifier, assessmentIdentifier, namespace, studentUniqueId, reportedSchoolId, schoolYear, administrationEnvironmentDescriptor, eventCircumstanceDescriptor, whenAssessedGradeLevelDescriptor, administrationLanguageDescriptor, platformTypeDescriptor, reasonNotTestedDescriptor, retestIndicatorDescriptor, administrationDate, administrationEndDate, assessedMinutes, eventDescription, id, reportedSchoolIdentifier, serialNumber, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAssessmentsApi->getStudentAssessments: $e\n');
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
 **studentAssessmentIdentifier** | **String**| A unique number or alphanumeric code assigned to an assessment administered to a student. | [optional] 
 **assessmentIdentifier** | **String**| A unique number or alphanumeric code assigned to an assessment. | [optional] 
 **namespace** | **String**| Namespace for the assessment. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **reportedSchoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **schoolYear** | **int**| The school year for which the assessment was administered to a student. Among other uses, handles cases in which a student takes a prior-year exam in a subsequent school year during an exam re-test. | [optional] 
 **administrationEnvironmentDescriptor** | **String**| The environment in which the test was administered. | [optional] 
 **eventCircumstanceDescriptor** | **String**| An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc. | [optional] 
 **whenAssessedGradeLevelDescriptor** | **String**| The grade level of a student when assessed. | [optional] 
 **administrationLanguageDescriptor** | **String**| The language in which an assessment is written and/or administered. | [optional] 
 **platformTypeDescriptor** | **String**| The platform with which the assessment was delivered to the student during the assessment session. | [optional] 
 **reasonNotTestedDescriptor** | **String**| The primary reason student is not tested. | [optional] 
 **retestIndicatorDescriptor** | **String**| Indicator if the test was a retake. | [optional] 
 **administrationDate** | **DateTime**| The date and time an assessment was completed by the student. The use of ISO-8601 formats with a timezone designator (UTC or time offset) is recommended in order to prevent ambiguity due to time zones. | [optional] 
 **administrationEndDate** | **DateTime**| The date and time an assessment administration ended. | [optional] 
 **assessedMinutes** | **int**| Reported time student was assessed in minutes. | [optional] 
 **eventDescription** | **String**| Describes special events that occur before during or after the assessment session that may impact use of results. | [optional] 
 **id** | **String**|  | [optional] 
 **reportedSchoolIdentifier** | **String**| A reported school identifier for the school the enrollment at the time of the assessment used when the assigned SchoolId is not known by the assessment vendor. | [optional] 
 **serialNumber** | **String**| The unique number for the assessment form or answer document. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStudentAssessment>**](EdFiStudentAssessment.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentAssessmentsById**
> EdFiStudentAssessment getStudentAssessmentsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentAssessmentsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAssessmentsApi->getStudentAssessmentsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStudentAssessment**](EdFiStudentAssessment.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentAssessmentsPartitions**
> GetAcademicWeeksPartitions200Response getStudentAssessmentsPartitions(number, minChangeVersion, maxChangeVersion, studentAssessmentIdentifier, assessmentIdentifier, namespace, studentUniqueId, reportedSchoolId, schoolYear, administrationEnvironmentDescriptor, eventCircumstanceDescriptor, whenAssessedGradeLevelDescriptor, administrationLanguageDescriptor, platformTypeDescriptor, reasonNotTestedDescriptor, retestIndicatorDescriptor, administrationDate, administrationEndDate, assessedMinutes, eventDescription, id, reportedSchoolIdentifier, serialNumber, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final studentAssessmentIdentifier = studentAssessmentIdentifier_example; // String | A unique number or alphanumeric code assigned to an assessment administered to a student.
final assessmentIdentifier = assessmentIdentifier_example; // String | A unique number or alphanumeric code assigned to an assessment.
final namespace = namespace_example; // String | Namespace for the assessment.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final reportedSchoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final schoolYear = 56; // int | The school year for which the assessment was administered to a student. Among other uses, handles cases in which a student takes a prior-year exam in a subsequent school year during an exam re-test.
final administrationEnvironmentDescriptor = administrationEnvironmentDescriptor_example; // String | The environment in which the test was administered.
final eventCircumstanceDescriptor = eventCircumstanceDescriptor_example; // String | An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc.
final whenAssessedGradeLevelDescriptor = whenAssessedGradeLevelDescriptor_example; // String | The grade level of a student when assessed.
final administrationLanguageDescriptor = administrationLanguageDescriptor_example; // String | The language in which an assessment is written and/or administered.
final platformTypeDescriptor = platformTypeDescriptor_example; // String | The platform with which the assessment was delivered to the student during the assessment session.
final reasonNotTestedDescriptor = reasonNotTestedDescriptor_example; // String | The primary reason student is not tested.
final retestIndicatorDescriptor = retestIndicatorDescriptor_example; // String | Indicator if the test was a retake.
final administrationDate = 2013-10-20T19:20:30+01:00; // DateTime | The date and time an assessment was completed by the student. The use of ISO-8601 formats with a timezone designator (UTC or time offset) is recommended in order to prevent ambiguity due to time zones.
final administrationEndDate = 2013-10-20T19:20:30+01:00; // DateTime | The date and time an assessment administration ended.
final assessedMinutes = 56; // int | Reported time student was assessed in minutes.
final eventDescription = eventDescription_example; // String | Describes special events that occur before during or after the assessment session that may impact use of results.
final id = id_example; // String | 
final reportedSchoolIdentifier = reportedSchoolIdentifier_example; // String | A reported school identifier for the school the enrollment at the time of the assessment used when the assigned SchoolId is not known by the assessment vendor.
final serialNumber = serialNumber_example; // String | The unique number for the assessment form or answer document.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentAssessmentsPartitions(number, minChangeVersion, maxChangeVersion, studentAssessmentIdentifier, assessmentIdentifier, namespace, studentUniqueId, reportedSchoolId, schoolYear, administrationEnvironmentDescriptor, eventCircumstanceDescriptor, whenAssessedGradeLevelDescriptor, administrationLanguageDescriptor, platformTypeDescriptor, reasonNotTestedDescriptor, retestIndicatorDescriptor, administrationDate, administrationEndDate, assessedMinutes, eventDescription, id, reportedSchoolIdentifier, serialNumber, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAssessmentsApi->getStudentAssessmentsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **studentAssessmentIdentifier** | **String**| A unique number or alphanumeric code assigned to an assessment administered to a student. | [optional] 
 **assessmentIdentifier** | **String**| A unique number or alphanumeric code assigned to an assessment. | [optional] 
 **namespace** | **String**| Namespace for the assessment. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **reportedSchoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **schoolYear** | **int**| The school year for which the assessment was administered to a student. Among other uses, handles cases in which a student takes a prior-year exam in a subsequent school year during an exam re-test. | [optional] 
 **administrationEnvironmentDescriptor** | **String**| The environment in which the test was administered. | [optional] 
 **eventCircumstanceDescriptor** | **String**| An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc. | [optional] 
 **whenAssessedGradeLevelDescriptor** | **String**| The grade level of a student when assessed. | [optional] 
 **administrationLanguageDescriptor** | **String**| The language in which an assessment is written and/or administered. | [optional] 
 **platformTypeDescriptor** | **String**| The platform with which the assessment was delivered to the student during the assessment session. | [optional] 
 **reasonNotTestedDescriptor** | **String**| The primary reason student is not tested. | [optional] 
 **retestIndicatorDescriptor** | **String**| Indicator if the test was a retake. | [optional] 
 **administrationDate** | **DateTime**| The date and time an assessment was completed by the student. The use of ISO-8601 formats with a timezone designator (UTC or time offset) is recommended in order to prevent ambiguity due to time zones. | [optional] 
 **administrationEndDate** | **DateTime**| The date and time an assessment administration ended. | [optional] 
 **assessedMinutes** | **int**| Reported time student was assessed in minutes. | [optional] 
 **eventDescription** | **String**| Describes special events that occur before during or after the assessment session that may impact use of results. | [optional] 
 **id** | **String**|  | [optional] 
 **reportedSchoolIdentifier** | **String**| A reported school identifier for the school the enrollment at the time of the assessment used when the assigned SchoolId is not known by the assessment vendor. | [optional] 
 **serialNumber** | **String**| The unique number for the assessment form or answer document. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesStudentAssessments**
> List<TrackedChangesEdFiStudentAssessmentKeyChange> keyChangesStudentAssessments(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStudentAssessments(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAssessmentsApi->keyChangesStudentAssessments: $e\n');
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

[**List<TrackedChangesEdFiStudentAssessmentKeyChange>**](TrackedChangesEdFiStudentAssessmentKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStudentAssessment**
> postStudentAssessment(edFiStudentAssessment)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentsApi();
final edFiStudentAssessment = EdFiStudentAssessment(); // EdFiStudentAssessment | The JSON representation of the \"studentAssessment\" resource to be created or updated.

try {
    api_instance.postStudentAssessment(edFiStudentAssessment);
} catch (e) {
    print('Exception when calling StudentAssessmentsApi->postStudentAssessment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStudentAssessment** | [**EdFiStudentAssessment**](EdFiStudentAssessment.md)| The JSON representation of the \"studentAssessment\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStudentAssessment**
> putStudentAssessment(id, edFiStudentAssessment, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStudentAssessment = EdFiStudentAssessment(); // EdFiStudentAssessment | The JSON representation of the \"studentAssessment\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStudentAssessment(id, edFiStudentAssessment, ifMatch);
} catch (e) {
    print('Exception when calling StudentAssessmentsApi->putStudentAssessment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStudentAssessment** | [**EdFiStudentAssessment**](EdFiStudentAssessment.md)| The JSON representation of the \"studentAssessment\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

