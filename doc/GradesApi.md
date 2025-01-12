# edfi_resources_sdk.api.GradesApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteGradeById**](GradesApi.md#deletegradebyid) | **DELETE** /ed-fi/grades/{id} | Deletes an existing resource using the resource identifier.
[**deletesGrades**](GradesApi.md#deletesgrades) | **GET** /ed-fi/grades/deletes | Retrieves deleted resources based on change version.
[**getGrades**](GradesApi.md#getgrades) | **GET** /ed-fi/grades | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getGradesById**](GradesApi.md#getgradesbyid) | **GET** /ed-fi/grades/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getGradesPartitions**](GradesApi.md#getgradespartitions) | **GET** /ed-fi/grades/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesGrades**](GradesApi.md#keychangesgrades) | **GET** /ed-fi/grades/keyChanges | Retrieves resources key changes based on change version.
[**postGrade**](GradesApi.md#postgrade) | **POST** /ed-fi/grades | Creates or updates resources based on the natural key values of the supplied resource.
[**putGrade**](GradesApi.md#putgrade) | **PUT** /ed-fi/grades/{id} | Updates a resource based on the resource identifier.


# **deleteGradeById**
> deleteGradeById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GradesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteGradeById(id, ifMatch);
} catch (e) {
    print('Exception when calling GradesApi->deleteGradeById: $e\n');
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

# **deletesGrades**
> List<TrackedChangesEdFiGradeDelete> deletesGrades(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GradesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesGrades(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling GradesApi->deletesGrades: $e\n');
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

[**List<TrackedChangesEdFiGradeDelete>**](TrackedChangesEdFiGradeDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGrades**
> List<EdFiGrade> getGrades(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, gradeTypeDescriptor, gradingPeriodDescriptor, gradingPeriodName, schoolId, gradingPeriodSchoolYear, beginDate, localCourseCode, schoolYear, sectionIdentifier, sessionName, studentUniqueId, performanceBaseConversionDescriptor, currentGradeAsOfDate, currentGradeIndicator, diagnosticStatement, gradeEarnedDescription, id, letterGradeEarned, numericGradeEarned, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GradesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final gradeTypeDescriptor = gradeTypeDescriptor_example; // String | The type of grade reported (e.g., exam, final, grading period).
final gradingPeriodDescriptor = gradingPeriodDescriptor_example; // String | The state's name of the period for which grades are reported.
final gradingPeriodName = gradingPeriodName_example; // String | The school's descriptive name of the grading period.
final schoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final gradingPeriodSchoolYear = 56; // int | The identifier for the grading period school year.
final beginDate = 2013-10-20; // DateTime | Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final localCourseCode = localCourseCode_example; // String | The local code assigned by the School that identifies the course offering provided for the instruction of students.
final schoolYear = 56; // int | The identifier for the school year.
final sectionIdentifier = sectionIdentifier_example; // String | The local identifier assigned to a section.
final sessionName = sessionName_example; // String | The identifier for the calendar for the academic session.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final performanceBaseConversionDescriptor = performanceBaseConversionDescriptor_example; // String | A conversion of the level to a standard set of performance levels.
final currentGradeAsOfDate = 2013-10-20; // DateTime | As-Of date for a grade posted as the current grade.
final currentGradeIndicator = true; // bool | An indicator that the posted grade is an interim grade for the grading period and not the final grade.
final diagnosticStatement = diagnosticStatement_example; // String | A statement provided by the teacher that provides information in addition to the grade or assessment score.
final gradeEarnedDescription = gradeEarnedDescription_example; // String | A description of the grade earned by the learner.
final id = id_example; // String | 
final letterGradeEarned = letterGradeEarned_example; // String | A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
final numericGradeEarned = 1.2; // double | A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getGrades(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, gradeTypeDescriptor, gradingPeriodDescriptor, gradingPeriodName, schoolId, gradingPeriodSchoolYear, beginDate, localCourseCode, schoolYear, sectionIdentifier, sessionName, studentUniqueId, performanceBaseConversionDescriptor, currentGradeAsOfDate, currentGradeIndicator, diagnosticStatement, gradeEarnedDescription, id, letterGradeEarned, numericGradeEarned, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling GradesApi->getGrades: $e\n');
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
 **gradeTypeDescriptor** | **String**| The type of grade reported (e.g., exam, final, grading period). | [optional] 
 **gradingPeriodDescriptor** | **String**| The state's name of the period for which grades are reported. | [optional] 
 **gradingPeriodName** | **String**| The school's descriptive name of the grading period. | [optional] 
 **schoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **gradingPeriodSchoolYear** | **int**| The identifier for the grading period school year. | [optional] 
 **beginDate** | **DateTime**| Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **localCourseCode** | **String**| The local code assigned by the School that identifies the course offering provided for the instruction of students. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **sectionIdentifier** | **String**| The local identifier assigned to a section. | [optional] 
 **sessionName** | **String**| The identifier for the calendar for the academic session. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **performanceBaseConversionDescriptor** | **String**| A conversion of the level to a standard set of performance levels. | [optional] 
 **currentGradeAsOfDate** | **DateTime**| As-Of date for a grade posted as the current grade. | [optional] 
 **currentGradeIndicator** | **bool**| An indicator that the posted grade is an interim grade for the grading period and not the final grade. | [optional] 
 **diagnosticStatement** | **String**| A statement provided by the teacher that provides information in addition to the grade or assessment score. | [optional] 
 **gradeEarnedDescription** | **String**| A description of the grade earned by the learner. | [optional] 
 **id** | **String**|  | [optional] 
 **letterGradeEarned** | **String**| A final or interim (grading period) indicator of student performance in a class as submitted by the instructor. | [optional] 
 **numericGradeEarned** | **double**| A final or interim (grading period) indicator of student performance in a class as submitted by the instructor. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiGrade>**](EdFiGrade.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGradesById**
> EdFiGrade getGradesById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GradesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getGradesById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling GradesApi->getGradesById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiGrade**](EdFiGrade.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGradesPartitions**
> GetAcademicWeeksPartitions200Response getGradesPartitions(number, minChangeVersion, maxChangeVersion, gradeTypeDescriptor, gradingPeriodDescriptor, gradingPeriodName, schoolId, gradingPeriodSchoolYear, beginDate, localCourseCode, schoolYear, sectionIdentifier, sessionName, studentUniqueId, performanceBaseConversionDescriptor, currentGradeAsOfDate, currentGradeIndicator, diagnosticStatement, gradeEarnedDescription, id, letterGradeEarned, numericGradeEarned, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GradesApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final gradeTypeDescriptor = gradeTypeDescriptor_example; // String | The type of grade reported (e.g., exam, final, grading period).
final gradingPeriodDescriptor = gradingPeriodDescriptor_example; // String | The state's name of the period for which grades are reported.
final gradingPeriodName = gradingPeriodName_example; // String | The school's descriptive name of the grading period.
final schoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final gradingPeriodSchoolYear = 56; // int | The identifier for the grading period school year.
final beginDate = 2013-10-20; // DateTime | Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final localCourseCode = localCourseCode_example; // String | The local code assigned by the School that identifies the course offering provided for the instruction of students.
final schoolYear = 56; // int | The identifier for the school year.
final sectionIdentifier = sectionIdentifier_example; // String | The local identifier assigned to a section.
final sessionName = sessionName_example; // String | The identifier for the calendar for the academic session.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final performanceBaseConversionDescriptor = performanceBaseConversionDescriptor_example; // String | A conversion of the level to a standard set of performance levels.
final currentGradeAsOfDate = 2013-10-20; // DateTime | As-Of date for a grade posted as the current grade.
final currentGradeIndicator = true; // bool | An indicator that the posted grade is an interim grade for the grading period and not the final grade.
final diagnosticStatement = diagnosticStatement_example; // String | A statement provided by the teacher that provides information in addition to the grade or assessment score.
final gradeEarnedDescription = gradeEarnedDescription_example; // String | A description of the grade earned by the learner.
final id = id_example; // String | 
final letterGradeEarned = letterGradeEarned_example; // String | A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
final numericGradeEarned = 1.2; // double | A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getGradesPartitions(number, minChangeVersion, maxChangeVersion, gradeTypeDescriptor, gradingPeriodDescriptor, gradingPeriodName, schoolId, gradingPeriodSchoolYear, beginDate, localCourseCode, schoolYear, sectionIdentifier, sessionName, studentUniqueId, performanceBaseConversionDescriptor, currentGradeAsOfDate, currentGradeIndicator, diagnosticStatement, gradeEarnedDescription, id, letterGradeEarned, numericGradeEarned, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling GradesApi->getGradesPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **gradeTypeDescriptor** | **String**| The type of grade reported (e.g., exam, final, grading period). | [optional] 
 **gradingPeriodDescriptor** | **String**| The state's name of the period for which grades are reported. | [optional] 
 **gradingPeriodName** | **String**| The school's descriptive name of the grading period. | [optional] 
 **schoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **gradingPeriodSchoolYear** | **int**| The identifier for the grading period school year. | [optional] 
 **beginDate** | **DateTime**| Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **localCourseCode** | **String**| The local code assigned by the School that identifies the course offering provided for the instruction of students. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **sectionIdentifier** | **String**| The local identifier assigned to a section. | [optional] 
 **sessionName** | **String**| The identifier for the calendar for the academic session. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **performanceBaseConversionDescriptor** | **String**| A conversion of the level to a standard set of performance levels. | [optional] 
 **currentGradeAsOfDate** | **DateTime**| As-Of date for a grade posted as the current grade. | [optional] 
 **currentGradeIndicator** | **bool**| An indicator that the posted grade is an interim grade for the grading period and not the final grade. | [optional] 
 **diagnosticStatement** | **String**| A statement provided by the teacher that provides information in addition to the grade or assessment score. | [optional] 
 **gradeEarnedDescription** | **String**| A description of the grade earned by the learner. | [optional] 
 **id** | **String**|  | [optional] 
 **letterGradeEarned** | **String**| A final or interim (grading period) indicator of student performance in a class as submitted by the instructor. | [optional] 
 **numericGradeEarned** | **double**| A final or interim (grading period) indicator of student performance in a class as submitted by the instructor. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesGrades**
> List<TrackedChangesEdFiGradeKeyChange> keyChangesGrades(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GradesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesGrades(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling GradesApi->keyChangesGrades: $e\n');
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

[**List<TrackedChangesEdFiGradeKeyChange>**](TrackedChangesEdFiGradeKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postGrade**
> postGrade(edFiGrade)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GradesApi();
final edFiGrade = EdFiGrade(); // EdFiGrade | The JSON representation of the \"grade\" resource to be created or updated.

try {
    api_instance.postGrade(edFiGrade);
} catch (e) {
    print('Exception when calling GradesApi->postGrade: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiGrade** | [**EdFiGrade**](EdFiGrade.md)| The JSON representation of the \"grade\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putGrade**
> putGrade(id, edFiGrade, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, if natural key values are being updated by the JSON body, those changes will be applied to the resource and will also cascade through to dependent resources.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = GradesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiGrade = EdFiGrade(); // EdFiGrade | The JSON representation of the \"grade\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putGrade(id, edFiGrade, ifMatch);
} catch (e) {
    print('Exception when calling GradesApi->putGrade: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiGrade** | [**EdFiGrade**](EdFiGrade.md)| The JSON representation of the \"grade\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

