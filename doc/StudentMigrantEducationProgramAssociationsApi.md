# edfi_resources_sdk.api.StudentMigrantEducationProgramAssociationsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStudentMigrantEducationProgramAssociationById**](StudentMigrantEducationProgramAssociationsApi.md#deletestudentmigranteducationprogramassociationbyid) | **DELETE** /ed-fi/studentMigrantEducationProgramAssociations/{id} | Deletes an existing resource using the resource identifier.
[**deletesStudentMigrantEducationProgramAssociations**](StudentMigrantEducationProgramAssociationsApi.md#deletesstudentmigranteducationprogramassociations) | **GET** /ed-fi/studentMigrantEducationProgramAssociations/deletes | Retrieves deleted resources based on change version.
[**getStudentMigrantEducationProgramAssociations**](StudentMigrantEducationProgramAssociationsApi.md#getstudentmigranteducationprogramassociations) | **GET** /ed-fi/studentMigrantEducationProgramAssociations | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStudentMigrantEducationProgramAssociationsById**](StudentMigrantEducationProgramAssociationsApi.md#getstudentmigranteducationprogramassociationsbyid) | **GET** /ed-fi/studentMigrantEducationProgramAssociations/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStudentMigrantEducationProgramAssociationsPartitions**](StudentMigrantEducationProgramAssociationsApi.md#getstudentmigranteducationprogramassociationspartitions) | **GET** /ed-fi/studentMigrantEducationProgramAssociations/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStudentMigrantEducationProgramAssociations**](StudentMigrantEducationProgramAssociationsApi.md#keychangesstudentmigranteducationprogramassociations) | **GET** /ed-fi/studentMigrantEducationProgramAssociations/keyChanges | Retrieves resources key changes based on change version.
[**postStudentMigrantEducationProgramAssociation**](StudentMigrantEducationProgramAssociationsApi.md#poststudentmigranteducationprogramassociation) | **POST** /ed-fi/studentMigrantEducationProgramAssociations | Creates or updates resources based on the natural key values of the supplied resource.
[**putStudentMigrantEducationProgramAssociation**](StudentMigrantEducationProgramAssociationsApi.md#putstudentmigranteducationprogramassociation) | **PUT** /ed-fi/studentMigrantEducationProgramAssociations/{id} | Updates a resource based on the resource identifier.


# **deleteStudentMigrantEducationProgramAssociationById**
> deleteStudentMigrantEducationProgramAssociationById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentMigrantEducationProgramAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStudentMigrantEducationProgramAssociationById(id, ifMatch);
} catch (e) {
    print('Exception when calling StudentMigrantEducationProgramAssociationsApi->deleteStudentMigrantEducationProgramAssociationById: $e\n');
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

# **deletesStudentMigrantEducationProgramAssociations**
> List<TrackedChangesEdFiStudentMigrantEducationProgramAssociationDelete> deletesStudentMigrantEducationProgramAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentMigrantEducationProgramAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStudentMigrantEducationProgramAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentMigrantEducationProgramAssociationsApi->deletesStudentMigrantEducationProgramAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentMigrantEducationProgramAssociationDelete>**](TrackedChangesEdFiStudentMigrantEducationProgramAssociationDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentMigrantEducationProgramAssociations**
> List<EdFiStudentMigrantEducationProgramAssociation> getStudentMigrantEducationProgramAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, beginDate, educationOrganizationId, programEducationOrganizationId, programName, programTypeDescriptor, studentUniqueId, continuationOfServicesReasonDescriptor, eligibilityExpirationDate, lastQualifyingMove, priorityForServices, qualifyingArrivalDate, stateResidencyDate, usInitialEntry, usInitialSchoolEntry, usMostRecentEntry, reasonExitedDescriptor, endDate, id, servedOutsideOfRegularSession, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentMigrantEducationProgramAssociationsApi();
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
final continuationOfServicesReasonDescriptor = continuationOfServicesReasonDescriptor_example; // String | The \"continuation of services\" provision found in Section 1304(e) of the statute provides that (1) a child who ceases to be a migratory child during a school term shall be eligible for services until the end of such term; (2) a child who is no longer a migratory child may continue to receive services for one additional school year, but only if comparable services are not available through other programs; and (3) secondary school students who were eligible for services in secondary school may continue to be served through credit accrual programs until graduation. Only students who received services at any time during their 36 month eligibility period may continue to receive services (not necessarily the same service).
final eligibilityExpirationDate = 2013-10-20; // DateTime | The eligibility expiration date is used to determine end of eligibility and to account for a child's eligibility expiring earlier than 36 months from the child's QAD. A child's eligibility would end earlier than 36 months from the child's QAD, if the child is no longer entitled to a free public education (e.g., graduated with a high school diploma, obtained a high school equivalency diploma (HSED), or for other reasons as determined by states' requirements), or if the child passes away.
final lastQualifyingMove = 2013-10-20; // DateTime | Date the last qualifying move occurred; used to compute MEP status.
final priorityForServices = true; // bool | Report migratory children who are classified as having \"priority for services\" because they are failing, or most at risk of failing to meet the state's challenging state academic content standards and challenging state student academic achievement standards, and their education has been interrupted during the regular school year.
final qualifyingArrivalDate = 2013-10-20; // DateTime | The qualifying arrival date (QAD) is the date the child joins the worker who has already moved, or the date when the worker joins the child who has already moved. The QAD is the date that the child's eligibility for the MEP begins. The QAD is not affected by subsequent non-qualifying moves.
final stateResidencyDate = 2013-10-20; // DateTime | The verified state residency for the student.
final usInitialEntry = 2013-10-20; // DateTime | The month, day, and year on which the student first entered the U.S.
final usInitialSchoolEntry = 2013-10-20; // DateTime | The month, day, and year on which the student first entered a U.S. school.
final usMostRecentEntry = 2013-10-20; // DateTime | The month, day, and year of the student's most recent entry into the U.S.
final reasonExitedDescriptor = reasonExitedDescriptor_example; // String | The reason the student left the program within a school or district.
final endDate = 2013-10-20; // DateTime | The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final id = id_example; // String | 
final servedOutsideOfRegularSession = true; // bool | Indicates whether the student received services during the summer session or between sessions.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentMigrantEducationProgramAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, beginDate, educationOrganizationId, programEducationOrganizationId, programName, programTypeDescriptor, studentUniqueId, continuationOfServicesReasonDescriptor, eligibilityExpirationDate, lastQualifyingMove, priorityForServices, qualifyingArrivalDate, stateResidencyDate, usInitialEntry, usInitialSchoolEntry, usMostRecentEntry, reasonExitedDescriptor, endDate, id, servedOutsideOfRegularSession, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentMigrantEducationProgramAssociationsApi->getStudentMigrantEducationProgramAssociations: $e\n');
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
 **continuationOfServicesReasonDescriptor** | **String**| The \"continuation of services\" provision found in Section 1304(e) of the statute provides that (1) a child who ceases to be a migratory child during a school term shall be eligible for services until the end of such term; (2) a child who is no longer a migratory child may continue to receive services for one additional school year, but only if comparable services are not available through other programs; and (3) secondary school students who were eligible for services in secondary school may continue to be served through credit accrual programs until graduation. Only students who received services at any time during their 36 month eligibility period may continue to receive services (not necessarily the same service). | [optional] 
 **eligibilityExpirationDate** | **DateTime**| The eligibility expiration date is used to determine end of eligibility and to account for a child's eligibility expiring earlier than 36 months from the child's QAD. A child's eligibility would end earlier than 36 months from the child's QAD, if the child is no longer entitled to a free public education (e.g., graduated with a high school diploma, obtained a high school equivalency diploma (HSED), or for other reasons as determined by states' requirements), or if the child passes away. | [optional] 
 **lastQualifyingMove** | **DateTime**| Date the last qualifying move occurred; used to compute MEP status. | [optional] 
 **priorityForServices** | **bool**| Report migratory children who are classified as having \"priority for services\" because they are failing, or most at risk of failing to meet the state's challenging state academic content standards and challenging state student academic achievement standards, and their education has been interrupted during the regular school year. | [optional] 
 **qualifyingArrivalDate** | **DateTime**| The qualifying arrival date (QAD) is the date the child joins the worker who has already moved, or the date when the worker joins the child who has already moved. The QAD is the date that the child's eligibility for the MEP begins. The QAD is not affected by subsequent non-qualifying moves. | [optional] 
 **stateResidencyDate** | **DateTime**| The verified state residency for the student. | [optional] 
 **usInitialEntry** | **DateTime**| The month, day, and year on which the student first entered the U.S. | [optional] 
 **usInitialSchoolEntry** | **DateTime**| The month, day, and year on which the student first entered a U.S. school. | [optional] 
 **usMostRecentEntry** | **DateTime**| The month, day, and year of the student's most recent entry into the U.S. | [optional] 
 **reasonExitedDescriptor** | **String**| The reason the student left the program within a school or district. | [optional] 
 **endDate** | **DateTime**| The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **id** | **String**|  | [optional] 
 **servedOutsideOfRegularSession** | **bool**| Indicates whether the student received services during the summer session or between sessions. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStudentMigrantEducationProgramAssociation>**](EdFiStudentMigrantEducationProgramAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentMigrantEducationProgramAssociationsById**
> EdFiStudentMigrantEducationProgramAssociation getStudentMigrantEducationProgramAssociationsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentMigrantEducationProgramAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentMigrantEducationProgramAssociationsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentMigrantEducationProgramAssociationsApi->getStudentMigrantEducationProgramAssociationsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStudentMigrantEducationProgramAssociation**](EdFiStudentMigrantEducationProgramAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentMigrantEducationProgramAssociationsPartitions**
> GetAcademicWeeksPartitions200Response getStudentMigrantEducationProgramAssociationsPartitions(number, minChangeVersion, maxChangeVersion, beginDate, educationOrganizationId, programEducationOrganizationId, programName, programTypeDescriptor, studentUniqueId, continuationOfServicesReasonDescriptor, eligibilityExpirationDate, lastQualifyingMove, priorityForServices, qualifyingArrivalDate, stateResidencyDate, usInitialEntry, usInitialSchoolEntry, usMostRecentEntry, reasonExitedDescriptor, endDate, id, servedOutsideOfRegularSession, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentMigrantEducationProgramAssociationsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final beginDate = 2013-10-20; // DateTime | The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programName = programName_example; // String | The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
final programTypeDescriptor = programTypeDescriptor_example; // String | The type of program.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final continuationOfServicesReasonDescriptor = continuationOfServicesReasonDescriptor_example; // String | The \"continuation of services\" provision found in Section 1304(e) of the statute provides that (1) a child who ceases to be a migratory child during a school term shall be eligible for services until the end of such term; (2) a child who is no longer a migratory child may continue to receive services for one additional school year, but only if comparable services are not available through other programs; and (3) secondary school students who were eligible for services in secondary school may continue to be served through credit accrual programs until graduation. Only students who received services at any time during their 36 month eligibility period may continue to receive services (not necessarily the same service).
final eligibilityExpirationDate = 2013-10-20; // DateTime | The eligibility expiration date is used to determine end of eligibility and to account for a child's eligibility expiring earlier than 36 months from the child's QAD. A child's eligibility would end earlier than 36 months from the child's QAD, if the child is no longer entitled to a free public education (e.g., graduated with a high school diploma, obtained a high school equivalency diploma (HSED), or for other reasons as determined by states' requirements), or if the child passes away.
final lastQualifyingMove = 2013-10-20; // DateTime | Date the last qualifying move occurred; used to compute MEP status.
final priorityForServices = true; // bool | Report migratory children who are classified as having \"priority for services\" because they are failing, or most at risk of failing to meet the state's challenging state academic content standards and challenging state student academic achievement standards, and their education has been interrupted during the regular school year.
final qualifyingArrivalDate = 2013-10-20; // DateTime | The qualifying arrival date (QAD) is the date the child joins the worker who has already moved, or the date when the worker joins the child who has already moved. The QAD is the date that the child's eligibility for the MEP begins. The QAD is not affected by subsequent non-qualifying moves.
final stateResidencyDate = 2013-10-20; // DateTime | The verified state residency for the student.
final usInitialEntry = 2013-10-20; // DateTime | The month, day, and year on which the student first entered the U.S.
final usInitialSchoolEntry = 2013-10-20; // DateTime | The month, day, and year on which the student first entered a U.S. school.
final usMostRecentEntry = 2013-10-20; // DateTime | The month, day, and year of the student's most recent entry into the U.S.
final reasonExitedDescriptor = reasonExitedDescriptor_example; // String | The reason the student left the program within a school or district.
final endDate = 2013-10-20; // DateTime | The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final id = id_example; // String | 
final servedOutsideOfRegularSession = true; // bool | Indicates whether the student received services during the summer session or between sessions.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentMigrantEducationProgramAssociationsPartitions(number, minChangeVersion, maxChangeVersion, beginDate, educationOrganizationId, programEducationOrganizationId, programName, programTypeDescriptor, studentUniqueId, continuationOfServicesReasonDescriptor, eligibilityExpirationDate, lastQualifyingMove, priorityForServices, qualifyingArrivalDate, stateResidencyDate, usInitialEntry, usInitialSchoolEntry, usMostRecentEntry, reasonExitedDescriptor, endDate, id, servedOutsideOfRegularSession, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentMigrantEducationProgramAssociationsApi->getStudentMigrantEducationProgramAssociationsPartitions: $e\n');
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
 **continuationOfServicesReasonDescriptor** | **String**| The \"continuation of services\" provision found in Section 1304(e) of the statute provides that (1) a child who ceases to be a migratory child during a school term shall be eligible for services until the end of such term; (2) a child who is no longer a migratory child may continue to receive services for one additional school year, but only if comparable services are not available through other programs; and (3) secondary school students who were eligible for services in secondary school may continue to be served through credit accrual programs until graduation. Only students who received services at any time during their 36 month eligibility period may continue to receive services (not necessarily the same service). | [optional] 
 **eligibilityExpirationDate** | **DateTime**| The eligibility expiration date is used to determine end of eligibility and to account for a child's eligibility expiring earlier than 36 months from the child's QAD. A child's eligibility would end earlier than 36 months from the child's QAD, if the child is no longer entitled to a free public education (e.g., graduated with a high school diploma, obtained a high school equivalency diploma (HSED), or for other reasons as determined by states' requirements), or if the child passes away. | [optional] 
 **lastQualifyingMove** | **DateTime**| Date the last qualifying move occurred; used to compute MEP status. | [optional] 
 **priorityForServices** | **bool**| Report migratory children who are classified as having \"priority for services\" because they are failing, or most at risk of failing to meet the state's challenging state academic content standards and challenging state student academic achievement standards, and their education has been interrupted during the regular school year. | [optional] 
 **qualifyingArrivalDate** | **DateTime**| The qualifying arrival date (QAD) is the date the child joins the worker who has already moved, or the date when the worker joins the child who has already moved. The QAD is the date that the child's eligibility for the MEP begins. The QAD is not affected by subsequent non-qualifying moves. | [optional] 
 **stateResidencyDate** | **DateTime**| The verified state residency for the student. | [optional] 
 **usInitialEntry** | **DateTime**| The month, day, and year on which the student first entered the U.S. | [optional] 
 **usInitialSchoolEntry** | **DateTime**| The month, day, and year on which the student first entered a U.S. school. | [optional] 
 **usMostRecentEntry** | **DateTime**| The month, day, and year of the student's most recent entry into the U.S. | [optional] 
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

# **keyChangesStudentMigrantEducationProgramAssociations**
> List<TrackedChangesEdFiStudentMigrantEducationProgramAssociationKeyChange> keyChangesStudentMigrantEducationProgramAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentMigrantEducationProgramAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStudentMigrantEducationProgramAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentMigrantEducationProgramAssociationsApi->keyChangesStudentMigrantEducationProgramAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentMigrantEducationProgramAssociationKeyChange>**](TrackedChangesEdFiStudentMigrantEducationProgramAssociationKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStudentMigrantEducationProgramAssociation**
> postStudentMigrantEducationProgramAssociation(edFiStudentMigrantEducationProgramAssociation)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentMigrantEducationProgramAssociationsApi();
final edFiStudentMigrantEducationProgramAssociation = EdFiStudentMigrantEducationProgramAssociation(); // EdFiStudentMigrantEducationProgramAssociation | The JSON representation of the \"studentMigrantEducationProgramAssociation\" resource to be created or updated.

try {
    api_instance.postStudentMigrantEducationProgramAssociation(edFiStudentMigrantEducationProgramAssociation);
} catch (e) {
    print('Exception when calling StudentMigrantEducationProgramAssociationsApi->postStudentMigrantEducationProgramAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStudentMigrantEducationProgramAssociation** | [**EdFiStudentMigrantEducationProgramAssociation**](EdFiStudentMigrantEducationProgramAssociation.md)| The JSON representation of the \"studentMigrantEducationProgramAssociation\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStudentMigrantEducationProgramAssociation**
> putStudentMigrantEducationProgramAssociation(id, edFiStudentMigrantEducationProgramAssociation, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentMigrantEducationProgramAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStudentMigrantEducationProgramAssociation = EdFiStudentMigrantEducationProgramAssociation(); // EdFiStudentMigrantEducationProgramAssociation | The JSON representation of the \"studentMigrantEducationProgramAssociation\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStudentMigrantEducationProgramAssociation(id, edFiStudentMigrantEducationProgramAssociation, ifMatch);
} catch (e) {
    print('Exception when calling StudentMigrantEducationProgramAssociationsApi->putStudentMigrantEducationProgramAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStudentMigrantEducationProgramAssociation** | [**EdFiStudentMigrantEducationProgramAssociation**](EdFiStudentMigrantEducationProgramAssociation.md)| The JSON representation of the \"studentMigrantEducationProgramAssociation\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

