# edfi_resources_sdk.api.CandidatesApi

## Load the API package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

All URIs are relative to *https://api.ed-fi.org:443/v7.3/api/data/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteCandidateById**](CandidatesApi.md#deletecandidatebyid) | **DELETE** /tpdm/candidates/{id} | Deletes an existing resource using the resource identifier.
[**deletesCandidates**](CandidatesApi.md#deletescandidates) | **GET** /tpdm/candidates/deletes | Retrieves deleted resources based on change version.
[**getCandidates**](CandidatesApi.md#getcandidates) | **GET** /tpdm/candidates | Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
[**getCandidatesById**](CandidatesApi.md#getcandidatesbyid) | **GET** /tpdm/candidates/{id} | Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
[**getCandidatesPartitions**](CandidatesApi.md#getcandidatespartitions) | **GET** /tpdm/candidates/partitions | Retrieves a set of page tokens to be used for efficient client-side parallel processing.
[**keyChangesCandidates**](CandidatesApi.md#keychangescandidates) | **GET** /tpdm/candidates/keyChanges | Retrieves resources key changes based on change version.
[**postCandidate**](CandidatesApi.md#postcandidate) | **POST** /tpdm/candidates | Creates or updates resources based on the natural key values of the supplied resource.
[**putCandidate**](CandidatesApi.md#putcandidate) | **PUT** /tpdm/candidates/{id} | Updates a resource based on the resource identifier.


# **deleteCandidateById**
> deleteCandidateById(id, ifMatch)

Deletes an existing resource using the resource identifier.

The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CandidatesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.

try {
    api_instance.deleteCandidateById(id, ifMatch);
} catch (e) {
    print('Exception when calling CandidatesApi->deleteCandidateById: $e\n');
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

# **deletesCandidates**
> List<TrackedChangesTpdmCandidateDelete> deletesCandidates(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves deleted resources based on change version.

This operation is used to retrieve identifying information about resources that have been deleted.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CandidatesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.deletesCandidates(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CandidatesApi->deletesCandidates: $e\n');
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

[**List<TrackedChangesTpdmCandidateDelete>**](TrackedChangesTpdmCandidateDelete.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCandidates**
> List<TpdmCandidate> getCandidates(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, candidateIdentifier, personId, sourceSystemDescriptor, birthCountryDescriptor, englishLanguageExamDescriptor, genderDescriptor, limitedEnglishProficiencyDescriptor, sexDescriptor, birthSexDescriptor, birthStateAbbreviationDescriptor, birthCity, birthDate, birthInternationalProvince, dateEnteredUS, displacementStatus, economicDisadvantaged, firstGenerationStudent, firstName, generationCodeSuffix, hispanicLatinoEthnicity, id, lastSurname, maidenName, middleName, multipleBirthStatus, personalTitlePrefix, preferredFirstName, preferredLastSurname, useSnapshot)

Retrieves specific resources using the resource's property values (using the \"Get\" pattern).

This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CandidatesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final pageToken = pageToken_example; // String | The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
final pageSize = 56; // int | The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final candidateIdentifier = candidateIdentifier_example; // String | A unique alphanumeric code assigned to a candidate.
final personId = personId_example; // String | A unique alphanumeric code assigned to a person.
final sourceSystemDescriptor = sourceSystemDescriptor_example; // String | This descriptor defines the originating record source system for the person.
final birthCountryDescriptor = birthCountryDescriptor_example; // String | The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.
final englishLanguageExamDescriptor = englishLanguageExamDescriptor_example; // String | Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL).
final genderDescriptor = genderDescriptor_example; // String | The gender of the candidate.
final limitedEnglishProficiencyDescriptor = limitedEnglishProficiencyDescriptor_example; // String | An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.
final sexDescriptor = sexDescriptor_example; // String | The sex of the candidate.
final birthSexDescriptor = birthSexDescriptor_example; // String | A person's sex at birth.
final birthStateAbbreviationDescriptor = birthStateAbbreviationDescriptor_example; // String | The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.
final birthCity = birthCity_example; // String | The city the student was born in.
final birthDate = 2013-10-20; // DateTime | The month, day, and year on which an individual was born.
final birthInternationalProvince = birthInternationalProvince_example; // String | For students born outside of the U.S., the Province or jurisdiction in which an individual is born.
final dateEnteredUS = 2013-10-20; // DateTime | For students born outside of the U.S., the date the student entered the U.S.
final displacementStatus = displacementStatus_example; // String | Indicates a state health or weather related event that displaces a group of students, and may require additional funding, educational, or social services.
final economicDisadvantaged = true; // bool | An indication of inadequate financial condition of an individual's family, as determined by family income, number of family members/dependents, participation in public assistance programs, and/or other characteristics considered relevant by federal, state, and local policy.
final firstGenerationStudent = true; // bool | Indicator of whether individual is a first generation college student.
final firstName = firstName_example; // String | A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
final generationCodeSuffix = generationCodeSuffix_example; // String | An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
final hispanicLatinoEthnicity = true; // bool | An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
final id = id_example; // String | 
final lastSurname = lastSurname_example; // String | The name borne in common by members of a family.
final maidenName = maidenName_example; // String | The individual's maiden name.
final middleName = middleName_example; // String | A secondary name given to an individual at birth, baptism, or during another naming ceremony.
final multipleBirthStatus = true; // bool | Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)
final personalTitlePrefix = personalTitlePrefix_example; // String | A prefix used to denote the title, degree, position, or seniority of the individual.
final preferredFirstName = preferredFirstName_example; // String | The first name the individual prefers, if different from their legal first name
final preferredLastSurname = preferredLastSurname_example; // String | The last name the individual prefers, if different from their legal last name
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getCandidates(offset, limit, pageToken, pageSize, minChangeVersion, maxChangeVersion, totalCount, candidateIdentifier, personId, sourceSystemDescriptor, birthCountryDescriptor, englishLanguageExamDescriptor, genderDescriptor, limitedEnglishProficiencyDescriptor, sexDescriptor, birthSexDescriptor, birthStateAbbreviationDescriptor, birthCity, birthDate, birthInternationalProvince, dateEnteredUS, displacementStatus, economicDisadvantaged, firstGenerationStudent, firstName, generationCodeSuffix, hispanicLatinoEthnicity, id, lastSurname, maidenName, middleName, multipleBirthStatus, personalTitlePrefix, preferredFirstName, preferredLastSurname, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CandidatesApi->getCandidates: $e\n');
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
 **candidateIdentifier** | **String**| A unique alphanumeric code assigned to a candidate. | [optional] 
 **personId** | **String**| A unique alphanumeric code assigned to a person. | [optional] 
 **sourceSystemDescriptor** | **String**| This descriptor defines the originating record source system for the person. | [optional] 
 **birthCountryDescriptor** | **String**| The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes. | [optional] 
 **englishLanguageExamDescriptor** | **String**| Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL). | [optional] 
 **genderDescriptor** | **String**| The gender of the candidate. | [optional] 
 **limitedEnglishProficiencyDescriptor** | **String**| An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient. | [optional] 
 **sexDescriptor** | **String**| The sex of the candidate. | [optional] 
 **birthSexDescriptor** | **String**| A person's sex at birth. | [optional] 
 **birthStateAbbreviationDescriptor** | **String**| The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born. | [optional] 
 **birthCity** | **String**| The city the student was born in. | [optional] 
 **birthDate** | **DateTime**| The month, day, and year on which an individual was born. | [optional] 
 **birthInternationalProvince** | **String**| For students born outside of the U.S., the Province or jurisdiction in which an individual is born. | [optional] 
 **dateEnteredUS** | **DateTime**| For students born outside of the U.S., the date the student entered the U.S. | [optional] 
 **displacementStatus** | **String**| Indicates a state health or weather related event that displaces a group of students, and may require additional funding, educational, or social services. | [optional] 
 **economicDisadvantaged** | **bool**| An indication of inadequate financial condition of an individual's family, as determined by family income, number of family members/dependents, participation in public assistance programs, and/or other characteristics considered relevant by federal, state, and local policy. | [optional] 
 **firstGenerationStudent** | **bool**| Indicator of whether individual is a first generation college student. | [optional] 
 **firstName** | **String**| A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change. | [optional] 
 **generationCodeSuffix** | **String**| An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III). | [optional] 
 **hispanicLatinoEthnicity** | **bool**| An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\" | [optional] 
 **id** | **String**|  | [optional] 
 **lastSurname** | **String**| The name borne in common by members of a family. | [optional] 
 **maidenName** | **String**| The individual's maiden name. | [optional] 
 **middleName** | **String**| A secondary name given to an individual at birth, baptism, or during another naming ceremony. | [optional] 
 **multipleBirthStatus** | **bool**| Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.) | [optional] 
 **personalTitlePrefix** | **String**| A prefix used to denote the title, degree, position, or seniority of the individual. | [optional] 
 **preferredFirstName** | **String**| The first name the individual prefers, if different from their legal first name | [optional] 
 **preferredLastSurname** | **String**| The last name the individual prefers, if different from their legal last name | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**List<TpdmCandidate>**](TpdmCandidate.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCandidatesById**
> TpdmCandidate getCandidatesById(id, ifNoneMatch, useSnapshot)

Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).

This GET operation retrieves a resource by the specified resource identifier.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CandidatesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final ifNoneMatch = ifNoneMatch_example; // String | The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getCandidatesById(id, ifNoneMatch, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CandidatesApi->getCandidatesById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **ifNoneMatch** | **String**| The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource. | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**TpdmCandidate**](TpdmCandidate.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCandidatesPartitions**
> GetAcademicWeeksPartitions200Response getCandidatesPartitions(number, minChangeVersion, maxChangeVersion, candidateIdentifier, personId, sourceSystemDescriptor, birthCountryDescriptor, englishLanguageExamDescriptor, genderDescriptor, limitedEnglishProficiencyDescriptor, sexDescriptor, birthSexDescriptor, birthStateAbbreviationDescriptor, birthCity, birthDate, birthInternationalProvince, dateEnteredUS, displacementStatus, economicDisadvantaged, firstGenerationStudent, firstName, generationCodeSuffix, hispanicLatinoEthnicity, id, lastSurname, maidenName, middleName, multipleBirthStatus, personalTitlePrefix, preferredFirstName, preferredLastSurname, useSnapshot)

Retrieves a set of page tokens to be used for efficient client-side parallel processing.

Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CandidatesApi();
final number = 56; // int | The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final candidateIdentifier = candidateIdentifier_example; // String | A unique alphanumeric code assigned to a candidate.
final personId = personId_example; // String | A unique alphanumeric code assigned to a person.
final sourceSystemDescriptor = sourceSystemDescriptor_example; // String | This descriptor defines the originating record source system for the person.
final birthCountryDescriptor = birthCountryDescriptor_example; // String | The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.
final englishLanguageExamDescriptor = englishLanguageExamDescriptor_example; // String | Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL).
final genderDescriptor = genderDescriptor_example; // String | The gender of the candidate.
final limitedEnglishProficiencyDescriptor = limitedEnglishProficiencyDescriptor_example; // String | An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.
final sexDescriptor = sexDescriptor_example; // String | The sex of the candidate.
final birthSexDescriptor = birthSexDescriptor_example; // String | A person's sex at birth.
final birthStateAbbreviationDescriptor = birthStateAbbreviationDescriptor_example; // String | The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.
final birthCity = birthCity_example; // String | The city the student was born in.
final birthDate = 2013-10-20; // DateTime | The month, day, and year on which an individual was born.
final birthInternationalProvince = birthInternationalProvince_example; // String | For students born outside of the U.S., the Province or jurisdiction in which an individual is born.
final dateEnteredUS = 2013-10-20; // DateTime | For students born outside of the U.S., the date the student entered the U.S.
final displacementStatus = displacementStatus_example; // String | Indicates a state health or weather related event that displaces a group of students, and may require additional funding, educational, or social services.
final economicDisadvantaged = true; // bool | An indication of inadequate financial condition of an individual's family, as determined by family income, number of family members/dependents, participation in public assistance programs, and/or other characteristics considered relevant by federal, state, and local policy.
final firstGenerationStudent = true; // bool | Indicator of whether individual is a first generation college student.
final firstName = firstName_example; // String | A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
final generationCodeSuffix = generationCodeSuffix_example; // String | An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
final hispanicLatinoEthnicity = true; // bool | An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
final id = id_example; // String | 
final lastSurname = lastSurname_example; // String | The name borne in common by members of a family.
final maidenName = maidenName_example; // String | The individual's maiden name.
final middleName = middleName_example; // String | A secondary name given to an individual at birth, baptism, or during another naming ceremony.
final multipleBirthStatus = true; // bool | Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)
final personalTitlePrefix = personalTitlePrefix_example; // String | A prefix used to denote the title, degree, position, or seniority of the individual.
final preferredFirstName = preferredFirstName_example; // String | The first name the individual prefers, if different from their legal first name
final preferredLastSurname = preferredLastSurname_example; // String | The last name the individual prefers, if different from their legal last name
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.getCandidatesPartitions(number, minChangeVersion, maxChangeVersion, candidateIdentifier, personId, sourceSystemDescriptor, birthCountryDescriptor, englishLanguageExamDescriptor, genderDescriptor, limitedEnglishProficiencyDescriptor, sexDescriptor, birthSexDescriptor, birthStateAbbreviationDescriptor, birthCity, birthDate, birthInternationalProvince, dateEnteredUS, displacementStatus, economicDisadvantaged, firstGenerationStudent, firstName, generationCodeSuffix, hispanicLatinoEthnicity, id, lastSurname, maidenName, middleName, multipleBirthStatus, personalTitlePrefix, preferredFirstName, preferredLastSurname, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CandidatesApi->getCandidatesPartitions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **int**| The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items. | [optional] 
 **minChangeVersion** | **int**| Used in synchronization to set sequence minimum ChangeVersion | [optional] 
 **maxChangeVersion** | **int**| Used in synchronization to set sequence maximum ChangeVersion | [optional] 
 **candidateIdentifier** | **String**| A unique alphanumeric code assigned to a candidate. | [optional] 
 **personId** | **String**| A unique alphanumeric code assigned to a person. | [optional] 
 **sourceSystemDescriptor** | **String**| This descriptor defines the originating record source system for the person. | [optional] 
 **birthCountryDescriptor** | **String**| The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes. | [optional] 
 **englishLanguageExamDescriptor** | **String**| Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL). | [optional] 
 **genderDescriptor** | **String**| The gender of the candidate. | [optional] 
 **limitedEnglishProficiencyDescriptor** | **String**| An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient. | [optional] 
 **sexDescriptor** | **String**| The sex of the candidate. | [optional] 
 **birthSexDescriptor** | **String**| A person's sex at birth. | [optional] 
 **birthStateAbbreviationDescriptor** | **String**| The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born. | [optional] 
 **birthCity** | **String**| The city the student was born in. | [optional] 
 **birthDate** | **DateTime**| The month, day, and year on which an individual was born. | [optional] 
 **birthInternationalProvince** | **String**| For students born outside of the U.S., the Province or jurisdiction in which an individual is born. | [optional] 
 **dateEnteredUS** | **DateTime**| For students born outside of the U.S., the date the student entered the U.S. | [optional] 
 **displacementStatus** | **String**| Indicates a state health or weather related event that displaces a group of students, and may require additional funding, educational, or social services. | [optional] 
 **economicDisadvantaged** | **bool**| An indication of inadequate financial condition of an individual's family, as determined by family income, number of family members/dependents, participation in public assistance programs, and/or other characteristics considered relevant by federal, state, and local policy. | [optional] 
 **firstGenerationStudent** | **bool**| Indicator of whether individual is a first generation college student. | [optional] 
 **firstName** | **String**| A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change. | [optional] 
 **generationCodeSuffix** | **String**| An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III). | [optional] 
 **hispanicLatinoEthnicity** | **bool**| An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\" | [optional] 
 **id** | **String**|  | [optional] 
 **lastSurname** | **String**| The name borne in common by members of a family. | [optional] 
 **maidenName** | **String**| The individual's maiden name. | [optional] 
 **middleName** | **String**| A secondary name given to an individual at birth, baptism, or during another naming ceremony. | [optional] 
 **multipleBirthStatus** | **bool**| Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.) | [optional] 
 **personalTitlePrefix** | **String**| A prefix used to denote the title, degree, position, or seniority of the individual. | [optional] 
 **preferredFirstName** | **String**| The first name the individual prefers, if different from their legal first name | [optional] 
 **preferredLastSurname** | **String**| The last name the individual prefers, if different from their legal last name | [optional] 
 **useSnapshot** | **bool**| Indicates if the configured Snapshot should be used. | [optional] [default to false]

### Return type

[**GetAcademicWeeksPartitions200Response**](GetAcademicWeeksPartitions200Response.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyChangesCandidates**
> List<TrackedChangesTpdmCandidateKeyChange> keyChangesCandidates(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot)

Retrieves resources key changes based on change version.

This operation is used to retrieve identifying information about resources whose key values have been changed.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CandidatesApi();
final offset = 56; // int | Indicates how many items should be skipped before returning results.
final limit = 56; // int | Indicates the maximum number of items that should be returned in the results.
final minChangeVersion = 789; // int | Used in synchronization to set sequence minimum ChangeVersion
final maxChangeVersion = 789; // int | Used in synchronization to set sequence maximum ChangeVersion
final totalCount = true; // bool | Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
final useSnapshot = true; // bool | Indicates if the configured Snapshot should be used.

try {
    final result = api_instance.keyChangesCandidates(offset, limit, minChangeVersion, maxChangeVersion, totalCount, useSnapshot);
    print(result);
} catch (e) {
    print('Exception when calling CandidatesApi->keyChangesCandidates: $e\n');
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

[**List<TrackedChangesTpdmCandidateKeyChange>**](TrackedChangesTpdmCandidateKeyChange.md)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCandidate**
> postCandidate(tpdmCandidate)

Creates or updates resources based on the natural key values of the supplied resource.

The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CandidatesApi();
final tpdmCandidate = TpdmCandidate(); // TpdmCandidate | The JSON representation of the \"candidate\" resource to be created or updated.

try {
    api_instance.postCandidate(tpdmCandidate);
} catch (e) {
    print('Exception when calling CandidatesApi->postCandidate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tpdmCandidate** | [**TpdmCandidate**](TpdmCandidate.md)| The JSON representation of the \"candidate\" resource to be created or updated. | 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putCandidate**
> putCandidate(id, tpdmCandidate, ifMatch)

Updates a resource based on the resource identifier.

The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.

### Example
```dart
import 'package:edfi_resources_sdk/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2_client_credentials
//defaultApiClient.getAuthentication<OAuth>('oauth2_client_credentials').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CandidatesApi();
final id = id_example; // String | A resource identifier that uniquely identifies the resource.
final tpdmCandidate = TpdmCandidate(); // TpdmCandidate | The JSON representation of the \"candidate\" resource to be created or updated.
final ifMatch = ifMatch_example; // String | The ETag header value used to prevent the PUT from updating a resource modified by another consumer.

try {
    api_instance.putCandidate(id, tpdmCandidate, ifMatch);
} catch (e) {
    print('Exception when calling CandidatesApi->putCandidate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A resource identifier that uniquely identifies the resource. | 
 **tpdmCandidate** | [**TpdmCandidate**](TpdmCandidate.md)| The JSON representation of the \"candidate\" resource to be created or updated. | 
 **ifMatch** | **String**| The ETag header value used to prevent the PUT from updating a resource modified by another consumer. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2_client_credentials](../README.md#oauth2_client_credentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

