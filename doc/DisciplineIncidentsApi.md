# edfi_resources_sdk.api.DisciplineIncidentsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteDisciplineIncidentById**](DisciplineIncidentsApi.md#deletedisciplineincidentbyid) | **DELETE** /ed-fi/disciplineIncidents/{id} | Deletes an existing resource using the resource identifier.
[**deletesDisciplineIncidents**](DisciplineIncidentsApi.md#deletesdisciplineincidents) | **GET** /ed-fi/disciplineIncidents/deletes | Retrieves deleted resources based on change version.
[**getDisciplineIncidents**](DisciplineIncidentsApi.md#getdisciplineincidents) | **GET** /ed-fi/disciplineIncidents | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getDisciplineIncidentsById**](DisciplineIncidentsApi.md#getdisciplineincidentsbyid) | **GET** /ed-fi/disciplineIncidents/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getDisciplineIncidentsPartitions**](DisciplineIncidentsApi.md#getdisciplineincidentspartitions) | **GET** /ed-fi/disciplineIncidents/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesDisciplineIncidents**](DisciplineIncidentsApi.md#keychangesdisciplineincidents) | **GET** /ed-fi/disciplineIncidents/keyChanges | Retrieves resources key changes based on change version.
[**postDisciplineIncident**](DisciplineIncidentsApi.md#postdisciplineincident) | **POST** /ed-fi/disciplineIncidents | Creates or updates resources based on the natural key values of the supplied resource.
[**putDisciplineIncident**](DisciplineIncidentsApi.md#putdisciplineincident) | **PUT** /ed-fi/disciplineIncidents/{id} | Updates a resource based on the resource identifier.


# **deleteDisciplineIncidentById**
> deleteDisciplineIncidentById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DisciplineIncidentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteDisciplineIncidentById(id, ifMatch);
} catch (e) {
    print('Exception when calling DisciplineIncidentsApi->deleteDisciplineIncidentById: $e\n');
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

# **deletesDisciplineIncidents**
> List<TrackedChangesEdFiDisciplineIncidentDelete> deletesDisciplineIncidents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DisciplineIncidentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesDisciplineIncidents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling DisciplineIncidentsApi->deletesDisciplineIncidents: $e\n');
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

[**List<TrackedChangesEdFiDisciplineIncidentDelete>**](TrackedChangesEdFiDisciplineIncidentDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDisciplineIncidents**
> List<EdFiDisciplineIncident> getDisciplineIncidents(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, incidentIdentifier, schoolId, incidentLocationDescriptor, reporterDescriptionDescriptor, caseNumber, id, incidentCost, incidentDate, incidentDescription, incidentTime, reportedToLawEnforcement, reporterName, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DisciplineIncidentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final incidentIdentifier = incidentIdentifier_example; // String | A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.
final schoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final incidentLocationDescriptor = incidentLocationDescriptor_example; // String | Identifies where the discipline incident occurred and whether or not it occurred on school.
final reporterDescriptionDescriptor = reporterDescriptionDescriptor_example; // String | Information on the type of individual who reported the discipline incident. When known and/or if useful, use a more specific option code (e.g., \"Counselor\" rather than \"Professional Staff\").
final caseNumber = caseNumber_example; // String | The case number assigned to the DisciplineIncident by law enforcement or other organization.
final id = id_example; // String | 
final incidentCost = 1.2; // double | The value of any quantifiable monetary loss directly resulting from the discipline incident. Examples include the value of repairs necessitated by vandalism of a school facility, or the value of personnel resources used for repairs or consumed by the incident.
final incidentDate = 2013-10-20; // DateTime | The month, day, and year on which the discipline incident occurred.
final incidentDescription = incidentDescription_example; // String | The description for an incident.
final incidentTime = incidentTime_example; // String | An indication of the time of day the incident took place.
final reportedToLawEnforcement = true; // bool | Indicator of whether the incident was reported to law enforcement.
final reporterName = reporterName_example; // String | Identifies the reporter of the discipline incident by name.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getDisciplineIncidents(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, incidentIdentifier, schoolId, incidentLocationDescriptor, reporterDescriptionDescriptor, caseNumber, id, incidentCost, incidentDate, incidentDescription, incidentTime, reportedToLawEnforcement, reporterName, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling DisciplineIncidentsApi->getDisciplineIncidents: $e\n');
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
 **incidentIdentifier** | **String**| A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders. | [optional] 
 **schoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **incidentLocationDescriptor** | **String**| Identifies where the discipline incident occurred and whether or not it occurred on school. | [optional] 
 **reporterDescriptionDescriptor** | **String**| Information on the type of individual who reported the discipline incident. When known and/or if useful, use a more specific option code (e.g., \"Counselor\" rather than \"Professional Staff\"). | [optional] 
 **caseNumber** | **String**| The case number assigned to the DisciplineIncident by law enforcement or other organization. | [optional] 
 **id** | **String**|  | [optional] 
 **incidentCost** | **double**| The value of any quantifiable monetary loss directly resulting from the discipline incident. Examples include the value of repairs necessitated by vandalism of a school facility, or the value of personnel resources used for repairs or consumed by the incident. | [optional] 
 **incidentDate** | **DateTime**| The month, day, and year on which the discipline incident occurred. | [optional] 
 **incidentDescription** | **String**| The description for an incident. | [optional] 
 **incidentTime** | **String**| An indication of the time of day the incident took place. | [optional] 
 **reportedToLawEnforcement** | **bool**| Indicator of whether the incident was reported to law enforcement. | [optional] 
 **reporterName** | **String**| Identifies the reporter of the discipline incident by name. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiDisciplineIncident>**](EdFiDisciplineIncident.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDisciplineIncidentsById**
> EdFiDisciplineIncident getDisciplineIncidentsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DisciplineIncidentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getDisciplineIncidentsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling DisciplineIncidentsApi->getDisciplineIncidentsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiDisciplineIncident**](EdFiDisciplineIncident.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDisciplineIncidentsPartitions**
> GetAcademicWeeksPartitions200Response getDisciplineIncidentsPartitions(number, minChangeVersion, maxChangeVersion, incidentIdentifier, schoolId, incidentLocationDescriptor, reporterDescriptionDescriptor, caseNumber, id, incidentCost, incidentDate, incidentDescription, incidentTime, reportedToLawEnforcement, reporterName, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DisciplineIncidentsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final incidentIdentifier = incidentIdentifier_example; // String | A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.
final schoolId = 789; // int | The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
final incidentLocationDescriptor = incidentLocationDescriptor_example; // String | Identifies where the discipline incident occurred and whether or not it occurred on school.
final reporterDescriptionDescriptor = reporterDescriptionDescriptor_example; // String | Information on the type of individual who reported the discipline incident. When known and/or if useful, use a more specific option code (e.g., \"Counselor\" rather than \"Professional Staff\").
final caseNumber = caseNumber_example; // String | The case number assigned to the DisciplineIncident by law enforcement or other organization.
final id = id_example; // String | 
final incidentCost = 1.2; // double | The value of any quantifiable monetary loss directly resulting from the discipline incident. Examples include the value of repairs necessitated by vandalism of a school facility, or the value of personnel resources used for repairs or consumed by the incident.
final incidentDate = 2013-10-20; // DateTime | The month, day, and year on which the discipline incident occurred.
final incidentDescription = incidentDescription_example; // String | The description for an incident.
final incidentTime = incidentTime_example; // String | An indication of the time of day the incident took place.
final reportedToLawEnforcement = true; // bool | Indicator of whether the incident was reported to law enforcement.
final reporterName = reporterName_example; // String | Identifies the reporter of the discipline incident by name.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getDisciplineIncidentsPartitions(number, minChangeVersion, maxChangeVersion, incidentIdentifier, schoolId, incidentLocationDescriptor, reporterDescriptionDescriptor, caseNumber, id, incidentCost, incidentDate, incidentDescription, incidentTime, reportedToLawEnforcement, reporterName, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling DisciplineIncidentsApi->getDisciplineIncidentsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **incidentIdentifier** | **String**| A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders. | [optional] 
 **schoolId** | **int**| The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication. | [optional] 
 **incidentLocationDescriptor** | **String**| Identifies where the discipline incident occurred and whether or not it occurred on school. | [optional] 
 **reporterDescriptionDescriptor** | **String**| Information on the type of individual who reported the discipline incident. When known and/or if useful, use a more specific option code (e.g., \"Counselor\" rather than \"Professional Staff\"). | [optional] 
 **caseNumber** | **String**| The case number assigned to the DisciplineIncident by law enforcement or other organization. | [optional] 
 **id** | **String**|  | [optional] 
 **incidentCost** | **double**| The value of any quantifiable monetary loss directly resulting from the discipline incident. Examples include the value of repairs necessitated by vandalism of a school facility, or the value of personnel resources used for repairs or consumed by the incident. | [optional] 
 **incidentDate** | **DateTime**| The month, day, and year on which the discipline incident occurred. | [optional] 
 **incidentDescription** | **String**| The description for an incident. | [optional] 
 **incidentTime** | **String**| An indication of the time of day the incident took place. | [optional] 
 **reportedToLawEnforcement** | **bool**| Indicator of whether the incident was reported to law enforcement. | [optional] 
 **reporterName** | **String**| Identifies the reporter of the discipline incident by name. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesDisciplineIncidents**
> List<TrackedChangesEdFiDisciplineIncidentKeyChange> keyChangesDisciplineIncidents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DisciplineIncidentsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesDisciplineIncidents(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling DisciplineIncidentsApi->keyChangesDisciplineIncidents: $e\n');
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

[**List<TrackedChangesEdFiDisciplineIncidentKeyChange>**](TrackedChangesEdFiDisciplineIncidentKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postDisciplineIncident**
> postDisciplineIncident(edFiDisciplineIncident)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DisciplineIncidentsApi();
final edFiDisciplineIncident = EdFiDisciplineIncident(); // EdFiDisciplineIncident | The JSON representation of the \"disciplineIncident\" resource to be created or updated.

try {
    api_instance.postDisciplineIncident(edFiDisciplineIncident);
} catch (e) {
    print('Exception when calling DisciplineIncidentsApi->postDisciplineIncident: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiDisciplineIncident** | [**EdFiDisciplineIncident**](EdFiDisciplineIncident.md)| The JSON representation of the \"disciplineIncident\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putDisciplineIncident**
> putDisciplineIncident(id, edFiDisciplineIncident, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = DisciplineIncidentsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiDisciplineIncident = EdFiDisciplineIncident(); // EdFiDisciplineIncident | The JSON representation of the \"disciplineIncident\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putDisciplineIncident(id, edFiDisciplineIncident, ifMatch);
} catch (e) {
    print('Exception when calling DisciplineIncidentsApi->putDisciplineIncident: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiDisciplineIncident** | [**EdFiDisciplineIncident**](EdFiDisciplineIncident.md)| The JSON representation of the \"disciplineIncident\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

