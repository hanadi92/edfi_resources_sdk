//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StaffsApi {
  StaffsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteStaffByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffs/{id}'
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
  Future<void> deleteStaffById(String id, { String? ifMatch, }) async {
    final response = await deleteStaffByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesStaffsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffs/deletes';

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
  Future<List<TrackedChangesEdFiStaffDelete>?> deletesStaffs({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesStaffsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStaffDelete>') as List)
        .cast<TrackedChangesEdFiStaffDelete>()
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
  /// * [String] staffUniqueId:
  ///   A unique alphanumeric code assigned to a staff.
  ///
  /// * [String] personId:
  ///   A unique alphanumeric code assigned to a person.
  ///
  /// * [String] sourceSystemDescriptor:
  ///   This descriptor defines the originating record source system for the person.
  ///
  /// * [String] citizenshipStatusDescriptor:
  ///   An indicator of whether or not the person is a U.S. citizen.
  ///
  /// * [String] highestCompletedLevelOfEducationDescriptor:
  ///   The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).
  ///
  /// * [String] sexDescriptor:
  ///   The birth sex of the staff member.
  ///
  /// * [DateTime] birthDate:
  ///   The month, day, and year on which an individual was born.
  ///
  /// * [String] firstName:
  ///   A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  ///
  /// * [String] genderIdentity:
  ///   The gender the staff member identifies themselves as.
  ///
  /// * [String] generationCodeSuffix:
  ///   An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  ///
  /// * [bool] highlyQualifiedTeacher:
  ///   An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for ALL Sections being taught.
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
  /// * [String] loginId:
  ///   The login ID for the user; used for security access control interface.
  ///
  /// * [String] maidenName:
  ///   The individual's maiden name.
  ///
  /// * [String] middleName:
  ///   A secondary name given to an individual at birth, baptism, or during another naming ceremony.
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
  /// * [double] yearsOfPriorProfessionalExperience:
  ///   The total number of years that an individual has previously held a similar professional position in one or more education institutions prior to the current school year.
  ///
  /// * [double] yearsOfPriorTeachingExperience:
  ///   The total number of years that an individual has previously held a teaching position in one or more education institutions prior to the current school year.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] staffIdentificationSystemDescriptor:
  ///   A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a staff member.
  ///
  /// * [String] assigningOrganizationIdentificationCode:
  ///   The organization code or name assigning the staff Identification Code.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity.
  Future<Response> getStaffsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? staffUniqueId, String? personId, String? sourceSystemDescriptor, String? citizenshipStatusDescriptor, String? highestCompletedLevelOfEducationDescriptor, String? sexDescriptor, DateTime? birthDate, String? firstName, String? genderIdentity, String? generationCodeSuffix, bool? highlyQualifiedTeacher, bool? hispanicLatinoEthnicity, String? id, String? lastSurname, String? loginId, String? maidenName, String? middleName, String? personalTitlePrefix, String? preferredFirstName, String? preferredLastSurname, double? yearsOfPriorProfessionalExperience, double? yearsOfPriorTeachingExperience, bool? useSnapshot, String? staffIdentificationSystemDescriptor, String? assigningOrganizationIdentificationCode, String? identificationCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffs';

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
    if (staffUniqueId != null) {
      queryParams.addAll(_queryParams('', 'staffUniqueId', staffUniqueId));
    }
    if (personId != null) {
      queryParams.addAll(_queryParams('', 'personId', personId));
    }
    if (sourceSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sourceSystemDescriptor', sourceSystemDescriptor));
    }
    if (citizenshipStatusDescriptor != null) {
      queryParams.addAll(_queryParams('', 'citizenshipStatusDescriptor', citizenshipStatusDescriptor));
    }
    if (highestCompletedLevelOfEducationDescriptor != null) {
      queryParams.addAll(_queryParams('', 'highestCompletedLevelOfEducationDescriptor', highestCompletedLevelOfEducationDescriptor));
    }
    if (sexDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sexDescriptor', sexDescriptor));
    }
    if (birthDate != null) {
      queryParams.addAll(_queryParams('', 'birthDate', birthDate));
    }
    if (firstName != null) {
      queryParams.addAll(_queryParams('', 'firstName', firstName));
    }
    if (genderIdentity != null) {
      queryParams.addAll(_queryParams('', 'genderIdentity', genderIdentity));
    }
    if (generationCodeSuffix != null) {
      queryParams.addAll(_queryParams('', 'generationCodeSuffix', generationCodeSuffix));
    }
    if (highlyQualifiedTeacher != null) {
      queryParams.addAll(_queryParams('', 'highlyQualifiedTeacher', highlyQualifiedTeacher));
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
    if (loginId != null) {
      queryParams.addAll(_queryParams('', 'loginId', loginId));
    }
    if (maidenName != null) {
      queryParams.addAll(_queryParams('', 'maidenName', maidenName));
    }
    if (middleName != null) {
      queryParams.addAll(_queryParams('', 'middleName', middleName));
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
    if (yearsOfPriorProfessionalExperience != null) {
      queryParams.addAll(_queryParams('', 'yearsOfPriorProfessionalExperience', yearsOfPriorProfessionalExperience));
    }
    if (yearsOfPriorTeachingExperience != null) {
      queryParams.addAll(_queryParams('', 'yearsOfPriorTeachingExperience', yearsOfPriorTeachingExperience));
    }
    if (staffIdentificationSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'staffIdentificationSystemDescriptor', staffIdentificationSystemDescriptor));
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
  /// * [String] staffUniqueId:
  ///   A unique alphanumeric code assigned to a staff.
  ///
  /// * [String] personId:
  ///   A unique alphanumeric code assigned to a person.
  ///
  /// * [String] sourceSystemDescriptor:
  ///   This descriptor defines the originating record source system for the person.
  ///
  /// * [String] citizenshipStatusDescriptor:
  ///   An indicator of whether or not the person is a U.S. citizen.
  ///
  /// * [String] highestCompletedLevelOfEducationDescriptor:
  ///   The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).
  ///
  /// * [String] sexDescriptor:
  ///   The birth sex of the staff member.
  ///
  /// * [DateTime] birthDate:
  ///   The month, day, and year on which an individual was born.
  ///
  /// * [String] firstName:
  ///   A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  ///
  /// * [String] genderIdentity:
  ///   The gender the staff member identifies themselves as.
  ///
  /// * [String] generationCodeSuffix:
  ///   An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  ///
  /// * [bool] highlyQualifiedTeacher:
  ///   An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for ALL Sections being taught.
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
  /// * [String] loginId:
  ///   The login ID for the user; used for security access control interface.
  ///
  /// * [String] maidenName:
  ///   The individual's maiden name.
  ///
  /// * [String] middleName:
  ///   A secondary name given to an individual at birth, baptism, or during another naming ceremony.
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
  /// * [double] yearsOfPriorProfessionalExperience:
  ///   The total number of years that an individual has previously held a similar professional position in one or more education institutions prior to the current school year.
  ///
  /// * [double] yearsOfPriorTeachingExperience:
  ///   The total number of years that an individual has previously held a teaching position in one or more education institutions prior to the current school year.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] staffIdentificationSystemDescriptor:
  ///   A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a staff member.
  ///
  /// * [String] assigningOrganizationIdentificationCode:
  ///   The organization code or name assigning the staff Identification Code.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity.
  Future<List<EdFiStaff>?> getStaffs({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? staffUniqueId, String? personId, String? sourceSystemDescriptor, String? citizenshipStatusDescriptor, String? highestCompletedLevelOfEducationDescriptor, String? sexDescriptor, DateTime? birthDate, String? firstName, String? genderIdentity, String? generationCodeSuffix, bool? highlyQualifiedTeacher, bool? hispanicLatinoEthnicity, String? id, String? lastSurname, String? loginId, String? maidenName, String? middleName, String? personalTitlePrefix, String? preferredFirstName, String? preferredLastSurname, double? yearsOfPriorProfessionalExperience, double? yearsOfPriorTeachingExperience, bool? useSnapshot, String? staffIdentificationSystemDescriptor, String? assigningOrganizationIdentificationCode, String? identificationCode, }) async {
    final response = await getStaffsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, staffUniqueId: staffUniqueId, personId: personId, sourceSystemDescriptor: sourceSystemDescriptor, citizenshipStatusDescriptor: citizenshipStatusDescriptor, highestCompletedLevelOfEducationDescriptor: highestCompletedLevelOfEducationDescriptor, sexDescriptor: sexDescriptor, birthDate: birthDate, firstName: firstName, genderIdentity: genderIdentity, generationCodeSuffix: generationCodeSuffix, highlyQualifiedTeacher: highlyQualifiedTeacher, hispanicLatinoEthnicity: hispanicLatinoEthnicity, id: id, lastSurname: lastSurname, loginId: loginId, maidenName: maidenName, middleName: middleName, personalTitlePrefix: personalTitlePrefix, preferredFirstName: preferredFirstName, preferredLastSurname: preferredLastSurname, yearsOfPriorProfessionalExperience: yearsOfPriorProfessionalExperience, yearsOfPriorTeachingExperience: yearsOfPriorTeachingExperience, useSnapshot: useSnapshot, staffIdentificationSystemDescriptor: staffIdentificationSystemDescriptor, assigningOrganizationIdentificationCode: assigningOrganizationIdentificationCode, identificationCode: identificationCode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiStaff>') as List)
        .cast<EdFiStaff>()
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
  Future<Response> getStaffsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffs/{id}'
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
  Future<EdFiStaff?> getStaffsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getStaffsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiStaff',) as EdFiStaff;
    
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
  /// * [String] staffUniqueId:
  ///   A unique alphanumeric code assigned to a staff.
  ///
  /// * [String] personId:
  ///   A unique alphanumeric code assigned to a person.
  ///
  /// * [String] sourceSystemDescriptor:
  ///   This descriptor defines the originating record source system for the person.
  ///
  /// * [String] citizenshipStatusDescriptor:
  ///   An indicator of whether or not the person is a U.S. citizen.
  ///
  /// * [String] highestCompletedLevelOfEducationDescriptor:
  ///   The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).
  ///
  /// * [String] sexDescriptor:
  ///   The birth sex of the staff member.
  ///
  /// * [DateTime] birthDate:
  ///   The month, day, and year on which an individual was born.
  ///
  /// * [String] firstName:
  ///   A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  ///
  /// * [String] genderIdentity:
  ///   The gender the staff member identifies themselves as.
  ///
  /// * [String] generationCodeSuffix:
  ///   An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  ///
  /// * [bool] highlyQualifiedTeacher:
  ///   An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for ALL Sections being taught.
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
  /// * [String] loginId:
  ///   The login ID for the user; used for security access control interface.
  ///
  /// * [String] maidenName:
  ///   The individual's maiden name.
  ///
  /// * [String] middleName:
  ///   A secondary name given to an individual at birth, baptism, or during another naming ceremony.
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
  /// * [double] yearsOfPriorProfessionalExperience:
  ///   The total number of years that an individual has previously held a similar professional position in one or more education institutions prior to the current school year.
  ///
  /// * [double] yearsOfPriorTeachingExperience:
  ///   The total number of years that an individual has previously held a teaching position in one or more education institutions prior to the current school year.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] staffIdentificationSystemDescriptor:
  ///   A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a staff member.
  ///
  /// * [String] assigningOrganizationIdentificationCode:
  ///   The organization code or name assigning the staff Identification Code.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity.
  Future<Response> getStaffsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, String? staffUniqueId, String? personId, String? sourceSystemDescriptor, String? citizenshipStatusDescriptor, String? highestCompletedLevelOfEducationDescriptor, String? sexDescriptor, DateTime? birthDate, String? firstName, String? genderIdentity, String? generationCodeSuffix, bool? highlyQualifiedTeacher, bool? hispanicLatinoEthnicity, String? id, String? lastSurname, String? loginId, String? maidenName, String? middleName, String? personalTitlePrefix, String? preferredFirstName, String? preferredLastSurname, double? yearsOfPriorProfessionalExperience, double? yearsOfPriorTeachingExperience, bool? useSnapshot, String? staffIdentificationSystemDescriptor, String? assigningOrganizationIdentificationCode, String? identificationCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffs/partitions';

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
    if (staffUniqueId != null) {
      queryParams.addAll(_queryParams('', 'staffUniqueId', staffUniqueId));
    }
    if (personId != null) {
      queryParams.addAll(_queryParams('', 'personId', personId));
    }
    if (sourceSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sourceSystemDescriptor', sourceSystemDescriptor));
    }
    if (citizenshipStatusDescriptor != null) {
      queryParams.addAll(_queryParams('', 'citizenshipStatusDescriptor', citizenshipStatusDescriptor));
    }
    if (highestCompletedLevelOfEducationDescriptor != null) {
      queryParams.addAll(_queryParams('', 'highestCompletedLevelOfEducationDescriptor', highestCompletedLevelOfEducationDescriptor));
    }
    if (sexDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sexDescriptor', sexDescriptor));
    }
    if (birthDate != null) {
      queryParams.addAll(_queryParams('', 'birthDate', birthDate));
    }
    if (firstName != null) {
      queryParams.addAll(_queryParams('', 'firstName', firstName));
    }
    if (genderIdentity != null) {
      queryParams.addAll(_queryParams('', 'genderIdentity', genderIdentity));
    }
    if (generationCodeSuffix != null) {
      queryParams.addAll(_queryParams('', 'generationCodeSuffix', generationCodeSuffix));
    }
    if (highlyQualifiedTeacher != null) {
      queryParams.addAll(_queryParams('', 'highlyQualifiedTeacher', highlyQualifiedTeacher));
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
    if (loginId != null) {
      queryParams.addAll(_queryParams('', 'loginId', loginId));
    }
    if (maidenName != null) {
      queryParams.addAll(_queryParams('', 'maidenName', maidenName));
    }
    if (middleName != null) {
      queryParams.addAll(_queryParams('', 'middleName', middleName));
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
    if (yearsOfPriorProfessionalExperience != null) {
      queryParams.addAll(_queryParams('', 'yearsOfPriorProfessionalExperience', yearsOfPriorProfessionalExperience));
    }
    if (yearsOfPriorTeachingExperience != null) {
      queryParams.addAll(_queryParams('', 'yearsOfPriorTeachingExperience', yearsOfPriorTeachingExperience));
    }
    if (staffIdentificationSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'staffIdentificationSystemDescriptor', staffIdentificationSystemDescriptor));
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
  /// * [String] staffUniqueId:
  ///   A unique alphanumeric code assigned to a staff.
  ///
  /// * [String] personId:
  ///   A unique alphanumeric code assigned to a person.
  ///
  /// * [String] sourceSystemDescriptor:
  ///   This descriptor defines the originating record source system for the person.
  ///
  /// * [String] citizenshipStatusDescriptor:
  ///   An indicator of whether or not the person is a U.S. citizen.
  ///
  /// * [String] highestCompletedLevelOfEducationDescriptor:
  ///   The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).
  ///
  /// * [String] sexDescriptor:
  ///   The birth sex of the staff member.
  ///
  /// * [DateTime] birthDate:
  ///   The month, day, and year on which an individual was born.
  ///
  /// * [String] firstName:
  ///   A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  ///
  /// * [String] genderIdentity:
  ///   The gender the staff member identifies themselves as.
  ///
  /// * [String] generationCodeSuffix:
  ///   An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  ///
  /// * [bool] highlyQualifiedTeacher:
  ///   An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for ALL Sections being taught.
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
  /// * [String] loginId:
  ///   The login ID for the user; used for security access control interface.
  ///
  /// * [String] maidenName:
  ///   The individual's maiden name.
  ///
  /// * [String] middleName:
  ///   A secondary name given to an individual at birth, baptism, or during another naming ceremony.
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
  /// * [double] yearsOfPriorProfessionalExperience:
  ///   The total number of years that an individual has previously held a similar professional position in one or more education institutions prior to the current school year.
  ///
  /// * [double] yearsOfPriorTeachingExperience:
  ///   The total number of years that an individual has previously held a teaching position in one or more education institutions prior to the current school year.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] staffIdentificationSystemDescriptor:
  ///   A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a staff member.
  ///
  /// * [String] assigningOrganizationIdentificationCode:
  ///   The organization code or name assigning the staff Identification Code.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity.
  Future<GetAcademicWeeksPartitions200Response?> getStaffsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, String? staffUniqueId, String? personId, String? sourceSystemDescriptor, String? citizenshipStatusDescriptor, String? highestCompletedLevelOfEducationDescriptor, String? sexDescriptor, DateTime? birthDate, String? firstName, String? genderIdentity, String? generationCodeSuffix, bool? highlyQualifiedTeacher, bool? hispanicLatinoEthnicity, String? id, String? lastSurname, String? loginId, String? maidenName, String? middleName, String? personalTitlePrefix, String? preferredFirstName, String? preferredLastSurname, double? yearsOfPriorProfessionalExperience, double? yearsOfPriorTeachingExperience, bool? useSnapshot, String? staffIdentificationSystemDescriptor, String? assigningOrganizationIdentificationCode, String? identificationCode, }) async {
    final response = await getStaffsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, staffUniqueId: staffUniqueId, personId: personId, sourceSystemDescriptor: sourceSystemDescriptor, citizenshipStatusDescriptor: citizenshipStatusDescriptor, highestCompletedLevelOfEducationDescriptor: highestCompletedLevelOfEducationDescriptor, sexDescriptor: sexDescriptor, birthDate: birthDate, firstName: firstName, genderIdentity: genderIdentity, generationCodeSuffix: generationCodeSuffix, highlyQualifiedTeacher: highlyQualifiedTeacher, hispanicLatinoEthnicity: hispanicLatinoEthnicity, id: id, lastSurname: lastSurname, loginId: loginId, maidenName: maidenName, middleName: middleName, personalTitlePrefix: personalTitlePrefix, preferredFirstName: preferredFirstName, preferredLastSurname: preferredLastSurname, yearsOfPriorProfessionalExperience: yearsOfPriorProfessionalExperience, yearsOfPriorTeachingExperience: yearsOfPriorTeachingExperience, useSnapshot: useSnapshot, staffIdentificationSystemDescriptor: staffIdentificationSystemDescriptor, assigningOrganizationIdentificationCode: assigningOrganizationIdentificationCode, identificationCode: identificationCode, );
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
  Future<Response> keyChangesStaffsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffs/keyChanges';

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
  Future<List<TrackedChangesEdFiStaffKeyChange>?> keyChangesStaffs({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesStaffsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStaffKeyChange>') as List)
        .cast<TrackedChangesEdFiStaffKeyChange>()
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
  /// * [EdFiStaff] edFiStaff (required):
  ///   The JSON representation of the \"staff\" resource to be created or updated.
  Future<Response> postStaffWithHttpInfo(EdFiStaff edFiStaff,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffs';

    // ignore: prefer_final_locals
    Object? postBody = edFiStaff;

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
  /// * [EdFiStaff] edFiStaff (required):
  ///   The JSON representation of the \"staff\" resource to be created or updated.
  Future<void> postStaff(EdFiStaff edFiStaff,) async {
    final response = await postStaffWithHttpInfo(edFiStaff,);
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
  /// * [EdFiStaff] edFiStaff (required):
  ///   The JSON representation of the \"staff\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putStaffWithHttpInfo(String id, EdFiStaff edFiStaff, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffs/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiStaff;

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
  /// * [EdFiStaff] edFiStaff (required):
  ///   The JSON representation of the \"staff\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putStaff(String id, EdFiStaff edFiStaff, { String? ifMatch, }) async {
    final response = await putStaffWithHttpInfo(id, edFiStaff,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
