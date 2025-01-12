# edfi_resources_sdk.api.StudentNeglectedOrDelinquentProgramAssociationsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStudentNeglectedOrDelinquentProgramAssociationById**](StudentNeglectedOrDelinquentProgramAssociationsApi.md#deletestudentneglectedordelinquentprogramassociationbyid) | **DELETE** /ed-fi/studentNeglectedOrDelinquentProgramAssociations/{id} | Deletes an existing resource using the resource identifier.
[**deletesStudentNeglectedOrDelinquentProgramAssociations**](StudentNeglectedOrDelinquentProgramAssociationsApi.md#deletesstudentneglectedordelinquentprogramassociations) | **GET** /ed-fi/studentNeglectedOrDelinquentProgramAssociations/deletes | Retrieves deleted resources based on change version.
[**getStudentNeglectedOrDelinquentProgramAssociations**](StudentNeglectedOrDelinquentProgramAssociationsApi.md#getstudentneglectedordelinquentprogramassociations) | **GET** /ed-fi/studentNeglectedOrDelinquentProgramAssociations | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStudentNeglectedOrDelinquentProgramAssociationsById**](StudentNeglectedOrDelinquentProgramAssociationsApi.md#getstudentneglectedordelinquentprogramassociationsbyid) | **GET** /ed-fi/studentNeglectedOrDelinquentProgramAssociations/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStudentNeglectedOrDelinquentProgramAssociationsPartitions**](StudentNeglectedOrDelinquentProgramAssociationsApi.md#getstudentneglectedordelinquentprogramassociationspartitions) | **GET** /ed-fi/studentNeglectedOrDelinquentProgramAssociations/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStudentNeglectedOrDelinquentProgramAssociations**](StudentNeglectedOrDelinquentProgramAssociationsApi.md#keychangesstudentneglectedordelinquentprogramassociations) | **GET** /ed-fi/studentNeglectedOrDelinquentProgramAssociations/keyChanges | Retrieves resources key changes based on change version.
[**postStudentNeglectedOrDelinquentProgramAssociation**](StudentNeglectedOrDelinquentProgramAssociationsApi.md#poststudentneglectedordelinquentprogramassociation) | **POST** /ed-fi/studentNeglectedOrDelinquentProgramAssociations | Creates or updates resources based on the natural key values of the supplied resource.
[**putStudentNeglectedOrDelinquentProgramAssociation**](StudentNeglectedOrDelinquentProgramAssociationsApi.md#putstudentneglectedordelinquentprogramassociation) | **PUT** /ed-fi/studentNeglectedOrDelinquentProgramAssociations/{id} | Updates a resource based on the resource identifier.


# **deleteStudentNeglectedOrDelinquentProgramAssociationById**
> deleteStudentNeglectedOrDelinquentProgramAssociationById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentNeglectedOrDelinquentProgramAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStudentNeglectedOrDelinquentProgramAssociationById(id, ifMatch);
} catch (e) {
    print('Exception when calling StudentNeglectedOrDelinquentProgramAssociationsApi->deleteStudentNeglectedOrDelinquentProgramAssociationById: $e\n');
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

# **deletesStudentNeglectedOrDelinquentProgramAssociations**
> List<TrackedChangesEdFiStudentNeglectedOrDelinquentProgramAssociationDelete> deletesStudentNeglectedOrDelinquentProgramAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentNeglectedOrDelinquentProgramAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStudentNeglectedOrDelinquentProgramAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentNeglectedOrDelinquentProgramAssociationsApi->deletesStudentNeglectedOrDelinquentProgramAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentNeglectedOrDelinquentProgramAssociationDelete>**](TrackedChangesEdFiStudentNeglectedOrDelinquentProgramAssociationDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentNeglectedOrDelinquentProgramAssociations**
> List<EdFiStudentNeglectedOrDelinquentProgramAssociation> getStudentNeglectedOrDelinquentProgramAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, beginDate, educationOrganizationId, programEducationOrganizationId, programName, programTypeDescriptor, studentUniqueId, neglectedOrDelinquentProgramDescriptor, elaProgressLevelDescriptor, mathematicsProgressLevelDescriptor, reasonExitedDescriptor, endDate, id, servedOutsideOfRegularSession, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentNeglectedOrDelinquentProgramAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final beginDate = 2013-10-20; // DateTime | The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programName = programName_example; // String | The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
final programTypeDescriptor = programTypeDescriptor_example; // String | The type of program.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final neglectedOrDelinquentProgramDescriptor = neglectedOrDelinquentProgramDescriptor_example; // String | The type of program under ESEA Title I, Part D, Subpart 1 (state programs) or Subpart 2 (LEA).
final elaProgressLevelDescriptor = elaProgressLevelDescriptor_example; // String | The progress measured from pre- to post- test for ELA.
final mathematicsProgressLevelDescriptor = mathematicsProgressLevelDescriptor_example; // String | The progress measured from pre- to post-test for Mathematics.
final reasonExitedDescriptor = reasonExitedDescriptor_example; // String | The reason the student left the program within a school or district.
final endDate = 2013-10-20; // DateTime | The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final id = id_example; // String | 
final servedOutsideOfRegularSession = true; // bool | Indicates whether the student received services during the summer session or between sessions.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentNeglectedOrDelinquentProgramAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, beginDate, educationOrganizationId, programEducationOrganizationId, programName, programTypeDescriptor, studentUniqueId, neglectedOrDelinquentProgramDescriptor, elaProgressLevelDescriptor, mathematicsProgressLevelDescriptor, reasonExitedDescriptor, endDate, id, servedOutsideOfRegularSession, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentNeglectedOrDelinquentProgramAssociationsApi->getStudentNeglectedOrDelinquentProgramAssociations: $e\n');
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
 **beginDate** | **DateTime**| The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **programEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **programName** | **String**| The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies. | [optional] 
 **programTypeDescriptor** | **String**| The type of program. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **neglectedOrDelinquentProgramDescriptor** | **String**| The type of program under ESEA Title I, Part D, Subpart 1 (state programs) or Subpart 2 (LEA). | [optional] 
 **elaProgressLevelDescriptor** | **String**| The progress measured from pre- to post- test for ELA. | [optional] 
 **mathematicsProgressLevelDescriptor** | **String**| The progress measured from pre- to post-test for Mathematics. | [optional] 
 **reasonExitedDescriptor** | **String**| The reason the student left the program within a school or district. | [optional] 
 **endDate** | **DateTime**| The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **id** | **String**|  | [optional] 
 **servedOutsideOfRegularSession** | **bool**| Indicates whether the student received services during the summer session or between sessions. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStudentNeglectedOrDelinquentProgramAssociation>**](EdFiStudentNeglectedOrDelinquentProgramAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentNeglectedOrDelinquentProgramAssociationsById**
> EdFiStudentNeglectedOrDelinquentProgramAssociation getStudentNeglectedOrDelinquentProgramAssociationsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentNeglectedOrDelinquentProgramAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentNeglectedOrDelinquentProgramAssociationsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentNeglectedOrDelinquentProgramAssociationsApi->getStudentNeglectedOrDelinquentProgramAssociationsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStudentNeglectedOrDelinquentProgramAssociation**](EdFiStudentNeglectedOrDelinquentProgramAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentNeglectedOrDelinquentProgramAssociationsPartitions**
> GetAcademicWeeksPartitions200Response getStudentNeglectedOrDelinquentProgramAssociationsPartitions(number, minChangeVersion, maxChangeVersion, beginDate, educationOrganizationId, programEducationOrganizationId, programName, programTypeDescriptor, studentUniqueId, neglectedOrDelinquentProgramDescriptor, elaProgressLevelDescriptor, mathematicsProgressLevelDescriptor, reasonExitedDescriptor, endDate, id, servedOutsideOfRegularSession, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentNeglectedOrDelinquentProgramAssociationsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final beginDate = 2013-10-20; // DateTime | The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programName = programName_example; // String | The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
final programTypeDescriptor = programTypeDescriptor_example; // String | The type of program.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final neglectedOrDelinquentProgramDescriptor = neglectedOrDelinquentProgramDescriptor_example; // String | The type of program under ESEA Title I, Part D, Subpart 1 (state programs) or Subpart 2 (LEA).
final elaProgressLevelDescriptor = elaProgressLevelDescriptor_example; // String | The progress measured from pre- to post- test for ELA.
final mathematicsProgressLevelDescriptor = mathematicsProgressLevelDescriptor_example; // String | The progress measured from pre- to post-test for Mathematics.
final reasonExitedDescriptor = reasonExitedDescriptor_example; // String | The reason the student left the program within a school or district.
final endDate = 2013-10-20; // DateTime | The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final id = id_example; // String | 
final servedOutsideOfRegularSession = true; // bool | Indicates whether the student received services during the summer session or between sessions.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentNeglectedOrDelinquentProgramAssociationsPartitions(number, minChangeVersion, maxChangeVersion, beginDate, educationOrganizationId, programEducationOrganizationId, programName, programTypeDescriptor, studentUniqueId, neglectedOrDelinquentProgramDescriptor, elaProgressLevelDescriptor, mathematicsProgressLevelDescriptor, reasonExitedDescriptor, endDate, id, servedOutsideOfRegularSession, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentNeglectedOrDelinquentProgramAssociationsApi->getStudentNeglectedOrDelinquentProgramAssociationsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **beginDate** | **DateTime**| The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **programEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **programName** | **String**| The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies. | [optional] 
 **programTypeDescriptor** | **String**| The type of program. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **neglectedOrDelinquentProgramDescriptor** | **String**| The type of program under ESEA Title I, Part D, Subpart 1 (state programs) or Subpart 2 (LEA). | [optional] 
 **elaProgressLevelDescriptor** | **String**| The progress measured from pre- to post- test for ELA. | [optional] 
 **mathematicsProgressLevelDescriptor** | **String**| The progress measured from pre- to post-test for Mathematics. | [optional] 
 **reasonExitedDescriptor** | **String**| The reason the student left the program within a school or district. | [optional] 
 **endDate** | **DateTime**| The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **id** | **String**|  | [optional] 
 **servedOutsideOfRegularSession** | **bool**| Indicates whether the student received services during the summer session or between sessions. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesStudentNeglectedOrDelinquentProgramAssociations**
> List<TrackedChangesEdFiStudentNeglectedOrDelinquentProgramAssociationKeyChange> keyChangesStudentNeglectedOrDelinquentProgramAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentNeglectedOrDelinquentProgramAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStudentNeglectedOrDelinquentProgramAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentNeglectedOrDelinquentProgramAssociationsApi->keyChangesStudentNeglectedOrDelinquentProgramAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentNeglectedOrDelinquentProgramAssociationKeyChange>**](TrackedChangesEdFiStudentNeglectedOrDelinquentProgramAssociationKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStudentNeglectedOrDelinquentProgramAssociation**
> postStudentNeglectedOrDelinquentProgramAssociation(edFiStudentNeglectedOrDelinquentProgramAssociation)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentNeglectedOrDelinquentProgramAssociationsApi();
final edFiStudentNeglectedOrDelinquentProgramAssociation = EdFiStudentNeglectedOrDelinquentProgramAssociation(); // EdFiStudentNeglectedOrDelinquentProgramAssociation | The JSON representation of the \"studentNeglectedOrDelinquentProgramAssociation\" resource to be created or updated.

try {
    api_instance.postStudentNeglectedOrDelinquentProgramAssociation(edFiStudentNeglectedOrDelinquentProgramAssociation);
} catch (e) {
    print('Exception when calling StudentNeglectedOrDelinquentProgramAssociationsApi->postStudentNeglectedOrDelinquentProgramAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStudentNeglectedOrDelinquentProgramAssociation** | [**EdFiStudentNeglectedOrDelinquentProgramAssociation**](EdFiStudentNeglectedOrDelinquentProgramAssociation.md)| The JSON representation of the \"studentNeglectedOrDelinquentProgramAssociation\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStudentNeglectedOrDelinquentProgramAssociation**
> putStudentNeglectedOrDelinquentProgramAssociation(id, edFiStudentNeglectedOrDelinquentProgramAssociation, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentNeglectedOrDelinquentProgramAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStudentNeglectedOrDelinquentProgramAssociation = EdFiStudentNeglectedOrDelinquentProgramAssociation(); // EdFiStudentNeglectedOrDelinquentProgramAssociation | The JSON representation of the \"studentNeglectedOrDelinquentProgramAssociation\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStudentNeglectedOrDelinquentProgramAssociation(id, edFiStudentNeglectedOrDelinquentProgramAssociation, ifMatch);
} catch (e) {
    print('Exception when calling StudentNeglectedOrDelinquentProgramAssociationsApi->putStudentNeglectedOrDelinquentProgramAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStudentNeglectedOrDelinquentProgramAssociation** | [**EdFiStudentNeglectedOrDelinquentProgramAssociation**](EdFiStudentNeglectedOrDelinquentProgramAssociation.md)| The JSON representation of the \"studentNeglectedOrDelinquentProgramAssociation\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

