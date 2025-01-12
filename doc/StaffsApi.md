# edfi_resources_sdk.api.StaffsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStaffById**](StaffsApi.md#deletestaffbyid) | **DELETE** /ed-fi/staffs/{id} | Deletes an existing resource using the resource identifier.
[**deletesStaffs**](StaffsApi.md#deletesstaffs) | **GET** /ed-fi/staffs/deletes | Retrieves deleted resources based on change version.
[**getStaffs**](StaffsApi.md#getstaffs) | **GET** /ed-fi/staffs | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStaffsById**](StaffsApi.md#getstaffsbyid) | **GET** /ed-fi/staffs/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStaffsPartitions**](StaffsApi.md#getstaffspartitions) | **GET** /ed-fi/staffs/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStaffs**](StaffsApi.md#keychangesstaffs) | **GET** /ed-fi/staffs/keyChanges | Retrieves resources key changes based on change version.
[**postStaff**](StaffsApi.md#poststaff) | **POST** /ed-fi/staffs | Creates or updates resources based on the natural key values of the supplied resource.
[**putStaff**](StaffsApi.md#putstaff) | **PUT** /ed-fi/staffs/{id} | Updates a resource based on the resource identifier.


# **deleteStaffById**
> deleteStaffById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStaffById(id, ifMatch);
} catch (e) {
    print('Exception when calling StaffsApi->deleteStaffById: $e\n');
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

# **deletesStaffs**
> List<TrackedChangesEdFiStaffDelete> deletesStaffs(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStaffs(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffsApi->deletesStaffs: $e\n');
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

[**List<TrackedChangesEdFiStaffDelete>**](TrackedChangesEdFiStaffDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStaffs**
> List<EdFiStaff> getStaffs(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, staffUniqueId, personId, sourceSystemDescriptor, citizenshipStatusDescriptor, highestCompletedLevelOfEducationDescriptor, sexDescriptor, birthDate, firstName, genderIdentity, generationCodeSuffix, highlyQualifiedTeacher, hispanicLatinoEthnicity, id, lastSurname, loginId, maidenName, middleName, personalTitlePrefix, preferredFirstName, preferredLastSurname, yearsOfPriorProfessionalExperience, yearsOfPriorTeachingExperience, useSnapshot, staffIdentificationSystemDescriptor, assigningOrganizationIdentificationCode, identificationCode)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final staffUniqueId = staffUniqueId_example; // String | A unique alphanumeric code assigned to a staff.
final personId = personId_example; // String | A unique alphanumeric code assigned to a person.
final sourceSystemDescriptor = sourceSystemDescriptor_example; // String | This descriptor defines the originating record source system for the person.
final citizenshipStatusDescriptor = citizenshipStatusDescriptor_example; // String | An indicator of whether or not the person is a U.S. citizen.
final highestCompletedLevelOfEducationDescriptor = highestCompletedLevelOfEducationDescriptor_example; // String | The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).
final sexDescriptor = sexDescriptor_example; // String | The birth sex of the staff member.
final birthDate = 2013-10-20; // DateTime | The month, day, and year on which an individual was born.
final firstName = firstName_example; // String | A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
final genderIdentity = genderIdentity_example; // String | The gender the staff member identifies themselves as.
final generationCodeSuffix = generationCodeSuffix_example; // String | An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
final highlyQualifiedTeacher = true; // bool | An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for ALL Sections being taught.
final hispanicLatinoEthnicity = true; // bool | An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
final id = id_example; // String | 
final lastSurname = lastSurname_example; // String | The name borne in common by members of a family.
final loginId = loginId_example; // String | The login ID for the user; used for security access control interface.
final maidenName = maidenName_example; // String | The individual's maiden name.
final middleName = middleName_example; // String | A secondary name given to an individual at birth, baptism, or during another naming ceremony.
final personalTitlePrefix = personalTitlePrefix_example; // String | A prefix used to denote the title, degree, position, or seniority of the individual.
final preferredFirstName = preferredFirstName_example; // String | The first name the individual prefers, if different from their legal first name
final preferredLastSurname = preferredLastSurname_example; // String | The last name the individual prefers, if different from their legal last name
final yearsOfPriorProfessionalExperience = 1.2; // double | The total number of years that an individual has previously held a similar professional position in one or more education institutions prior to the current school year.
final yearsOfPriorTeachingExperience = 1.2; // double | The total number of years that an individual has previously held a teaching position in one or more education institutions prior to the current school year.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.
final staffIdentificationSystemDescriptor = staffIdentificationSystemDescriptor_example; // String | A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a staff member.
final assigningOrganizationIdentificationCode = assigningOrganizationIdentificationCode_example; // String | The organization code or name assigning the staff Identification Code.
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity.

try {
    final result = api_instance.getStaffs(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, staffUniqueId, personId, sourceSystemDescriptor, citizenshipStatusDescriptor, highestCompletedLevelOfEducationDescriptor, sexDescriptor, birthDate, firstName, genderIdentity, generationCodeSuffix, highlyQualifiedTeacher, hispanicLatinoEthnicity, id, lastSurname, loginId, maidenName, middleName, personalTitlePrefix, preferredFirstName, preferredLastSurname, yearsOfPriorProfessionalExperience, yearsOfPriorTeachingExperience, useSnapshot, staffIdentificationSystemDescriptor, assigningOrganizationIdentificationCode, identificationCode);
    print(result);
} catch (e) {
    print('Exception when calling StaffsApi->getStaffs: $e\n');
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
 **staffUniqueId** | **String**| A unique alphanumeric code assigned to a staff. | [optional] 
 **personId** | **String**| A unique alphanumeric code assigned to a person. | [optional] 
 **sourceSystemDescriptor** | **String**| This descriptor defines the originating record source system for the person. | [optional] 
 **citizenshipStatusDescriptor** | **String**| An indicator of whether or not the person is a U.S. citizen. | [optional] 
 **highestCompletedLevelOfEducationDescriptor** | **String**| The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). | [optional] 
 **sexDescriptor** | **String**| The birth sex of the staff member. | [optional] 
 **birthDate** | **DateTime**| The month, day, and year on which an individual was born. | [optional] 
 **firstName** | **String**| A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change. | [optional] 
 **genderIdentity** | **String**| The gender the staff member identifies themselves as. | [optional] 
 **generationCodeSuffix** | **String**| An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III). | [optional] 
 **highlyQualifiedTeacher** | **bool**| An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for ALL Sections being taught. | [optional] 
 **hispanicLatinoEthnicity** | **bool**| An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\" | [optional] 
 **id** | **String**|  | [optional] 
 **lastSurname** | **String**| The name borne in common by members of a family. | [optional] 
 **loginId** | **String**| The login ID for the user; used for security access control interface. | [optional] 
 **maidenName** | **String**| The individual's maiden name. | [optional] 
 **middleName** | **String**| A secondary name given to an individual at birth, baptism, or during another naming ceremony. | [optional] 
 **personalTitlePrefix** | **String**| A prefix used to denote the title, degree, position, or seniority of the individual. | [optional] 
 **preferredFirstName** | **String**| The first name the individual prefers, if different from their legal first name | [optional] 
 **preferredLastSurname** | **String**| The last name the individual prefers, if different from their legal last name | [optional] 
 **yearsOfPriorProfessionalExperience** | **double**| The total number of years that an individual has previously held a similar professional position in one or more education institutions prior to the current school year. | [optional] 
 **yearsOfPriorTeachingExperience** | **double**| The total number of years that an individual has previously held a teaching position in one or more education institutions prior to the current school year. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]
 **staffIdentificationSystemDescriptor** | **String**| A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a staff member. | [optional] 
 **assigningOrganizationIdentificationCode** | **String**| The organization code or name assigning the staff Identification Code. | [optional] 
 **identificationCode** | **String**| A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity. | [optional] 

### Return type

[**List<EdFiStaff>**](EdFiStaff.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStaffsById**
> EdFiStaff getStaffsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStaffsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffsApi->getStaffsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStaff**](EdFiStaff.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStaffsPartitions**
> GetAcademicWeeksPartitions200Response getStaffsPartitions(number, minChangeVersion, maxChangeVersion, staffUniqueId, personId, sourceSystemDescriptor, citizenshipStatusDescriptor, highestCompletedLevelOfEducationDescriptor, sexDescriptor, birthDate, firstName, genderIdentity, generationCodeSuffix, highlyQualifiedTeacher, hispanicLatinoEthnicity, id, lastSurname, loginId, maidenName, middleName, personalTitlePrefix, preferredFirstName, preferredLastSurname, yearsOfPriorProfessionalExperience, yearsOfPriorTeachingExperience, useSnapshot, staffIdentificationSystemDescriptor, assigningOrganizationIdentificationCode, identificationCode)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final staffUniqueId = staffUniqueId_example; // String | A unique alphanumeric code assigned to a staff.
final personId = personId_example; // String | A unique alphanumeric code assigned to a person.
final sourceSystemDescriptor = sourceSystemDescriptor_example; // String | This descriptor defines the originating record source system for the person.
final citizenshipStatusDescriptor = citizenshipStatusDescriptor_example; // String | An indicator of whether or not the person is a U.S. citizen.
final highestCompletedLevelOfEducationDescriptor = highestCompletedLevelOfEducationDescriptor_example; // String | The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).
final sexDescriptor = sexDescriptor_example; // String | The birth sex of the staff member.
final birthDate = 2013-10-20; // DateTime | The month, day, and year on which an individual was born.
final firstName = firstName_example; // String | A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
final genderIdentity = genderIdentity_example; // String | The gender the staff member identifies themselves as.
final generationCodeSuffix = generationCodeSuffix_example; // String | An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
final highlyQualifiedTeacher = true; // bool | An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for ALL Sections being taught.
final hispanicLatinoEthnicity = true; // bool | An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
final id = id_example; // String | 
final lastSurname = lastSurname_example; // String | The name borne in common by members of a family.
final loginId = loginId_example; // String | The login ID for the user; used for security access control interface.
final maidenName = maidenName_example; // String | The individual's maiden name.
final middleName = middleName_example; // String | A secondary name given to an individual at birth, baptism, or during another naming ceremony.
final personalTitlePrefix = personalTitlePrefix_example; // String | A prefix used to denote the title, degree, position, or seniority of the individual.
final preferredFirstName = preferredFirstName_example; // String | The first name the individual prefers, if different from their legal first name
final preferredLastSurname = preferredLastSurname_example; // String | The last name the individual prefers, if different from their legal last name
final yearsOfPriorProfessionalExperience = 1.2; // double | The total number of years that an individual has previously held a similar professional position in one or more education institutions prior to the current school year.
final yearsOfPriorTeachingExperience = 1.2; // double | The total number of years that an individual has previously held a teaching position in one or more education institutions prior to the current school year.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.
final staffIdentificationSystemDescriptor = staffIdentificationSystemDescriptor_example; // String | A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a staff member.
final assigningOrganizationIdentificationCode = assigningOrganizationIdentificationCode_example; // String | The organization code or name assigning the staff Identification Code.
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity.

try {
    final result = api_instance.getStaffsPartitions(number, minChangeVersion, maxChangeVersion, staffUniqueId, personId, sourceSystemDescriptor, citizenshipStatusDescriptor, highestCompletedLevelOfEducationDescriptor, sexDescriptor, birthDate, firstName, genderIdentity, generationCodeSuffix, highlyQualifiedTeacher, hispanicLatinoEthnicity, id, lastSurname, loginId, maidenName, middleName, personalTitlePrefix, preferredFirstName, preferredLastSurname, yearsOfPriorProfessionalExperience, yearsOfPriorTeachingExperience, useSnapshot, staffIdentificationSystemDescriptor, assigningOrganizationIdentificationCode, identificationCode);
    print(result);
} catch (e) {
    print('Exception when calling StaffsApi->getStaffsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **staffUniqueId** | **String**| A unique alphanumeric code assigned to a staff. | [optional] 
 **personId** | **String**| A unique alphanumeric code assigned to a person. | [optional] 
 **sourceSystemDescriptor** | **String**| This descriptor defines the originating record source system for the person. | [optional] 
 **citizenshipStatusDescriptor** | **String**| An indicator of whether or not the person is a U.S. citizen. | [optional] 
 **highestCompletedLevelOfEducationDescriptor** | **String**| The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). | [optional] 
 **sexDescriptor** | **String**| The birth sex of the staff member. | [optional] 
 **birthDate** | **DateTime**| The month, day, and year on which an individual was born. | [optional] 
 **firstName** | **String**| A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change. | [optional] 
 **genderIdentity** | **String**| The gender the staff member identifies themselves as. | [optional] 
 **generationCodeSuffix** | **String**| An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III). | [optional] 
 **highlyQualifiedTeacher** | **bool**| An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for ALL Sections being taught. | [optional] 
 **hispanicLatinoEthnicity** | **bool**| An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\" | [optional] 
 **id** | **String**|  | [optional] 
 **lastSurname** | **String**| The name borne in common by members of a family. | [optional] 
 **loginId** | **String**| The login ID for the user; used for security access control interface. | [optional] 
 **maidenName** | **String**| The individual's maiden name. | [optional] 
 **middleName** | **String**| A secondary name given to an individual at birth, baptism, or during another naming ceremony. | [optional] 
 **personalTitlePrefix** | **String**| A prefix used to denote the title, degree, position, or seniority of the individual. | [optional] 
 **preferredFirstName** | **String**| The first name the individual prefers, if different from their legal first name | [optional] 
 **preferredLastSurname** | **String**| The last name the individual prefers, if different from their legal last name | [optional] 
 **yearsOfPriorProfessionalExperience** | **double**| The total number of years that an individual has previously held a similar professional position in one or more education institutions prior to the current school year. | [optional] 
 **yearsOfPriorTeachingExperience** | **double**| The total number of years that an individual has previously held a teaching position in one or more education institutions prior to the current school year. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]
 **staffIdentificationSystemDescriptor** | **String**| A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a staff member. | [optional] 
 **assigningOrganizationIdentificationCode** | **String**| The organization code or name assigning the staff Identification Code. | [optional] 
 **identificationCode** | **String**| A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity. | [optional] 

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesStaffs**
> List<TrackedChangesEdFiStaffKeyChange> keyChangesStaffs(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStaffs(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffsApi->keyChangesStaffs: $e\n');
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

[**List<TrackedChangesEdFiStaffKeyChange>**](TrackedChangesEdFiStaffKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStaff**
> postStaff(edFiStaff)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffsApi();
final edFiStaff = EdFiStaff(); // EdFiStaff | The JSON representation of the \"staff\" resource to be created or updated.

try {
    api_instance.postStaff(edFiStaff);
} catch (e) {
    print('Exception when calling StaffsApi->postStaff: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStaff** | [**EdFiStaff**](EdFiStaff.md)| The JSON representation of the \"staff\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStaff**
> putStaff(id, edFiStaff, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStaff = EdFiStaff(); // EdFiStaff | The JSON representation of the \"staff\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStaff(id, edFiStaff, ifMatch);
} catch (e) {
    print('Exception when calling StaffsApi->putStaff: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStaff** | [**EdFiStaff**](EdFiStaff.md)| The JSON representation of the \"staff\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

