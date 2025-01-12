# edfi_resources_sdk.api.StudentSectionAssociationsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStudentSectionAssociationById**](StudentSectionAssociationsApi.md#deletestudentsectionassociationbyid) | **DELETE** /ed-fi/studentSectionAssociations/{id} | Deletes an existing resource using the resource identifier.
[**deletesStudentSectionAssociations**](StudentSectionAssociationsApi.md#deletesstudentsectionassociations) | **GET** /ed-fi/studentSectionAssociations/deletes | Retrieves deleted resources based on change version.
[**getStudentSectionAssociations**](StudentSectionAssociationsApi.md#getstudentsectionassociations) | **GET** /ed-fi/studentSectionAssociations | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStudentSectionAssociationsById**](StudentSectionAssociationsApi.md#getstudentsectionassociationsbyid) | **GET** /ed-fi/studentSectionAssociations/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStudentSectionAssociationsPartitions**](StudentSectionAssociationsApi.md#getstudentsectionassociationspartitions) | **GET** /ed-fi/studentSectionAssociations/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStudentSectionAssociations**](StudentSectionAssociationsApi.md#keychangesstudentsectionassociations) | **GET** /ed-fi/studentSectionAssociations/keyChanges | Retrieves resources key changes based on change version.
[**postStudentSectionAssociation**](StudentSectionAssociationsApi.md#poststudentsectionassociation) | **POST** /ed-fi/studentSectionAssociations | Creates or updates resources based on the natural key values of the supplied resource.
[**putStudentSectionAssociation**](StudentSectionAssociationsApi.md#putstudentsectionassociation) | **PUT** /ed-fi/studentSectionAssociations/{id} | Updates a resource based on the resource identifier.


# **deleteStudentSectionAssociationById**
> deleteStudentSectionAssociationById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSectionAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStudentSectionAssociationById(id, ifMatch);
} catch (e) {
    print('Exception when calling StudentSectionAssociationsApi->deleteStudentSectionAssociationById: $e\n');
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

# **deletesStudentSectionAssociations**
> List<TrackedChangesEdFiStudentSectionAssociationDelete> deletesStudentSectionAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSectionAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStudentSectionAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSectionAssociationsApi->deletesStudentSectionAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentSectionAssociationDelete>**](TrackedChangesEdFiStudentSectionAssociationDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentSectionAssociations**
> List<EdFiStudentSectionAssociation> getStudentSectionAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, beginDate, localCourseCode, schoolId, schoolYear, sectionIdentifier, sessionName, studentUniqueId, dualCreditEducationOrganizationId, attemptStatusDescriptor, dualCreditInstitutionDescriptor, dualCreditTypeDescriptor, repeatIdentifierDescriptor, dualCreditIndicator, dualHighSchoolCreditIndicator, endDate, homeroomIndicator, id, teacherStudentDataLinkExclusion, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSectionAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final beginDate = 2013-10-20; // DateTime | Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final localCourseCode = localCourseCode_example; // String | The local code assigned by the School that identifies the course offering provided for the instruction of students.
final schoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final schoolYear = 56; // int | The identifier for the school year.
final sectionIdentifier = sectionIdentifier_example; // String | The local identifier assigned to a section.
final sessionName = sessionName_example; // String | The identifier for the calendar for the academic session.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final dualCreditEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final attemptStatusDescriptor = attemptStatusDescriptor_example; // String | An indication of the student's completion status for the section.
final dualCreditInstitutionDescriptor = dualCreditInstitutionDescriptor_example; // String | Descriptor for the postsecondary institution offering college credit. This descriptor may be used to select a postsecondary institution that is not defined as an education organization, and/or select a general type of postsecondary institution.
final dualCreditTypeDescriptor = dualCreditTypeDescriptor_example; // String | For a student taking a dual credit course in a college or high school setting, indicates the type of dual credit program.
final repeatIdentifierDescriptor = repeatIdentifierDescriptor_example; // String | An indication as to whether a student has previously taken a given course.
final dualCreditIndicator = true; // bool | Indicates whether the student assigned to the section is to receive dual credit upon successful completion.
final dualHighSchoolCreditIndicator = true; // bool | Indicates whether successful completion of the course will result in credits toward high school graduation.
final endDate = 2013-10-20; // DateTime | Month, day, and year of the withdrawal or exit of the student from the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final homeroomIndicator = true; // bool | Indicates the section is the student's homeroom. Homeroom period may the convention for taking daily attendance.
final id = id_example; // String | 
final teacherStudentDataLinkExclusion = true; // bool | Indicates that the student-section combination is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentSectionAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, beginDate, localCourseCode, schoolId, schoolYear, sectionIdentifier, sessionName, studentUniqueId, dualCreditEducationOrganizationId, attemptStatusDescriptor, dualCreditInstitutionDescriptor, dualCreditTypeDescriptor, repeatIdentifierDescriptor, dualCreditIndicator, dualHighSchoolCreditIndicator, endDate, homeroomIndicator, id, teacherStudentDataLinkExclusion, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSectionAssociationsApi->getStudentSectionAssociations: $e\n');
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
 **beginDate** | **DateTime**| Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **localCourseCode** | **String**| The local code assigned by the School that identifies the course offering provided for the instruction of students. | [optional] 
 **schoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **sectionIdentifier** | **String**| The local identifier assigned to a section. | [optional] 
 **sessionName** | **String**| The identifier for the calendar for the academic session. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **dualCreditEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **attemptStatusDescriptor** | **String**| An indication of the student's completion status for the section. | [optional] 
 **dualCreditInstitutionDescriptor** | **String**| Descriptor for the postsecondary institution offering college credit. This descriptor may be used to select a postsecondary institution that is not defined as an education organization, and/or select a general type of postsecondary institution. | [optional] 
 **dualCreditTypeDescriptor** | **String**| For a student taking a dual credit course in a college or high school setting, indicates the type of dual credit program. | [optional] 
 **repeatIdentifierDescriptor** | **String**| An indication as to whether a student has previously taken a given course. | [optional] 
 **dualCreditIndicator** | **bool**| Indicates whether the student assigned to the section is to receive dual credit upon successful completion. | [optional] 
 **dualHighSchoolCreditIndicator** | **bool**| Indicates whether successful completion of the course will result in credits toward high school graduation. | [optional] 
 **endDate** | **DateTime**| Month, day, and year of the withdrawal or exit of the student from the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **homeroomIndicator** | **bool**| Indicates the section is the student's homeroom. Homeroom period may the convention for taking daily attendance. | [optional] 
 **id** | **String**|  | [optional] 
 **teacherStudentDataLinkExclusion** | **bool**| Indicates that the student-section combination is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStudentSectionAssociation>**](EdFiStudentSectionAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentSectionAssociationsById**
> EdFiStudentSectionAssociation getStudentSectionAssociationsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSectionAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentSectionAssociationsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSectionAssociationsApi->getStudentSectionAssociationsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStudentSectionAssociation**](EdFiStudentSectionAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentSectionAssociationsPartitions**
> GetAcademicWeeksPartitions200Response getStudentSectionAssociationsPartitions(number, minChangeVersion, maxChangeVersion, beginDate, localCourseCode, schoolId, schoolYear, sectionIdentifier, sessionName, studentUniqueId, dualCreditEducationOrganizationId, attemptStatusDescriptor, dualCreditInstitutionDescriptor, dualCreditTypeDescriptor, repeatIdentifierDescriptor, dualCreditIndicator, dualHighSchoolCreditIndicator, endDate, homeroomIndicator, id, teacherStudentDataLinkExclusion, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSectionAssociationsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final beginDate = 2013-10-20; // DateTime | Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final localCourseCode = localCourseCode_example; // String | The local code assigned by the School that identifies the course offering provided for the instruction of students.
final schoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final schoolYear = 56; // int | The identifier for the school year.
final sectionIdentifier = sectionIdentifier_example; // String | The local identifier assigned to a section.
final sessionName = sessionName_example; // String | The identifier for the calendar for the academic session.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final dualCreditEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final attemptStatusDescriptor = attemptStatusDescriptor_example; // String | An indication of the student's completion status for the section.
final dualCreditInstitutionDescriptor = dualCreditInstitutionDescriptor_example; // String | Descriptor for the postsecondary institution offering college credit. This descriptor may be used to select a postsecondary institution that is not defined as an education organization, and/or select a general type of postsecondary institution.
final dualCreditTypeDescriptor = dualCreditTypeDescriptor_example; // String | For a student taking a dual credit course in a college or high school setting, indicates the type of dual credit program.
final repeatIdentifierDescriptor = repeatIdentifierDescriptor_example; // String | An indication as to whether a student has previously taken a given course.
final dualCreditIndicator = true; // bool | Indicates whether the student assigned to the section is to receive dual credit upon successful completion.
final dualHighSchoolCreditIndicator = true; // bool | Indicates whether successful completion of the course will result in credits toward high school graduation.
final endDate = 2013-10-20; // DateTime | Month, day, and year of the withdrawal or exit of the student from the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final homeroomIndicator = true; // bool | Indicates the section is the student's homeroom. Homeroom period may the convention for taking daily attendance.
final id = id_example; // String | 
final teacherStudentDataLinkExclusion = true; // bool | Indicates that the student-section combination is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentSectionAssociationsPartitions(number, minChangeVersion, maxChangeVersion, beginDate, localCourseCode, schoolId, schoolYear, sectionIdentifier, sessionName, studentUniqueId, dualCreditEducationOrganizationId, attemptStatusDescriptor, dualCreditInstitutionDescriptor, dualCreditTypeDescriptor, repeatIdentifierDescriptor, dualCreditIndicator, dualHighSchoolCreditIndicator, endDate, homeroomIndicator, id, teacherStudentDataLinkExclusion, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSectionAssociationsApi->getStudentSectionAssociationsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **beginDate** | **DateTime**| Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **localCourseCode** | **String**| The local code assigned by the School that identifies the course offering provided for the instruction of students. | [optional] 
 **schoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **sectionIdentifier** | **String**| The local identifier assigned to a section. | [optional] 
 **sessionName** | **String**| The identifier for the calendar for the academic session. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **dualCreditEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **attemptStatusDescriptor** | **String**| An indication of the student's completion status for the section. | [optional] 
 **dualCreditInstitutionDescriptor** | **String**| Descriptor for the postsecondary institution offering college credit. This descriptor may be used to select a postsecondary institution that is not defined as an education organization, and/or select a general type of postsecondary institution. | [optional] 
 **dualCreditTypeDescriptor** | **String**| For a student taking a dual credit course in a college or high school setting, indicates the type of dual credit program. | [optional] 
 **repeatIdentifierDescriptor** | **String**| An indication as to whether a student has previously taken a given course. | [optional] 
 **dualCreditIndicator** | **bool**| Indicates whether the student assigned to the section is to receive dual credit upon successful completion. | [optional] 
 **dualHighSchoolCreditIndicator** | **bool**| Indicates whether successful completion of the course will result in credits toward high school graduation. | [optional] 
 **endDate** | **DateTime**| Month, day, and year of the withdrawal or exit of the student from the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **homeroomIndicator** | **bool**| Indicates the section is the student's homeroom. Homeroom period may the convention for taking daily attendance. | [optional] 
 **id** | **String**|  | [optional] 
 **teacherStudentDataLinkExclusion** | **bool**| Indicates that the student-section combination is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesStudentSectionAssociations**
> List<TrackedChangesEdFiStudentSectionAssociationKeyChange> keyChangesStudentSectionAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSectionAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStudentSectionAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSectionAssociationsApi->keyChangesStudentSectionAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentSectionAssociationKeyChange>**](TrackedChangesEdFiStudentSectionAssociationKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStudentSectionAssociation**
> postStudentSectionAssociation(edFiStudentSectionAssociation)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSectionAssociationsApi();
final edFiStudentSectionAssociation = EdFiStudentSectionAssociation(); // EdFiStudentSectionAssociation | The JSON representation of the \"studentSectionAssociation\" resource to be created or updated.

try {
    api_instance.postStudentSectionAssociation(edFiStudentSectionAssociation);
} catch (e) {
    print('Exception when calling StudentSectionAssociationsApi->postStudentSectionAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStudentSectionAssociation** | [**EdFiStudentSectionAssociation**](EdFiStudentSectionAssociation.md)| The JSON representation of the \"studentSectionAssociation\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStudentSectionAssociation**
> putStudentSectionAssociation(id, edFiStudentSectionAssociation, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, if natural key values are being updated by the JSON body, those changes will be applied to the resource and will also cascade through to dependent resources.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSectionAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStudentSectionAssociation = EdFiStudentSectionAssociation(); // EdFiStudentSectionAssociation | The JSON representation of the \"studentSectionAssociation\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStudentSectionAssociation(id, edFiStudentSectionAssociation, ifMatch);
} catch (e) {
    print('Exception when calling StudentSectionAssociationsApi->putStudentSectionAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStudentSectionAssociation** | [**EdFiStudentSectionAssociation**](EdFiStudentSectionAssociation.md)| The JSON representation of the \"studentSectionAssociation\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

