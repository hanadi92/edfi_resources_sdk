# edfi_resources_sdk.api.SectionsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSectionById**](SectionsApi.md#deletesectionbyid) | **DELETE** /ed-fi/sections/{id} | Deletes an existing resource using the resource identifier.
[**deletesSections**](SectionsApi.md#deletessections) | **GET** /ed-fi/sections/deletes | Retrieves deleted resources based on change version.
[**getSections**](SectionsApi.md#getsections) | **GET** /ed-fi/sections | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getSectionsById**](SectionsApi.md#getsectionsbyid) | **GET** /ed-fi/sections/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getSectionsPartitions**](SectionsApi.md#getsectionspartitions) | **GET** /ed-fi/sections/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesSections**](SectionsApi.md#keychangessections) | **GET** /ed-fi/sections/keyChanges | Retrieves resources key changes based on change version.
[**postSection**](SectionsApi.md#postsection) | **POST** /ed-fi/sections | Creates or updates resources based on the natural key values of the supplied resource.
[**putSection**](SectionsApi.md#putsection) | **PUT** /ed-fi/sections/{id} | Updates a resource based on the resource identifier.


# **deleteSectionById**
> deleteSectionById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SectionsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteSectionById(id, ifMatch);
} catch (e) {
    print('Exception when calling SectionsApi->deleteSectionById: $e\n');
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

# **deletesSections**
> List<TrackedChangesEdFiSectionDelete> deletesSections(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SectionsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesSections(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling SectionsApi->deletesSections: $e\n');
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

[**List<TrackedChangesEdFiSectionDelete>**](TrackedChangesEdFiSectionDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSections**
> List<EdFiSection> getSections(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, sectionIdentifier, localCourseCode, schoolId, schoolYear, sessionName, locationClassroomIdentificationCode, locationSchoolId, availableCreditTypeDescriptor, educationalEnvironmentDescriptor, instructionLanguageDescriptor, mediumOfInstructionDescriptor, populationServedDescriptor, sectionTypeDescriptor, availableCreditConversion, availableCredits, id, officialAttendancePeriod, sectionName, sequenceOfCourse, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SectionsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final sectionIdentifier = sectionIdentifier_example; // String | The local identifier assigned to a section.
final localCourseCode = localCourseCode_example; // String | The local code assigned by the School that identifies the course offering provided for the instruction of students.
final schoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final schoolYear = 56; // int | The identifier for the school year.
final sessionName = sessionName_example; // String | The identifier for the calendar for the academic session.
final locationClassroomIdentificationCode = locationClassroomIdentificationCode_example; // String | A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.
final locationSchoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final availableCreditTypeDescriptor = availableCreditTypeDescriptor_example; // String | The type of credits or units of value awarded for the completion of a course.
final educationalEnvironmentDescriptor = educationalEnvironmentDescriptor_example; // String | The setting in which a student receives education and related services.
final instructionLanguageDescriptor = instructionLanguageDescriptor_example; // String | The primary language of instruction. If omitted, English is assumed.
final mediumOfInstructionDescriptor = mediumOfInstructionDescriptor_example; // String | The media through which teachers provide instruction to students and students and teachers communicate about instructional matters.
final populationServedDescriptor = populationServedDescriptor_example; // String | The type of students the section is offered and tailored to.
final sectionTypeDescriptor = sectionTypeDescriptor_example; // String | Specifies whether the section is for attendance only, credit only, or both.
final availableCreditConversion = 1.2; // double | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
final availableCredits = 1.2; // double | The value of credits or units of value awarded for the completion of a course.
final id = id_example; // String | 
final officialAttendancePeriod = true; // bool | Indicator of whether this section is used for official daily attendance. Alternatively, official daily attendance may be tied to a class period.
final sectionName = sectionName_example; // String | A locally-defined name for the section, generally created to make the section more recognizable in informal contexts and generally distinct from the section identifier.
final sequenceOfCourse = 56; // int | When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getSections(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, sectionIdentifier, localCourseCode, schoolId, schoolYear, sessionName, locationClassroomIdentificationCode, locationSchoolId, availableCreditTypeDescriptor, educationalEnvironmentDescriptor, instructionLanguageDescriptor, mediumOfInstructionDescriptor, populationServedDescriptor, sectionTypeDescriptor, availableCreditConversion, availableCredits, id, officialAttendancePeriod, sectionName, sequenceOfCourse, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling SectionsApi->getSections: $e\n');
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
 **sectionIdentifier** | **String**| The local identifier assigned to a section. | [optional] 
 **localCourseCode** | **String**| The local code assigned by the School that identifies the course offering provided for the instruction of students. | [optional] 
 **schoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **sessionName** | **String**| The identifier for the calendar for the academic session. | [optional] 
 **locationClassroomIdentificationCode** | **String**| A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity. | [optional] 
 **locationSchoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **availableCreditTypeDescriptor** | **String**| The type of credits or units of value awarded for the completion of a course. | [optional] 
 **educationalEnvironmentDescriptor** | **String**| The setting in which a student receives education and related services. | [optional] 
 **instructionLanguageDescriptor** | **String**| The primary language of instruction. If omitted, English is assumed. | [optional] 
 **mediumOfInstructionDescriptor** | **String**| The media through which teachers provide instruction to students and students and teachers communicate about instructional matters. | [optional] 
 **populationServedDescriptor** | **String**| The type of students the section is offered and tailored to. | [optional] 
 **sectionTypeDescriptor** | **String**| Specifies whether the section is for attendance only, credit only, or both. | [optional] 
 **availableCreditConversion** | **double**| Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
 **availableCredits** | **double**| The value of credits or units of value awarded for the completion of a course. | [optional] 
 **id** | **String**|  | [optional] 
 **officialAttendancePeriod** | **bool**| Indicator of whether this section is used for official daily attendance. Alternatively, official daily attendance may be tied to a class period. | [optional] 
 **sectionName** | **String**| A locally-defined name for the section, generally created to make the section more recognizable in informal contexts and generally distinct from the section identifier. | [optional] 
 **sequenceOfCourse** | **int**| When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiSection>**](EdFiSection.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSectionsById**
> EdFiSection getSectionsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SectionsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getSectionsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling SectionsApi->getSectionsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiSection**](EdFiSection.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSectionsPartitions**
> GetAcademicWeeksPartitions200Response getSectionsPartitions(number, minChangeVersion, maxChangeVersion, sectionIdentifier, localCourseCode, schoolId, schoolYear, sessionName, locationClassroomIdentificationCode, locationSchoolId, availableCreditTypeDescriptor, educationalEnvironmentDescriptor, instructionLanguageDescriptor, mediumOfInstructionDescriptor, populationServedDescriptor, sectionTypeDescriptor, availableCreditConversion, availableCredits, id, officialAttendancePeriod, sectionName, sequenceOfCourse, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SectionsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final sectionIdentifier = sectionIdentifier_example; // String | The local identifier assigned to a section.
final localCourseCode = localCourseCode_example; // String | The local code assigned by the School that identifies the course offering provided for the instruction of students.
final schoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final schoolYear = 56; // int | The identifier for the school year.
final sessionName = sessionName_example; // String | The identifier for the calendar for the academic session.
final locationClassroomIdentificationCode = locationClassroomIdentificationCode_example; // String | A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.
final locationSchoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final availableCreditTypeDescriptor = availableCreditTypeDescriptor_example; // String | The type of credits or units of value awarded for the completion of a course.
final educationalEnvironmentDescriptor = educationalEnvironmentDescriptor_example; // String | The setting in which a student receives education and related services.
final instructionLanguageDescriptor = instructionLanguageDescriptor_example; // String | The primary language of instruction. If omitted, English is assumed.
final mediumOfInstructionDescriptor = mediumOfInstructionDescriptor_example; // String | The media through which teachers provide instruction to students and students and teachers communicate about instructional matters.
final populationServedDescriptor = populationServedDescriptor_example; // String | The type of students the section is offered and tailored to.
final sectionTypeDescriptor = sectionTypeDescriptor_example; // String | Specifies whether the section is for attendance only, credit only, or both.
final availableCreditConversion = 1.2; // double | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
final availableCredits = 1.2; // double | The value of credits or units of value awarded for the completion of a course.
final id = id_example; // String | 
final officialAttendancePeriod = true; // bool | Indicator of whether this section is used for official daily attendance. Alternatively, official daily attendance may be tied to a class period.
final sectionName = sectionName_example; // String | A locally-defined name for the section, generally created to make the section more recognizable in informal contexts and generally distinct from the section identifier.
final sequenceOfCourse = 56; // int | When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getSectionsPartitions(number, minChangeVersion, maxChangeVersion, sectionIdentifier, localCourseCode, schoolId, schoolYear, sessionName, locationClassroomIdentificationCode, locationSchoolId, availableCreditTypeDescriptor, educationalEnvironmentDescriptor, instructionLanguageDescriptor, mediumOfInstructionDescriptor, populationServedDescriptor, sectionTypeDescriptor, availableCreditConversion, availableCredits, id, officialAttendancePeriod, sectionName, sequenceOfCourse, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling SectionsApi->getSectionsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **sectionIdentifier** | **String**| The local identifier assigned to a section. | [optional] 
 **localCourseCode** | **String**| The local code assigned by the School that identifies the course offering provided for the instruction of students. | [optional] 
 **schoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **schoolYear** | **int**| The identifier for the school year. | [optional] 
 **sessionName** | **String**| The identifier for the calendar for the academic session. | [optional] 
 **locationClassroomIdentificationCode** | **String**| A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity. | [optional] 
 **locationSchoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **availableCreditTypeDescriptor** | **String**| The type of credits or units of value awarded for the completion of a course. | [optional] 
 **educationalEnvironmentDescriptor** | **String**| The setting in which a student receives education and related services. | [optional] 
 **instructionLanguageDescriptor** | **String**| The primary language of instruction. If omitted, English is assumed. | [optional] 
 **mediumOfInstructionDescriptor** | **String**| The media through which teachers provide instruction to students and students and teachers communicate about instructional matters. | [optional] 
 **populationServedDescriptor** | **String**| The type of students the section is offered and tailored to. | [optional] 
 **sectionTypeDescriptor** | **String**| Specifies whether the section is for attendance only, credit only, or both. | [optional] 
 **availableCreditConversion** | **double**| Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
 **availableCredits** | **double**| The value of credits or units of value awarded for the completion of a course. | [optional] 
 **id** | **String**|  | [optional] 
 **officialAttendancePeriod** | **bool**| Indicator of whether this section is used for official daily attendance. Alternatively, official daily attendance may be tied to a class period. | [optional] 
 **sectionName** | **String**| A locally-defined name for the section, generally created to make the section more recognizable in informal contexts and generally distinct from the section identifier. | [optional] 
 **sequenceOfCourse** | **int**| When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesSections**
> List<TrackedChangesEdFiSectionKeyChange> keyChangesSections(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SectionsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesSections(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling SectionsApi->keyChangesSections: $e\n');
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

[**List<TrackedChangesEdFiSectionKeyChange>**](TrackedChangesEdFiSectionKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postSection**
> postSection(edFiSection)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SectionsApi();
final edFiSection = EdFiSection(); // EdFiSection | The JSON representation of the \"section\" resource to be created or updated.

try {
    api_instance.postSection(edFiSection);
} catch (e) {
    print('Exception when calling SectionsApi->postSection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiSection** | [**EdFiSection**](EdFiSection.md)| The JSON representation of the \"section\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putSection**
> putSection(id, edFiSection, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, if natural key values are being updated by the JSON body, those changes will be applied to the resource and will also cascade through to dependent resources.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = SectionsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiSection = EdFiSection(); // EdFiSection | The JSON representation of the \"section\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putSection(id, edFiSection, ifMatch);
} catch (e) {
    print('Exception when calling SectionsApi->putSection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiSection** | [**EdFiSection**](EdFiSection.md)| The JSON representation of the \"section\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

