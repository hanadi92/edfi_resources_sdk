# edfi_resources_sdk.api.StudentEducationOrganizationAssociationsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStudentEducationOrganizationAssociationById**](StudentEducationOrganizationAssociationsApi.md#deletestudenteducationorganizationassociationbyid) | **DELETE** /ed-fi/studentEducationOrganizationAssociations/{id} | Deletes an existing resource using the resource identifier.
[**deletesStudentEducationOrganizationAssociations**](StudentEducationOrganizationAssociationsApi.md#deletesstudenteducationorganizationassociations) | **GET** /ed-fi/studentEducationOrganizationAssociations/deletes | Retrieves deleted resources based on change version.
[**getStudentEducationOrganizationAssociations**](StudentEducationOrganizationAssociationsApi.md#getstudenteducationorganizationassociations) | **GET** /ed-fi/studentEducationOrganizationAssociations | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStudentEducationOrganizationAssociationsById**](StudentEducationOrganizationAssociationsApi.md#getstudenteducationorganizationassociationsbyid) | **GET** /ed-fi/studentEducationOrganizationAssociations/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStudentEducationOrganizationAssociationsPartitions**](StudentEducationOrganizationAssociationsApi.md#getstudenteducationorganizationassociationspartitions) | **GET** /ed-fi/studentEducationOrganizationAssociations/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStudentEducationOrganizationAssociations**](StudentEducationOrganizationAssociationsApi.md#keychangesstudenteducationorganizationassociations) | **GET** /ed-fi/studentEducationOrganizationAssociations/keyChanges | Retrieves resources key changes based on change version.
[**postStudentEducationOrganizationAssociation**](StudentEducationOrganizationAssociationsApi.md#poststudenteducationorganizationassociation) | **POST** /ed-fi/studentEducationOrganizationAssociations | Creates or updates resources based on the natural key values of the supplied resource.
[**putStudentEducationOrganizationAssociation**](StudentEducationOrganizationAssociationsApi.md#putstudenteducationorganizationassociation) | **PUT** /ed-fi/studentEducationOrganizationAssociations/{id} | Updates a resource based on the resource identifier.


# **deleteStudentEducationOrganizationAssociationById**
> deleteStudentEducationOrganizationAssociationById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentEducationOrganizationAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStudentEducationOrganizationAssociationById(id, ifMatch);
} catch (e) {
    print('Exception when calling StudentEducationOrganizationAssociationsApi->deleteStudentEducationOrganizationAssociationById: $e\n');
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

# **deletesStudentEducationOrganizationAssociations**
> List<TrackedChangesEdFiStudentEducationOrganizationAssociationDelete> deletesStudentEducationOrganizationAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentEducationOrganizationAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStudentEducationOrganizationAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentEducationOrganizationAssociationsApi->deletesStudentEducationOrganizationAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentEducationOrganizationAssociationDelete>**](TrackedChangesEdFiStudentEducationOrganizationAssociationDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentEducationOrganizationAssociations**
> List<EdFiStudentEducationOrganizationAssociation> getStudentEducationOrganizationAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, educationOrganizationId, studentUniqueId, barrierToInternetAccessInResidenceDescriptor, internetAccessTypeInResidenceDescriptor, internetPerformanceInResidenceDescriptor, limitedEnglishProficiencyDescriptor, primaryLearningDeviceAccessDescriptor, primaryLearningDeviceAwayFromSchoolDescriptor, primaryLearningDeviceProviderDescriptor, sexDescriptor, supporterMilitaryConnectionDescriptor, genderIdentity, hispanicLatinoEthnicity, id, internetAccessInResidence, loginId, profileThumbnail, useSnapshot, studentIdentificationSystemDescriptor, assigningOrganizationIdentificationCode, identificationCode)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentEducationOrganizationAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final barrierToInternetAccessInResidenceDescriptor = barrierToInternetAccessInResidenceDescriptor_example; // String | An indication of the barrier to having internet access in the student s primary place of residence.
final internetAccessTypeInResidenceDescriptor = internetAccessTypeInResidenceDescriptor_example; // String | The primary type of internet service used in the student s primary place of residence.
final internetPerformanceInResidenceDescriptor = internetPerformanceInResidenceDescriptor_example; // String | An indication of whether the student can complete the full range of learning activities, including video streaming and assignment upload, without interruptions caused by poor internet performance in their primary place of residence.
final limitedEnglishProficiencyDescriptor = limitedEnglishProficiencyDescriptor_example; // String | An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.
final primaryLearningDeviceAccessDescriptor = primaryLearningDeviceAccessDescriptor_example; // String | An indication of whether the primary learning device is shared or not shared with another individual.
final primaryLearningDeviceAwayFromSchoolDescriptor = primaryLearningDeviceAwayFromSchoolDescriptor_example; // String | The type of device the student uses most often to complete learning activities away from school.
final primaryLearningDeviceProviderDescriptor = primaryLearningDeviceProviderDescriptor_example; // String | The provider of the primary learning device.
final sexDescriptor = sexDescriptor_example; // String | The student's birth sex as reported to the education organization.
final supporterMilitaryConnectionDescriptor = supporterMilitaryConnectionDescriptor_example; // String | Military connection of the person/people whom the student is a dependent of.
final genderIdentity = genderIdentity_example; // String | The student's gender as last reported to the education organization.
final hispanicLatinoEthnicity = true; // bool | An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race, as last reported to the education organization. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
final id = id_example; // String | 
final internetAccessInResidence = true; // bool | An indication of whether the student is able to access the internet in their primary place of residence.
final loginId = loginId_example; // String | The login ID for the user; used for security access control interface.
final profileThumbnail = profileThumbnail_example; // String | Locator reference for the student photo. The specification for that reference is left to local definition.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.
final studentIdentificationSystemDescriptor = studentIdentificationSystemDescriptor_example; // String | A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a student.
final assigningOrganizationIdentificationCode = assigningOrganizationIdentificationCode_example; // String | The organization code or name assigning the StudentIdentificationCode.
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code assigned to a student by a school, school system, a state, or other agency or entity.

try {
    final result = api_instance.getStudentEducationOrganizationAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, educationOrganizationId, studentUniqueId, barrierToInternetAccessInResidenceDescriptor, internetAccessTypeInResidenceDescriptor, internetPerformanceInResidenceDescriptor, limitedEnglishProficiencyDescriptor, primaryLearningDeviceAccessDescriptor, primaryLearningDeviceAwayFromSchoolDescriptor, primaryLearningDeviceProviderDescriptor, sexDescriptor, supporterMilitaryConnectionDescriptor, genderIdentity, hispanicLatinoEthnicity, id, internetAccessInResidence, loginId, profileThumbnail, useSnapshot, studentIdentificationSystemDescriptor, assigningOrganizationIdentificationCode, identificationCode);
    print(result);
} catch (e) {
    print('Exception when calling StudentEducationOrganizationAssociationsApi->getStudentEducationOrganizationAssociations: $e\n');
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
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **barrierToInternetAccessInResidenceDescriptor** | **String**| An indication of the barrier to having internet access in the student s primary place of residence. | [optional] 
 **internetAccessTypeInResidenceDescriptor** | **String**| The primary type of internet service used in the student s primary place of residence. | [optional] 
 **internetPerformanceInResidenceDescriptor** | **String**| An indication of whether the student can complete the full range of learning activities, including video streaming and assignment upload, without interruptions caused by poor internet performance in their primary place of residence. | [optional] 
 **limitedEnglishProficiencyDescriptor** | **String**| An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient. | [optional] 
 **primaryLearningDeviceAccessDescriptor** | **String**| An indication of whether the primary learning device is shared or not shared with another individual. | [optional] 
 **primaryLearningDeviceAwayFromSchoolDescriptor** | **String**| The type of device the student uses most often to complete learning activities away from school. | [optional] 
 **primaryLearningDeviceProviderDescriptor** | **String**| The provider of the primary learning device. | [optional] 
 **sexDescriptor** | **String**| The student's birth sex as reported to the education organization. | [optional] 
 **supporterMilitaryConnectionDescriptor** | **String**| Military connection of the person/people whom the student is a dependent of. | [optional] 
 **genderIdentity** | **String**| The student's gender as last reported to the education organization. | [optional] 
 **hispanicLatinoEthnicity** | **bool**| An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race, as last reported to the education organization. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\" | [optional] 
 **id** | **String**|  | [optional] 
 **internetAccessInResidence** | **bool**| An indication of whether the student is able to access the internet in their primary place of residence. | [optional] 
 **loginId** | **String**| The login ID for the user; used for security access control interface. | [optional] 
 **profileThumbnail** | **String**| Locator reference for the student photo. The specification for that reference is left to local definition. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]
 **studentIdentificationSystemDescriptor** | **String**| A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a student. | [optional] 
 **assigningOrganizationIdentificationCode** | **String**| The organization code or name assigning the StudentIdentificationCode. | [optional] 
 **identificationCode** | **String**| A unique number or alphanumeric code assigned to a student by a school, school system, a state, or other agency or entity. | [optional] 

### Return type

[**List<EdFiStudentEducationOrganizationAssociation>**](EdFiStudentEducationOrganizationAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentEducationOrganizationAssociationsById**
> EdFiStudentEducationOrganizationAssociation getStudentEducationOrganizationAssociationsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentEducationOrganizationAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentEducationOrganizationAssociationsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentEducationOrganizationAssociationsApi->getStudentEducationOrganizationAssociationsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStudentEducationOrganizationAssociation**](EdFiStudentEducationOrganizationAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentEducationOrganizationAssociationsPartitions**
> GetAcademicWeeksPartitions200Response getStudentEducationOrganizationAssociationsPartitions(number, minChangeVersion, maxChangeVersion, educationOrganizationId, studentUniqueId, barrierToInternetAccessInResidenceDescriptor, internetAccessTypeInResidenceDescriptor, internetPerformanceInResidenceDescriptor, limitedEnglishProficiencyDescriptor, primaryLearningDeviceAccessDescriptor, primaryLearningDeviceAwayFromSchoolDescriptor, primaryLearningDeviceProviderDescriptor, sexDescriptor, supporterMilitaryConnectionDescriptor, genderIdentity, hispanicLatinoEthnicity, id, internetAccessInResidence, loginId, profileThumbnail, useSnapshot, studentIdentificationSystemDescriptor, assigningOrganizationIdentificationCode, identificationCode)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentEducationOrganizationAssociationsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final barrierToInternetAccessInResidenceDescriptor = barrierToInternetAccessInResidenceDescriptor_example; // String | An indication of the barrier to having internet access in the student s primary place of residence.
final internetAccessTypeInResidenceDescriptor = internetAccessTypeInResidenceDescriptor_example; // String | The primary type of internet service used in the student s primary place of residence.
final internetPerformanceInResidenceDescriptor = internetPerformanceInResidenceDescriptor_example; // String | An indication of whether the student can complete the full range of learning activities, including video streaming and assignment upload, without interruptions caused by poor internet performance in their primary place of residence.
final limitedEnglishProficiencyDescriptor = limitedEnglishProficiencyDescriptor_example; // String | An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.
final primaryLearningDeviceAccessDescriptor = primaryLearningDeviceAccessDescriptor_example; // String | An indication of whether the primary learning device is shared or not shared with another individual.
final primaryLearningDeviceAwayFromSchoolDescriptor = primaryLearningDeviceAwayFromSchoolDescriptor_example; // String | The type of device the student uses most often to complete learning activities away from school.
final primaryLearningDeviceProviderDescriptor = primaryLearningDeviceProviderDescriptor_example; // String | The provider of the primary learning device.
final sexDescriptor = sexDescriptor_example; // String | The student's birth sex as reported to the education organization.
final supporterMilitaryConnectionDescriptor = supporterMilitaryConnectionDescriptor_example; // String | Military connection of the person/people whom the student is a dependent of.
final genderIdentity = genderIdentity_example; // String | The student's gender as last reported to the education organization.
final hispanicLatinoEthnicity = true; // bool | An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race, as last reported to the education organization. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
final id = id_example; // String | 
final internetAccessInResidence = true; // bool | An indication of whether the student is able to access the internet in their primary place of residence.
final loginId = loginId_example; // String | The login ID for the user; used for security access control interface.
final profileThumbnail = profileThumbnail_example; // String | Locator reference for the student photo. The specification for that reference is left to local definition.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.
final studentIdentificationSystemDescriptor = studentIdentificationSystemDescriptor_example; // String | A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a student.
final assigningOrganizationIdentificationCode = assigningOrganizationIdentificationCode_example; // String | The organization code or name assigning the StudentIdentificationCode.
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code assigned to a student by a school, school system, a state, or other agency or entity.

try {
    final result = api_instance.getStudentEducationOrganizationAssociationsPartitions(number, minChangeVersion, maxChangeVersion, educationOrganizationId, studentUniqueId, barrierToInternetAccessInResidenceDescriptor, internetAccessTypeInResidenceDescriptor, internetPerformanceInResidenceDescriptor, limitedEnglishProficiencyDescriptor, primaryLearningDeviceAccessDescriptor, primaryLearningDeviceAwayFromSchoolDescriptor, primaryLearningDeviceProviderDescriptor, sexDescriptor, supporterMilitaryConnectionDescriptor, genderIdentity, hispanicLatinoEthnicity, id, internetAccessInResidence, loginId, profileThumbnail, useSnapshot, studentIdentificationSystemDescriptor, assigningOrganizationIdentificationCode, identificationCode);
    print(result);
} catch (e) {
    print('Exception when calling StudentEducationOrganizationAssociationsApi->getStudentEducationOrganizationAssociationsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **barrierToInternetAccessInResidenceDescriptor** | **String**| An indication of the barrier to having internet access in the student s primary place of residence. | [optional] 
 **internetAccessTypeInResidenceDescriptor** | **String**| The primary type of internet service used in the student s primary place of residence. | [optional] 
 **internetPerformanceInResidenceDescriptor** | **String**| An indication of whether the student can complete the full range of learning activities, including video streaming and assignment upload, without interruptions caused by poor internet performance in their primary place of residence. | [optional] 
 **limitedEnglishProficiencyDescriptor** | **String**| An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient. | [optional] 
 **primaryLearningDeviceAccessDescriptor** | **String**| An indication of whether the primary learning device is shared or not shared with another individual. | [optional] 
 **primaryLearningDeviceAwayFromSchoolDescriptor** | **String**| The type of device the student uses most often to complete learning activities away from school. | [optional] 
 **primaryLearningDeviceProviderDescriptor** | **String**| The provider of the primary learning device. | [optional] 
 **sexDescriptor** | **String**| The student's birth sex as reported to the education organization. | [optional] 
 **supporterMilitaryConnectionDescriptor** | **String**| Military connection of the person/people whom the student is a dependent of. | [optional] 
 **genderIdentity** | **String**| The student's gender as last reported to the education organization. | [optional] 
 **hispanicLatinoEthnicity** | **bool**| An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race, as last reported to the education organization. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\" | [optional] 
 **id** | **String**|  | [optional] 
 **internetAccessInResidence** | **bool**| An indication of whether the student is able to access the internet in their primary place of residence. | [optional] 
 **loginId** | **String**| The login ID for the user; used for security access control interface. | [optional] 
 **profileThumbnail** | **String**| Locator reference for the student photo. The specification for that reference is left to local definition. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]
 **studentIdentificationSystemDescriptor** | **String**| A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a student. | [optional] 
 **assigningOrganizationIdentificationCode** | **String**| The organization code or name assigning the StudentIdentificationCode. | [optional] 
 **identificationCode** | **String**| A unique number or alphanumeric code assigned to a student by a school, school system, a state, or other agency or entity. | [optional] 

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesStudentEducationOrganizationAssociations**
> List<TrackedChangesEdFiStudentEducationOrganizationAssociationKeyChange> keyChangesStudentEducationOrganizationAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentEducationOrganizationAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStudentEducationOrganizationAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentEducationOrganizationAssociationsApi->keyChangesStudentEducationOrganizationAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentEducationOrganizationAssociationKeyChange>**](TrackedChangesEdFiStudentEducationOrganizationAssociationKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStudentEducationOrganizationAssociation**
> postStudentEducationOrganizationAssociation(edFiStudentEducationOrganizationAssociation)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentEducationOrganizationAssociationsApi();
final edFiStudentEducationOrganizationAssociation = EdFiStudentEducationOrganizationAssociation(); // EdFiStudentEducationOrganizationAssociation | The JSON representation of the \"studentEducationOrganizationAssociation\" resource to be created or updated.

try {
    api_instance.postStudentEducationOrganizationAssociation(edFiStudentEducationOrganizationAssociation);
} catch (e) {
    print('Exception when calling StudentEducationOrganizationAssociationsApi->postStudentEducationOrganizationAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStudentEducationOrganizationAssociation** | [**EdFiStudentEducationOrganizationAssociation**](EdFiStudentEducationOrganizationAssociation.md)| The JSON representation of the \"studentEducationOrganizationAssociation\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStudentEducationOrganizationAssociation**
> putStudentEducationOrganizationAssociation(id, edFiStudentEducationOrganizationAssociation, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentEducationOrganizationAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStudentEducationOrganizationAssociation = EdFiStudentEducationOrganizationAssociation(); // EdFiStudentEducationOrganizationAssociation | The JSON representation of the \"studentEducationOrganizationAssociation\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStudentEducationOrganizationAssociation(id, edFiStudentEducationOrganizationAssociation, ifMatch);
} catch (e) {
    print('Exception when calling StudentEducationOrganizationAssociationsApi->putStudentEducationOrganizationAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStudentEducationOrganizationAssociation** | [**EdFiStudentEducationOrganizationAssociation**](EdFiStudentEducationOrganizationAssociation.md)| The JSON representation of the \"studentEducationOrganizationAssociation\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

