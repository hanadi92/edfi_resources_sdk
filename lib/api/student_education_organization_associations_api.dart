//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StudentEducationOrganizationAssociationsApi {
  StudentEducationOrganizationAssociationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteStudentEducationOrganizationAssociationByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentEducationOrganizationAssociations/{id}'
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
  Future<void> deleteStudentEducationOrganizationAssociationById(String id, { String? ifMatch, }) async {
    final response = await deleteStudentEducationOrganizationAssociationByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesStudentEducationOrganizationAssociationsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentEducationOrganizationAssociations/deletes';

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
  Future<List<TrackedChangesEdFiStudentEducationOrganizationAssociationDelete>?> deletesStudentEducationOrganizationAssociations({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesStudentEducationOrganizationAssociationsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStudentEducationOrganizationAssociationDelete>') as List)
        .cast<TrackedChangesEdFiStudentEducationOrganizationAssociationDelete>()
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
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [String] barrierToInternetAccessInResidenceDescriptor:
  ///   An indication of the barrier to having internet access in the student s primary place of residence.
  ///
  /// * [String] internetAccessTypeInResidenceDescriptor:
  ///   The primary type of internet service used in the student s primary place of residence.
  ///
  /// * [String] internetPerformanceInResidenceDescriptor:
  ///   An indication of whether the student can complete the full range of learning activities, including video streaming and assignment upload, without interruptions caused by poor internet performance in their primary place of residence.
  ///
  /// * [String] limitedEnglishProficiencyDescriptor:
  ///   An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.
  ///
  /// * [String] primaryLearningDeviceAccessDescriptor:
  ///   An indication of whether the primary learning device is shared or not shared with another individual.
  ///
  /// * [String] primaryLearningDeviceAwayFromSchoolDescriptor:
  ///   The type of device the student uses most often to complete learning activities away from school.
  ///
  /// * [String] primaryLearningDeviceProviderDescriptor:
  ///   The provider of the primary learning device.
  ///
  /// * [String] sexDescriptor:
  ///   The student's birth sex as reported to the education organization.
  ///
  /// * [String] supporterMilitaryConnectionDescriptor:
  ///   Military connection of the person/people whom the student is a dependent of.
  ///
  /// * [String] genderIdentity:
  ///   The student's gender as last reported to the education organization.
  ///
  /// * [bool] hispanicLatinoEthnicity:
  ///   An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race, as last reported to the education organization. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] internetAccessInResidence:
  ///   An indication of whether the student is able to access the internet in their primary place of residence.
  ///
  /// * [String] loginId:
  ///   The login ID for the user; used for security access control interface.
  ///
  /// * [String] profileThumbnail:
  ///   Locator reference for the student photo. The specification for that reference is left to local definition.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] studentIdentificationSystemDescriptor:
  ///   A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a student.
  ///
  /// * [String] assigningOrganizationIdentificationCode:
  ///   The organization code or name assigning the StudentIdentificationCode.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to a student by a school, school system, a state, or other agency or entity.
  Future<Response> getStudentEducationOrganizationAssociationsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, int? educationOrganizationId, String? studentUniqueId, String? barrierToInternetAccessInResidenceDescriptor, String? internetAccessTypeInResidenceDescriptor, String? internetPerformanceInResidenceDescriptor, String? limitedEnglishProficiencyDescriptor, String? primaryLearningDeviceAccessDescriptor, String? primaryLearningDeviceAwayFromSchoolDescriptor, String? primaryLearningDeviceProviderDescriptor, String? sexDescriptor, String? supporterMilitaryConnectionDescriptor, String? genderIdentity, bool? hispanicLatinoEthnicity, String? id, bool? internetAccessInResidence, String? loginId, String? profileThumbnail, bool? useSnapshot, String? studentIdentificationSystemDescriptor, String? assigningOrganizationIdentificationCode, String? identificationCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentEducationOrganizationAssociations';

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
    if (educationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'educationOrganizationId', educationOrganizationId));
    }
    if (studentUniqueId != null) {
      queryParams.addAll(_queryParams('', 'studentUniqueId', studentUniqueId));
    }
    if (barrierToInternetAccessInResidenceDescriptor != null) {
      queryParams.addAll(_queryParams('', 'barrierToInternetAccessInResidenceDescriptor', barrierToInternetAccessInResidenceDescriptor));
    }
    if (internetAccessTypeInResidenceDescriptor != null) {
      queryParams.addAll(_queryParams('', 'internetAccessTypeInResidenceDescriptor', internetAccessTypeInResidenceDescriptor));
    }
    if (internetPerformanceInResidenceDescriptor != null) {
      queryParams.addAll(_queryParams('', 'internetPerformanceInResidenceDescriptor', internetPerformanceInResidenceDescriptor));
    }
    if (limitedEnglishProficiencyDescriptor != null) {
      queryParams.addAll(_queryParams('', 'limitedEnglishProficiencyDescriptor', limitedEnglishProficiencyDescriptor));
    }
    if (primaryLearningDeviceAccessDescriptor != null) {
      queryParams.addAll(_queryParams('', 'primaryLearningDeviceAccessDescriptor', primaryLearningDeviceAccessDescriptor));
    }
    if (primaryLearningDeviceAwayFromSchoolDescriptor != null) {
      queryParams.addAll(_queryParams('', 'primaryLearningDeviceAwayFromSchoolDescriptor', primaryLearningDeviceAwayFromSchoolDescriptor));
    }
    if (primaryLearningDeviceProviderDescriptor != null) {
      queryParams.addAll(_queryParams('', 'primaryLearningDeviceProviderDescriptor', primaryLearningDeviceProviderDescriptor));
    }
    if (sexDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sexDescriptor', sexDescriptor));
    }
    if (supporterMilitaryConnectionDescriptor != null) {
      queryParams.addAll(_queryParams('', 'supporterMilitaryConnectionDescriptor', supporterMilitaryConnectionDescriptor));
    }
    if (genderIdentity != null) {
      queryParams.addAll(_queryParams('', 'genderIdentity', genderIdentity));
    }
    if (hispanicLatinoEthnicity != null) {
      queryParams.addAll(_queryParams('', 'hispanicLatinoEthnicity', hispanicLatinoEthnicity));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (internetAccessInResidence != null) {
      queryParams.addAll(_queryParams('', 'internetAccessInResidence', internetAccessInResidence));
    }
    if (loginId != null) {
      queryParams.addAll(_queryParams('', 'loginId', loginId));
    }
    if (profileThumbnail != null) {
      queryParams.addAll(_queryParams('', 'profileThumbnail', profileThumbnail));
    }
    if (studentIdentificationSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'studentIdentificationSystemDescriptor', studentIdentificationSystemDescriptor));
    }
    if (assigningOrganizationIdentificationCode != null) {
      queryParams.addAll(_queryParams('', 'assigningOrganizationIdentificationCode', assigningOrganizationIdentificationCode));
    }
    if (identificationCode != null) {
      queryParams.addAll(_queryParams('', 'identificationCode', identificationCode));
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
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [String] barrierToInternetAccessInResidenceDescriptor:
  ///   An indication of the barrier to having internet access in the student s primary place of residence.
  ///
  /// * [String] internetAccessTypeInResidenceDescriptor:
  ///   The primary type of internet service used in the student s primary place of residence.
  ///
  /// * [String] internetPerformanceInResidenceDescriptor:
  ///   An indication of whether the student can complete the full range of learning activities, including video streaming and assignment upload, without interruptions caused by poor internet performance in their primary place of residence.
  ///
  /// * [String] limitedEnglishProficiencyDescriptor:
  ///   An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.
  ///
  /// * [String] primaryLearningDeviceAccessDescriptor:
  ///   An indication of whether the primary learning device is shared or not shared with another individual.
  ///
  /// * [String] primaryLearningDeviceAwayFromSchoolDescriptor:
  ///   The type of device the student uses most often to complete learning activities away from school.
  ///
  /// * [String] primaryLearningDeviceProviderDescriptor:
  ///   The provider of the primary learning device.
  ///
  /// * [String] sexDescriptor:
  ///   The student's birth sex as reported to the education organization.
  ///
  /// * [String] supporterMilitaryConnectionDescriptor:
  ///   Military connection of the person/people whom the student is a dependent of.
  ///
  /// * [String] genderIdentity:
  ///   The student's gender as last reported to the education organization.
  ///
  /// * [bool] hispanicLatinoEthnicity:
  ///   An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race, as last reported to the education organization. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] internetAccessInResidence:
  ///   An indication of whether the student is able to access the internet in their primary place of residence.
  ///
  /// * [String] loginId:
  ///   The login ID for the user; used for security access control interface.
  ///
  /// * [String] profileThumbnail:
  ///   Locator reference for the student photo. The specification for that reference is left to local definition.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] studentIdentificationSystemDescriptor:
  ///   A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a student.
  ///
  /// * [String] assigningOrganizationIdentificationCode:
  ///   The organization code or name assigning the StudentIdentificationCode.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to a student by a school, school system, a state, or other agency or entity.
  Future<List<EdFiStudentEducationOrganizationAssociation>?> getStudentEducationOrganizationAssociations({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, int? educationOrganizationId, String? studentUniqueId, String? barrierToInternetAccessInResidenceDescriptor, String? internetAccessTypeInResidenceDescriptor, String? internetPerformanceInResidenceDescriptor, String? limitedEnglishProficiencyDescriptor, String? primaryLearningDeviceAccessDescriptor, String? primaryLearningDeviceAwayFromSchoolDescriptor, String? primaryLearningDeviceProviderDescriptor, String? sexDescriptor, String? supporterMilitaryConnectionDescriptor, String? genderIdentity, bool? hispanicLatinoEthnicity, String? id, bool? internetAccessInResidence, String? loginId, String? profileThumbnail, bool? useSnapshot, String? studentIdentificationSystemDescriptor, String? assigningOrganizationIdentificationCode, String? identificationCode, }) async {
    final response = await getStudentEducationOrganizationAssociationsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, educationOrganizationId: educationOrganizationId, studentUniqueId: studentUniqueId, barrierToInternetAccessInResidenceDescriptor: barrierToInternetAccessInResidenceDescriptor, internetAccessTypeInResidenceDescriptor: internetAccessTypeInResidenceDescriptor, internetPerformanceInResidenceDescriptor: internetPerformanceInResidenceDescriptor, limitedEnglishProficiencyDescriptor: limitedEnglishProficiencyDescriptor, primaryLearningDeviceAccessDescriptor: primaryLearningDeviceAccessDescriptor, primaryLearningDeviceAwayFromSchoolDescriptor: primaryLearningDeviceAwayFromSchoolDescriptor, primaryLearningDeviceProviderDescriptor: primaryLearningDeviceProviderDescriptor, sexDescriptor: sexDescriptor, supporterMilitaryConnectionDescriptor: supporterMilitaryConnectionDescriptor, genderIdentity: genderIdentity, hispanicLatinoEthnicity: hispanicLatinoEthnicity, id: id, internetAccessInResidence: internetAccessInResidence, loginId: loginId, profileThumbnail: profileThumbnail, useSnapshot: useSnapshot, studentIdentificationSystemDescriptor: studentIdentificationSystemDescriptor, assigningOrganizationIdentificationCode: assigningOrganizationIdentificationCode, identificationCode: identificationCode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiStudentEducationOrganizationAssociation>') as List)
        .cast<EdFiStudentEducationOrganizationAssociation>()
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
  Future<Response> getStudentEducationOrganizationAssociationsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentEducationOrganizationAssociations/{id}'
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
  Future<EdFiStudentEducationOrganizationAssociation?> getStudentEducationOrganizationAssociationsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getStudentEducationOrganizationAssociationsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiStudentEducationOrganizationAssociation',) as EdFiStudentEducationOrganizationAssociation;
    
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
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [String] barrierToInternetAccessInResidenceDescriptor:
  ///   An indication of the barrier to having internet access in the student s primary place of residence.
  ///
  /// * [String] internetAccessTypeInResidenceDescriptor:
  ///   The primary type of internet service used in the student s primary place of residence.
  ///
  /// * [String] internetPerformanceInResidenceDescriptor:
  ///   An indication of whether the student can complete the full range of learning activities, including video streaming and assignment upload, without interruptions caused by poor internet performance in their primary place of residence.
  ///
  /// * [String] limitedEnglishProficiencyDescriptor:
  ///   An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.
  ///
  /// * [String] primaryLearningDeviceAccessDescriptor:
  ///   An indication of whether the primary learning device is shared or not shared with another individual.
  ///
  /// * [String] primaryLearningDeviceAwayFromSchoolDescriptor:
  ///   The type of device the student uses most often to complete learning activities away from school.
  ///
  /// * [String] primaryLearningDeviceProviderDescriptor:
  ///   The provider of the primary learning device.
  ///
  /// * [String] sexDescriptor:
  ///   The student's birth sex as reported to the education organization.
  ///
  /// * [String] supporterMilitaryConnectionDescriptor:
  ///   Military connection of the person/people whom the student is a dependent of.
  ///
  /// * [String] genderIdentity:
  ///   The student's gender as last reported to the education organization.
  ///
  /// * [bool] hispanicLatinoEthnicity:
  ///   An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race, as last reported to the education organization. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] internetAccessInResidence:
  ///   An indication of whether the student is able to access the internet in their primary place of residence.
  ///
  /// * [String] loginId:
  ///   The login ID for the user; used for security access control interface.
  ///
  /// * [String] profileThumbnail:
  ///   Locator reference for the student photo. The specification for that reference is left to local definition.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] studentIdentificationSystemDescriptor:
  ///   A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a student.
  ///
  /// * [String] assigningOrganizationIdentificationCode:
  ///   The organization code or name assigning the StudentIdentificationCode.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to a student by a school, school system, a state, or other agency or entity.
  Future<Response> getStudentEducationOrganizationAssociationsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, int? educationOrganizationId, String? studentUniqueId, String? barrierToInternetAccessInResidenceDescriptor, String? internetAccessTypeInResidenceDescriptor, String? internetPerformanceInResidenceDescriptor, String? limitedEnglishProficiencyDescriptor, String? primaryLearningDeviceAccessDescriptor, String? primaryLearningDeviceAwayFromSchoolDescriptor, String? primaryLearningDeviceProviderDescriptor, String? sexDescriptor, String? supporterMilitaryConnectionDescriptor, String? genderIdentity, bool? hispanicLatinoEthnicity, String? id, bool? internetAccessInResidence, String? loginId, String? profileThumbnail, bool? useSnapshot, String? studentIdentificationSystemDescriptor, String? assigningOrganizationIdentificationCode, String? identificationCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentEducationOrganizationAssociations/partitions';

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
    if (educationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'educationOrganizationId', educationOrganizationId));
    }
    if (studentUniqueId != null) {
      queryParams.addAll(_queryParams('', 'studentUniqueId', studentUniqueId));
    }
    if (barrierToInternetAccessInResidenceDescriptor != null) {
      queryParams.addAll(_queryParams('', 'barrierToInternetAccessInResidenceDescriptor', barrierToInternetAccessInResidenceDescriptor));
    }
    if (internetAccessTypeInResidenceDescriptor != null) {
      queryParams.addAll(_queryParams('', 'internetAccessTypeInResidenceDescriptor', internetAccessTypeInResidenceDescriptor));
    }
    if (internetPerformanceInResidenceDescriptor != null) {
      queryParams.addAll(_queryParams('', 'internetPerformanceInResidenceDescriptor', internetPerformanceInResidenceDescriptor));
    }
    if (limitedEnglishProficiencyDescriptor != null) {
      queryParams.addAll(_queryParams('', 'limitedEnglishProficiencyDescriptor', limitedEnglishProficiencyDescriptor));
    }
    if (primaryLearningDeviceAccessDescriptor != null) {
      queryParams.addAll(_queryParams('', 'primaryLearningDeviceAccessDescriptor', primaryLearningDeviceAccessDescriptor));
    }
    if (primaryLearningDeviceAwayFromSchoolDescriptor != null) {
      queryParams.addAll(_queryParams('', 'primaryLearningDeviceAwayFromSchoolDescriptor', primaryLearningDeviceAwayFromSchoolDescriptor));
    }
    if (primaryLearningDeviceProviderDescriptor != null) {
      queryParams.addAll(_queryParams('', 'primaryLearningDeviceProviderDescriptor', primaryLearningDeviceProviderDescriptor));
    }
    if (sexDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sexDescriptor', sexDescriptor));
    }
    if (supporterMilitaryConnectionDescriptor != null) {
      queryParams.addAll(_queryParams('', 'supporterMilitaryConnectionDescriptor', supporterMilitaryConnectionDescriptor));
    }
    if (genderIdentity != null) {
      queryParams.addAll(_queryParams('', 'genderIdentity', genderIdentity));
    }
    if (hispanicLatinoEthnicity != null) {
      queryParams.addAll(_queryParams('', 'hispanicLatinoEthnicity', hispanicLatinoEthnicity));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (internetAccessInResidence != null) {
      queryParams.addAll(_queryParams('', 'internetAccessInResidence', internetAccessInResidence));
    }
    if (loginId != null) {
      queryParams.addAll(_queryParams('', 'loginId', loginId));
    }
    if (profileThumbnail != null) {
      queryParams.addAll(_queryParams('', 'profileThumbnail', profileThumbnail));
    }
    if (studentIdentificationSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'studentIdentificationSystemDescriptor', studentIdentificationSystemDescriptor));
    }
    if (assigningOrganizationIdentificationCode != null) {
      queryParams.addAll(_queryParams('', 'assigningOrganizationIdentificationCode', assigningOrganizationIdentificationCode));
    }
    if (identificationCode != null) {
      queryParams.addAll(_queryParams('', 'identificationCode', identificationCode));
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
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [String] barrierToInternetAccessInResidenceDescriptor:
  ///   An indication of the barrier to having internet access in the student s primary place of residence.
  ///
  /// * [String] internetAccessTypeInResidenceDescriptor:
  ///   The primary type of internet service used in the student s primary place of residence.
  ///
  /// * [String] internetPerformanceInResidenceDescriptor:
  ///   An indication of whether the student can complete the full range of learning activities, including video streaming and assignment upload, without interruptions caused by poor internet performance in their primary place of residence.
  ///
  /// * [String] limitedEnglishProficiencyDescriptor:
  ///   An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.
  ///
  /// * [String] primaryLearningDeviceAccessDescriptor:
  ///   An indication of whether the primary learning device is shared or not shared with another individual.
  ///
  /// * [String] primaryLearningDeviceAwayFromSchoolDescriptor:
  ///   The type of device the student uses most often to complete learning activities away from school.
  ///
  /// * [String] primaryLearningDeviceProviderDescriptor:
  ///   The provider of the primary learning device.
  ///
  /// * [String] sexDescriptor:
  ///   The student's birth sex as reported to the education organization.
  ///
  /// * [String] supporterMilitaryConnectionDescriptor:
  ///   Military connection of the person/people whom the student is a dependent of.
  ///
  /// * [String] genderIdentity:
  ///   The student's gender as last reported to the education organization.
  ///
  /// * [bool] hispanicLatinoEthnicity:
  ///   An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race, as last reported to the education organization. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] internetAccessInResidence:
  ///   An indication of whether the student is able to access the internet in their primary place of residence.
  ///
  /// * [String] loginId:
  ///   The login ID for the user; used for security access control interface.
  ///
  /// * [String] profileThumbnail:
  ///   Locator reference for the student photo. The specification for that reference is left to local definition.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] studentIdentificationSystemDescriptor:
  ///   A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a student.
  ///
  /// * [String] assigningOrganizationIdentificationCode:
  ///   The organization code or name assigning the StudentIdentificationCode.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to a student by a school, school system, a state, or other agency or entity.
  Future<GetAcademicWeeksPartitions200Response?> getStudentEducationOrganizationAssociationsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, int? educationOrganizationId, String? studentUniqueId, String? barrierToInternetAccessInResidenceDescriptor, String? internetAccessTypeInResidenceDescriptor, String? internetPerformanceInResidenceDescriptor, String? limitedEnglishProficiencyDescriptor, String? primaryLearningDeviceAccessDescriptor, String? primaryLearningDeviceAwayFromSchoolDescriptor, String? primaryLearningDeviceProviderDescriptor, String? sexDescriptor, String? supporterMilitaryConnectionDescriptor, String? genderIdentity, bool? hispanicLatinoEthnicity, String? id, bool? internetAccessInResidence, String? loginId, String? profileThumbnail, bool? useSnapshot, String? studentIdentificationSystemDescriptor, String? assigningOrganizationIdentificationCode, String? identificationCode, }) async {
    final response = await getStudentEducationOrganizationAssociationsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, educationOrganizationId: educationOrganizationId, studentUniqueId: studentUniqueId, barrierToInternetAccessInResidenceDescriptor: barrierToInternetAccessInResidenceDescriptor, internetAccessTypeInResidenceDescriptor: internetAccessTypeInResidenceDescriptor, internetPerformanceInResidenceDescriptor: internetPerformanceInResidenceDescriptor, limitedEnglishProficiencyDescriptor: limitedEnglishProficiencyDescriptor, primaryLearningDeviceAccessDescriptor: primaryLearningDeviceAccessDescriptor, primaryLearningDeviceAwayFromSchoolDescriptor: primaryLearningDeviceAwayFromSchoolDescriptor, primaryLearningDeviceProviderDescriptor: primaryLearningDeviceProviderDescriptor, sexDescriptor: sexDescriptor, supporterMilitaryConnectionDescriptor: supporterMilitaryConnectionDescriptor, genderIdentity: genderIdentity, hispanicLatinoEthnicity: hispanicLatinoEthnicity, id: id, internetAccessInResidence: internetAccessInResidence, loginId: loginId, profileThumbnail: profileThumbnail, useSnapshot: useSnapshot, studentIdentificationSystemDescriptor: studentIdentificationSystemDescriptor, assigningOrganizationIdentificationCode: assigningOrganizationIdentificationCode, identificationCode: identificationCode, );
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
  Future<Response> keyChangesStudentEducationOrganizationAssociationsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentEducationOrganizationAssociations/keyChanges';

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
  Future<List<TrackedChangesEdFiStudentEducationOrganizationAssociationKeyChange>?> keyChangesStudentEducationOrganizationAssociations({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesStudentEducationOrganizationAssociationsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStudentEducationOrganizationAssociationKeyChange>') as List)
        .cast<TrackedChangesEdFiStudentEducationOrganizationAssociationKeyChange>()
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
  /// * [EdFiStudentEducationOrganizationAssociation] edFiStudentEducationOrganizationAssociation (required):
  ///   The JSON representation of the \"studentEducationOrganizationAssociation\" resource to be created or updated.
  Future<Response> postStudentEducationOrganizationAssociationWithHttpInfo(EdFiStudentEducationOrganizationAssociation edFiStudentEducationOrganizationAssociation,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentEducationOrganizationAssociations';

    // ignore: prefer_final_locals
    Object? postBody = edFiStudentEducationOrganizationAssociation;

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
  /// * [EdFiStudentEducationOrganizationAssociation] edFiStudentEducationOrganizationAssociation (required):
  ///   The JSON representation of the \"studentEducationOrganizationAssociation\" resource to be created or updated.
  Future<void> postStudentEducationOrganizationAssociation(EdFiStudentEducationOrganizationAssociation edFiStudentEducationOrganizationAssociation,) async {
    final response = await postStudentEducationOrganizationAssociationWithHttpInfo(edFiStudentEducationOrganizationAssociation,);
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
  /// * [EdFiStudentEducationOrganizationAssociation] edFiStudentEducationOrganizationAssociation (required):
  ///   The JSON representation of the \"studentEducationOrganizationAssociation\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putStudentEducationOrganizationAssociationWithHttpInfo(String id, EdFiStudentEducationOrganizationAssociation edFiStudentEducationOrganizationAssociation, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentEducationOrganizationAssociations/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiStudentEducationOrganizationAssociation;

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
  /// * [EdFiStudentEducationOrganizationAssociation] edFiStudentEducationOrganizationAssociation (required):
  ///   The JSON representation of the \"studentEducationOrganizationAssociation\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putStudentEducationOrganizationAssociation(String id, EdFiStudentEducationOrganizationAssociation edFiStudentEducationOrganizationAssociation, { String? ifMatch, }) async {
    final response = await putStudentEducationOrganizationAssociationWithHttpInfo(id, edFiStudentEducationOrganizationAssociation,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
