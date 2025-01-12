//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CandidatesApi {
  CandidatesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Deletes an existing resource using the resource identifier.
  ///
  /// The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A resource identifier that uniquely identifies the resource.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.
  Future<Response> deleteCandidateByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tpdm/candidates/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ifMatch != null) {
      headerParams[r'If-Match'] = parameterToString(ifMatch);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Deletes an existing resource using the resource identifier.
  ///
  /// The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A resource identifier that uniquely identifies the resource.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.
  Future<void> deleteCandidateById(String id, { String? ifMatch, }) async {
    final response = await deleteCandidateByIdWithHttpInfo(id,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieves deleted resources based on change version.
  ///
  /// This operation is used to retrieve identifying information about resources that have been deleted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] offset:
  ///   Indicates how many items should be skipped before returning results.
  ///
  /// * [int] limit:
  ///   Indicates the maximum number of items that should be returned in the results.
  ///
  /// * [int] minChangeVersion:
  ///   Used in synchronization to set sequence minimum ChangeVersion
  ///
  /// * [int] maxChangeVersion:
  ///   Used in synchronization to set sequence maximum ChangeVersion
  ///
  /// * [bool] totalCount:
  ///   Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> deletesCandidatesWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tpdm/candidates/deletes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (minChangeVersion != null) {
      queryParams.addAll(_queryParams('', 'minChangeVersion', minChangeVersion));
    }
    if (maxChangeVersion != null) {
      queryParams.addAll(_queryParams('', 'maxChangeVersion', maxChangeVersion));
    }
    if (totalCount != null) {
      queryParams.addAll(_queryParams('', 'totalCount', totalCount));
    }

    if (useSnapshot != null) {
      headerParams[r'Use-Snapshot'] = parameterToString(useSnapshot);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Retrieves deleted resources based on change version.
  ///
  /// This operation is used to retrieve identifying information about resources that have been deleted.
  ///
  /// Parameters:
  ///
  /// * [int] offset:
  ///   Indicates how many items should be skipped before returning results.
  ///
  /// * [int] limit:
  ///   Indicates the maximum number of items that should be returned in the results.
  ///
  /// * [int] minChangeVersion:
  ///   Used in synchronization to set sequence minimum ChangeVersion
  ///
  /// * [int] maxChangeVersion:
  ///   Used in synchronization to set sequence maximum ChangeVersion
  ///
  /// * [bool] totalCount:
  ///   Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<List<TrackedChangesTpdmCandidateDelete>?> deletesCandidates({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesCandidatesWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesTpdmCandidateDelete>') as List)
        .cast<TrackedChangesTpdmCandidateDelete>()
        .toList(growable: false);

    }
    return null;
  }

  /// Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
  ///
  /// This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] offset:
  ///   Indicates how many items should be skipped before returning results.
  ///
  /// * [int] limit:
  ///   Indicates the maximum number of items that should be returned in the results.
  ///
  /// * [String] pageToken:
  ///   The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
  ///
  /// * [int] pageSize:
  ///   The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
  ///
  /// * [int] minChangeVersion:
  ///   Used in synchronization to set sequence minimum ChangeVersion
  ///
  /// * [int] maxChangeVersion:
  ///   Used in synchronization to set sequence maximum ChangeVersion
  ///
  /// * [bool] totalCount:
  ///   Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
  ///
  /// * [String] candidateIdentifier:
  ///   A unique alphanumeric code assigned to a candidate.
  ///
  /// * [String] personId:
  ///   A unique alphanumeric code assigned to a person.
  ///
  /// * [String] sourceSystemDescriptor:
  ///   This descriptor defines the originating record source system for the person.
  ///
  /// * [String] birthCountryDescriptor:
  ///   The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.
  ///
  /// * [String] englishLanguageExamDescriptor:
  ///   Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL).
  ///
  /// * [String] genderDescriptor:
  ///   The gender of the candidate.
  ///
  /// * [String] limitedEnglishProficiencyDescriptor:
  ///   An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.
  ///
  /// * [String] sexDescriptor:
  ///   The sex of the candidate.
  ///
  /// * [String] birthSexDescriptor:
  ///   A person's sex at birth.
  ///
  /// * [String] birthStateAbbreviationDescriptor:
  ///   The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.
  ///
  /// * [String] birthCity:
  ///   The city the student was born in.
  ///
  /// * [DateTime] birthDate:
  ///   The month, day, and year on which an individual was born.
  ///
  /// * [String] birthInternationalProvince:
  ///   For students born outside of the U.S., the Province or jurisdiction in which an individual is born.
  ///
  /// * [DateTime] dateEnteredUS:
  ///   For students born outside of the U.S., the date the student entered the U.S.
  ///
  /// * [String] displacementStatus:
  ///   Indicates a state health or weather related event that displaces a group of students, and may require additional funding, educational, or social services.
  ///
  /// * [bool] economicDisadvantaged:
  ///   An indication of inadequate financial condition of an individual's family, as determined by family income, number of family members/dependents, participation in public assistance programs, and/or other characteristics considered relevant by federal, state, and local policy.
  ///
  /// * [bool] firstGenerationStudent:
  ///   Indicator of whether individual is a first generation college student.
  ///
  /// * [String] firstName:
  ///   A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  ///
  /// * [String] generationCodeSuffix:
  ///   An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  ///
  /// * [bool] hispanicLatinoEthnicity:
  ///   An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] lastSurname:
  ///   The name borne in common by members of a family.
  ///
  /// * [String] maidenName:
  ///   The individual's maiden name.
  ///
  /// * [String] middleName:
  ///   A secondary name given to an individual at birth, baptism, or during another naming ceremony.
  ///
  /// * [bool] multipleBirthStatus:
  ///   Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)
  ///
  /// * [String] personalTitlePrefix:
  ///   A prefix used to denote the title, degree, position, or seniority of the individual.
  ///
  /// * [String] preferredFirstName:
  ///   The first name the individual prefers, if different from their legal first name
  ///
  /// * [String] preferredLastSurname:
  ///   The last name the individual prefers, if different from their legal last name
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getCandidatesWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? candidateIdentifier, String? personId, String? sourceSystemDescriptor, String? birthCountryDescriptor, String? englishLanguageExamDescriptor, String? genderDescriptor, String? limitedEnglishProficiencyDescriptor, String? sexDescriptor, String? birthSexDescriptor, String? birthStateAbbreviationDescriptor, String? birthCity, DateTime? birthDate, String? birthInternationalProvince, DateTime? dateEnteredUS, String? displacementStatus, bool? economicDisadvantaged, bool? firstGenerationStudent, String? firstName, String? generationCodeSuffix, bool? hispanicLatinoEthnicity, String? id, String? lastSurname, String? maidenName, String? middleName, bool? multipleBirthStatus, String? personalTitlePrefix, String? preferredFirstName, String? preferredLastSurname, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tpdm/candidates';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (pageToken != null) {
      queryParams.addAll(_queryParams('', 'pageToken', pageToken));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (minChangeVersion != null) {
      queryParams.addAll(_queryParams('', 'minChangeVersion', minChangeVersion));
    }
    if (maxChangeVersion != null) {
      queryParams.addAll(_queryParams('', 'maxChangeVersion', maxChangeVersion));
    }
    if (totalCount != null) {
      queryParams.addAll(_queryParams('', 'totalCount', totalCount));
    }
    if (candidateIdentifier != null) {
      queryParams.addAll(_queryParams('', 'candidateIdentifier', candidateIdentifier));
    }
    if (personId != null) {
      queryParams.addAll(_queryParams('', 'personId', personId));
    }
    if (sourceSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sourceSystemDescriptor', sourceSystemDescriptor));
    }
    if (birthCountryDescriptor != null) {
      queryParams.addAll(_queryParams('', 'birthCountryDescriptor', birthCountryDescriptor));
    }
    if (englishLanguageExamDescriptor != null) {
      queryParams.addAll(_queryParams('', 'englishLanguageExamDescriptor', englishLanguageExamDescriptor));
    }
    if (genderDescriptor != null) {
      queryParams.addAll(_queryParams('', 'genderDescriptor', genderDescriptor));
    }
    if (limitedEnglishProficiencyDescriptor != null) {
      queryParams.addAll(_queryParams('', 'limitedEnglishProficiencyDescriptor', limitedEnglishProficiencyDescriptor));
    }
    if (sexDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sexDescriptor', sexDescriptor));
    }
    if (birthSexDescriptor != null) {
      queryParams.addAll(_queryParams('', 'birthSexDescriptor', birthSexDescriptor));
    }
    if (birthStateAbbreviationDescriptor != null) {
      queryParams.addAll(_queryParams('', 'birthStateAbbreviationDescriptor', birthStateAbbreviationDescriptor));
    }
    if (birthCity != null) {
      queryParams.addAll(_queryParams('', 'birthCity', birthCity));
    }
    if (birthDate != null) {
      queryParams.addAll(_queryParams('', 'birthDate', birthDate));
    }
    if (birthInternationalProvince != null) {
      queryParams.addAll(_queryParams('', 'birthInternationalProvince', birthInternationalProvince));
    }
    if (dateEnteredUS != null) {
      queryParams.addAll(_queryParams('', 'dateEnteredUS', dateEnteredUS));
    }
    if (displacementStatus != null) {
      queryParams.addAll(_queryParams('', 'displacementStatus', displacementStatus));
    }
    if (economicDisadvantaged != null) {
      queryParams.addAll(_queryParams('', 'economicDisadvantaged', economicDisadvantaged));
    }
    if (firstGenerationStudent != null) {
      queryParams.addAll(_queryParams('', 'firstGenerationStudent', firstGenerationStudent));
    }
    if (firstName != null) {
      queryParams.addAll(_queryParams('', 'firstName', firstName));
    }
    if (generationCodeSuffix != null) {
      queryParams.addAll(_queryParams('', 'generationCodeSuffix', generationCodeSuffix));
    }
    if (hispanicLatinoEthnicity != null) {
      queryParams.addAll(_queryParams('', 'hispanicLatinoEthnicity', hispanicLatinoEthnicity));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (lastSurname != null) {
      queryParams.addAll(_queryParams('', 'lastSurname', lastSurname));
    }
    if (maidenName != null) {
      queryParams.addAll(_queryParams('', 'maidenName', maidenName));
    }
    if (middleName != null) {
      queryParams.addAll(_queryParams('', 'middleName', middleName));
    }
    if (multipleBirthStatus != null) {
      queryParams.addAll(_queryParams('', 'multipleBirthStatus', multipleBirthStatus));
    }
    if (personalTitlePrefix != null) {
      queryParams.addAll(_queryParams('', 'personalTitlePrefix', personalTitlePrefix));
    }
    if (preferredFirstName != null) {
      queryParams.addAll(_queryParams('', 'preferredFirstName', preferredFirstName));
    }
    if (preferredLastSurname != null) {
      queryParams.addAll(_queryParams('', 'preferredLastSurname', preferredLastSurname));
    }

    if (useSnapshot != null) {
      headerParams[r'Use-Snapshot'] = parameterToString(useSnapshot);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
  ///
  /// This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).
  ///
  /// Parameters:
  ///
  /// * [int] offset:
  ///   Indicates how many items should be skipped before returning results.
  ///
  /// * [int] limit:
  ///   Indicates the maximum number of items that should be returned in the results.
  ///
  /// * [String] pageToken:
  ///   The token of the page to retrieve, obtained either from the \"Next-Page-Token\" header of the previous request, or from the \"partitions\" endpoint for the resource. Cannot be used with limit/offset paging.
  ///
  /// * [int] pageSize:
  ///   The maximum number of items to retrieve in the page. For use with pageToken (cursor paging) only.
  ///
  /// * [int] minChangeVersion:
  ///   Used in synchronization to set sequence minimum ChangeVersion
  ///
  /// * [int] maxChangeVersion:
  ///   Used in synchronization to set sequence maximum ChangeVersion
  ///
  /// * [bool] totalCount:
  ///   Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
  ///
  /// * [String] candidateIdentifier:
  ///   A unique alphanumeric code assigned to a candidate.
  ///
  /// * [String] personId:
  ///   A unique alphanumeric code assigned to a person.
  ///
  /// * [String] sourceSystemDescriptor:
  ///   This descriptor defines the originating record source system for the person.
  ///
  /// * [String] birthCountryDescriptor:
  ///   The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.
  ///
  /// * [String] englishLanguageExamDescriptor:
  ///   Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL).
  ///
  /// * [String] genderDescriptor:
  ///   The gender of the candidate.
  ///
  /// * [String] limitedEnglishProficiencyDescriptor:
  ///   An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.
  ///
  /// * [String] sexDescriptor:
  ///   The sex of the candidate.
  ///
  /// * [String] birthSexDescriptor:
  ///   A person's sex at birth.
  ///
  /// * [String] birthStateAbbreviationDescriptor:
  ///   The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.
  ///
  /// * [String] birthCity:
  ///   The city the student was born in.
  ///
  /// * [DateTime] birthDate:
  ///   The month, day, and year on which an individual was born.
  ///
  /// * [String] birthInternationalProvince:
  ///   For students born outside of the U.S., the Province or jurisdiction in which an individual is born.
  ///
  /// * [DateTime] dateEnteredUS:
  ///   For students born outside of the U.S., the date the student entered the U.S.
  ///
  /// * [String] displacementStatus:
  ///   Indicates a state health or weather related event that displaces a group of students, and may require additional funding, educational, or social services.
  ///
  /// * [bool] economicDisadvantaged:
  ///   An indication of inadequate financial condition of an individual's family, as determined by family income, number of family members/dependents, participation in public assistance programs, and/or other characteristics considered relevant by federal, state, and local policy.
  ///
  /// * [bool] firstGenerationStudent:
  ///   Indicator of whether individual is a first generation college student.
  ///
  /// * [String] firstName:
  ///   A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  ///
  /// * [String] generationCodeSuffix:
  ///   An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  ///
  /// * [bool] hispanicLatinoEthnicity:
  ///   An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] lastSurname:
  ///   The name borne in common by members of a family.
  ///
  /// * [String] maidenName:
  ///   The individual's maiden name.
  ///
  /// * [String] middleName:
  ///   A secondary name given to an individual at birth, baptism, or during another naming ceremony.
  ///
  /// * [bool] multipleBirthStatus:
  ///   Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)
  ///
  /// * [String] personalTitlePrefix:
  ///   A prefix used to denote the title, degree, position, or seniority of the individual.
  ///
  /// * [String] preferredFirstName:
  ///   The first name the individual prefers, if different from their legal first name
  ///
  /// * [String] preferredLastSurname:
  ///   The last name the individual prefers, if different from their legal last name
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<List<TpdmCandidate>?> getCandidates({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? candidateIdentifier, String? personId, String? sourceSystemDescriptor, String? birthCountryDescriptor, String? englishLanguageExamDescriptor, String? genderDescriptor, String? limitedEnglishProficiencyDescriptor, String? sexDescriptor, String? birthSexDescriptor, String? birthStateAbbreviationDescriptor, String? birthCity, DateTime? birthDate, String? birthInternationalProvince, DateTime? dateEnteredUS, String? displacementStatus, bool? economicDisadvantaged, bool? firstGenerationStudent, String? firstName, String? generationCodeSuffix, bool? hispanicLatinoEthnicity, String? id, String? lastSurname, String? maidenName, String? middleName, bool? multipleBirthStatus, String? personalTitlePrefix, String? preferredFirstName, String? preferredLastSurname, bool? useSnapshot, }) async {
    final response = await getCandidatesWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, candidateIdentifier: candidateIdentifier, personId: personId, sourceSystemDescriptor: sourceSystemDescriptor, birthCountryDescriptor: birthCountryDescriptor, englishLanguageExamDescriptor: englishLanguageExamDescriptor, genderDescriptor: genderDescriptor, limitedEnglishProficiencyDescriptor: limitedEnglishProficiencyDescriptor, sexDescriptor: sexDescriptor, birthSexDescriptor: birthSexDescriptor, birthStateAbbreviationDescriptor: birthStateAbbreviationDescriptor, birthCity: birthCity, birthDate: birthDate, birthInternationalProvince: birthInternationalProvince, dateEnteredUS: dateEnteredUS, displacementStatus: displacementStatus, economicDisadvantaged: economicDisadvantaged, firstGenerationStudent: firstGenerationStudent, firstName: firstName, generationCodeSuffix: generationCodeSuffix, hispanicLatinoEthnicity: hispanicLatinoEthnicity, id: id, lastSurname: lastSurname, maidenName: maidenName, middleName: middleName, multipleBirthStatus: multipleBirthStatus, personalTitlePrefix: personalTitlePrefix, preferredFirstName: preferredFirstName, preferredLastSurname: preferredLastSurname, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TpdmCandidate>') as List)
        .cast<TpdmCandidate>()
        .toList(growable: false);

    }
    return null;
  }

  /// Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
  ///
  /// This GET operation retrieves a resource by the specified resource identifier.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A resource identifier that uniquely identifies the resource.
  ///
  /// * [String] ifNoneMatch:
  ///   The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getCandidatesByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tpdm/candidates/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ifNoneMatch != null) {
      headerParams[r'If-None-Match'] = parameterToString(ifNoneMatch);
    }
    if (useSnapshot != null) {
      headerParams[r'Use-Snapshot'] = parameterToString(useSnapshot);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
  ///
  /// This GET operation retrieves a resource by the specified resource identifier.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A resource identifier that uniquely identifies the resource.
  ///
  /// * [String] ifNoneMatch:
  ///   The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<TpdmCandidate?> getCandidatesById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getCandidatesByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TpdmCandidate',) as TpdmCandidate;
    
    }
    return null;
  }

  /// Retrieves a set of page tokens to be used for efficient client-side parallel processing.
  ///
  /// Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] number:
  ///   The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
  ///
  /// * [int] minChangeVersion:
  ///   Used in synchronization to set sequence minimum ChangeVersion
  ///
  /// * [int] maxChangeVersion:
  ///   Used in synchronization to set sequence maximum ChangeVersion
  ///
  /// * [String] candidateIdentifier:
  ///   A unique alphanumeric code assigned to a candidate.
  ///
  /// * [String] personId:
  ///   A unique alphanumeric code assigned to a person.
  ///
  /// * [String] sourceSystemDescriptor:
  ///   This descriptor defines the originating record source system for the person.
  ///
  /// * [String] birthCountryDescriptor:
  ///   The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.
  ///
  /// * [String] englishLanguageExamDescriptor:
  ///   Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL).
  ///
  /// * [String] genderDescriptor:
  ///   The gender of the candidate.
  ///
  /// * [String] limitedEnglishProficiencyDescriptor:
  ///   An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.
  ///
  /// * [String] sexDescriptor:
  ///   The sex of the candidate.
  ///
  /// * [String] birthSexDescriptor:
  ///   A person's sex at birth.
  ///
  /// * [String] birthStateAbbreviationDescriptor:
  ///   The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.
  ///
  /// * [String] birthCity:
  ///   The city the student was born in.
  ///
  /// * [DateTime] birthDate:
  ///   The month, day, and year on which an individual was born.
  ///
  /// * [String] birthInternationalProvince:
  ///   For students born outside of the U.S., the Province or jurisdiction in which an individual is born.
  ///
  /// * [DateTime] dateEnteredUS:
  ///   For students born outside of the U.S., the date the student entered the U.S.
  ///
  /// * [String] displacementStatus:
  ///   Indicates a state health or weather related event that displaces a group of students, and may require additional funding, educational, or social services.
  ///
  /// * [bool] economicDisadvantaged:
  ///   An indication of inadequate financial condition of an individual's family, as determined by family income, number of family members/dependents, participation in public assistance programs, and/or other characteristics considered relevant by federal, state, and local policy.
  ///
  /// * [bool] firstGenerationStudent:
  ///   Indicator of whether individual is a first generation college student.
  ///
  /// * [String] firstName:
  ///   A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  ///
  /// * [String] generationCodeSuffix:
  ///   An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  ///
  /// * [bool] hispanicLatinoEthnicity:
  ///   An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] lastSurname:
  ///   The name borne in common by members of a family.
  ///
  /// * [String] maidenName:
  ///   The individual's maiden name.
  ///
  /// * [String] middleName:
  ///   A secondary name given to an individual at birth, baptism, or during another naming ceremony.
  ///
  /// * [bool] multipleBirthStatus:
  ///   Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)
  ///
  /// * [String] personalTitlePrefix:
  ///   A prefix used to denote the title, degree, position, or seniority of the individual.
  ///
  /// * [String] preferredFirstName:
  ///   The first name the individual prefers, if different from their legal first name
  ///
  /// * [String] preferredLastSurname:
  ///   The last name the individual prefers, if different from their legal last name
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getCandidatesPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, String? candidateIdentifier, String? personId, String? sourceSystemDescriptor, String? birthCountryDescriptor, String? englishLanguageExamDescriptor, String? genderDescriptor, String? limitedEnglishProficiencyDescriptor, String? sexDescriptor, String? birthSexDescriptor, String? birthStateAbbreviationDescriptor, String? birthCity, DateTime? birthDate, String? birthInternationalProvince, DateTime? dateEnteredUS, String? displacementStatus, bool? economicDisadvantaged, bool? firstGenerationStudent, String? firstName, String? generationCodeSuffix, bool? hispanicLatinoEthnicity, String? id, String? lastSurname, String? maidenName, String? middleName, bool? multipleBirthStatus, String? personalTitlePrefix, String? preferredFirstName, String? preferredLastSurname, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tpdm/candidates/partitions';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (number != null) {
      queryParams.addAll(_queryParams('', 'number', number));
    }
    if (minChangeVersion != null) {
      queryParams.addAll(_queryParams('', 'minChangeVersion', minChangeVersion));
    }
    if (maxChangeVersion != null) {
      queryParams.addAll(_queryParams('', 'maxChangeVersion', maxChangeVersion));
    }
    if (candidateIdentifier != null) {
      queryParams.addAll(_queryParams('', 'candidateIdentifier', candidateIdentifier));
    }
    if (personId != null) {
      queryParams.addAll(_queryParams('', 'personId', personId));
    }
    if (sourceSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sourceSystemDescriptor', sourceSystemDescriptor));
    }
    if (birthCountryDescriptor != null) {
      queryParams.addAll(_queryParams('', 'birthCountryDescriptor', birthCountryDescriptor));
    }
    if (englishLanguageExamDescriptor != null) {
      queryParams.addAll(_queryParams('', 'englishLanguageExamDescriptor', englishLanguageExamDescriptor));
    }
    if (genderDescriptor != null) {
      queryParams.addAll(_queryParams('', 'genderDescriptor', genderDescriptor));
    }
    if (limitedEnglishProficiencyDescriptor != null) {
      queryParams.addAll(_queryParams('', 'limitedEnglishProficiencyDescriptor', limitedEnglishProficiencyDescriptor));
    }
    if (sexDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sexDescriptor', sexDescriptor));
    }
    if (birthSexDescriptor != null) {
      queryParams.addAll(_queryParams('', 'birthSexDescriptor', birthSexDescriptor));
    }
    if (birthStateAbbreviationDescriptor != null) {
      queryParams.addAll(_queryParams('', 'birthStateAbbreviationDescriptor', birthStateAbbreviationDescriptor));
    }
    if (birthCity != null) {
      queryParams.addAll(_queryParams('', 'birthCity', birthCity));
    }
    if (birthDate != null) {
      queryParams.addAll(_queryParams('', 'birthDate', birthDate));
    }
    if (birthInternationalProvince != null) {
      queryParams.addAll(_queryParams('', 'birthInternationalProvince', birthInternationalProvince));
    }
    if (dateEnteredUS != null) {
      queryParams.addAll(_queryParams('', 'dateEnteredUS', dateEnteredUS));
    }
    if (displacementStatus != null) {
      queryParams.addAll(_queryParams('', 'displacementStatus', displacementStatus));
    }
    if (economicDisadvantaged != null) {
      queryParams.addAll(_queryParams('', 'economicDisadvantaged', economicDisadvantaged));
    }
    if (firstGenerationStudent != null) {
      queryParams.addAll(_queryParams('', 'firstGenerationStudent', firstGenerationStudent));
    }
    if (firstName != null) {
      queryParams.addAll(_queryParams('', 'firstName', firstName));
    }
    if (generationCodeSuffix != null) {
      queryParams.addAll(_queryParams('', 'generationCodeSuffix', generationCodeSuffix));
    }
    if (hispanicLatinoEthnicity != null) {
      queryParams.addAll(_queryParams('', 'hispanicLatinoEthnicity', hispanicLatinoEthnicity));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (lastSurname != null) {
      queryParams.addAll(_queryParams('', 'lastSurname', lastSurname));
    }
    if (maidenName != null) {
      queryParams.addAll(_queryParams('', 'maidenName', maidenName));
    }
    if (middleName != null) {
      queryParams.addAll(_queryParams('', 'middleName', middleName));
    }
    if (multipleBirthStatus != null) {
      queryParams.addAll(_queryParams('', 'multipleBirthStatus', multipleBirthStatus));
    }
    if (personalTitlePrefix != null) {
      queryParams.addAll(_queryParams('', 'personalTitlePrefix', personalTitlePrefix));
    }
    if (preferredFirstName != null) {
      queryParams.addAll(_queryParams('', 'preferredFirstName', preferredFirstName));
    }
    if (preferredLastSurname != null) {
      queryParams.addAll(_queryParams('', 'preferredLastSurname', preferredLastSurname));
    }

    if (useSnapshot != null) {
      headerParams[r'Use-Snapshot'] = parameterToString(useSnapshot);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Retrieves a set of page tokens to be used for efficient client-side parallel processing.
  ///
  /// Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.
  ///
  /// Parameters:
  ///
  /// * [int] number:
  ///   The number of evenly distributed partitions to provide for client-side parallel processing. If unspecified, a reasonable set of partitions will be determined based on the total number of accessible items.
  ///
  /// * [int] minChangeVersion:
  ///   Used in synchronization to set sequence minimum ChangeVersion
  ///
  /// * [int] maxChangeVersion:
  ///   Used in synchronization to set sequence maximum ChangeVersion
  ///
  /// * [String] candidateIdentifier:
  ///   A unique alphanumeric code assigned to a candidate.
  ///
  /// * [String] personId:
  ///   A unique alphanumeric code assigned to a person.
  ///
  /// * [String] sourceSystemDescriptor:
  ///   This descriptor defines the originating record source system for the person.
  ///
  /// * [String] birthCountryDescriptor:
  ///   The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.
  ///
  /// * [String] englishLanguageExamDescriptor:
  ///   Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL).
  ///
  /// * [String] genderDescriptor:
  ///   The gender of the candidate.
  ///
  /// * [String] limitedEnglishProficiencyDescriptor:
  ///   An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.
  ///
  /// * [String] sexDescriptor:
  ///   The sex of the candidate.
  ///
  /// * [String] birthSexDescriptor:
  ///   A person's sex at birth.
  ///
  /// * [String] birthStateAbbreviationDescriptor:
  ///   The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.
  ///
  /// * [String] birthCity:
  ///   The city the student was born in.
  ///
  /// * [DateTime] birthDate:
  ///   The month, day, and year on which an individual was born.
  ///
  /// * [String] birthInternationalProvince:
  ///   For students born outside of the U.S., the Province or jurisdiction in which an individual is born.
  ///
  /// * [DateTime] dateEnteredUS:
  ///   For students born outside of the U.S., the date the student entered the U.S.
  ///
  /// * [String] displacementStatus:
  ///   Indicates a state health or weather related event that displaces a group of students, and may require additional funding, educational, or social services.
  ///
  /// * [bool] economicDisadvantaged:
  ///   An indication of inadequate financial condition of an individual's family, as determined by family income, number of family members/dependents, participation in public assistance programs, and/or other characteristics considered relevant by federal, state, and local policy.
  ///
  /// * [bool] firstGenerationStudent:
  ///   Indicator of whether individual is a first generation college student.
  ///
  /// * [String] firstName:
  ///   A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  ///
  /// * [String] generationCodeSuffix:
  ///   An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  ///
  /// * [bool] hispanicLatinoEthnicity:
  ///   An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] lastSurname:
  ///   The name borne in common by members of a family.
  ///
  /// * [String] maidenName:
  ///   The individual's maiden name.
  ///
  /// * [String] middleName:
  ///   A secondary name given to an individual at birth, baptism, or during another naming ceremony.
  ///
  /// * [bool] multipleBirthStatus:
  ///   Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)
  ///
  /// * [String] personalTitlePrefix:
  ///   A prefix used to denote the title, degree, position, or seniority of the individual.
  ///
  /// * [String] preferredFirstName:
  ///   The first name the individual prefers, if different from their legal first name
  ///
  /// * [String] preferredLastSurname:
  ///   The last name the individual prefers, if different from their legal last name
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<GetAcademicWeeksPartitions200Response?> getCandidatesPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, String? candidateIdentifier, String? personId, String? sourceSystemDescriptor, String? birthCountryDescriptor, String? englishLanguageExamDescriptor, String? genderDescriptor, String? limitedEnglishProficiencyDescriptor, String? sexDescriptor, String? birthSexDescriptor, String? birthStateAbbreviationDescriptor, String? birthCity, DateTime? birthDate, String? birthInternationalProvince, DateTime? dateEnteredUS, String? displacementStatus, bool? economicDisadvantaged, bool? firstGenerationStudent, String? firstName, String? generationCodeSuffix, bool? hispanicLatinoEthnicity, String? id, String? lastSurname, String? maidenName, String? middleName, bool? multipleBirthStatus, String? personalTitlePrefix, String? preferredFirstName, String? preferredLastSurname, bool? useSnapshot, }) async {
    final response = await getCandidatesPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, candidateIdentifier: candidateIdentifier, personId: personId, sourceSystemDescriptor: sourceSystemDescriptor, birthCountryDescriptor: birthCountryDescriptor, englishLanguageExamDescriptor: englishLanguageExamDescriptor, genderDescriptor: genderDescriptor, limitedEnglishProficiencyDescriptor: limitedEnglishProficiencyDescriptor, sexDescriptor: sexDescriptor, birthSexDescriptor: birthSexDescriptor, birthStateAbbreviationDescriptor: birthStateAbbreviationDescriptor, birthCity: birthCity, birthDate: birthDate, birthInternationalProvince: birthInternationalProvince, dateEnteredUS: dateEnteredUS, displacementStatus: displacementStatus, economicDisadvantaged: economicDisadvantaged, firstGenerationStudent: firstGenerationStudent, firstName: firstName, generationCodeSuffix: generationCodeSuffix, hispanicLatinoEthnicity: hispanicLatinoEthnicity, id: id, lastSurname: lastSurname, maidenName: maidenName, middleName: middleName, multipleBirthStatus: multipleBirthStatus, personalTitlePrefix: personalTitlePrefix, preferredFirstName: preferredFirstName, preferredLastSurname: preferredLastSurname, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetAcademicWeeksPartitions200Response',) as GetAcademicWeeksPartitions200Response;
    
    }
    return null;
  }

  /// Retrieves resources key changes based on change version.
  ///
  /// This operation is used to retrieve identifying information about resources whose key values have been changed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] offset:
  ///   Indicates how many items should be skipped before returning results.
  ///
  /// * [int] limit:
  ///   Indicates the maximum number of items that should be returned in the results.
  ///
  /// * [int] minChangeVersion:
  ///   Used in synchronization to set sequence minimum ChangeVersion
  ///
  /// * [int] maxChangeVersion:
  ///   Used in synchronization to set sequence maximum ChangeVersion
  ///
  /// * [bool] totalCount:
  ///   Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> keyChangesCandidatesWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tpdm/candidates/keyChanges';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (minChangeVersion != null) {
      queryParams.addAll(_queryParams('', 'minChangeVersion', minChangeVersion));
    }
    if (maxChangeVersion != null) {
      queryParams.addAll(_queryParams('', 'maxChangeVersion', maxChangeVersion));
    }
    if (totalCount != null) {
      queryParams.addAll(_queryParams('', 'totalCount', totalCount));
    }

    if (useSnapshot != null) {
      headerParams[r'Use-Snapshot'] = parameterToString(useSnapshot);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Retrieves resources key changes based on change version.
  ///
  /// This operation is used to retrieve identifying information about resources whose key values have been changed.
  ///
  /// Parameters:
  ///
  /// * [int] offset:
  ///   Indicates how many items should be skipped before returning results.
  ///
  /// * [int] limit:
  ///   Indicates the maximum number of items that should be returned in the results.
  ///
  /// * [int] minChangeVersion:
  ///   Used in synchronization to set sequence minimum ChangeVersion
  ///
  /// * [int] maxChangeVersion:
  ///   Used in synchronization to set sequence maximum ChangeVersion
  ///
  /// * [bool] totalCount:
  ///   Indicates if the total number of items available should be returned in the 'Total-Count' header of the response.  If set to false, 'Total-Count' header will not be provided. Must be false when using cursor paging (with pageToken).
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<List<TrackedChangesTpdmCandidateKeyChange>?> keyChangesCandidates({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesCandidatesWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesTpdmCandidateKeyChange>') as List)
        .cast<TrackedChangesTpdmCandidateKeyChange>()
        .toList(growable: false);

    }
    return null;
  }

  /// Creates or updates resources based on the natural key values of the supplied resource.
  ///
  /// The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TpdmCandidate] tpdmCandidate (required):
  ///   The JSON representation of the \"candidate\" resource to be created or updated.
  Future<Response> postCandidateWithHttpInfo(TpdmCandidate tpdmCandidate,) async {
    // ignore: prefer_const_declarations
    final path = r'/tpdm/candidates';

    // ignore: prefer_final_locals
    Object? postBody = tpdmCandidate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates or updates resources based on the natural key values of the supplied resource.
  ///
  /// The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.
  ///
  /// Parameters:
  ///
  /// * [TpdmCandidate] tpdmCandidate (required):
  ///   The JSON representation of the \"candidate\" resource to be created or updated.
  Future<void> postCandidate(TpdmCandidate tpdmCandidate,) async {
    final response = await postCandidateWithHttpInfo(tpdmCandidate,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates a resource based on the resource identifier.
  ///
  /// The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A resource identifier that uniquely identifies the resource.
  ///
  /// * [TpdmCandidate] tpdmCandidate (required):
  ///   The JSON representation of the \"candidate\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putCandidateWithHttpInfo(String id, TpdmCandidate tpdmCandidate, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tpdm/candidates/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = tpdmCandidate;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ifMatch != null) {
      headerParams[r'If-Match'] = parameterToString(ifMatch);
    }

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Updates a resource based on the resource identifier.
  ///
  /// The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A resource identifier that uniquely identifies the resource.
  ///
  /// * [TpdmCandidate] tpdmCandidate (required):
  ///   The JSON representation of the \"candidate\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putCandidate(String id, TpdmCandidate tpdmCandidate, { String? ifMatch, }) async {
    final response = await putCandidateWithHttpInfo(id, tpdmCandidate,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
