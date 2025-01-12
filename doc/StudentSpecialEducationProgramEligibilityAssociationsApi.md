# edfi_resources_sdk.api.StudentSpecialEducationProgramEligibilityAssociationsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteStudentSpecialEducationProgramEligibilityAssociationById**](StudentSpecialEducationProgramEligibilityAssociationsApi.md#deletestudentspecialeducationprogrameligibilityassociationbyid) | **DELETE** /ed-fi/studentSpecialEducationProgramEligibilityAssociations/{id} | Deletes an existing resource using the resource identifier.
[**deletesStudentSpecialEducationProgramEligibilityAssociations**](StudentSpecialEducationProgramEligibilityAssociationsApi.md#deletesstudentspecialeducationprogrameligibilityassociations) | **GET** /ed-fi/studentSpecialEducationProgramEligibilityAssociations/deletes | Retrieves deleted resources based on change version.
[**getStudentSpecialEducationProgramEligibilityAssociations**](StudentSpecialEducationProgramEligibilityAssociationsApi.md#getstudentspecialeducationprogrameligibilityassociations) | **GET** /ed-fi/studentSpecialEducationProgramEligibilityAssociations | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getStudentSpecialEducationProgramEligibilityAssociationsById**](StudentSpecialEducationProgramEligibilityAssociationsApi.md#getstudentspecialeducationprogrameligibilityassociationsbyid) | **GET** /ed-fi/studentSpecialEducationProgramEligibilityAssociations/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getStudentSpecialEducationProgramEligibilityAssociationsPartitions**](StudentSpecialEducationProgramEligibilityAssociationsApi.md#getstudentspecialeducationprogrameligibilityassociationspartitions) | **GET** /ed-fi/studentSpecialEducationProgramEligibilityAssociations/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesStudentSpecialEducationProgramEligibilityAssociations**](StudentSpecialEducationProgramEligibilityAssociationsApi.md#keychangesstudentspecialeducationprogrameligibilityassociations) | **GET** /ed-fi/studentSpecialEducationProgramEligibilityAssociations/keyChanges | Retrieves resources key changes based on change version.
[**postStudentSpecialEducationProgramEligibilityAssociation**](StudentSpecialEducationProgramEligibilityAssociationsApi.md#poststudentspecialeducationprogrameligibilityassociation) | **POST** /ed-fi/studentSpecialEducationProgramEligibilityAssociations | Creates or updates resources based on the natural key values of the supplied resource.
[**putStudentSpecialEducationProgramEligibilityAssociation**](StudentSpecialEducationProgramEligibilityAssociationsApi.md#putstudentspecialeducationprogrameligibilityassociation) | **PUT** /ed-fi/studentSpecialEducationProgramEligibilityAssociations/{id} | Updates a resource based on the resource identifier.


# **deleteStudentSpecialEducationProgramEligibilityAssociationById**
> deleteStudentSpecialEducationProgramEligibilityAssociationById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSpecialEducationProgramEligibilityAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteStudentSpecialEducationProgramEligibilityAssociationById(id, ifMatch);
} catch (e) {
    print('Exception when calling StudentSpecialEducationProgramEligibilityAssociationsApi->deleteStudentSpecialEducationProgramEligibilityAssociationById: $e\n');
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

# **deletesStudentSpecialEducationProgramEligibilityAssociations**
> List<TrackedChangesEdFiStudentSpecialEducationProgramEligibilityAssociationDelete> deletesStudentSpecialEducationProgramEligibilityAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSpecialEducationProgramEligibilityAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesStudentSpecialEducationProgramEligibilityAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSpecialEducationProgramEligibilityAssociationsApi->deletesStudentSpecialEducationProgramEligibilityAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentSpecialEducationProgramEligibilityAssociationDelete>**](TrackedChangesEdFiStudentSpecialEducationProgramEligibilityAssociationDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentSpecialEducationProgramEligibilityAssociations**
> List<EdFiStudentSpecialEducationProgramEligibilityAssociation> getStudentSpecialEducationProgramEligibilityAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, consentToEvaluationReceivedDate, educationOrganizationId, programEducationOrganizationId, programName, programTypeDescriptor, studentUniqueId, eligibilityDelayReasonDescriptor, eligibilityEvaluationTypeDescriptor, evaluationDelayReasonDescriptor, ideaPartDescriptor, consentToEvaluationDate, eligibilityConferenceDate, eligibilityDeterminationDate, eligibilityEvaluationDate, evaluationCompleteIndicator, evaluationDelayDays, evaluationLateReason, id, ideaIndicator, originalECIServicesDate, transitionConferenceDate, transitionNotificationDate, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSpecialEducationProgramEligibilityAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final consentToEvaluationReceivedDate = 2013-10-20; // DateTime | Indicates the date on which the local education agency received written consent for the evaluation from the student's parent or guardian. This is the first day of the evaluation timeframe.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programName = programName_example; // String | The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
final programTypeDescriptor = programTypeDescriptor_example; // String | The type of program.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final eligibilityDelayReasonDescriptor = eligibilityDelayReasonDescriptor_example; // String | The reason why the eligibility determination was completed beyond the required timeframe.
final eligibilityEvaluationTypeDescriptor = eligibilityEvaluationTypeDescriptor_example; // String | Indicates if this is an initial evaluation or a reevaluation.
final evaluationDelayReasonDescriptor = evaluationDelayReasonDescriptor_example; // String | Refers to the justification as to why the evaluation report was completed beyond the state-established timeframe. This descriptor field will have allowed reasons as descriptor values.
final ideaPartDescriptor = ideaPartDescriptor_example; // String | Indicates if the evaluation is done under Part B IDEA or Part C IDEA.
final consentToEvaluationDate = 2013-10-20; // DateTime | The date on which the student's parent gave a consent (Parent Consent Date).
final eligibilityConferenceDate = 2013-10-20; // DateTime | The month, day, and year when the eligibility conference is held between the parent(s)/guardian(s) and the educational organization responsible staff member(s) to review and make decision on special education related services eligibility.
final eligibilityDeterminationDate = 2013-10-20; // DateTime | Indicates the month, day, and year the local education agency (LEA) held the admission, review, and dismissal committee meeting regarding the child's eligibility determination for special education and related services. An individualized education plan (IEP) would be developed and implemented for a child admitted into special education on this same date.
final eligibilityEvaluationDate = 2013-10-20; // DateTime | Indicates the month, day, and year when the written individual evaluation report was completed.
final evaluationCompleteIndicator = true; // bool | Indicates the evaluation completed status.
final evaluationDelayDays = 56; // int | Indicates the number of student absences, if any, beginning the first instructional day following the date on which the local education agency (LEA) received written parental or guardian consent for the evaluation.
final evaluationLateReason = evaluationLateReason_example; // String | Refers to additional information for delay in doing the evaluation.
final id = id_example; // String | 
final ideaIndicator = true; // bool | Indicates whether or not the student was determined eligible as a result of an evaluation.
final originalECIServicesDate = 2013-10-20; // DateTime | The month, date, and year when an infant or toddler, from birth through age 2, began participating in the early childhood intervention (ECI) program.
final transitionConferenceDate = 2013-10-20; // DateTime | Indicates the month, day, and year when the transition conference was held (for a child receiving early childhood intervention (ECI) services) among the lead agency, the family, and the local education agency (LEA) where the child resides to discuss the child's potential eligibility for early childhood special education (ECSE) services.
final transitionNotificationDate = 2013-10-20; // DateTime | Indicates the month, day, and year the LEA Notification of Potentially Eligible for Special Education Services was sent by the early childhood intervention (ECI) contractor to the local education agency (LEA) to notify them that a child enrolled in ECI will shortly reach the age of eligibility for Part B services and the child is potentially eligible for services under Part B, early childhood special education (ECSE). The LEA Notification constitutes a referral to the LEA for an initial evaluation and eligibility determination of the child which the parent or guardian may opt out from the referral.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentSpecialEducationProgramEligibilityAssociations(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, consentToEvaluationReceivedDate, educationOrganizationId, programEducationOrganizationId, programName, programTypeDescriptor, studentUniqueId, eligibilityDelayReasonDescriptor, eligibilityEvaluationTypeDescriptor, evaluationDelayReasonDescriptor, ideaPartDescriptor, consentToEvaluationDate, eligibilityConferenceDate, eligibilityDeterminationDate, eligibilityEvaluationDate, evaluationCompleteIndicator, evaluationDelayDays, evaluationLateReason, id, ideaIndicator, originalECIServicesDate, transitionConferenceDate, transitionNotificationDate, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSpecialEducationProgramEligibilityAssociationsApi->getStudentSpecialEducationProgramEligibilityAssociations: $e\n');
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
 **consentToEvaluationReceivedDate** | **DateTime**| Indicates the date on which the local education agency received written consent for the evaluation from the student's parent or guardian. This is the first day of the evaluation timeframe. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **programEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **programName** | **String**| The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies. | [optional] 
 **programTypeDescriptor** | **String**| The type of program. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **eligibilityDelayReasonDescriptor** | **String**| The reason why the eligibility determination was completed beyond the required timeframe. | [optional] 
 **eligibilityEvaluationTypeDescriptor** | **String**| Indicates if this is an initial evaluation or a reevaluation. | [optional] 
 **evaluationDelayReasonDescriptor** | **String**| Refers to the justification as to why the evaluation report was completed beyond the state-established timeframe. This descriptor field will have allowed reasons as descriptor values. | [optional] 
 **ideaPartDescriptor** | **String**| Indicates if the evaluation is done under Part B IDEA or Part C IDEA. | [optional] 
 **consentToEvaluationDate** | **DateTime**| The date on which the student's parent gave a consent (Parent Consent Date). | [optional] 
 **eligibilityConferenceDate** | **DateTime**| The month, day, and year when the eligibility conference is held between the parent(s)/guardian(s) and the educational organization responsible staff member(s) to review and make decision on special education related services eligibility. | [optional] 
 **eligibilityDeterminationDate** | **DateTime**| Indicates the month, day, and year the local education agency (LEA) held the admission, review, and dismissal committee meeting regarding the child's eligibility determination for special education and related services. An individualized education plan (IEP) would be developed and implemented for a child admitted into special education on this same date. | [optional] 
 **eligibilityEvaluationDate** | **DateTime**| Indicates the month, day, and year when the written individual evaluation report was completed. | [optional] 
 **evaluationCompleteIndicator** | **bool**| Indicates the evaluation completed status. | [optional] 
 **evaluationDelayDays** | **int**| Indicates the number of student absences, if any, beginning the first instructional day following the date on which the local education agency (LEA) received written parental or guardian consent for the evaluation. | [optional] 
 **evaluationLateReason** | **String**| Refers to additional information for delay in doing the evaluation. | [optional] 
 **id** | **String**|  | [optional] 
 **ideaIndicator** | **bool**| Indicates whether or not the student was determined eligible as a result of an evaluation. | [optional] 
 **originalECIServicesDate** | **DateTime**| The month, date, and year when an infant or toddler, from birth through age 2, began participating in the early childhood intervention (ECI) program. | [optional] 
 **transitionConferenceDate** | **DateTime**| Indicates the month, day, and year when the transition conference was held (for a child receiving early childhood intervention (ECI) services) among the lead agency, the family, and the local education agency (LEA) where the child resides to discuss the child's potential eligibility for early childhood special education (ECSE) services. | [optional] 
 **transitionNotificationDate** | **DateTime**| Indicates the month, day, and year the LEA Notification of Potentially Eligible for Special Education Services was sent by the early childhood intervention (ECI) contractor to the local education agency (LEA) to notify them that a child enrolled in ECI will shortly reach the age of eligibility for Part B services and the child is potentially eligible for services under Part B, early childhood special education (ECSE). The LEA Notification constitutes a referral to the LEA for an initial evaluation and eligibility determination of the child which the parent or guardian may opt out from the referral. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiStudentSpecialEducationProgramEligibilityAssociation>**](EdFiStudentSpecialEducationProgramEligibilityAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentSpecialEducationProgramEligibilityAssociationsById**
> EdFiStudentSpecialEducationProgramEligibilityAssociation getStudentSpecialEducationProgramEligibilityAssociationsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSpecialEducationProgramEligibilityAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentSpecialEducationProgramEligibilityAssociationsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSpecialEducationProgramEligibilityAssociationsApi->getStudentSpecialEducationProgramEligibilityAssociationsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiStudentSpecialEducationProgramEligibilityAssociation**](EdFiStudentSpecialEducationProgramEligibilityAssociation.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudentSpecialEducationProgramEligibilityAssociationsPartitions**
> GetAcademicWeeksPartitions200Response getStudentSpecialEducationProgramEligibilityAssociationsPartitions(number, minChangeVersion, maxChangeVersion, consentToEvaluationReceivedDate, educationOrganizationId, programEducationOrganizationId, programName, programTypeDescriptor, studentUniqueId, eligibilityDelayReasonDescriptor, eligibilityEvaluationTypeDescriptor, evaluationDelayReasonDescriptor, ideaPartDescriptor, consentToEvaluationDate, eligibilityConferenceDate, eligibilityDeterminationDate, eligibilityEvaluationDate, evaluationCompleteIndicator, evaluationDelayDays, evaluationLateReason, id, ideaIndicator, originalECIServicesDate, transitionConferenceDate, transitionNotificationDate, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSpecialEducationProgramEligibilityAssociationsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final consentToEvaluationReceivedDate = 2013-10-20; // DateTime | Indicates the date on which the local education agency received written consent for the evaluation from the student's parent or guardian. This is the first day of the evaluation timeframe.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programEducationOrganizationId = 789; // int | The identifier assigned to an education organization.
final programName = programName_example; // String | The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
final programTypeDescriptor = programTypeDescriptor_example; // String | The type of program.
final studentUniqueId = studentUniqueId_example; // String | A unique alphanumeric code assigned to a student.
final eligibilityDelayReasonDescriptor = eligibilityDelayReasonDescriptor_example; // String | The reason why the eligibility determination was completed beyond the required timeframe.
final eligibilityEvaluationTypeDescriptor = eligibilityEvaluationTypeDescriptor_example; // String | Indicates if this is an initial evaluation or a reevaluation.
final evaluationDelayReasonDescriptor = evaluationDelayReasonDescriptor_example; // String | Refers to the justification as to why the evaluation report was completed beyond the state-established timeframe. This descriptor field will have allowed reasons as descriptor values.
final ideaPartDescriptor = ideaPartDescriptor_example; // String | Indicates if the evaluation is done under Part B IDEA or Part C IDEA.
final consentToEvaluationDate = 2013-10-20; // DateTime | The date on which the student's parent gave a consent (Parent Consent Date).
final eligibilityConferenceDate = 2013-10-20; // DateTime | The month, day, and year when the eligibility conference is held between the parent(s)/guardian(s) and the educational organization responsible staff member(s) to review and make decision on special education related services eligibility.
final eligibilityDeterminationDate = 2013-10-20; // DateTime | Indicates the month, day, and year the local education agency (LEA) held the admission, review, and dismissal committee meeting regarding the child's eligibility determination for special education and related services. An individualized education plan (IEP) would be developed and implemented for a child admitted into special education on this same date.
final eligibilityEvaluationDate = 2013-10-20; // DateTime | Indicates the month, day, and year when the written individual evaluation report was completed.
final evaluationCompleteIndicator = true; // bool | Indicates the evaluation completed status.
final evaluationDelayDays = 56; // int | Indicates the number of student absences, if any, beginning the first instructional day following the date on which the local education agency (LEA) received written parental or guardian consent for the evaluation.
final evaluationLateReason = evaluationLateReason_example; // String | Refers to additional information for delay in doing the evaluation.
final id = id_example; // String | 
final ideaIndicator = true; // bool | Indicates whether or not the student was determined eligible as a result of an evaluation.
final originalECIServicesDate = 2013-10-20; // DateTime | The month, date, and year when an infant or toddler, from birth through age 2, began participating in the early childhood intervention (ECI) program.
final transitionConferenceDate = 2013-10-20; // DateTime | Indicates the month, day, and year when the transition conference was held (for a child receiving early childhood intervention (ECI) services) among the lead agency, the family, and the local education agency (LEA) where the child resides to discuss the child's potential eligibility for early childhood special education (ECSE) services.
final transitionNotificationDate = 2013-10-20; // DateTime | Indicates the month, day, and year the LEA Notification of Potentially Eligible for Special Education Services was sent by the early childhood intervention (ECI) contractor to the local education agency (LEA) to notify them that a child enrolled in ECI will shortly reach the age of eligibility for Part B services and the child is potentially eligible for services under Part B, early childhood special education (ECSE). The LEA Notification constitutes a referral to the LEA for an initial evaluation and eligibility determination of the child which the parent or guardian may opt out from the referral.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getStudentSpecialEducationProgramEligibilityAssociationsPartitions(number, minChangeVersion, maxChangeVersion, consentToEvaluationReceivedDate, educationOrganizationId, programEducationOrganizationId, programName, programTypeDescriptor, studentUniqueId, eligibilityDelayReasonDescriptor, eligibilityEvaluationTypeDescriptor, evaluationDelayReasonDescriptor, ideaPartDescriptor, consentToEvaluationDate, eligibilityConferenceDate, eligibilityDeterminationDate, eligibilityEvaluationDate, evaluationCompleteIndicator, evaluationDelayDays, evaluationLateReason, id, ideaIndicator, originalECIServicesDate, transitionConferenceDate, transitionNotificationDate, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSpecialEducationProgramEligibilityAssociationsApi->getStudentSpecialEducationProgramEligibilityAssociationsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **consentToEvaluationReceivedDate** | **DateTime**| Indicates the date on which the local education agency received written consent for the evaluation from the student's parent or guardian. This is the first day of the evaluation timeframe. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **programEducationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **programName** | **String**| The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies. | [optional] 
 **programTypeDescriptor** | **String**| The type of program. | [optional] 
 **studentUniqueId** | **String**| A unique alphanumeric code assigned to a student. | [optional] 
 **eligibilityDelayReasonDescriptor** | **String**| The reason why the eligibility determination was completed beyond the required timeframe. | [optional] 
 **eligibilityEvaluationTypeDescriptor** | **String**| Indicates if this is an initial evaluation or a reevaluation. | [optional] 
 **evaluationDelayReasonDescriptor** | **String**| Refers to the justification as to why the evaluation report was completed beyond the state-established timeframe. This descriptor field will have allowed reasons as descriptor values. | [optional] 
 **ideaPartDescriptor** | **String**| Indicates if the evaluation is done under Part B IDEA or Part C IDEA. | [optional] 
 **consentToEvaluationDate** | **DateTime**| The date on which the student's parent gave a consent (Parent Consent Date). | [optional] 
 **eligibilityConferenceDate** | **DateTime**| The month, day, and year when the eligibility conference is held between the parent(s)/guardian(s) and the educational organization responsible staff member(s) to review and make decision on special education related services eligibility. | [optional] 
 **eligibilityDeterminationDate** | **DateTime**| Indicates the month, day, and year the local education agency (LEA) held the admission, review, and dismissal committee meeting regarding the child's eligibility determination for special education and related services. An individualized education plan (IEP) would be developed and implemented for a child admitted into special education on this same date. | [optional] 
 **eligibilityEvaluationDate** | **DateTime**| Indicates the month, day, and year when the written individual evaluation report was completed. | [optional] 
 **evaluationCompleteIndicator** | **bool**| Indicates the evaluation completed status. | [optional] 
 **evaluationDelayDays** | **int**| Indicates the number of student absences, if any, beginning the first instructional day following the date on which the local education agency (LEA) received written parental or guardian consent for the evaluation. | [optional] 
 **evaluationLateReason** | **String**| Refers to additional information for delay in doing the evaluation. | [optional] 
 **id** | **String**|  | [optional] 
 **ideaIndicator** | **bool**| Indicates whether or not the student was determined eligible as a result of an evaluation. | [optional] 
 **originalECIServicesDate** | **DateTime**| The month, date, and year when an infant or toddler, from birth through age 2, began participating in the early childhood intervention (ECI) program. | [optional] 
 **transitionConferenceDate** | **DateTime**| Indicates the month, day, and year when the transition conference was held (for a child receiving early childhood intervention (ECI) services) among the lead agency, the family, and the local education agency (LEA) where the child resides to discuss the child's potential eligibility for early childhood special education (ECSE) services. | [optional] 
 **transitionNotificationDate** | **DateTime**| Indicates the month, day, and year the LEA Notification of Potentially Eligible for Special Education Services was sent by the early childhood intervention (ECI) contractor to the local education agency (LEA) to notify them that a child enrolled in ECI will shortly reach the age of eligibility for Part B services and the child is potentially eligible for services under Part B, early childhood special education (ECSE). The LEA Notification constitutes a referral to the LEA for an initial evaluation and eligibility determination of the child which the parent or guardian may opt out from the referral. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesStudentSpecialEducationProgramEligibilityAssociations**
> List<TrackedChangesEdFiStudentSpecialEducationProgramEligibilityAssociationKeyChange> keyChangesStudentSpecialEducationProgramEligibilityAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSpecialEducationProgramEligibilityAssociationsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesStudentSpecialEducationProgramEligibilityAssociations(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling StudentSpecialEducationProgramEligibilityAssociationsApi->keyChangesStudentSpecialEducationProgramEligibilityAssociations: $e\n');
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

[**List<TrackedChangesEdFiStudentSpecialEducationProgramEligibilityAssociationKeyChange>**](TrackedChangesEdFiStudentSpecialEducationProgramEligibilityAssociationKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postStudentSpecialEducationProgramEligibilityAssociation**
> postStudentSpecialEducationProgramEligibilityAssociation(edFiStudentSpecialEducationProgramEligibilityAssociation)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSpecialEducationProgramEligibilityAssociationsApi();
final edFiStudentSpecialEducationProgramEligibilityAssociation = EdFiStudentSpecialEducationProgramEligibilityAssociation(); // EdFiStudentSpecialEducationProgramEligibilityAssociation | The JSON representation of the \"studentSpecialEducationProgramEligibilityAssociation\" resource to be created or updated.

try {
    api_instance.postStudentSpecialEducationProgramEligibilityAssociation(edFiStudentSpecialEducationProgramEligibilityAssociation);
} catch (e) {
    print('Exception when calling StudentSpecialEducationProgramEligibilityAssociationsApi->postStudentSpecialEducationProgramEligibilityAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiStudentSpecialEducationProgramEligibilityAssociation** | [**EdFiStudentSpecialEducationProgramEligibilityAssociation**](EdFiStudentSpecialEducationProgramEligibilityAssociation.md)| The JSON representation of the \"studentSpecialEducationProgramEligibilityAssociation\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putStudentSpecialEducationProgramEligibilityAssociation**
> putStudentSpecialEducationProgramEligibilityAssociation(id, edFiStudentSpecialEducationProgramEligibilityAssociation, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = StudentSpecialEducationProgramEligibilityAssociationsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiStudentSpecialEducationProgramEligibilityAssociation = EdFiStudentSpecialEducationProgramEligibilityAssociation(); // EdFiStudentSpecialEducationProgramEligibilityAssociation | The JSON representation of the \"studentSpecialEducationProgramEligibilityAssociation\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putStudentSpecialEducationProgramEligibilityAssociation(id, edFiStudentSpecialEducationProgramEligibilityAssociation, ifMatch);
} catch (e) {
    print('Exception when calling StudentSpecialEducationProgramEligibilityAssociationsApi->putStudentSpecialEducationProgramEligibilityAssociation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiStudentSpecialEducationProgramEligibilityAssociation** | [**EdFiStudentSpecialEducationProgramEligibilityAssociation**](EdFiStudentSpecialEducationProgramEligibilityAssociation.md)| The JSON representation of the \"studentSpecialEducationProgramEligibilityAssociation\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

