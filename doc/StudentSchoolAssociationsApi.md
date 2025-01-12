# edfi_resources_sdk.api.StudentSchoolAssociationsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStudentSchoolAssociationById**](StudentSchoolAssociationsApi.md#deletestudentschoolassociationbyid) | **DELETE** /ed-fi/studentSchoolAssociations/{id} | Deletes an existing resource using the resource identifier.
[**deletesStudentSchoolAssociations**](StudentSchoolAssociationsApi.md#deletesstudentschoolassociations) | **GET** /ed-fi/studentSchoolAssociations/deletes | Retrieves deleted resources based on change version.
[**getStudentSchoolAssociations**](StudentSchoolAssociationsApi.md#getstudentschoolassociations) | **GET** /ed-fi/studentSchoolAssociations | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStudentSchoolAssociationsById**](StudentSchoolAssociationsApi.md#getstudentschoolassociationsbyid) | **GET** /ed-fi/studentSchoolAssociations/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStudentSchoolAssociationsPartitions**](StudentSchoolAssociationsApi.md#getstudentschoolassociationspartitions) | **GET** /ed-fi/studentSchoolAssociations/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStudentSchoolAssociations**](StudentSchoolAssociationsApi.md#keychangesstudentschoolassociations) | **GET** /ed-fi/studentSchoolAssociations/keyChanges | Retrieves resources key changes based on change version.
[**postStudentSchoolAssociation**](StudentSchoolAssociationsApi.md#poststudentschoolassociation) | **POST** /ed-fi/studentSchoolAssociations | Creates or updates resources based on the natural key values of the supplied resource.
[**putStudentSchoolAssociation**](StudentSchoolAssociationsApi.md#putstudentschoolassociation) | **PUT** /ed-fi/studentSchoolAssociations/{id} | Updates a resource based on the resource identifier.


# **deleteStudentSchoolAssociationById**
> deleteStudentSchoolAssociationById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSchoolAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStudentSchoolAssociationById(id, ifMatch);
} catch (e) {
    print('Exception when calling StudentSchoolAssociationsApi->deleteStudentSchoolAssociationById: $e\n');
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

# **deletesStudentSchoolAssociations**
> List<TrackedChangesEdFiStudentSchoolAssociationDelete> deletesStudentSchoolAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSchoolAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStudentSchoolAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSchoolAssociationsApi->deletesStudentSchoolAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentSchoolAssociationDelete>**](TrackedChangesEdFiStudentSchoolAssociationDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentSchoolAssociations**
> List<EdFiStudentSchoolAssociation> getStudentSchoolAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, entryDate, schoolId, studentUniqueId, calendarCode, schoolYear, educationOrganizationId, graduationPlanTypeDescriptor, graduationSchoolYear, nextYearSchoolId, classOfSchoolYear, enrollmentTypeDescriptor, entryGradeLevelReasonDescriptor, entryTypeDescriptor, exitWithdrawTypeDescriptor, entryGradeLevelDescriptor, nextYearGradeLevelDescriptor, residencyStatusDescriptor, schoolChoiceBasisDescriptor, employedWhileEnrolled, exitWithdrawDate, fullTimeEquivalency, id, primarySchool, repeatGradeIndicator, schoolChoice, schoolChoiceTransfer, termCompletionIndicator, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSchoolAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final entryDate = 2013-10-20; // DateTime | The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student's enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final schoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final calendarCode = calendarCode_example; // String | The identifier for the calendar.
final schoolYear = 56; // int | The school year associated with the student's enrollment.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final graduationPlanTypeDescriptor = graduationPlanTypeDescriptor_example; // String | The type of academic plan the student is following for graduation.
final graduationSchoolYear = 56; // int | The school year the student is expected to graduate.
final nextYearSchoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final classOfSchoolYear = 56; // int | Projected high school graduation year.
final enrollmentTypeDescriptor = enrollmentTypeDescriptor_example; // String | The type of enrollment reflected by the StudentSchoolAssociation.
final entryGradeLevelReasonDescriptor = entryGradeLevelReasonDescriptor_example; // String | The primary reason as to why a staff member determined that a student should be promoted or not (or be demoted) at the end of a given school term.
final entryTypeDescriptor = entryTypeDescriptor_example; // String | The process by which a student enters a school during a given academic session.
final exitWithdrawTypeDescriptor = exitWithdrawTypeDescriptor_example; // String | The circumstances under which the student exited from membership in an educational institution.
final entryGradeLevelDescriptor = entryGradeLevelDescriptor_example; // String | The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session.
final nextYearGradeLevelDescriptor = nextYearGradeLevelDescriptor_example; // String | The anticipated grade level for the student for the next school year.
final residencyStatusDescriptor = residencyStatusDescriptor_example; // String | An indication of the location of a persons legal residence relative to (within or outside of) the boundaries of the public school attended and its administrative unit.
final schoolChoiceBasisDescriptor = schoolChoiceBasisDescriptor_example; // String | The legal basis for the school choice enrollment according to local, state or federal policy or regulation. (The descriptor provides the list of available bases specific to the state
final employedWhileEnrolled = true; // bool | An individual who is a paid employee or works in his or her own business, profession, or farm and at the same time is enrolled in secondary, postsecondary, or adult education.
final exitWithdrawDate = 2013-10-20; // DateTime | The recorded exit or withdraw date for the student.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final fullTimeEquivalency = 1.2; // double | The full-time equivalent ratio for the student s assignment to a school for services or instruction. For example, a full-time student would have an FTE value of 1 while a half-time student would have an FTE value of 0.5.
final id = id_example; // String | 
final primarySchool = true; // bool | Indicates if a given enrollment record should be considered the primary record for a student.
final repeatGradeIndicator = true; // bool | An indicator of whether the student is enrolling to repeat a grade level, either by failure or an agreement to hold the student back.
final schoolChoice = true; // bool | An indication of whether the student enrolled in this school under the provisions for public school choice
final schoolChoiceTransfer = true; // bool | An indication of whether students transferred in or out of the school did so during the school year under the provisions for public school choice in accordance with Title I, Part A, Section 1116.
final termCompletionIndicator = true; // bool | Idicates whether or not a student completed the most recent school term.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentSchoolAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, entryDate, schoolId, studentUniqueId, calendarCode, schoolYear, educationOrganizationId, graduationPlanTypeDescriptor, graduationSchoolYear, nextYearSchoolId, classOfSchoolYear, enrollmentTypeDescriptor, entryGradeLevelReasonDescriptor, entryTypeDescriptor, exitWithdrawTypeDescriptor, entryGradeLevelDescriptor, nextYearGradeLevelDescriptor, residencyStatusDescriptor, schoolChoiceBasisDescriptor, employedWhileEnrolled, exitWithdrawDate, fullTimeEquivalency, id, primarySchool, repeatGradeIndicator, schoolChoice, schoolChoiceTransfer, termCompletionIndicator, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSchoolAssociationsApi->getStudentSchoolAssociations: $e\n');
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
 **entryDate** | **DateTime**| The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student's enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **schoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **calendarCode** | **String**| The identifier for the calendar. | [optional] 
 **schoolYear** | **int**| The school year associated with the student's enrollment. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **graduationPlanTypeDescriptor** | **String**| The type of academic plan the student is following for graduation. | [optional] 
 **graduationSchoolYear** | **int**| The school year the student is expected to graduate. | [optional] 
 **nextYearSchoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **classOfSchoolYear** | **int**| Projected high school graduation year. | [optional] 
 **enrollmentTypeDescriptor** | **String**| The type of enrollment reflected by the StudentSchoolAssociation. | [optional] 
 **entryGradeLevelReasonDescriptor** | **String**| The primary reason as to why a staff member determined that a student should be promoted or not (or be demoted) at the end of a given school term. | [optional] 
 **entryTypeDescriptor** | **String**| The process by which a student enters a school during a given academic session. | [optional] 
 **exitWithdrawTypeDescriptor** | **String**| The circumstances under which the student exited from membership in an educational institution. | [optional] 
 **entryGradeLevelDescriptor** | **String**| The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session. | [optional] 
 **nextYearGradeLevelDescriptor** | **String**| The anticipated grade level for the student for the next school year. | [optional] 
 **residencyStatusDescriptor** | **String**| An indication of the location of a persons legal residence relative to (within or outside of) the boundaries of the public school attended and its administrative unit. | [optional] 
 **schoolChoiceBasisDescriptor** | **String**| The legal basis for the school choice enrollment according to local, state or federal policy or regulation. (The descriptor provides the list of available bases specific to the state | [optional] 
 **employedWhileEnrolled** | **bool**| An individual who is a paid employee or works in his or her own business, profession, or farm and at the same time is enrolled in secondary, postsecondary, or adult education. | [optional] 
 **exitWithdrawDate** | **DateTime**| The recorded exit or withdraw date for the student.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **fullTimeEquivalency** | **double**| The full-time equivalent ratio for the student s assignment to a school for services or instruction. For example, a full-time student would have an FTE value of 1 while a half-time student would have an FTE value of 0.5. | [optional] 
 **id** | **String**|  | [optional] 
 **primarySchool** | **bool**| Indicates if a given enrollment record should be considered the primary record for a student. | [optional] 
 **repeatGradeIndicator** | **bool**| An indicator of whether the student is enrolling to repeat a grade level, either by failure or an agreement to hold the student back. | [optional] 
 **schoolChoice** | **bool**| An indication of whether the student enrolled in this school under the provisions for public school choice | [optional] 
 **schoolChoiceTransfer** | **bool**| An indication of whether students transferred in or out of the school did so during the school year under the provisions for public school choice in accordance with Title I, Part A, Section 1116. | [optional] 
 **termCompletionIndicator** | **bool**| Idicates whether or not a student completed the most recent school term. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStudentSchoolAssociation>**](EdFiStudentSchoolAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentSchoolAssociationsById**
> EdFiStudentSchoolAssociation getStudentSchoolAssociationsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSchoolAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentSchoolAssociationsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSchoolAssociationsApi->getStudentSchoolAssociationsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStudentSchoolAssociation**](EdFiStudentSchoolAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentSchoolAssociationsPartitions**
> GetAcademicWeeksPartitions200Response getStudentSchoolAssociationsPartitions(number, minChangeVersion, maxChangeVersion, entryDate, schoolId, studentUniqueId, calendarCode, schoolYear, educationOrganizationId, graduationPlanTypeDescriptor, graduationSchoolYear, nextYearSchoolId, classOfSchoolYear, enrollmentTypeDescriptor, entryGradeLevelReasonDescriptor, entryTypeDescriptor, exitWithdrawTypeDescriptor, entryGradeLevelDescriptor, nextYearGradeLevelDescriptor, residencyStatusDescriptor, schoolChoiceBasisDescriptor, employedWhileEnrolled, exitWithdrawDate, fullTimeEquivalency, id, primarySchool, repeatGradeIndicator, schoolChoice, schoolChoiceTransfer, termCompletionIndicator, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSchoolAssociationsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final entryDate = 2013-10-20; // DateTime | The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student's enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final schoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final calendarCode = calendarCode_example; // String | The identifier for the calendar.
final schoolYear = 56; // int | The school year associated with the student's enrollment.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final graduationPlanTypeDescriptor = graduationPlanTypeDescriptor_example; // String | The type of academic plan the student is following for graduation.
final graduationSchoolYear = 56; // int | The school year the student is expected to graduate.
final nextYearSchoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final classOfSchoolYear = 56; // int | Projected high school graduation year.
final enrollmentTypeDescriptor = enrollmentTypeDescriptor_example; // String | The type of enrollment reflected by the StudentSchoolAssociation.
final entryGradeLevelReasonDescriptor = entryGradeLevelReasonDescriptor_example; // String | The primary reason as to why a staff member determined that a student should be promoted or not (or be demoted) at the end of a given school term.
final entryTypeDescriptor = entryTypeDescriptor_example; // String | The process by which a student enters a school during a given academic session.
final exitWithdrawTypeDescriptor = exitWithdrawTypeDescriptor_example; // String | The circumstances under which the student exited from membership in an educational institution.
final entryGradeLevelDescriptor = entryGradeLevelDescriptor_example; // String | The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session.
final nextYearGradeLevelDescriptor = nextYearGradeLevelDescriptor_example; // String | The anticipated grade level for the student for the next school year.
final residencyStatusDescriptor = residencyStatusDescriptor_example; // String | An indication of the location of a persons legal residence relative to (within or outside of) the boundaries of the public school attended and its administrative unit.
final schoolChoiceBasisDescriptor = schoolChoiceBasisDescriptor_example; // String | The legal basis for the school choice enrollment according to local, state or federal policy or regulation. (The descriptor provides the list of available bases specific to the state
final employedWhileEnrolled = true; // bool | An individual who is a paid employee or works in his or her own business, profession, or farm and at the same time is enrolled in secondary, postsecondary, or adult education.
final exitWithdrawDate = 2013-10-20; // DateTime | The recorded exit or withdraw date for the student.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final fullTimeEquivalency = 1.2; // double | The full-time equivalent ratio for the student s assignment to a school for services or instruction. For example, a full-time student would have an FTE value of 1 while a half-time student would have an FTE value of 0.5.
final id = id_example; // String | 
final primarySchool = true; // bool | Indicates if a given enrollment record should be considered the primary record for a student.
final repeatGradeIndicator = true; // bool | An indicator of whether the student is enrolling to repeat a grade level, either by failure or an agreement to hold the student back.
final schoolChoice = true; // bool | An indication of whether the student enrolled in this school under the provisions for public school choice
final schoolChoiceTransfer = true; // bool | An indication of whether students transferred in or out of the school did so during the school year under the provisions for public school choice in accordance with Title I, Part A, Section 1116.
final termCompletionIndicator = true; // bool | Idicates whether or not a student completed the most recent school term.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentSchoolAssociationsPartitions(number, minChangeVersion, maxChangeVersion, entryDate, schoolId, studentUniqueId, calendarCode, schoolYear, educationOrganizationId, graduationPlanTypeDescriptor, graduationSchoolYear, nextYearSchoolId, classOfSchoolYear, enrollmentTypeDescriptor, entryGradeLevelReasonDescriptor, entryTypeDescriptor, exitWithdrawTypeDescriptor, entryGradeLevelDescriptor, nextYearGradeLevelDescriptor, residencyStatusDescriptor, schoolChoiceBasisDescriptor, employedWhileEnrolled, exitWithdrawDate, fullTimeEquivalency, id, primarySchool, repeatGradeIndicator, schoolChoice, schoolChoiceTransfer, termCompletionIndicator, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSchoolAssociationsApi->getStudentSchoolAssociationsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **entryDate** | **DateTime**| The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student's enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **schoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **calendarCode** | **String**| The identifier for the calendar. | [optional] 
 **schoolYear** | **int**| The school year associated with the student's enrollment. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **graduationPlanTypeDescriptor** | **String**| The type of academic plan the student is following for graduation. | [optional] 
 **graduationSchoolYear** | **int**| The school year the student is expected to graduate. | [optional] 
 **nextYearSchoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **classOfSchoolYear** | **int**| Projected high school graduation year. | [optional] 
 **enrollmentTypeDescriptor** | **String**| The type of enrollment reflected by the StudentSchoolAssociation. | [optional] 
 **entryGradeLevelReasonDescriptor** | **String**| The primary reason as to why a staff member determined that a student should be promoted or not (or be demoted) at the end of a given school term. | [optional] 
 **entryTypeDescriptor** | **String**| The process by which a student enters a school during a given academic session. | [optional] 
 **exitWithdrawTypeDescriptor** | **String**| The circumstances under which the student exited from membership in an educational institution. | [optional] 
 **entryGradeLevelDescriptor** | **String**| The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session. | [optional] 
 **nextYearGradeLevelDescriptor** | **String**| The anticipated grade level for the student for the next school year. | [optional] 
 **residencyStatusDescriptor** | **String**| An indication of the location of a persons legal residence relative to (within or outside of) the boundaries of the public school attended and its administrative unit. | [optional] 
 **schoolChoiceBasisDescriptor** | **String**| The legal basis for the school choice enrollment according to local, state or federal policy or regulation. (The descriptor provides the list of available bases specific to the state | [optional] 
 **employedWhileEnrolled** | **bool**| An individual who is a paid employee or works in his or her own business, profession, or farm and at the same time is enrolled in secondary, postsecondary, or adult education. | [optional] 
 **exitWithdrawDate** | **DateTime**| The recorded exit or withdraw date for the student.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **fullTimeEquivalency** | **double**| The full-time equivalent ratio for the student s assignment to a school for services or instruction. For example, a full-time student would have an FTE value of 1 while a half-time student would have an FTE value of 0.5. | [optional] 
 **id** | **String**|  | [optional] 
 **primarySchool** | **bool**| Indicates if a given enrollment record should be considered the primary record for a student. | [optional] 
 **repeatGradeIndicator** | **bool**| An indicator of whether the student is enrolling to repeat a grade level, either by failure or an agreement to hold the student back. | [optional] 
 **schoolChoice** | **bool**| An indication of whether the student enrolled in this school under the provisions for public school choice | [optional] 
 **schoolChoiceTransfer** | **bool**| An indication of whether students transferred in or out of the school did so during the school year under the provisions for public school choice in accordance with Title I, Part A, Section 1116. | [optional] 
 **termCompletionIndicator** | **bool**| Idicates whether or not a student completed the most recent school term. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesStudentSchoolAssociations**
> List<TrackedChangesEdFiStudentSchoolAssociationKeyChange> keyChangesStudentSchoolAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSchoolAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStudentSchoolAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSchoolAssociationsApi->keyChangesStudentSchoolAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentSchoolAssociationKeyChange>**](TrackedChangesEdFiStudentSchoolAssociationKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStudentSchoolAssociation**
> postStudentSchoolAssociation(edFiStudentSchoolAssociation)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSchoolAssociationsApi();
final edFiStudentSchoolAssociation = EdFiStudentSchoolAssociation(); // EdFiStudentSchoolAssociation | The JSON representation of the \"studentSchoolAssociation\" resource to be created or updated.

try {
    api_instance.postStudentSchoolAssociation(edFiStudentSchoolAssociation);
} catch (e) {
    print('Exception when calling StudentSchoolAssociationsApi->postStudentSchoolAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStudentSchoolAssociation** | [**EdFiStudentSchoolAssociation**](EdFiStudentSchoolAssociation.md)| The JSON representation of the \"studentSchoolAssociation\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStudentSchoolAssociation**
> putStudentSchoolAssociation(id, edFiStudentSchoolAssociation, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, if natural key values are being updated by the JSON body, those changes will be applied to the resource and will also cascade through to dependent resources.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSchoolAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStudentSchoolAssociation = EdFiStudentSchoolAssociation(); // EdFiStudentSchoolAssociation | The JSON representation of the \"studentSchoolAssociation\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStudentSchoolAssociation(id, edFiStudentSchoolAssociation, ifMatch);
} catch (e) {
    print('Exception when calling StudentSchoolAssociationsApi->putStudentSchoolAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStudentSchoolAssociation** | [**EdFiStudentSchoolAssociation**](EdFiStudentSchoolAssociation.md)| The JSON representation of the \"studentSchoolAssociation\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

