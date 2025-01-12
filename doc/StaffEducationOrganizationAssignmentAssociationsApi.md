# edfi_resources_sdk.api.StaffEducationOrganizationAssignmentAssociationsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStaffEducationOrganizationAssignmentAssociationById**](StaffEducationOrganizationAssignmentAssociationsApi.md#deletestaffeducationorganizationassignmentassociationbyid) | **DELETE** /ed-fi/staffEducationOrganizationAssignmentAssociations/{id} | Deletes an existing resource using the resource identifier.
[**deletesStaffEducationOrganizationAssignmentAssociations**](StaffEducationOrganizationAssignmentAssociationsApi.md#deletesstaffeducationorganizationassignmentassociations) | **GET** /ed-fi/staffEducationOrganizationAssignmentAssociations/deletes | Retrieves deleted resources based on change version.
[**getStaffEducationOrganizationAssignmentAssociations**](StaffEducationOrganizationAssignmentAssociationsApi.md#getstaffeducationorganizationassignmentassociations) | **GET** /ed-fi/staffEducationOrganizationAssignmentAssociations | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStaffEducationOrganizationAssignmentAssociationsById**](StaffEducationOrganizationAssignmentAssociationsApi.md#getstaffeducationorganizationassignmentassociationsbyid) | **GET** /ed-fi/staffEducationOrganizationAssignmentAssociations/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStaffEducationOrganizationAssignmentAssociationsPartitions**](StaffEducationOrganizationAssignmentAssociationsApi.md#getstaffeducationorganizationassignmentassociationspartitions) | **GET** /ed-fi/staffEducationOrganizationAssignmentAssociations/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStaffEducationOrganizationAssignmentAssociations**](StaffEducationOrganizationAssignmentAssociationsApi.md#keychangesstaffeducationorganizationassignmentassociations) | **GET** /ed-fi/staffEducationOrganizationAssignmentAssociations/keyChanges | Retrieves resources key changes based on change version.
[**postStaffEducationOrganizationAssignmentAssociation**](StaffEducationOrganizationAssignmentAssociationsApi.md#poststaffeducationorganizationassignmentassociation) | **POST** /ed-fi/staffEducationOrganizationAssignmentAssociations | Creates or updates resources based on the natural key values of the supplied resource.
[**putStaffEducationOrganizationAssignmentAssociation**](StaffEducationOrganizationAssignmentAssociationsApi.md#putstaffeducationorganizationassignmentassociation) | **PUT** /ed-fi/staffEducationOrganizationAssignmentAssociations/{id} | Updates a resource based on the resource identifier.


# **deleteStaffEducationOrganizationAssignmentAssociationById**
> deleteStaffEducationOrganizationAssignmentAssociationById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffEducationOrganizationAssignmentAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStaffEducationOrganizationAssignmentAssociationById(id, ifMatch);
} catch (e) {
    print('Exception when calling StaffEducationOrganizationAssignmentAssociationsApi->deleteStaffEducationOrganizationAssignmentAssociationById: $e\n');
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

# **deletesStaffEducationOrganizationAssignmentAssociations**
> List<TrackedChangesEdFiStaffEducationOrganizationAssignmentAssociationDelete> deletesStaffEducationOrganizationAssignmentAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffEducationOrganizationAssignmentAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStaffEducationOrganizationAssignmentAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffEducationOrganizationAssignmentAssociationsApi->deletesStaffEducationOrganizationAssignmentAssociations: $e\n');
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

[**List<TrackedChangesEdFiStaffEducationOrganizationAssignmentAssociationDelete>**](TrackedChangesEdFiStaffEducationOrganizationAssignmentAssociationDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStaffEducationOrganizationAssignmentAssociations**
> List<EdFiStaffEducationOrganizationAssignmentAssociation> getStaffEducationOrganizationAssignmentAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, staffClassificationDescriptor, beginDate, educationOrganizationId, staffUniqueId, credentialIdentifier, stateOfIssueStateAbbreviationDescriptor, employmentEducationOrganizationId, employmentStatusDescriptor, employmentHireDate, endDate, fullTimeEquivalency, id, orderOfAssignment, positionTitle, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffEducationOrganizationAssignmentAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final staffClassificationDescriptor = staffClassificationDescriptor_example; // String | The titles of employment, official status, or rank of education staff.
final beginDate = 2013-10-20; // DateTime | Month, day, and year of the start or effective date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final staffUniqueId = staffUniqueId_example; // String | A unique alphanumeric code assigned to a staff.
final credentialIdentifier = credentialIdentifier_example; // String | Identifier or serial number assigned to the credential.
final stateOfIssueStateAbbreviationDescriptor = stateOfIssueStateAbbreviationDescriptor_example; // String | The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.
final employmentEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final employmentStatusDescriptor = employmentStatusDescriptor_example; // String | Reflects the type of employment or contract.
final employmentHireDate = 2013-10-20; // DateTime | The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final endDate = 2013-10-20; // DateTime | Month, day, and year of the end or termination date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final fullTimeEquivalency = 1.2; // double | The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.
final id = id_example; // String | 
final orderOfAssignment = 56; // int | Describes whether the assignment is this the staff member's primary assignment, secondary assignment, etc.
final positionTitle = positionTitle_example; // String | The descriptive name of an individual's position.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStaffEducationOrganizationAssignmentAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, staffClassificationDescriptor, beginDate, educationOrganizationId, staffUniqueId, credentialIdentifier, stateOfIssueStateAbbreviationDescriptor, employmentEducationOrganizationId, employmentStatusDescriptor, employmentHireDate, endDate, fullTimeEquivalency, id, orderOfAssignment, positionTitle, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffEducationOrganizationAssignmentAssociationsApi->getStaffEducationOrganizationAssignmentAssociations: $e\n');
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
 **staffClassificationDescriptor** | **String**| The titles of employment, official status, or rank of education staff. | [optional] 
 **beginDate** | **DateTime**| Month, day, and year of the start or effective date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **staffUniqueId** | **String**| A unique alphanumeric code assigned to a staff. | [optional] 
 **credentialIdentifier** | **String**| Identifier or serial number assigned to the credential. | [optional] 
 **stateOfIssueStateAbbreviationDescriptor** | **String**| The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued. | [optional] 
 **employmentEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **employmentStatusDescriptor** | **String**| Reflects the type of employment or contract. | [optional] 
 **employmentHireDate** | **DateTime**| The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **endDate** | **DateTime**| Month, day, and year of the end or termination date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **fullTimeEquivalency** | **double**| The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting. | [optional] 
 **id** | **String**|  | [optional] 
 **orderOfAssignment** | **int**| Describes whether the assignment is this the staff member's primary assignment, secondary assignment, etc. | [optional] 
 **positionTitle** | **String**| The descriptive name of an individual's position. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStaffEducationOrganizationAssignmentAssociation>**](EdFiStaffEducationOrganizationAssignmentAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStaffEducationOrganizationAssignmentAssociationsById**
> EdFiStaffEducationOrganizationAssignmentAssociation getStaffEducationOrganizationAssignmentAssociationsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffEducationOrganizationAssignmentAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStaffEducationOrganizationAssignmentAssociationsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffEducationOrganizationAssignmentAssociationsApi->getStaffEducationOrganizationAssignmentAssociationsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStaffEducationOrganizationAssignmentAssociation**](EdFiStaffEducationOrganizationAssignmentAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStaffEducationOrganizationAssignmentAssociationsPartitions**
> GetAcademicWeeksPartitions200Response getStaffEducationOrganizationAssignmentAssociationsPartitions(number, minChangeVersion, maxChangeVersion, staffClassificationDescriptor, beginDate, educationOrganizationId, staffUniqueId, credentialIdentifier, stateOfIssueStateAbbreviationDescriptor, employmentEducationOrganizationId, employmentStatusDescriptor, employmentHireDate, endDate, fullTimeEquivalency, id, orderOfAssignment, positionTitle, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffEducationOrganizationAssignmentAssociationsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final staffClassificationDescriptor = staffClassificationDescriptor_example; // String | The titles of employment, official status, or rank of education staff.
final beginDate = 2013-10-20; // DateTime | Month, day, and year of the start or effective date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final staffUniqueId = staffUniqueId_example; // String | A unique alphanumeric code assigned to a staff.
final credentialIdentifier = credentialIdentifier_example; // String | Identifier or serial number assigned to the credential.
final stateOfIssueStateAbbreviationDescriptor = stateOfIssueStateAbbreviationDescriptor_example; // String | The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.
final employmentEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final employmentStatusDescriptor = employmentStatusDescriptor_example; // String | Reflects the type of employment or contract.
final employmentHireDate = 2013-10-20; // DateTime | The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final endDate = 2013-10-20; // DateTime | Month, day, and year of the end or termination date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final fullTimeEquivalency = 1.2; // double | The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.
final id = id_example; // String | 
final orderOfAssignment = 56; // int | Describes whether the assignment is this the staff member's primary assignment, secondary assignment, etc.
final positionTitle = positionTitle_example; // String | The descriptive name of an individual's position.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStaffEducationOrganizationAssignmentAssociationsPartitions(number, minChangeVersion, maxChangeVersion, staffClassificationDescriptor, beginDate, educationOrganizationId, staffUniqueId, credentialIdentifier, stateOfIssueStateAbbreviationDescriptor, employmentEducationOrganizationId, employmentStatusDescriptor, employmentHireDate, endDate, fullTimeEquivalency, id, orderOfAssignment, positionTitle, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffEducationOrganizationAssignmentAssociationsApi->getStaffEducationOrganizationAssignmentAssociationsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **staffClassificationDescriptor** | **String**| The titles of employment, official status, or rank of education staff. | [optional] 
 **beginDate** | **DateTime**| Month, day, and year of the start or effective date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **staffUniqueId** | **String**| A unique alphanumeric code assigned to a staff. | [optional] 
 **credentialIdentifier** | **String**| Identifier or serial number assigned to the credential. | [optional] 
 **stateOfIssueStateAbbreviationDescriptor** | **String**| The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued. | [optional] 
 **employmentEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **employmentStatusDescriptor** | **String**| Reflects the type of employment or contract. | [optional] 
 **employmentHireDate** | **DateTime**| The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **endDate** | **DateTime**| Month, day, and year of the end or termination date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **fullTimeEquivalency** | **double**| The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting. | [optional] 
 **id** | **String**|  | [optional] 
 **orderOfAssignment** | **int**| Describes whether the assignment is this the staff member's primary assignment, secondary assignment, etc. | [optional] 
 **positionTitle** | **String**| The descriptive name of an individual's position. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesStaffEducationOrganizationAssignmentAssociations**
> List<TrackedChangesEdFiStaffEducationOrganizationAssignmentAssociationKeyChange> keyChangesStaffEducationOrganizationAssignmentAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffEducationOrganizationAssignmentAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStaffEducationOrganizationAssignmentAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StaffEducationOrganizationAssignmentAssociationsApi->keyChangesStaffEducationOrganizationAssignmentAssociations: $e\n');
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

[**List<TrackedChangesEdFiStaffEducationOrganizationAssignmentAssociationKeyChange>**](TrackedChangesEdFiStaffEducationOrganizationAssignmentAssociationKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStaffEducationOrganizationAssignmentAssociation**
> postStaffEducationOrganizationAssignmentAssociation(edFiStaffEducationOrganizationAssignmentAssociation)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffEducationOrganizationAssignmentAssociationsApi();
final edFiStaffEducationOrganizationAssignmentAssociation = EdFiStaffEducationOrganizationAssignmentAssociation(); // EdFiStaffEducationOrganizationAssignmentAssociation | The JSON representation of the \"staffEducationOrganizationAssignmentAssociation\" resource to be created or updated.

try {
    api_instance.postStaffEducationOrganizationAssignmentAssociation(edFiStaffEducationOrganizationAssignmentAssociation);
} catch (e) {
    print('Exception when calling StaffEducationOrganizationAssignmentAssociationsApi->postStaffEducationOrganizationAssignmentAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStaffEducationOrganizationAssignmentAssociation** | [**EdFiStaffEducationOrganizationAssignmentAssociation**](EdFiStaffEducationOrganizationAssignmentAssociation.md)| The JSON representation of the \"staffEducationOrganizationAssignmentAssociation\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStaffEducationOrganizationAssignmentAssociation**
> putStaffEducationOrganizationAssignmentAssociation(id, edFiStaffEducationOrganizationAssignmentAssociation, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StaffEducationOrganizationAssignmentAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStaffEducationOrganizationAssignmentAssociation = EdFiStaffEducationOrganizationAssignmentAssociation(); // EdFiStaffEducationOrganizationAssignmentAssociation | The JSON representation of the \"staffEducationOrganizationAssignmentAssociation\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStaffEducationOrganizationAssignmentAssociation(id, edFiStaffEducationOrganizationAssignmentAssociation, ifMatch);
} catch (e) {
    print('Exception when calling StaffEducationOrganizationAssignmentAssociationsApi->putStaffEducationOrganizationAssignmentAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStaffEducationOrganizationAssignmentAssociation** | [**EdFiStaffEducationOrganizationAssignmentAssociation**](EdFiStaffEducationOrganizationAssignmentAssociation.md)| The JSON representation of the \"staffEducationOrganizationAssignmentAssociation\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

