# edfi_resources_sdk.api.StudentAssessmentRegistrationsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStudentAssessmentRegistrationById**](StudentAssessmentRegistrationsApi.md#deletestudentassessmentregistrationbyid) | **DELETE** /ed-fi/studentAssessmentRegistrations/{id} | Deletes an existing resource using the resource identifier.
[**deletesStudentAssessmentRegistrations**](StudentAssessmentRegistrationsApi.md#deletesstudentassessmentregistrations) | **GET** /ed-fi/studentAssessmentRegistrations/deletes | Retrieves deleted resources based on change version.
[**getStudentAssessmentRegistrations**](StudentAssessmentRegistrationsApi.md#getstudentassessmentregistrations) | **GET** /ed-fi/studentAssessmentRegistrations | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStudentAssessmentRegistrationsById**](StudentAssessmentRegistrationsApi.md#getstudentassessmentregistrationsbyid) | **GET** /ed-fi/studentAssessmentRegistrations/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStudentAssessmentRegistrationsPartitions**](StudentAssessmentRegistrationsApi.md#getstudentassessmentregistrationspartitions) | **GET** /ed-fi/studentAssessmentRegistrations/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStudentAssessmentRegistrations**](StudentAssessmentRegistrationsApi.md#keychangesstudentassessmentregistrations) | **GET** /ed-fi/studentAssessmentRegistrations/keyChanges | Retrieves resources key changes based on change version.
[**postStudentAssessmentRegistration**](StudentAssessmentRegistrationsApi.md#poststudentassessmentregistration) | **POST** /ed-fi/studentAssessmentRegistrations | Creates or updates resources based on the natural key values of the supplied resource.
[**putStudentAssessmentRegistration**](StudentAssessmentRegistrationsApi.md#putstudentassessmentregistration) | **PUT** /ed-fi/studentAssessmentRegistrations/{id} | Updates a resource based on the resource identifier.


# **deleteStudentAssessmentRegistrationById**
> deleteStudentAssessmentRegistrationById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentRegistrationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStudentAssessmentRegistrationById(id, ifMatch);
} catch (e) {
    print('Exception when calling StudentAssessmentRegistrationsApi->deleteStudentAssessmentRegistrationById: $e\n');
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

# **deletesStudentAssessmentRegistrations**
> List<TrackedChangesEdFiStudentAssessmentRegistrationDelete> deletesStudentAssessmentRegistrations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentRegistrationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStudentAssessmentRegistrations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAssessmentRegistrationsApi->deletesStudentAssessmentRegistrations: $e\n');
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

[**List<TrackedChangesEdFiStudentAssessmentRegistrationDelete>**](TrackedChangesEdFiStudentAssessmentRegistrationDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentAssessmentRegistrations**
> List<EdFiStudentAssessmentRegistration> getStudentAssessmentRegistrations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, administrationIdentifier, assessmentIdentifier, assigningEducationOrganizationId, namespace, educationOrganizationId, studentUniqueId, entryDate, schoolId, reportingEducationOrganizationId, testingEducationOrganizationId, scheduledEducationOrganizationId, scheduledStudentUniqueId, assessmentGradeLevelDescriptor, platformTypeDescriptor, id, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentRegistrationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final administrationIdentifier = administrationIdentifier_example; // String | The title or name of the assessment in the context of its administration.
final assessmentIdentifier = assessmentIdentifier_example; // String | A unique number or alphanumeric code assigned to an assessment.
final assigningEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final namespace = namespace_example; // String | Namespace for the assessment.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final entryDate = 2013-10-20; // DateTime | The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student's enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final schoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final reportingEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final testingEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final scheduledEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final scheduledStudentUniqueId = scheduledStudentUniqueId_example; // String | A unique alphanumeric code assigned to a scheduledstudent.
final assessmentGradeLevelDescriptor = assessmentGradeLevelDescriptor_example; // String | The grade level or primary instructional level at which the student is to be assessed.
final platformTypeDescriptor = platformTypeDescriptor_example; // String | The environment or format in which the assessment is expected to be administered.
final id = id_example; // String | 
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentAssessmentRegistrations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, administrationIdentifier, assessmentIdentifier, assigningEducationOrganizationId, namespace, educationOrganizationId, studentUniqueId, entryDate, schoolId, reportingEducationOrganizationId, testingEducationOrganizationId, scheduledEducationOrganizationId, scheduledStudentUniqueId, assessmentGradeLevelDescriptor, platformTypeDescriptor, id, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAssessmentRegistrationsApi->getStudentAssessmentRegistrations: $e\n');
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
 **administrationIdentifier** | **String**| The title or name of the assessment in the context of its administration. | [optional] 
 **assessmentIdentifier** | **String**| A unique number or alphanumeric code assigned to an assessment. | [optional] 
 **assigningEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **namespace** | **String**| Namespace for the assessment. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **entryDate** | **DateTime**| The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student's enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **schoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **reportingEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **testingEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **scheduledEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **scheduledStudentUniqueId** | **String**| A unique alphanumeric code assigned to a scheduledstudent. | [optional] 
 **assessmentGradeLevelDescriptor** | **String**| The grade level or primary instructional level at which the student is to be assessed. | [optional] 
 **platformTypeDescriptor** | **String**| The environment or format in which the assessment is expected to be administered. | [optional] 
 **id** | **String**|  | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStudentAssessmentRegistration>**](EdFiStudentAssessmentRegistration.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentAssessmentRegistrationsById**
> EdFiStudentAssessmentRegistration getStudentAssessmentRegistrationsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentRegistrationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentAssessmentRegistrationsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAssessmentRegistrationsApi->getStudentAssessmentRegistrationsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStudentAssessmentRegistration**](EdFiStudentAssessmentRegistration.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentAssessmentRegistrationsPartitions**
> GetAcademicWeeksPartitions200Response getStudentAssessmentRegistrationsPartitions(number, minChangeVersion, maxChangeVersion, administrationIdentifier, assessmentIdentifier, assigningEducationOrganizationId, namespace, educationOrganizationId, studentUniqueId, entryDate, schoolId, reportingEducationOrganizationId, testingEducationOrganizationId, scheduledEducationOrganizationId, scheduledStudentUniqueId, assessmentGradeLevelDescriptor, platformTypeDescriptor, id, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentRegistrationsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final administrationIdentifier = administrationIdentifier_example; // String | The title or name of the assessment in the context of its administration.
final assessmentIdentifier = assessmentIdentifier_example; // String | A unique number or alphanumeric code assigned to an assessment.
final assigningEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final namespace = namespace_example; // String | Namespace for the assessment.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final entryDate = 2013-10-20; // DateTime | The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student's enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final schoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final reportingEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final testingEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final scheduledEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final scheduledStudentUniqueId = scheduledStudentUniqueId_example; // String | A unique alphanumeric code assigned to a scheduledstudent.
final assessmentGradeLevelDescriptor = assessmentGradeLevelDescriptor_example; // String | The grade level or primary instructional level at which the student is to be assessed.
final platformTypeDescriptor = platformTypeDescriptor_example; // String | The environment or format in which the assessment is expected to be administered.
final id = id_example; // String | 
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentAssessmentRegistrationsPartitions(number, minChangeVersion, maxChangeVersion, administrationIdentifier, assessmentIdentifier, assigningEducationOrganizationId, namespace, educationOrganizationId, studentUniqueId, entryDate, schoolId, reportingEducationOrganizationId, testingEducationOrganizationId, scheduledEducationOrganizationId, scheduledStudentUniqueId, assessmentGradeLevelDescriptor, platformTypeDescriptor, id, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAssessmentRegistrationsApi->getStudentAssessmentRegistrationsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **administrationIdentifier** | **String**| The title or name of the assessment in the context of its administration. | [optional] 
 **assessmentIdentifier** | **String**| A unique number or alphanumeric code assigned to an assessment. | [optional] 
 **assigningEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **namespace** | **String**| Namespace for the assessment. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **entryDate** | **DateTime**| The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student's enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **schoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **reportingEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **testingEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **scheduledEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **scheduledStudentUniqueId** | **String**| A unique alphanumeric code assigned to a scheduledstudent. | [optional] 
 **assessmentGradeLevelDescriptor** | **String**| The grade level or primary instructional level at which the student is to be assessed. | [optional] 
 **platformTypeDescriptor** | **String**| The environment or format in which the assessment is expected to be administered. | [optional] 
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

# **keyChangesStudentAssessmentRegistrations**
> List<TrackedChangesEdFiStudentAssessmentRegistrationKeyChange> keyChangesStudentAssessmentRegistrations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentRegistrationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStudentAssessmentRegistrations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentAssessmentRegistrationsApi->keyChangesStudentAssessmentRegistrations: $e\n');
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

[**List<TrackedChangesEdFiStudentAssessmentRegistrationKeyChange>**](TrackedChangesEdFiStudentAssessmentRegistrationKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStudentAssessmentRegistration**
> postStudentAssessmentRegistration(edFiStudentAssessmentRegistration)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentRegistrationsApi();
final edFiStudentAssessmentRegistration = EdFiStudentAssessmentRegistration(); // EdFiStudentAssessmentRegistration | The JSON representation of the \"studentAssessmentRegistration\" resource to be created or updated.

try {
    api_instance.postStudentAssessmentRegistration(edFiStudentAssessmentRegistration);
} catch (e) {
    print('Exception when calling StudentAssessmentRegistrationsApi->postStudentAssessmentRegistration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStudentAssessmentRegistration** | [**EdFiStudentAssessmentRegistration**](EdFiStudentAssessmentRegistration.md)| The JSON representation of the \"studentAssessmentRegistration\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStudentAssessmentRegistration**
> putStudentAssessmentRegistration(id, edFiStudentAssessmentRegistration, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentAssessmentRegistrationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStudentAssessmentRegistration = EdFiStudentAssessmentRegistration(); // EdFiStudentAssessmentRegistration | The JSON representation of the \"studentAssessmentRegistration\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStudentAssessmentRegistration(id, edFiStudentAssessmentRegistration, ifMatch);
} catch (e) {
    print('Exception when calling StudentAssessmentRegistrationsApi->putStudentAssessmentRegistration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStudentAssessmentRegistration** | [**EdFiStudentAssessmentRegistration**](EdFiStudentAssessmentRegistration.md)| The JSON representation of the \"studentAssessmentRegistration\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

