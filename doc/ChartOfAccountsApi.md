# edfi_resources_sdk.api.ChartOfAccountsApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteChartOfAccountById**](ChartOfAccountsApi.md#deletechartofaccountbyid) | **DELETE** /ed-fi/chartOfAccounts/{id} | Deletes an existing resource using the resource identifier.
[**deletesChartOfAccounts**](ChartOfAccountsApi.md#deleteschartofaccounts) | **GET** /ed-fi/chartOfAccounts/deletes | Retrieves deleted resources based on change version.
[**getChartOfAccounts**](ChartOfAccountsApi.md#getchartofaccounts) | **GET** /ed-fi/chartOfAccounts | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getChartOfAccountsById**](ChartOfAccountsApi.md#getchartofaccountsbyid) | **GET** /ed-fi/chartOfAccounts/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getChartOfAccountsPartitions**](ChartOfAccountsApi.md#getchartofaccountspartitions) | **GET** /ed-fi/chartOfAccounts/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesChartOfAccounts**](ChartOfAccountsApi.md#keychangeschartofaccounts) | **GET** /ed-fi/chartOfAccounts/keyChanges | Retrieves resources key changes based on change version.
[**postChartOfAccount**](ChartOfAccountsApi.md#postchartofaccount) | **POST** /ed-fi/chartOfAccounts | Creates or updates resources based on the natural key values of the supplied resource.
[**putChartOfAccount**](ChartOfAccountsApi.md#putchartofaccount) | **PUT** /ed-fi/chartOfAccounts/{id} | Updates a resource based on the resource identifier.


# **deleteChartOfAccountById**
> deleteChartOfAccountById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ChartOfAccountsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteChartOfAccountById(id, ifMatch);
} catch (e) {
    print('Exception when calling ChartOfAccountsApi->deleteChartOfAccountById: $e\n');
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

# **deletesChartOfAccounts**
> List<TrackedChangesEdFiChartOfAccountDelete> deletesChartOfAccounts(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ChartOfAccountsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesChartOfAccounts(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ChartOfAccountsApi->deletesChartOfAccounts: $e\n');
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

[**List<TrackedChangesEdFiChartOfAccountDelete>**](TrackedChangesEdFiChartOfAccountDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChartOfAccounts**
> List<EdFiChartOfAccount> getChartOfAccounts(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, accountIdentifier, fiscalYear, educationOrganizationId, balanceSheetCode, functionCode, fundCode, objectCode, operationalUnitCode, programCode, projectCode, sourceCode, accountTypeDescriptor, accountName, id, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ChartOfAccountsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final accountIdentifier = accountIdentifier_example; // String | SEA populated code value for the valid combination of account dimensions under which financials are reported.
final fiscalYear = 56; // int | The fiscal year for the account
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final balanceSheetCode = balanceSheetCode_example; // String | The code representation of the account balance sheet dimension.
final functionCode = functionCode_example; // String | The code representation of the account function dimension.
final fundCode = fundCode_example; // String | The code representation of the account fund dimension.
final objectCode = objectCode_example; // String | The code representation of the account object dimension.
final operationalUnitCode = operationalUnitCode_example; // String | The code representation of the account operational unit dimension.
final programCode = programCode_example; // String | The code representation of the account program dimension.
final projectCode = projectCode_example; // String | The code representation of the account project dimension.
final sourceCode = sourceCode_example; // String | The code representation of the account source dimension.
final accountTypeDescriptor = accountTypeDescriptor_example; // String | The type of account used in accounting such as revenue, expenditure, or balance sheet.
final accountName = accountName_example; // String | A descriptive name for the account.
final id = id_example; // String | 
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getChartOfAccounts(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, accountIdentifier, fiscalYear, educationOrganizationId, balanceSheetCode, functionCode, fundCode, objectCode, operationalUnitCode, programCode, projectCode, sourceCode, accountTypeDescriptor, accountName, id, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ChartOfAccountsApi->getChartOfAccounts: $e\n');
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
 **accountIdentifier** | **String**| SEA populated code value for the valid combination of account dimensions under which financials are reported. | [optional] 
 **fiscalYear** | **int**| The fiscal year for the account | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **balanceSheetCode** | **String**| The code representation of the account balance sheet dimension. | [optional] 
 **functionCode** | **String**| The code representation of the account function dimension. | [optional] 
 **fundCode** | **String**| The code representation of the account fund dimension. | [optional] 
 **objectCode** | **String**| The code representation of the account object dimension. | [optional] 
 **operationalUnitCode** | **String**| The code representation of the account operational unit dimension. | [optional] 
 **programCode** | **String**| The code representation of the account program dimension. | [optional] 
 **projectCode** | **String**| The code representation of the account project dimension. | [optional] 
 **sourceCode** | **String**| The code representation of the account source dimension. | [optional] 
 **accountTypeDescriptor** | **String**| The type of account used in accounting such as revenue, expenditure, or balance sheet. | [optional] 
 **accountName** | **String**| A descriptive name for the account. | [optional] 
 **id** | **String**|  | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<EdFiChartOfAccount>**](EdFiChartOfAccount.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChartOfAccountsById**
> EdFiChartOfAccount getChartOfAccountsById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ChartOfAccountsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getChartOfAccountsById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ChartOfAccountsApi->getChartOfAccountsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**EdFiChartOfAccount**](EdFiChartOfAccount.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChartOfAccountsPartitions**
> GetAcademicWeeksPartitions200Response getChartOfAccountsPartitions(number, minChangeVersion, maxChangeVersion, accountIdentifier, fiscalYear, educationOrganizationId, balanceSheetCode, functionCode, fundCode, objectCode, operationalUnitCode, programCode, projectCode, sourceCode, accountTypeDescriptor, accountName, id, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ChartOfAccountsApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final accountIdentifier = accountIdentifier_example; // String | SEA populated code value for the valid combination of account dimensions under which financials are reported.
final fiscalYear = 56; // int | The fiscal year for the account
final educationOrganizationId = 789; // int | The identifier assigned to an education organization.
final balanceSheetCode = balanceSheetCode_example; // String | The code representation of the account balance sheet dimension.
final functionCode = functionCode_example; // String | The code representation of the account function dimension.
final fundCode = fundCode_example; // String | The code representation of the account fund dimension.
final objectCode = objectCode_example; // String | The code representation of the account object dimension.
final operationalUnitCode = operationalUnitCode_example; // String | The code representation of the account operational unit dimension.
final programCode = programCode_example; // String | The code representation of the account program dimension.
final projectCode = projectCode_example; // String | The code representation of the account project dimension.
final sourceCode = sourceCode_example; // String | The code representation of the account source dimension.
final accountTypeDescriptor = accountTypeDescriptor_example; // String | The type of account used in accounting such as revenue, expenditure, or balance sheet.
final accountName = accountName_example; // String | A descriptive name for the account.
final id = id_example; // String | 
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getChartOfAccountsPartitions(number, minChangeVersion, maxChangeVersion, accountIdentifier, fiscalYear, educationOrganizationId, balanceSheetCode, functionCode, fundCode, objectCode, operationalUnitCode, programCode, projectCode, sourceCode, accountTypeDescriptor, accountName, id, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ChartOfAccountsApi->getChartOfAccountsPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **accountIdentifier** | **String**| SEA populated code value for the valid combination of account dimensions under which financials are reported. | [optional] 
 **fiscalYear** | **int**| The fiscal year for the account | [optional] 
 **educationOrganizationId** | **int**| The identifier assigned to an education organization. | [optional] 
 **balanceSheetCode** | **String**| The code representation of the account balance sheet dimension. | [optional] 
 **functionCode** | **String**| The code representation of the account function dimension. | [optional] 
 **fundCode** | **String**| The code representation of the account fund dimension. | [optional] 
 **objectCode** | **String**| The code representation of the account object dimension. | [optional] 
 **operationalUnitCode** | **String**| The code representation of the account operational unit dimension. | [optional] 
 **programCode** | **String**| The code representation of the account program dimension. | [optional] 
 **projectCode** | **String**| The code representation of the account project dimension. | [optional] 
 **sourceCode** | **String**| The code representation of the account source dimension. | [optional] 
 **accountTypeDescriptor** | **String**| The type of account used in accounting such as revenue, expenditure, or balance sheet. | [optional] 
 **accountName** | **String**| A descriptive name for the account. | [optional] 
 **id** | **String**|  | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesChartOfAccounts**
> List<TrackedChangesEdFiChartOfAccountKeyChange> keyChangesChartOfAccounts(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ChartOfAccountsApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesChartOfAccounts(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling ChartOfAccountsApi->keyChangesChartOfAccounts: $e\n');
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

[**List<TrackedChangesEdFiChartOfAccountKeyChange>**](TrackedChangesEdFiChartOfAccountKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postChartOfAccount**
> postChartOfAccount(edFiChartOfAccount)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ChartOfAccountsApi();
final edFiChartOfAccount = EdFiChartOfAccount(); // EdFiChartOfAccount | The JSON representation of the \"chartOfAccount\" resource to be created or updated.

try {
    api_instance.postChartOfAccount(edFiChartOfAccount);
} catch (e) {
    print('Exception when calling ChartOfAccountsApi->postChartOfAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edFiChartOfAccount** | [**EdFiChartOfAccount**](EdFiChartOfAccount.md)| The JSON representation of the \"chartOfAccount\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putChartOfAccount**
> putChartOfAccount(id, edFiChartOfAccount, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = ChartOfAccountsApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final edFiChartOfAccount = EdFiChartOfAccount(); // EdFiChartOfAccount | The JSON representation of the \"chartOfAccount\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putChartOfAccount(id, edFiChartOfAccount, ifMatch);
} catch (e) {
    print('Exception when calling ChartOfAccountsApi->putChartOfAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **edFiChartOfAccount** | [**EdFiChartOfAccount**](EdFiChartOfAccount.md)| The JSON representation of the \"chartOfAccount\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

