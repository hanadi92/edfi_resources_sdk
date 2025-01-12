# edfi_resources_sdk.api.StudentsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStudentById**](StudentsApi.md#deletestudentbyid) | **DELETE** /ed-fi/students/{id} | Deletes an existing resource using the resource identifier.
[**deletesStudents**](StudentsApi.md#deletesstudents) | **GET** /ed-fi/students/deletes | Retrieves deleted resources based on change version.
[**getStudents**](StudentsApi.md#getstudents) | **GET** /ed-fi/students | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStudentsById**](StudentsApi.md#getstudentsbyid) | **GET** /ed-fi/students/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStudentsPartitions**](StudentsApi.md#getstudentspartitions) | **GET** /ed-fi/students/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStudents**](StudentsApi.md#keychangesstudents) | **GET** /ed-fi/students/keyChanges | Retrieves resources key changes based on change version.
[**postStudent**](StudentsApi.md#poststudent) | **POST** /ed-fi/students | Creates or updates resources based on the natural key values of the supplied resource.
[**putStudent**](StudentsApi.md#putstudent) | **PUT** /ed-fi/students/{id} | Updates a resource based on the resource identifier.


# **deleteStudentById**
> deleteStudentById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStudentById(id, ifMatch);
} catch (e) {
    print('Exception when calling StudentsApi->deleteStudentById: $e\n');
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

# **deletesStudents**
> List<TrackedChangesEdFiStudentDelete> deletesStudents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStudents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentsApi->deletesStudents: $e\n');
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

[**List<TrackedChangesEdFiStudentDelete>**](TrackedChangesEdFiStudentDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudents**
> List<EdFiStudent> getStudents(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, studentUniqueId, personId, sourceSystemDescriptor, citizenshipStatusDescriptor, birthCountryDescriptor, birthSexDescriptor, birthStateAbbreviationDescriptor, birthCity, birthDate, birthInternationalProvince, dateEnteredUS, firstName, generationCodeSuffix, id, lastSurname, maidenName, middleName, multipleBirthStatus, personalTitlePrefix, preferredFirstName, preferredLastSurname, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final personId = personId_example; // String | A unique alphanumeric code assigned to a person.
final sourceSystemDescriptor = sourceSystemDescriptor_example; // String | This descriptor defines the originating record source system for the person.
final citizenshipStatusDescriptor = citizenshipStatusDescriptor_example; // String | An indicator of whether or not the person is a U.S. citizen.
final birthCountryDescriptor = birthCountryDescriptor_example; // String | The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.
final birthSexDescriptor = birthSexDescriptor_example; // String | A person's sex at birth.
final birthStateAbbreviationDescriptor = birthStateAbbreviationDescriptor_example; // String | The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.
final birthCity = birthCity_example; // String | The city the student was born in.
final birthDate = 2013-10-20; // DateTime | The month, day, and year on which an individual was born.
final birthInternationalProvince = birthInternationalProvince_example; // String | For students born outside of the U.S., the Province or jurisdiction in which an individual is born.
final dateEnteredUS = 2013-10-20; // DateTime | For students born outside of the U.S., the date the student entered the U.S.
final firstName = firstName_example; // String | A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
final generationCodeSuffix = generationCodeSuffix_example; // String | An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
final id = id_example; // String | 
final lastSurname = lastSurname_example; // String | The name borne in common by members of a family.
final maidenName = maidenName_example; // String | The individual's maiden name.
final middleName = middleName_example; // String | A secondary name given to an individual at birth, baptism, or during another naming ceremony.
final multipleBirthStatus = true; // bool | Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)
final personalTitlePrefix = personalTitlePrefix_example; // String | A prefix used to denote the title, degree, position, or seniority of the individual.
final preferredFirstName = preferredFirstName_example; // String | The first name the individual prefers, if different from their legal first name
final preferredLastSurname = preferredLastSurname_example; // String | The last name the individual prefers, if different from their legal last name
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudents(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, studentUniqueId, personId, sourceSystemDescriptor, citizenshipStatusDescriptor, birthCountryDescriptor, birthSexDescriptor, birthStateAbbreviationDescriptor, birthCity, birthDate, birthInternationalProvince, dateEnteredUS, firstName, generationCodeSuffix, id, lastSurname, maidenName, middleName, multipleBirthStatus, personalTitlePrefix, preferredFirstName, preferredLastSurname, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentsApi->getStudents: $e\n');
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
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **personId** | **String**| A unique alphanumeric code assigned to a person. | [optional] 
 **sourceSystemDescriptor** | **String**| This descriptor defines the originating record source system for the person. | [optional] 
 **citizenshipStatusDescriptor** | **String**| An indicator of whether or not the person is a U.S. citizen. | [optional] 
 **birthCountryDescriptor** | **String**| The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes. | [optional] 
 **birthSexDescriptor** | **String**| A person's sex at birth. | [optional] 
 **birthStateAbbreviationDescriptor** | **String**| The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born. | [optional] 
 **birthCity** | **String**| The city the student was born in. | [optional] 
 **birthDate** | **DateTime**| The month, day, and year on which an individual was born. | [optional] 
 **birthInternationalProvince** | **String**| For students born outside of the U.S., the Province or jurisdiction in which an individual is born. | [optional] 
 **dateEnteredUS** | **DateTime**| For students born outside of the U.S., the date the student entered the U.S. | [optional] 
 **firstName** | **String**| A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change. | [optional] 
 **generationCodeSuffix** | **String**| An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III). | [optional] 
 **id** | **String**|  | [optional] 
 **lastSurname** | **String**| The name borne in common by members of a family. | [optional] 
 **maidenName** | **String**| The individual's maiden name. | [optional] 
 **middleName** | **String**| A secondary name given to an individual at birth, baptism, or during another naming ceremony. | [optional] 
 **multipleBirthStatus** | **bool**| Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.) | [optional] 
 **personalTitlePrefix** | **String**| A prefix used to denote the title, degree, position, or seniority of the individual. | [optional] 
 **preferredFirstName** | **String**| The first name the individual prefers, if different from their legal first name | [optional] 
 **preferredLastSurname** | **String**| The last name the individual prefers, if different from their legal last name | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStudent>**](EdFiStudent.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentsById**
> EdFiStudent getStudentsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentsApi->getStudentsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStudent**](EdFiStudent.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentsPartitions**
> GetAcademicWeeksPartitions200Response getStudentsPartitions(number, minChangeVersion, maxChangeVersion, studentUniqueId, personId, sourceSystemDescriptor, citizenshipStatusDescriptor, birthCountryDescriptor, birthSexDescriptor, birthStateAbbreviationDescriptor, birthCity, birthDate, birthInternationalProvince, dateEnteredUS, firstName, generationCodeSuffix, id, lastSurname, maidenName, middleName, multipleBirthStatus, personalTitlePrefix, preferredFirstName, preferredLastSurname, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final personId = personId_example; // String | A unique alphanumeric code assigned to a person.
final sourceSystemDescriptor = sourceSystemDescriptor_example; // String | This descriptor defines the originating record source system for the person.
final citizenshipStatusDescriptor = citizenshipStatusDescriptor_example; // String | An indicator of whether or not the person is a U.S. citizen.
final birthCountryDescriptor = birthCountryDescriptor_example; // String | The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.
final birthSexDescriptor = birthSexDescriptor_example; // String | A person's sex at birth.
final birthStateAbbreviationDescriptor = birthStateAbbreviationDescriptor_example; // String | The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.
final birthCity = birthCity_example; // String | The city the student was born in.
final birthDate = 2013-10-20; // DateTime | The month, day, and year on which an individual was born.
final birthInternationalProvince = birthInternationalProvince_example; // String | For students born outside of the U.S., the Province or jurisdiction in which an individual is born.
final dateEnteredUS = 2013-10-20; // DateTime | For students born outside of the U.S., the date the student entered the U.S.
final firstName = firstName_example; // String | A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
final generationCodeSuffix = generationCodeSuffix_example; // String | An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
final id = id_example; // String | 
final lastSurname = lastSurname_example; // String | The name borne in common by members of a family.
final maidenName = maidenName_example; // String | The individual's maiden name.
final middleName = middleName_example; // String | A secondary name given to an individual at birth, baptism, or during another naming ceremony.
final multipleBirthStatus = true; // bool | Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)
final personalTitlePrefix = personalTitlePrefix_example; // String | A prefix used to denote the title, degree, position, or seniority of the individual.
final preferredFirstName = preferredFirstName_example; // String | The first name the individual prefers, if different from their legal first name
final preferredLastSurname = preferredLastSurname_example; // String | The last name the individual prefers, if different from their legal last name
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentsPartitions(number, minChangeVersion, maxChangeVersion, studentUniqueId, personId, sourceSystemDescriptor, citizenshipStatusDescriptor, birthCountryDescriptor, birthSexDescriptor, birthStateAbbreviationDescriptor, birthCity, birthDate, birthInternationalProvince, dateEnteredUS, firstName, generationCodeSuffix, id, lastSurname, maidenName, middleName, multipleBirthStatus, personalTitlePrefix, preferredFirstName, preferredLastSurname, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentsApi->getStudentsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **personId** | **String**| A unique alphanumeric code assigned to a person. | [optional] 
 **sourceSystemDescriptor** | **String**| This descriptor defines the originating record source system for the person. | [optional] 
 **citizenshipStatusDescriptor** | **String**| An indicator of whether or not the person is a U.S. citizen. | [optional] 
 **birthCountryDescriptor** | **String**| The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes. | [optional] 
 **birthSexDescriptor** | **String**| A person's sex at birth. | [optional] 
 **birthStateAbbreviationDescriptor** | **String**| The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born. | [optional] 
 **birthCity** | **String**| The city the student was born in. | [optional] 
 **birthDate** | **DateTime**| The month, day, and year on which an individual was born. | [optional] 
 **birthInternationalProvince** | **String**| For students born outside of the U.S., the Province or jurisdiction in which an individual is born. | [optional] 
 **dateEnteredUS** | **DateTime**| For students born outside of the U.S., the date the student entered the U.S. | [optional] 
 **firstName** | **String**| A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change. | [optional] 
 **generationCodeSuffix** | **String**| An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III). | [optional] 
 **id** | **String**|  | [optional] 
 **lastSurname** | **String**| The name borne in common by members of a family. | [optional] 
 **maidenName** | **String**| The individual's maiden name. | [optional] 
 **middleName** | **String**| A secondary name given to an individual at birth, baptism, or during another naming ceremony. | [optional] 
 **multipleBirthStatus** | **bool**| Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.) | [optional] 
 **personalTitlePrefix** | **String**| A prefix used to denote the title, degree, position, or seniority of the individual. | [optional] 
 **preferredFirstName** | **String**| The first name the individual prefers, if different from their legal first name | [optional] 
 **preferredLastSurname** | **String**| The last name the individual prefers, if different from their legal last name | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesStudents**
> List<TrackedChangesEdFiStudentKeyChange> keyChangesStudents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStudents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentsApi->keyChangesStudents: $e\n');
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

[**List<TrackedChangesEdFiStudentKeyChange>**](TrackedChangesEdFiStudentKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStudent**
> postStudent(edFiStudent)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentsApi();
final edFiStudent = EdFiStudent(); // EdFiStudent | The JSON representation of the \"student\" resource to be created or updated.

try {
    api_instance.postStudent(edFiStudent);
} catch (e) {
    print('Exception when calling StudentsApi->postStudent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStudent** | [**EdFiStudent**](EdFiStudent.md)| The JSON representation of the \"student\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStudent**
> putStudent(id, edFiStudent, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStudent = EdFiStudent(); // EdFiStudent | The JSON representation of the \"student\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStudent(id, edFiStudent, ifMatch);
} catch (e) {
    print('Exception when calling StudentsApi->putStudent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStudent** | [**EdFiStudent**](EdFiStudent.md)| The JSON representation of the \"student\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

