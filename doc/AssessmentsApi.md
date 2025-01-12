# edfi_resources_sdk.api.AssessmentsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAssessmentById**](AssessmentsApi.md#deleteassessmentbyid) | **DELETE** /ed-fi/assessments/{id} | Deletes an existing resource using the resource identifier.
[**deletesAssessments**](AssessmentsApi.md#deletesassessments) | **GET** /ed-fi/assessments/deletes | Retrieves deleted resources based on change version.
[**getAssessments**](AssessmentsApi.md#getassessments) | **GET** /ed-fi/assessments | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getAssessmentsById**](AssessmentsApi.md#getassessmentsbyid) | **GET** /ed-fi/assessments/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getAssessmentsPartitions**](AssessmentsApi.md#getassessmentspartitions) | **GET** /ed-fi/assessments/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesAssessments**](AssessmentsApi.md#keychangesassessments) | **GET** /ed-fi/assessments/keyChanges | Retrieves resources key changes based on change version.
[**postAssessment**](AssessmentsApi.md#postassessment) | **POST** /ed-fi/assessments | Creates or updates resources based on the natural key values of the supplied resource.
[**putAssessment**](AssessmentsApi.md#putassessment) | **PUT** /ed-fi/assessments/{id} | Updates a resource based on the resource identifier.


# **deleteAssessmentById**
> deleteAssessmentById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteAssessmentById(id, ifMatch);
} catch (e) {
    print('Exception when calling AssessmentsApi->deleteAssessmentById: $e\n');
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

# **deletesAssessments**
> List<TrackedChangesEdFiAssessmentDelete> deletesAssessments(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesAssessments(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AssessmentsApi->deletesAssessments: $e\n');
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

[**List<TrackedChangesEdFiAssessmentDelete>**](TrackedChangesEdFiAssessmentDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssessments**
> List<EdFiAssessment> getAssessments(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, assessmentIdentifier, namespace, educationOrganizationId, assessmentCategoryDescriptor, adaptiveAssessment, assessmentFamily, assessmentForm, assessmentTitle, assessmentVersion, id, maxRawScore, nomenclature, revisionDate, useSnapshot, assessmentIdentificationSystemDescriptor, assigningOrganizationIdentificationCode, identificationCode)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final assessmentIdentifier = assessmentIdentifier_example; // String | A unique number or alphanumeric code assigned to an assessment.
final namespace = namespace_example; // String | Namespace for the assessment.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final assessmentCategoryDescriptor = assessmentCategoryDescriptor_example; // String | The category of an assessment based on format and content.
final adaptiveAssessment = true; // bool | Indicates that the assessment is adaptive.
final assessmentFamily = assessmentFamily_example; // String | The assessment family this assessment is a member of.
final assessmentForm = assessmentForm_example; // String | Identifies the form of the assessment, for example a regular versus makeup form, multiple choice versus constructed response, etc.
final assessmentTitle = assessmentTitle_example; // String | The title or name of the assessment.
final assessmentVersion = 56; // int | The version identifier for the assessment.
final id = id_example; // String | 
final maxRawScore = 1.2; // double | The maximum raw score achievable across all assessment items that are correct and scored at the maximum.
final nomenclature = nomenclature_example; // String | Reflects the specific nomenclature used for assessment.
final revisionDate = 2013-10-20; // DateTime | The month, day, and year that the conceptual design for the assessment was most recently revised substantially.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.
final assessmentIdentificationSystemDescriptor = assessmentIdentificationSystemDescriptor_example; // String | A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to an assessment.
final assigningOrganizationIdentificationCode = assigningOrganizationIdentificationCode_example; // String | The organization code or name assigning the assessment identification code.
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code assigned to an assessment by a school, school system, state, or other agency or entity.

try {
    final result = api_instance.getAssessments(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, assessmentIdentifier, namespace, educationOrganizationId, assessmentCategoryDescriptor, adaptiveAssessment, assessmentFamily, assessmentForm, assessmentTitle, assessmentVersion, id, maxRawScore, nomenclature, revisionDate, useSnapshot, assessmentIdentificationSystemDescriptor, assigningOrganizationIdentificationCode, identificationCode);
    print(result);
} catch (e) {
    print('Exception when calling AssessmentsApi->getAssessments: $e\n');
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
 **assessmentIdentifier** | **String**| A unique number or alphanumeric code assigned to an assessment. | [optional] 
 **namespace** | **String**| Namespace for the assessment. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **assessmentCategoryDescriptor** | **String**| The category of an assessment based on format and content. | [optional] 
 **adaptiveAssessment** | **bool**| Indicates that the assessment is adaptive. | [optional] 
 **assessmentFamily** | **String**| The assessment family this assessment is a member of. | [optional] 
 **assessmentForm** | **String**| Identifies the form of the assessment, for example a regular versus makeup form, multiple choice versus constructed response, etc. | [optional] 
 **assessmentTitle** | **String**| The title or name of the assessment. | [optional] 
 **assessmentVersion** | **int**| The version identifier for the assessment. | [optional] 
 **id** | **String**|  | [optional] 
 **maxRawScore** | **double**| The maximum raw score achievable across all assessment items that are correct and scored at the maximum. | [optional] 
 **nomenclature** | **String**| Reflects the specific nomenclature used for assessment. | [optional] 
 **revisionDate** | **DateTime**| The month, day, and year that the conceptual design for the assessment was most recently revised substantially. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]
 **assessmentIdentificationSystemDescriptor** | **String**| A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to an assessment. | [optional] 
 **assigningOrganizationIdentificationCode** | **String**| The organization code or name assigning the assessment identification code. | [optional] 
 **identificationCode** | **String**| A unique number or alphanumeric code assigned to an assessment by a school, school system, state, or other agency or entity. | [optional] 

### Return type

[**List<EdFiAssessment>**](EdFiAssessment.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssessmentsById**
> EdFiAssessment getAssessmentsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getAssessmentsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AssessmentsApi->getAssessmentsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiAssessment**](EdFiAssessment.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssessmentsPartitions**
> GetAcademicWeeksPartitions200Response getAssessmentsPartitions(number, minChangeVersion, maxChangeVersion, assessmentIdentifier, namespace, educationOrganizationId, assessmentCategoryDescriptor, adaptiveAssessment, assessmentFamily, assessmentForm, assessmentTitle, assessmentVersion, id, maxRawScore, nomenclature, revisionDate, useSnapshot, assessmentIdentificationSystemDescriptor, assigningOrganizationIdentificationCode, identificationCode)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final assessmentIdentifier = assessmentIdentifier_example; // String | A unique number or alphanumeric code assigned to an assessment.
final namespace = namespace_example; // String | Namespace for the assessment.
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final assessmentCategoryDescriptor = assessmentCategoryDescriptor_example; // String | The category of an assessment based on format and content.
final adaptiveAssessment = true; // bool | Indicates that the assessment is adaptive.
final assessmentFamily = assessmentFamily_example; // String | The assessment family this assessment is a member of.
final assessmentForm = assessmentForm_example; // String | Identifies the form of the assessment, for example a regular versus makeup form, multiple choice versus constructed response, etc.
final assessmentTitle = assessmentTitle_example; // String | The title or name of the assessment.
final assessmentVersion = 56; // int | The version identifier for the assessment.
final id = id_example; // String | 
final maxRawScore = 1.2; // double | The maximum raw score achievable across all assessment items that are correct and scored at the maximum.
final nomenclature = nomenclature_example; // String | Reflects the specific nomenclature used for assessment.
final revisionDate = 2013-10-20; // DateTime | The month, day, and year that the conceptual design for the assessment was most recently revised substantially.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.
final assessmentIdentificationSystemDescriptor = assessmentIdentificationSystemDescriptor_example; // String | A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to an assessment.
final assigningOrganizationIdentificationCode = assigningOrganizationIdentificationCode_example; // String | The organization code or name assigning the assessment identification code.
final identificationCode = identificationCode_example; // String | A unique number or alphanumeric code assigned to an assessment by a school, school system, state, or other agency or entity.

try {
    final result = api_instance.getAssessmentsPartitions(number, minChangeVersion, maxChangeVersion, assessmentIdentifier, namespace, educationOrganizationId, assessmentCategoryDescriptor, adaptiveAssessment, assessmentFamily, assessmentForm, assessmentTitle, assessmentVersion, id, maxRawScore, nomenclature, revisionDate, useSnapshot, assessmentIdentificationSystemDescriptor, assigningOrganizationIdentificationCode, identificationCode);
    print(result);
} catch (e) {
    print('Exception when calling AssessmentsApi->getAssessmentsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **assessmentIdentifier** | **String**| A unique number or alphanumeric code assigned to an assessment. | [optional] 
 **namespace** | **String**| Namespace for the assessment. | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **assessmentCategoryDescriptor** | **String**| The category of an assessment based on format and content. | [optional] 
 **adaptiveAssessment** | **bool**| Indicates that the assessment is adaptive. | [optional] 
 **assessmentFamily** | **String**| The assessment family this assessment is a member of. | [optional] 
 **assessmentForm** | **String**| Identifies the form of the assessment, for example a regular versus makeup form, multiple choice versus constructed response, etc. | [optional] 
 **assessmentTitle** | **String**| The title or name of the assessment. | [optional] 
 **assessmentVersion** | **int**| The version identifier for the assessment. | [optional] 
 **id** | **String**|  | [optional] 
 **maxRawScore** | **double**| The maximum raw score achievable across all assessment items that are correct and scored at the maximum. | [optional] 
 **nomenclature** | **String**| Reflects the specific nomenclature used for assessment. | [optional] 
 **revisionDate** | **DateTime**| The month, day, and year that the conceptual design for the assessment was most recently revised substantially. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]
 **assessmentIdentificationSystemDescriptor** | **String**| A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to an assessment. | [optional] 
 **assigningOrganizationIdentificationCode** | **String**| The organization code or name assigning the assessment identification code. | [optional] 
 **identificationCode** | **String**| A unique number or alphanumeric code assigned to an assessment by a school, school system, state, or other agency or entity. | [optional] 

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesAssessments**
> List<TrackedChangesEdFiAssessmentKeyChange> keyChangesAssessments(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesAssessments(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling AssessmentsApi->keyChangesAssessments: $e\n');
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

[**List<TrackedChangesEdFiAssessmentKeyChange>**](TrackedChangesEdFiAssessmentKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAssessment**
> postAssessment(edFiAssessment)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentsApi();
final edFiAssessment = EdFiAssessment(); // EdFiAssessment | The JSON representation of the \"assessment\" resource to be created or updated.

try {
    api_instance.postAssessment(edFiAssessment);
} catch (e) {
    print('Exception when calling AssessmentsApi->postAssessment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiAssessment** | [**EdFiAssessment**](EdFiAssessment.md)| The JSON representation of the \"assessment\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAssessment**
> putAssessment(id, edFiAssessment, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = AssessmentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiAssessment = EdFiAssessment(); // EdFiAssessment | The JSON representation of the \"assessment\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putAssessment(id, edFiAssessment, ifMatch);
} catch (e) {
    print('Exception when calling AssessmentsApi->putAssessment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiAssessment** | [**EdFiAssessment**](EdFiAssessment.md)| The JSON representation of the \"assessment\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

