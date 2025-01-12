# edfi_resources_sdk.api.StudentSpecialEducationProgramAssociationsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStudentSpecialEducationProgramAssociationById**](StudentSpecialEducationProgramAssociationsApi.md#deletestudentspecialeducationprogramassociationbyid) | **DELETE** /ed-fi/studentSpecialEducationProgramAssociations/{id} | Deletes an existing resource using the resource identifier.
[**deletesStudentSpecialEducationProgramAssociations**](StudentSpecialEducationProgramAssociationsApi.md#deletesstudentspecialeducationprogramassociations) | **GET** /ed-fi/studentSpecialEducationProgramAssociations/deletes | Retrieves deleted resources based on change version.
[**getStudentSpecialEducationProgramAssociations**](StudentSpecialEducationProgramAssociationsApi.md#getstudentspecialeducationprogramassociations) | **GET** /ed-fi/studentSpecialEducationProgramAssociations | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStudentSpecialEducationProgramAssociationsById**](StudentSpecialEducationProgramAssociationsApi.md#getstudentspecialeducationprogramassociationsbyid) | **GET** /ed-fi/studentSpecialEducationProgramAssociations/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStudentSpecialEducationProgramAssociationsPartitions**](StudentSpecialEducationProgramAssociationsApi.md#getstudentspecialeducationprogramassociationspartitions) | **GET** /ed-fi/studentSpecialEducationProgramAssociations/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStudentSpecialEducationProgramAssociations**](StudentSpecialEducationProgramAssociationsApi.md#keychangesstudentspecialeducationprogramassociations) | **GET** /ed-fi/studentSpecialEducationProgramAssociations/keyChanges | Retrieves resources key changes based on change version.
[**postStudentSpecialEducationProgramAssociation**](StudentSpecialEducationProgramAssociationsApi.md#poststudentspecialeducationprogramassociation) | **POST** /ed-fi/studentSpecialEducationProgramAssociations | Creates or updates resources based on the natural key values of the supplied resource.
[**putStudentSpecialEducationProgramAssociation**](StudentSpecialEducationProgramAssociationsApi.md#putstudentspecialeducationprogramassociation) | **PUT** /ed-fi/studentSpecialEducationProgramAssociations/{id} | Updates a resource based on the resource identifier.


# **deleteStudentSpecialEducationProgramAssociationById**
> deleteStudentSpecialEducationProgramAssociationById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSpecialEducationProgramAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStudentSpecialEducationProgramAssociationById(id, ifMatch);
} catch (e) {
    print('Exception when calling StudentSpecialEducationProgramAssociationsApi->deleteStudentSpecialEducationProgramAssociationById: $e\n');
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

# **deletesStudentSpecialEducationProgramAssociations**
> List<TrackedChangesEdFiStudentSpecialEducationProgramAssociationDelete> deletesStudentSpecialEducationProgramAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSpecialEducationProgramAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStudentSpecialEducationProgramAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSpecialEducationProgramAssociationsApi->deletesStudentSpecialEducationProgramAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentSpecialEducationProgramAssociationDelete>**](TrackedChangesEdFiStudentSpecialEducationProgramAssociationDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentSpecialEducationProgramAssociations**
> List<EdFiStudentSpecialEducationProgramAssociation> getStudentSpecialEducationProgramAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, beginDate, educationOrganizationId, programEducationOrganizationId, programName, programTypeDescriptor, studentUniqueId, specialEducationExitReasonDescriptor, specialEducationSettingDescriptor, ideaEligibility, iepBeginDate, iepEndDate, iepReviewDate, lastEvaluationDate, medicallyFragile, multiplyDisabled, reductionInHoursPerWeekComparedToPeers, schoolHoursPerWeek, shortenedSchoolDayIndicator, specialEducationExitDate, specialEducationExitExplained, specialEducationHoursPerWeek, reasonExitedDescriptor, endDate, id, servedOutsideOfRegularSession, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSpecialEducationProgramAssociationsApi();
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
final specialEducationExitReasonDescriptor = specialEducationExitReasonDescriptor_example; // String | The reason why a person stops receiving special education services.
final specialEducationSettingDescriptor = specialEducationSettingDescriptor_example; // String | The major instructional setting (more than 50 percent of a student's special education program).
final ideaEligibility = true; // bool | Indicator of the eligibility of the student to receive special education services according to the Individuals with Disabilities Education Act (IDEA).
final iepBeginDate = 2013-10-20; // DateTime | The effective date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final iepEndDate = 2013-10-20; // DateTime | The end date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final iepReviewDate = 2013-10-20; // DateTime | The date of the last IEP review.
final lastEvaluationDate = 2013-10-20; // DateTime | The date of the last special education evaluation.
final medicallyFragile = true; // bool | Indicates whether the student receiving special education and related services is: 1) in the age range of birth to 22 years, and 2) has a serious, ongoing illness or a chronic condition that has lasted or is anticipated to last at least 12 or more months or has required at least one month of hospitalization, and that requires daily, ongoing medical treatments and monitoring by appropriately trained personnel which may include parents or other family members, and 3) requires the routine use of medical device or of assistive technology to compensate for the loss of usefulness of a body function needed to participate in activities of daily living, and 4) lives with ongoing threat to his or her continued well-being. Aligns with federal requirements.
final multiplyDisabled = true; // bool | Indicates whether the student receiving special education and related services has been designated as multiply disabled by the admission, review, and dismissal committee as aligned with federal requirements.
final reductionInHoursPerWeekComparedToPeers = 1.2; // double | Records the number of hours reduced for the shortened school day for the IEP student as compared to peers in regular education.
final schoolHoursPerWeek = 1.2; // double | Indicate the total number of hours of instructional time per week for the school that the student attends.
final shortenedSchoolDayIndicator = true; // bool | Indicator that the student's IEP requires a shortened school day.
final specialEducationExitDate = 2013-10-20; // DateTime | The  month, day and year on which a person stops receiving special education services.
final specialEducationExitExplained = specialEducationExitExplained_example; // String | Explanation on why a person stops receiving special education services.
final specialEducationHoursPerWeek = 1.2; // double | The number of hours per week for special education instruction and therapy.
final reasonExitedDescriptor = reasonExitedDescriptor_example; // String | The reason the student left the program within a school or district.
final endDate = 2013-10-20; // DateTime | The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final id = id_example; // String | 
final servedOutsideOfRegularSession = true; // bool | Indicates whether the student received services during the summer session or between sessions.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentSpecialEducationProgramAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, beginDate, educationOrganizationId, programEducationOrganizationId, programName, programTypeDescriptor, studentUniqueId, specialEducationExitReasonDescriptor, specialEducationSettingDescriptor, ideaEligibility, iepBeginDate, iepEndDate, iepReviewDate, lastEvaluationDate, medicallyFragile, multiplyDisabled, reductionInHoursPerWeekComparedToPeers, schoolHoursPerWeek, shortenedSchoolDayIndicator, specialEducationExitDate, specialEducationExitExplained, specialEducationHoursPerWeek, reasonExitedDescriptor, endDate, id, servedOutsideOfRegularSession, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSpecialEducationProgramAssociationsApi->getStudentSpecialEducationProgramAssociations: $e\n');
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
 **specialEducationExitReasonDescriptor** | **String**| The reason why a person stops receiving special education services. | [optional] 
 **specialEducationSettingDescriptor** | **String**| The major instructional setting (more than 50 percent of a student's special education program). | [optional] 
 **ideaEligibility** | **bool**| Indicator of the eligibility of the student to receive special education services according to the Individuals with Disabilities Education Act (IDEA). | [optional] 
 **iepBeginDate** | **DateTime**| The effective date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **iepEndDate** | **DateTime**| The end date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **iepReviewDate** | **DateTime**| The date of the last IEP review. | [optional] 
 **lastEvaluationDate** | **DateTime**| The date of the last special education evaluation. | [optional] 
 **medicallyFragile** | **bool**| Indicates whether the student receiving special education and related services is: 1) in the age range of birth to 22 years, and 2) has a serious, ongoing illness or a chronic condition that has lasted or is anticipated to last at least 12 or more months or has required at least one month of hospitalization, and that requires daily, ongoing medical treatments and monitoring by appropriately trained personnel which may include parents or other family members, and 3) requires the routine use of medical device or of assistive technology to compensate for the loss of usefulness of a body function needed to participate in activities of daily living, and 4) lives with ongoing threat to his or her continued well-being. Aligns with federal requirements. | [optional] 
 **multiplyDisabled** | **bool**| Indicates whether the student receiving special education and related services has been designated as multiply disabled by the admission, review, and dismissal committee as aligned with federal requirements. | [optional] 
 **reductionInHoursPerWeekComparedToPeers** | **double**| Records the number of hours reduced for the shortened school day for the IEP student as compared to peers in regular education. | [optional] 
 **schoolHoursPerWeek** | **double**| Indicate the total number of hours of instructional time per week for the school that the student attends. | [optional] 
 **shortenedSchoolDayIndicator** | **bool**| Indicator that the student's IEP requires a shortened school day. | [optional] 
 **specialEducationExitDate** | **DateTime**| The  month, day and year on which a person stops receiving special education services. | [optional] 
 **specialEducationExitExplained** | **String**| Explanation on why a person stops receiving special education services. | [optional] 
 **specialEducationHoursPerWeek** | **double**| The number of hours per week for special education instruction and therapy. | [optional] 
 **reasonExitedDescriptor** | **String**| The reason the student left the program within a school or district. | [optional] 
 **endDate** | **DateTime**| The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **id** | **String**|  | [optional] 
 **servedOutsideOfRegularSession** | **bool**| Indicates whether the student received services during the summer session or between sessions. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStudentSpecialEducationProgramAssociation>**](EdFiStudentSpecialEducationProgramAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentSpecialEducationProgramAssociationsById**
> EdFiStudentSpecialEducationProgramAssociation getStudentSpecialEducationProgramAssociationsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSpecialEducationProgramAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentSpecialEducationProgramAssociationsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSpecialEducationProgramAssociationsApi->getStudentSpecialEducationProgramAssociationsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStudentSpecialEducationProgramAssociation**](EdFiStudentSpecialEducationProgramAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentSpecialEducationProgramAssociationsPartitions**
> GetAcademicWeeksPartitions200Response getStudentSpecialEducationProgramAssociationsPartitions(number, minChangeVersion, maxChangeVersion, beginDate, educationOrganizationId, programEducationOrganizationId, programName, programTypeDescriptor, studentUniqueId, specialEducationExitReasonDescriptor, specialEducationSettingDescriptor, ideaEligibility, iepBeginDate, iepEndDate, iepReviewDate, lastEvaluationDate, medicallyFragile, multiplyDisabled, reductionInHoursPerWeekComparedToPeers, schoolHoursPerWeek, shortenedSchoolDayIndicator, specialEducationExitDate, specialEducationExitExplained, specialEducationHoursPerWeek, reasonExitedDescriptor, endDate, id, servedOutsideOfRegularSession, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSpecialEducationProgramAssociationsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final beginDate = 2013-10-20; // DateTime | The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programName = programName_example; // String | The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
final programTypeDescriptor = programTypeDescriptor_example; // String | The type of program.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final specialEducationExitReasonDescriptor = specialEducationExitReasonDescriptor_example; // String | The reason why a person stops receiving special education services.
final specialEducationSettingDescriptor = specialEducationSettingDescriptor_example; // String | The major instructional setting (more than 50 percent of a student's special education program).
final ideaEligibility = true; // bool | Indicator of the eligibility of the student to receive special education services according to the Individuals with Disabilities Education Act (IDEA).
final iepBeginDate = 2013-10-20; // DateTime | The effective date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final iepEndDate = 2013-10-20; // DateTime | The end date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final iepReviewDate = 2013-10-20; // DateTime | The date of the last IEP review.
final lastEvaluationDate = 2013-10-20; // DateTime | The date of the last special education evaluation.
final medicallyFragile = true; // bool | Indicates whether the student receiving special education and related services is: 1) in the age range of birth to 22 years, and 2) has a serious, ongoing illness or a chronic condition that has lasted or is anticipated to last at least 12 or more months or has required at least one month of hospitalization, and that requires daily, ongoing medical treatments and monitoring by appropriately trained personnel which may include parents or other family members, and 3) requires the routine use of medical device or of assistive technology to compensate for the loss of usefulness of a body function needed to participate in activities of daily living, and 4) lives with ongoing threat to his or her continued well-being. Aligns with federal requirements.
final multiplyDisabled = true; // bool | Indicates whether the student receiving special education and related services has been designated as multiply disabled by the admission, review, and dismissal committee as aligned with federal requirements.
final reductionInHoursPerWeekComparedToPeers = 1.2; // double | Records the number of hours reduced for the shortened school day for the IEP student as compared to peers in regular education.
final schoolHoursPerWeek = 1.2; // double | Indicate the total number of hours of instructional time per week for the school that the student attends.
final shortenedSchoolDayIndicator = true; // bool | Indicator that the student's IEP requires a shortened school day.
final specialEducationExitDate = 2013-10-20; // DateTime | The  month, day and year on which a person stops receiving special education services.
final specialEducationExitExplained = specialEducationExitExplained_example; // String | Explanation on why a person stops receiving special education services.
final specialEducationHoursPerWeek = 1.2; // double | The number of hours per week for special education instruction and therapy.
final reasonExitedDescriptor = reasonExitedDescriptor_example; // String | The reason the student left the program within a school or district.
final endDate = 2013-10-20; // DateTime | The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
final id = id_example; // String | 
final servedOutsideOfRegularSession = true; // bool | Indicates whether the student received services during the summer session or between sessions.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentSpecialEducationProgramAssociationsPartitions(number, minChangeVersion, maxChangeVersion, beginDate, educationOrganizationId, programEducationOrganizationId, programName, programTypeDescriptor, studentUniqueId, specialEducationExitReasonDescriptor, specialEducationSettingDescriptor, ideaEligibility, iepBeginDate, iepEndDate, iepReviewDate, lastEvaluationDate, medicallyFragile, multiplyDisabled, reductionInHoursPerWeekComparedToPeers, schoolHoursPerWeek, shortenedSchoolDayIndicator, specialEducationExitDate, specialEducationExitExplained, specialEducationHoursPerWeek, reasonExitedDescriptor, endDate, id, servedOutsideOfRegularSession, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSpecialEducationProgramAssociationsApi->getStudentSpecialEducationProgramAssociationsPartitions: $e\n');
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
 **specialEducationExitReasonDescriptor** | **String**| The reason why a person stops receiving special education services. | [optional] 
 **specialEducationSettingDescriptor** | **String**| The major instructional setting (more than 50 percent of a student's special education program). | [optional] 
 **ideaEligibility** | **bool**| Indicator of the eligibility of the student to receive special education services according to the Individuals with Disabilities Education Act (IDEA). | [optional] 
 **iepBeginDate** | **DateTime**| The effective date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **iepEndDate** | **DateTime**| The end date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
 **iepReviewDate** | **DateTime**| The date of the last IEP review. | [optional] 
 **lastEvaluationDate** | **DateTime**| The date of the last special education evaluation. | [optional] 
 **medicallyFragile** | **bool**| Indicates whether the student receiving special education and related services is: 1) in the age range of birth to 22 years, and 2) has a serious, ongoing illness or a chronic condition that has lasted or is anticipated to last at least 12 or more months or has required at least one month of hospitalization, and that requires daily, ongoing medical treatments and monitoring by appropriately trained personnel which may include parents or other family members, and 3) requires the routine use of medical device or of assistive technology to compensate for the loss of usefulness of a body function needed to participate in activities of daily living, and 4) lives with ongoing threat to his or her continued well-being. Aligns with federal requirements. | [optional] 
 **multiplyDisabled** | **bool**| Indicates whether the student receiving special education and related services has been designated as multiply disabled by the admission, review, and dismissal committee as aligned with federal requirements. | [optional] 
 **reductionInHoursPerWeekComparedToPeers** | **double**| Records the number of hours reduced for the shortened school day for the IEP student as compared to peers in regular education. | [optional] 
 **schoolHoursPerWeek** | **double**| Indicate the total number of hours of instructional time per week for the school that the student attends. | [optional] 
 **shortenedSchoolDayIndicator** | **bool**| Indicator that the student's IEP requires a shortened school day. | [optional] 
 **specialEducationExitDate** | **DateTime**| The  month, day and year on which a person stops receiving special education services. | [optional] 
 **specialEducationExitExplained** | **String**| Explanation on why a person stops receiving special education services. | [optional] 
 **specialEducationHoursPerWeek** | **double**| The number of hours per week for special education instruction and therapy. | [optional] 
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

# **keyChangesStudentSpecialEducationProgramAssociations**
> List<TrackedChangesEdFiStudentSpecialEducationProgramAssociationKeyChange> keyChangesStudentSpecialEducationProgramAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSpecialEducationProgramAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStudentSpecialEducationProgramAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSpecialEducationProgramAssociationsApi->keyChangesStudentSpecialEducationProgramAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentSpecialEducationProgramAssociationKeyChange>**](TrackedChangesEdFiStudentSpecialEducationProgramAssociationKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStudentSpecialEducationProgramAssociation**
> postStudentSpecialEducationProgramAssociation(edFiStudentSpecialEducationProgramAssociation)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSpecialEducationProgramAssociationsApi();
final edFiStudentSpecialEducationProgramAssociation = EdFiStudentSpecialEducationProgramAssociation(); // EdFiStudentSpecialEducationProgramAssociation | The JSON representation of the \"studentSpecialEducationProgramAssociation\" resource to be created or updated.

try {
    api_instance.postStudentSpecialEducationProgramAssociation(edFiStudentSpecialEducationProgramAssociation);
} catch (e) {
    print('Exception when calling StudentSpecialEducationProgramAssociationsApi->postStudentSpecialEducationProgramAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStudentSpecialEducationProgramAssociation** | [**EdFiStudentSpecialEducationProgramAssociation**](EdFiStudentSpecialEducationProgramAssociation.md)| The JSON representation of the \"studentSpecialEducationProgramAssociation\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStudentSpecialEducationProgramAssociation**
> putStudentSpecialEducationProgramAssociation(id, edFiStudentSpecialEducationProgramAssociation, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSpecialEducationProgramAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStudentSpecialEducationProgramAssociation = EdFiStudentSpecialEducationProgramAssociation(); // EdFiStudentSpecialEducationProgramAssociation | The JSON representation of the \"studentSpecialEducationProgramAssociation\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStudentSpecialEducationProgramAssociation(id, edFiStudentSpecialEducationProgramAssociation, ifMatch);
} catch (e) {
    print('Exception when calling StudentSpecialEducationProgramAssociationsApi->putStudentSpecialEducationProgramAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStudentSpecialEducationProgramAssociation** | [**EdFiStudentSpecialEducationProgramAssociation**](EdFiStudentSpecialEducationProgramAssociation.md)| The JSON representation of the \"studentSpecialEducationProgramAssociation\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

