# edfi_resources_sdk.api.CourseTranscriptsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteCourseTranscriptById**](CourseTranscriptsApi.md#deletecoursetranscriptbyid) | **DELETE** /ed-fi/courseTranscripts/{id} | Deletes an existing resource using the resource identifier.
[**deletesCourseTranscripts**](CourseTranscriptsApi.md#deletescoursetranscripts) | **GET** /ed-fi/courseTranscripts/deletes | Retrieves deleted resources based on change version.
[**getCourseTranscripts**](CourseTranscriptsApi.md#getcoursetranscripts) | **GET** /ed-fi/courseTranscripts | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getCourseTranscriptsById**](CourseTranscriptsApi.md#getcoursetranscriptsbyid) | **GET** /ed-fi/courseTranscripts/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getCourseTranscriptsPartitions**](CourseTranscriptsApi.md#getcoursetranscriptspartitions) | **GET** /ed-fi/courseTranscripts/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesCourseTranscripts**](CourseTranscriptsApi.md#keychangescoursetranscripts) | **GET** /ed-fi/courseTranscripts/keyChanges | Retrieves resources key changes based on change version.
[**postCourseTranscript**](CourseTranscriptsApi.md#postcoursetranscript) | **POST** /ed-fi/courseTranscripts | Creates or updates resources based on the natural key values of the supplied resource.
[**putCourseTranscript**](CourseTranscriptsApi.md#putcoursetranscript) | **PUT** /ed-fi/courseTranscripts/{id} | Updates a resource based on the resource identifier.


# **deleteCourseTranscriptById**
> deleteCourseTranscriptById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CourseTranscriptsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteCourseTranscriptById(id, ifMatch);
} catch (e) {
    print('Exception when calling CourseTranscriptsApi->deleteCourseTranscriptById: $e\n');
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

# **deletesCourseTranscripts**
> List<TrackedChangesEdFiCourseTranscriptDelete> deletesCourseTranscripts(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CourseTranscriptsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesCourseTranscripts(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CourseTranscriptsApi->deletesCourseTranscripts: $e\n');
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

[**List<TrackedChangesEdFiCourseTranscriptDelete>**](TrackedChangesEdFiCourseTranscriptDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCourseTranscripts**
> List<EdFiCourseTranscript> getCourseTranscripts(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, courseAttemptResultDescriptor, courseCode, courseEducationOrganizationId, educationOrganizationId, schoolYear, studentUniqueId, termDescriptor, externalEducationOrganizationId, responsibleTeacherStaffUniqueId, courseRepeatCodeDescriptor, attemptedCreditTypeDescriptor, earnedCreditTypeDescriptor, whenTakenGradeLevelDescriptor, methodCreditEarnedDescriptor, alternativeCourseTitle, assigningOrganizationIdentificationCode, attemptedCreditConversion, attemptedCredits, courseCatalogURL, courseTitle, earnedCreditConversion, earnedCredits, externalEducationOrganizationNameOfInstitution, finalLetterGradeEarned, finalNumericGradeEarned, id, useSnapshot, courseIdentificationSystemDescriptor, assigningOrganizationIdentificationCode2, courseCatalogURL2, identificationCode)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CourseTranscriptsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final courseAttemptResultDescriptor = courseAttemptResultDescriptor_example; // String | The result from the student's attempt to take the course.
final courseCode = courseCode_example; // String | A unique alphanumeric code assigned to a course.
final courseEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final schoolYear = 56; // int | The identifier for the school year.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final termDescriptor = termDescriptor_example; // String | The term for the session during the school year.
final externalEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final responsibleTeacherStaffUniqueId = responsibleTeacherStaffUniqueId_example; // String | A unique alphanumeric code assigned to a responsibleteacherstaff.
final courseRepeatCodeDescriptor = courseRepeatCodeDescriptor_example; // String | Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student's academic grade average.
final attemptedCreditTypeDescriptor = attemptedCreditTypeDescriptor_example; // String | The type of credits or units of value awarded for the completion of a course.
final earnedCreditTypeDescriptor = earnedCreditTypeDescriptor_example; // String | The type of credits or units of value awarded for the completion of a course.
final whenTakenGradeLevelDescriptor = whenTakenGradeLevelDescriptor_example; // String | Student's grade level at time of course.
final methodCreditEarnedDescriptor = methodCreditEarnedDescriptor_example; // String | The method the credits were earned.
final alternativeCourseTitle = alternativeCourseTitle_example; // String | The descriptive name given to a course of study offered in the school, if different from the CourseTitle.
final assigningOrganizationIdentificationCode = assigningOrganizationIdentificationCode_example; // String | The organization code or name assigning the course identification code.
final attemptedCreditConversion = 1.2; // double | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
final attemptedCredits = 1.2; // double | The value of credits or units of value awarded for the completion of a course.
final courseCatalogURL = courseCatalogURL_example; // String | The URL for the course catalog that defines the course identification code.
final courseTitle = courseTitle_example; // String | The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, language arts).
final earnedCreditConversion = 1.2; // double | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
final earnedCredits = 1.2; // double | The value of credits or units of value awarded for the completion of a course.
final externalEducationOrganizationNameOfInstitution = externalEducationOrganizationNameOfInstitution_example; // String | Name of the external institution where the student completed the course; to be used only when the reference external education organization is not available.
final finalLetterGradeEarned = finalLetterGradeEarned_example; // String | The final indicator of student performance in a class as submitted by the instructor.
final finalNumericGradeEarned = 1.2; // double | The final indicator of student performance in a class as submitted by the instructor.
final id = id_example; // String | 
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.
final courseIdentificationSystemDescriptor = courseIdentificationSystemDescriptor_example; // String | A system that is used to identify the organization of subject matter and related learning experiences provided for the instruction of students.
final assigningOrganizationIdentificationCode2 = assigningOrganizationIdentificationCode_example; // String | The organization code or name assigning the Identification Code.
final courseCatalogURL2 = courseCatalogURL_example; // String | The URL for the course catalog that defines the course identification code.
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code assigned to a course by a school, school system, state, or other agency or entity. For multi-part course codes, concatenate the parts separated by a \"/\". For example, consider the following SCED code-    subject = 20 Math    course = 272 Geometry    level = G General    credits = 1.00   course sequence 1 of 1- would be entered as 20/272/G/1.00/1 of 1.

try {
    final result = api_instance.getCourseTranscripts(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, courseAttemptResultDescriptor, courseCode, courseEducationOrganizationId, educationOrganizationId, schoolYear, studentUniqueId, termDescriptor, externalEducationOrganizationId, responsibleTeacherStaffUniqueId, courseRepeatCodeDescriptor, attemptedCreditTypeDescriptor, earnedCreditTypeDescriptor, whenTakenGradeLevelDescriptor, methodCreditEarnedDescriptor, alternativeCourseTitle, assigningOrganizationIdentificationCode, attemptedCreditConversion, attemptedCredits, courseCatalogURL, courseTitle, earnedCreditConversion, earnedCredits, externalEducationOrganizationNameOfInstitution, finalLetterGradeEarned, finalNumericGradeEarned, id, useSnapshot, courseIdentificationSystemDescriptor, assigningOrganizationIdentificationCode2, courseCatalogURL2, identificationCode);
    print(result);
} catch (e) {
    print('Exception when calling CourseTranscriptsApi->getCourseTranscripts: $e\n');
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
 **courseAttemptResultDescriptor** | **String**| The result from the student's attempt to take the course. | [optional] 
 **courseCode** | **String**| A unique alphanumeric code assigned to a course. | [optional] 
 **courseEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **termDescriptor** | **String**| The term for the session during the school year. | [optional] 
 **externalEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **responsibleTeacherStaffUniqueId** | **String**| A unique alphanumeric code assigned to a responsibleteacherstaff. | [optional] 
 **courseRepeatCodeDescriptor** | **String**| Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student's academic grade average. | [optional] 
 **attemptedCreditTypeDescriptor** | **String**| The type of credits or units of value awarded for the completion of a course. | [optional] 
 **earnedCreditTypeDescriptor** | **String**| The type of credits or units of value awarded for the completion of a course. | [optional] 
 **whenTakenGradeLevelDescriptor** | **String**| Student's grade level at time of course. | [optional] 
 **methodCreditEarnedDescriptor** | **String**| The method the credits were earned. | [optional] 
 **alternativeCourseTitle** | **String**| The descriptive name given to a course of study offered in the school, if different from the CourseTitle. | [optional] 
 **assigningOrganizationIdentificationCode** | **String**| The organization code or name assigning the course identification code. | [optional] 
 **attemptedCreditConversion** | **double**| Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
 **attemptedCredits** | **double**| The value of credits or units of value awarded for the completion of a course. | [optional] 
 **courseCatalogURL** | **String**| The URL for the course catalog that defines the course identification code. | [optional] 
 **courseTitle** | **String**| The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, language arts). | [optional] 
 **earnedCreditConversion** | **double**| Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
 **earnedCredits** | **double**| The value of credits or units of value awarded for the completion of a course. | [optional] 
 **externalEducationOrganizationNameOfInstitution** | **String**| Name of the external institution where the student completed the course; to be used only when the reference external education organization is not available. | [optional] 
 **finalLetterGradeEarned** | **String**| The final indicator of student performance in a class as submitted by the instructor. | [optional] 
 **finalNumericGradeEarned** | **double**| The final indicator of student performance in a class as submitted by the instructor. | [optional] 
 **id** | **String**|  | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]
 **courseIdentificationSystemDescriptor** | **String**| A system that is used to identify the organization of subject matter and related learning experiences provided for the instruction of students. | [optional] 
 **assigningOrganizationIdentificationCode2** | **String**| The organization code or name assigning the Identification Code. | [optional] 
 **courseCatalogURL2** | **String**| The URL for the course catalog that defines the course identification code. | [optional] 
 **identificationCode** | **String**| A unique number or alphanumeric code assigned to a course by a school, school system, state, or other agency or entity. For multi-part course codes, concatenate the parts separated by a \"/\". For example, consider the following SCED code-    subject = 20 Math    course = 272 Geometry    level = G General    credits = 1.00   course sequence 1 of 1- would be entered as 20/272/G/1.00/1 of 1. | [optional] 

### Return type

[**List<EdFiCourseTranscript>**](EdFiCourseTranscript.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCourseTranscriptsById**
> EdFiCourseTranscript getCourseTranscriptsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CourseTranscriptsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getCourseTranscriptsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CourseTranscriptsApi->getCourseTranscriptsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiCourseTranscript**](EdFiCourseTranscript.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCourseTranscriptsPartitions**
> GetAcademicWeeksPartitions200Response getCourseTranscriptsPartitions(number, minChangeVersion, maxChangeVersion, courseAttemptResultDescriptor, courseCode, courseEducationOrganizationId, educationOrganizationId, schoolYear, studentUniqueId, termDescriptor, externalEducationOrganizationId, responsibleTeacherStaffUniqueId, courseRepeatCodeDescriptor, attemptedCreditTypeDescriptor, earnedCreditTypeDescriptor, whenTakenGradeLevelDescriptor, methodCreditEarnedDescriptor, alternativeCourseTitle, assigningOrganizationIdentificationCode, attemptedCreditConversion, attemptedCredits, courseCatalogURL, courseTitle, earnedCreditConversion, earnedCredits, externalEducationOrganizationNameOfInstitution, finalLetterGradeEarned, finalNumericGradeEarned, id, useSnapshot, courseIdentificationSystemDescriptor, assigningOrganizationIdentificationCode2, courseCatalogURL2, identificationCode)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CourseTranscriptsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final courseAttemptResultDescriptor = courseAttemptResultDescriptor_example; // String | The result from the student's attempt to take the course.
final courseCode = courseCode_example; // String | A unique alphanumeric code assigned to a course.
final courseEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final schoolYear = 56; // int | The identifier for the school year.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final termDescriptor = termDescriptor_example; // String | The term for the session during the school year.
final externalEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final responsibleTeacherStaffUniqueId = responsibleTeacherStaffUniqueId_example; // String | A unique alphanumeric code assigned to a responsibleteacherstaff.
final courseRepeatCodeDescriptor = courseRepeatCodeDescriptor_example; // String | Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student's academic grade average.
final attemptedCreditTypeDescriptor = attemptedCreditTypeDescriptor_example; // String | The type of credits or units of value awarded for the completion of a course.
final earnedCreditTypeDescriptor = earnedCreditTypeDescriptor_example; // String | The type of credits or units of value awarded for the completion of a course.
final whenTakenGradeLevelDescriptor = whenTakenGradeLevelDescriptor_example; // String | Student's grade level at time of course.
final methodCreditEarnedDescriptor = methodCreditEarnedDescriptor_example; // String | The method the credits were earned.
final alternativeCourseTitle = alternativeCourseTitle_example; // String | The descriptive name given to a course of study offered in the school, if different from the CourseTitle.
final assigningOrganizationIdentificationCode = assigningOrganizationIdentificationCode_example; // String | The organization code or name assigning the course identification code.
final attemptedCreditConversion = 1.2; // double | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
final attemptedCredits = 1.2; // double | The value of credits or units of value awarded for the completion of a course.
final courseCatalogURL = courseCatalogURL_example; // String | The URL for the course catalog that defines the course identification code.
final courseTitle = courseTitle_example; // String | The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, language arts).
final earnedCreditConversion = 1.2; // double | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
final earnedCredits = 1.2; // double | The value of credits or units of value awarded for the completion of a course.
final externalEducationOrganizationNameOfInstitution = externalEducationOrganizationNameOfInstitution_example; // String | Name of the external institution where the student completed the course; to be used only when the reference external education organization is not available.
final finalLetterGradeEarned = finalLetterGradeEarned_example; // String | The final indicator of student performance in a class as submitted by the instructor.
final finalNumericGradeEarned = 1.2; // double | The final indicator of student performance in a class as submitted by the instructor.
final id = id_example; // String | 
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.
final courseIdentificationSystemDescriptor = courseIdentificationSystemDescriptor_example; // String | A system that is used to identify the organization of subject matter and related learning experiences provided for the instruction of students.
final assigningOrganizationIdentificationCode2 = assigningOrganizationIdentificationCode_example; // String | The organization code or name assigning the Identification Code.
final courseCatalogURL2 = courseCatalogURL_example; // String | The URL for the course catalog that defines the course identification code.
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code assigned to a course by a school, school system, state, or other agency or entity. For multi-part course codes, concatenate the parts separated by a \"/\". For example, consider the following SCED code-    subject = 20 Math    course = 272 Geometry    level = G General    credits = 1.00   course sequence 1 of 1- would be entered as 20/272/G/1.00/1 of 1.

try {
    final result = api_instance.getCourseTranscriptsPartitions(number, minChangeVersion, maxChangeVersion, courseAttemptResultDescriptor, courseCode, courseEducationOrganizationId, educationOrganizationId, schoolYear, studentUniqueId, termDescriptor, externalEducationOrganizationId, responsibleTeacherStaffUniqueId, courseRepeatCodeDescriptor, attemptedCreditTypeDescriptor, earnedCreditTypeDescriptor, whenTakenGradeLevelDescriptor, methodCreditEarnedDescriptor, alternativeCourseTitle, assigningOrganizationIdentificationCode, attemptedCreditConversion, attemptedCredits, courseCatalogURL, courseTitle, earnedCreditConversion, earnedCredits, externalEducationOrganizationNameOfInstitution, finalLetterGradeEarned, finalNumericGradeEarned, id, useSnapshot, courseIdentificationSystemDescriptor, assigningOrganizationIdentificationCode2, courseCatalogURL2, identificationCode);
    print(result);
} catch (e) {
    print('Exception when calling CourseTranscriptsApi->getCourseTranscriptsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **courseAttemptResultDescriptor** | **String**| The result from the student's attempt to take the course. | [optional] 
 **courseCode** | **String**| A unique alphanumeric code assigned to a course. | [optional] 
 **courseEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **termDescriptor** | **String**| The term for the session during the school year. | [optional] 
 **externalEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **responsibleTeacherStaffUniqueId** | **String**| A unique alphanumeric code assigned to a responsibleteacherstaff. | [optional] 
 **courseRepeatCodeDescriptor** | **String**| Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student's academic grade average. | [optional] 
 **attemptedCreditTypeDescriptor** | **String**| The type of credits or units of value awarded for the completion of a course. | [optional] 
 **earnedCreditTypeDescriptor** | **String**| The type of credits or units of value awarded for the completion of a course. | [optional] 
 **whenTakenGradeLevelDescriptor** | **String**| Student's grade level at time of course. | [optional] 
 **methodCreditEarnedDescriptor** | **String**| The method the credits were earned. | [optional] 
 **alternativeCourseTitle** | **String**| The descriptive name given to a course of study offered in the school, if different from the CourseTitle. | [optional] 
 **assigningOrganizationIdentificationCode** | **String**| The organization code or name assigning the course identification code. | [optional] 
 **attemptedCreditConversion** | **double**| Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
 **attemptedCredits** | **double**| The value of credits or units of value awarded for the completion of a course. | [optional] 
 **courseCatalogURL** | **String**| The URL for the course catalog that defines the course identification code. | [optional] 
 **courseTitle** | **String**| The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, language arts). | [optional] 
 **earnedCreditConversion** | **double**| Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
 **earnedCredits** | **double**| The value of credits or units of value awarded for the completion of a course. | [optional] 
 **externalEducationOrganizationNameOfInstitution** | **String**| Name of the external institution where the student completed the course; to be used only when the reference external education organization is not available. | [optional] 
 **finalLetterGradeEarned** | **String**| The final indicator of student performance in a class as submitted by the instructor. | [optional] 
 **finalNumericGradeEarned** | **double**| The final indicator of student performance in a class as submitted by the instructor. | [optional] 
 **id** | **String**|  | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]
 **courseIdentificationSystemDescriptor** | **String**| A system that is used to identify the organization of subject matter and related learning experiences provided for the instruction of students. | [optional] 
 **assigningOrganizationIdentificationCode2** | **String**| The organization code or name assigning the Identification Code. | [optional] 
 **courseCatalogURL2** | **String**| The URL for the course catalog that defines the course identification code. | [optional] 
 **identificationCode** | **String**| A unique number or alphanumeric code assigned to a course by a school, school system, state, or other agency or entity. For multi-part course codes, concatenate the parts separated by a \"/\". For example, consider the following SCED code-    subject = 20 Math    course = 272 Geometry    level = G General    credits = 1.00   course sequence 1 of 1- would be entered as 20/272/G/1.00/1 of 1. | [optional] 

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesCourseTranscripts**
> List<TrackedChangesEdFiCourseTranscriptKeyChange> keyChangesCourseTranscripts(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CourseTranscriptsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesCourseTranscripts(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CourseTranscriptsApi->keyChangesCourseTranscripts: $e\n');
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

[**List<TrackedChangesEdFiCourseTranscriptKeyChange>**](TrackedChangesEdFiCourseTranscriptKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCourseTranscript**
> postCourseTranscript(edFiCourseTranscript)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CourseTranscriptsApi();
final edFiCourseTranscript = EdFiCourseTranscript(); // EdFiCourseTranscript | The JSON representation of the \"courseTranscript\" resource to be created or updated.

try {
    api_instance.postCourseTranscript(edFiCourseTranscript);
} catch (e) {
    print('Exception when calling CourseTranscriptsApi->postCourseTranscript: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiCourseTranscript** | [**EdFiCourseTranscript**](EdFiCourseTranscript.md)| The JSON representation of the \"courseTranscript\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putCourseTranscript**
> putCourseTranscript(id, edFiCourseTranscript, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CourseTranscriptsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiCourseTranscript = EdFiCourseTranscript(); // EdFiCourseTranscript | The JSON representation of the \"courseTranscript\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putCourseTranscript(id, edFiCourseTranscript, ifMatch);
} catch (e) {
    print('Exception when calling CourseTranscriptsApi->putCourseTranscript: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiCourseTranscript** | [**EdFiCourseTranscript**](EdFiCourseTranscript.md)| The JSON representation of the \"courseTranscript\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

