# edfi_resources_sdk.api.StaffEducationOrganizationEmploymentAssociationsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStaffEducationOrganizationEmploymentAssociationById**](StaffEducationOrganizationEmploymentAssociationsApi.md#deletestaffeducationorganizationemploymentassociationbyid) | **DELETE** /ed-fi/staffEducationOrganizationEmploymentAssociations/{id} | Deletes an existing resource using the resource identifier.
[**deletesStaffEducationOrganizationEmploymentAssociations**](StaffEducationOrganizationEmploymentAssociationsApi.md#deletesstaffeducationorganizationemploymentassociations) | **GET** /ed-fi/staffEducationOrganizationEmploymentAssociations/deletes | Retrieves deleted resources based on change version.
[**getStaffEducationOrganizationEmploymentAssociations**](StaffEducationOrganizationEmploymentAssociationsApi.md#getstaffeducationorganizationemploymentassociations) | **GET** /ed-fi/staffEducationOrganizationEmploymentAssociations | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStaffEducationOrganizationEmploymentAssociationsById**](StaffEducationOrganizationEmploymentAssociationsApi.md#getstaffeducationorganizationemploymentassociationsbyid) | **GET** /ed-fi/staffEducationOrganizationEmploymentAssociations/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStaffEducationOrganizationEmploymentAssociationsPartitions**](StaffEducationOrganizationEmploymentAssociationsApi.md#getstaffeducationorganizationemploymentassociationspartitions) | **GET** /ed-fi/staffEducationOrganizationEmploymentAssociations/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStaffEducationOrganizationEmploymentAssociations**](StaffEducationOrganizationEmploymentAssociationsApi.md#keychangesstaffeducationorganizationemploymentassociations) | **GET** /ed-fi/staffEducationOrganizationEmploymentAssociations/keyChanges | Retrieves resources key changes based on change version.
[**postStaffEducationOrganizationEmploymentAssociation**](StaffEducationOrganizationEmploymentAssociationsApi.md#poststaffeducationorganizationemploymentassociation) | **POST** /ed-fi/staffEducationOrganizationEmploymentAssociations | Creates or updates resources based on the natural key values of the supplied resource.
[**putStaffEducationOrganizationEmploymentAssociation**](StaffEducationOrganizationEmploymentAssociationsApi.md#putstaffeducationorganizationemploymentassociation) | **PUT** /ed-fi/staffEducationOrganizationEmploymentAssociations/{id} | Updates a resource based on the resource identifier.


# **deleteStaffEducationOrganizationEmploymentAssociationById**
> deleteStaffEducationOrganizationEmploymentAssociationById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffEducationOrganizationEmploymentAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStaffEducationOrganizationEmploymentAssociationById(id, ifMatch);
} catch (e) {
    print('Exception when calling StaffEducationOrganizationEmploymentAssociationsApi->deleteStaffEducationOrganizationEmploymentAssociationById: $e\n');
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

# **deletesStaffEducationOrganizationEmploymentAssociations**
> List<TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationDelete> deletesStaffEducationOrganizationEmploymentAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffEducationOrganizationEmploymentAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStaffEducationOrganizationEmploymentAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffEducationOrganizationEmploymentAssociationsApi->deletesStaffEducationOrganizationEmploymentAssociations: $e\n');
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

[**List<TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationDelete>**](TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStaffEducationOrganizationEmploymentAssociations**
> List<EdFiStaffEducationOrganizationEmploymentAssociation> getStaffEducationOrganizationEmploymentAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, employmentStatusDescriptor, hireDate, educationOrganizationId, staffUniqueId, credentialIdentifier, stateOfIssueStateAbbreviationDescriptor, separationDescriptor, separationReasonDescriptor, annualWage, department, endDate, fullTimeEquivalency, hourlyWage, id, offerDate, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffEducationOrganizationEmploymentAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final employmentStatusDescriptor = employmentStatusDescriptor_example; // String | Reflects the type of employment or contract.
final hireDate = 2013-10-20; // DateTime | The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final staffUniqueId = staffUniqueId_example; // String | A unique alphanumeric code assigned to a staff.
final credentialIdentifier = credentialIdentifier_example; // String | Identifier or serial number assigned to the credential.
final stateOfIssueStateAbbreviationDescriptor = stateOfIssueStateAbbreviationDescriptor_example; // String | The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.
final separationDescriptor = separationDescriptor_example; // String | Type of employment separation.
final separationReasonDescriptor = separationReasonDescriptor_example; // String | Reason for terminating the employment.
final annualWage = 1.2; // double | Annual wage associated with the employment position being reported.
final department = department_example; // String | The department or suborganization the employee/contractor is associated with in the education organization.
final endDate = 2013-10-20; // DateTime | The month, day, and year on which a contract between an individual and a governing authority ends or is terminated under the provisions of the contract (or the date on which the agreement is made invalid).  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final fullTimeEquivalency = 1.2; // double | The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.
final hourlyWage = 1.2; // double | Hourly wage associated with the employment position being reported.
final id = id_example; // String | 
final offerDate = 2013-10-20; // DateTime | Date at which the staff member was made an official offer for this employment.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStaffEducationOrganizationEmploymentAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, employmentStatusDescriptor, hireDate, educationOrganizationId, staffUniqueId, credentialIdentifier, stateOfIssueStateAbbreviationDescriptor, separationDescriptor, separationReasonDescriptor, annualWage, department, endDate, fullTimeEquivalency, hourlyWage, id, offerDate, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffEducationOrganizationEmploymentAssociationsApi->getStaffEducationOrganizationEmploymentAssociations: $e\n');
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
 **employmentStatusDescriptor** | **String**| Reflects the type of employment or contract. | [optional] 
 **hireDate** | **DateTime**| The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **staffUniqueId** | **String**| A unique alphanumeric code assigned to a staff. | [optional] 
 **credentialIdentifier** | **String**| Identifier or serial number assigned to the credential. | [optional] 
 **stateOfIssueStateAbbreviationDescriptor** | **String**| The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued. | [optional] 
 **separationDescriptor** | **String**| Type of employment separation. | [optional] 
 **separationReasonDescriptor** | **String**| Reason for terminating the employment. | [optional] 
 **annualWage** | **double**| Annual wage associated with the employment position being reported. | [optional] 
 **department** | **String**| The department or suborganization the employee/contractor is associated with in the education organization. | [optional] 
 **endDate** | **DateTime**| The month, day, and year on which a contract between an individual and a governing authority ends or is terminated under the provisions of the contract (or the date on which the agreement is made invalid).  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **fullTimeEquivalency** | **double**| The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting. | [optional] 
 **hourlyWage** | **double**| Hourly wage associated with the employment position being reported. | [optional] 
 **id** | **String**|  | [optional] 
 **offerDate** | **DateTime**| Date at which the staff member was made an official offer for this employment. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStaffEducationOrganizationEmploymentAssociation>**](EdFiStaffEducationOrganizationEmploymentAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStaffEducationOrganizationEmploymentAssociationsById**
> EdFiStaffEducationOrganizationEmploymentAssociation getStaffEducationOrganizationEmploymentAssociationsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffEducationOrganizationEmploymentAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStaffEducationOrganizationEmploymentAssociationsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffEducationOrganizationEmploymentAssociationsApi->getStaffEducationOrganizationEmploymentAssociationsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStaffEducationOrganizationEmploymentAssociation**](EdFiStaffEducationOrganizationEmploymentAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStaffEducationOrganizationEmploymentAssociationsPartitions**
> GetAcademicWeeksPartitions200Response getStaffEducationOrganizationEmploymentAssociationsPartitions(number, minChangeVersion, maxChangeVersion, employmentStatusDescriptor, hireDate, educationOrganizationId, staffUniqueId, credentialIdentifier, stateOfIssueStateAbbreviationDescriptor, separationDescriptor, separationReasonDescriptor, annualWage, department, endDate, fullTimeEquivalency, hourlyWage, id, offerDate, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffEducationOrganizationEmploymentAssociationsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final employmentStatusDescriptor = employmentStatusDescriptor_example; // String | Reflects the type of employment or contract.
final hireDate = 2013-10-20; // DateTime | The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final staffUniqueId = staffUniqueId_example; // String | A unique alphanumeric code assigned to a staff.
final credentialIdentifier = credentialIdentifier_example; // String | Identifier or serial number assigned to the credential.
final stateOfIssueStateAbbreviationDescriptor = stateOfIssueStateAbbreviationDescriptor_example; // String | The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.
final separationDescriptor = separationDescriptor_example; // String | Type of employment separation.
final separationReasonDescriptor = separationReasonDescriptor_example; // String | Reason for terminating the employment.
final annualWage = 1.2; // double | Annual wage associated with the employment position being reported.
final department = department_example; // String | The department or suborganization the employee/contractor is associated with in the education organization.
final endDate = 2013-10-20; // DateTime | The month, day, and year on which a contract between an individual and a governing authority ends or is terminated under the provisions of the contract (or the date on which the agreement is made invalid).  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final fullTimeEquivalency = 1.2; // double | The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.
final hourlyWage = 1.2; // double | Hourly wage associated with the employment position being reported.
final id = id_example; // String | 
final offerDate = 2013-10-20; // DateTime | Date at which the staff member was made an official offer for this employment.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStaffEducationOrganizationEmploymentAssociationsPartitions(number, minChangeVersion, maxChangeVersion, employmentStatusDescriptor, hireDate, educationOrganizationId, staffUniqueId, credentialIdentifier, stateOfIssueStateAbbreviationDescriptor, separationDescriptor, separationReasonDescriptor, annualWage, department, endDate, fullTimeEquivalency, hourlyWage, id, offerDate, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffEducationOrganizationEmploymentAssociationsApi->getStaffEducationOrganizationEmploymentAssociationsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **employmentStatusDescriptor** | **String**| Reflects the type of employment or contract. | [optional] 
 **hireDate** | **DateTime**| The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **staffUniqueId** | **String**| A unique alphanumeric code assigned to a staff. | [optional] 
 **credentialIdentifier** | **String**| Identifier or serial number assigned to the credential. | [optional] 
 **stateOfIssueStateAbbreviationDescriptor** | **String**| The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued. | [optional] 
 **separationDescriptor** | **String**| Type of employment separation. | [optional] 
 **separationReasonDescriptor** | **String**| Reason for terminating the employment. | [optional] 
 **annualWage** | **double**| Annual wage associated with the employment position being reported. | [optional] 
 **department** | **String**| The department or suborganization the employee/contractor is associated with in the education organization. | [optional] 
 **endDate** | **DateTime**| The month, day, and year on which a contract between an individual and a governing authority ends or is terminated under the provisions of the contract (or the date on which the agreement is made invalid).  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **fullTimeEquivalency** | **double**| The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting. | [optional] 
 **hourlyWage** | **double**| Hourly wage associated with the employment position being reported. | [optional] 
 **id** | **String**|  | [optional] 
 **offerDate** | **DateTime**| Date at which the staff member was made an official offer for this employment. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesStaffEducationOrganizationEmploymentAssociations**
> List<TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKeyChange> keyChangesStaffEducationOrganizationEmploymentAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffEducationOrganizationEmploymentAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStaffEducationOrganizationEmploymentAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffEducationOrganizationEmploymentAssociationsApi->keyChangesStaffEducationOrganizationEmploymentAssociations: $e\n');
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

[**List<TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKeyChange>**](TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStaffEducationOrganizationEmploymentAssociation**
> postStaffEducationOrganizationEmploymentAssociation(edFiStaffEducationOrganizationEmploymentAssociation)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffEducationOrganizationEmploymentAssociationsApi();
final edFiStaffEducationOrganizationEmploymentAssociation = EdFiStaffEducationOrganizationEmploymentAssociation(); // EdFiStaffEducationOrganizationEmploymentAssociation | The JSON representation of the \"staffEducationOrganizationEmploymentAssociation\" resource to be created or updated.

try {
    api_instance.postStaffEducationOrganizationEmploymentAssociation(edFiStaffEducationOrganizationEmploymentAssociation);
} catch (e) {
    print('Exception when calling StaffEducationOrganizationEmploymentAssociationsApi->postStaffEducationOrganizationEmploymentAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStaffEducationOrganizationEmploymentAssociation** | [**EdFiStaffEducationOrganizationEmploymentAssociation**](EdFiStaffEducationOrganizationEmploymentAssociation.md)| The JSON representation of the \"staffEducationOrganizationEmploymentAssociation\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStaffEducationOrganizationEmploymentAssociation**
> putStaffEducationOrganizationEmploymentAssociation(id, edFiStaffEducationOrganizationEmploymentAssociation, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffEducationOrganizationEmploymentAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStaffEducationOrganizationEmploymentAssociation = EdFiStaffEducationOrganizationEmploymentAssociation(); // EdFiStaffEducationOrganizationEmploymentAssociation | The JSON representation of the \"staffEducationOrganizationEmploymentAssociation\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStaffEducationOrganizationEmploymentAssociation(id, edFiStaffEducationOrganizationEmploymentAssociation, ifMatch);
} catch (e) {
    print('Exception when calling StaffEducationOrganizationEmploymentAssociationsApi->putStaffEducationOrganizationEmploymentAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStaffEducationOrganizationEmploymentAssociation** | [**EdFiStaffEducationOrganizationEmploymentAssociation**](EdFiStaffEducationOrganizationEmploymentAssociation.md)| The JSON representation of the \"staffEducationOrganizationEmploymentAssociation\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

