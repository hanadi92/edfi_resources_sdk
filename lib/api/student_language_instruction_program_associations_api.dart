//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StudentLanguageInstructionProgramAssociationsApi {
  StudentLanguageInstructionProgramAssociationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteStudentLanguageInstructionProgramAssociationByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentLanguageInstructionProgramAssociations/{id}'
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
  Future<void> deleteStudentLanguageInstructionProgramAssociationById(String id, { String? ifMatch, }) async {
    final response = await deleteStudentLanguageInstructionProgramAssociationByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesStudentLanguageInstructionProgramAssociationsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentLanguageInstructionProgramAssociations/deletes';

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
  Future<List<TrackedChangesEdFiStudentLanguageInstructionProgramAssociationDelete>?> deletesStudentLanguageInstructionProgramAssociations({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesStudentLanguageInstructionProgramAssociationsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStudentLanguageInstructionProgramAssociationDelete>') as List)
        .cast<TrackedChangesEdFiStudentLanguageInstructionProgramAssociationDelete>()
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
  /// * [DateTime] beginDate:
  ///   The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [int] programEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] programName:
  ///   The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
  ///
  /// * [String] programTypeDescriptor:
  ///   The type of program.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [int] dosage:
  ///   The duration of time in minutes for which the student was assigned to participate in the program.
  ///
  /// * [bool] englishLearnerParticipation:
  ///   An indication that an English learner student is served by an English language instruction educational program supported with Title III of ESEA funds.
  ///
  /// * [String] reasonExitedDescriptor:
  ///   The reason the student left the program within a school or district.
  ///
  /// * [DateTime] endDate:
  ///   The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] servedOutsideOfRegularSession:
  ///   Indicates whether the student received services during the summer session or between sessions.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getStudentLanguageInstructionProgramAssociationsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, DateTime? beginDate, int? educationOrganizationId, int? programEducationOrganizationId, String? programName, String? programTypeDescriptor, String? studentUniqueId, int? dosage, bool? englishLearnerParticipation, String? reasonExitedDescriptor, DateTime? endDate, String? id, bool? servedOutsideOfRegularSession, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentLanguageInstructionProgramAssociations';

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
    if (beginDate != null) {
      queryParams.addAll(_queryParams('', 'beginDate', beginDate));
    }
    if (educationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'educationOrganizationId', educationOrganizationId));
    }
    if (programEducationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'programEducationOrganizationId', programEducationOrganizationId));
    }
    if (programName != null) {
      queryParams.addAll(_queryParams('', 'programName', programName));
    }
    if (programTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'programTypeDescriptor', programTypeDescriptor));
    }
    if (studentUniqueId != null) {
      queryParams.addAll(_queryParams('', 'studentUniqueId', studentUniqueId));
    }
    if (dosage != null) {
      queryParams.addAll(_queryParams('', 'dosage', dosage));
    }
    if (englishLearnerParticipation != null) {
      queryParams.addAll(_queryParams('', 'englishLearnerParticipation', englishLearnerParticipation));
    }
    if (reasonExitedDescriptor != null) {
      queryParams.addAll(_queryParams('', 'reasonExitedDescriptor', reasonExitedDescriptor));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (servedOutsideOfRegularSession != null) {
      queryParams.addAll(_queryParams('', 'servedOutsideOfRegularSession', servedOutsideOfRegularSession));
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
  /// * [DateTime] beginDate:
  ///   The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [int] programEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] programName:
  ///   The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
  ///
  /// * [String] programTypeDescriptor:
  ///   The type of program.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [int] dosage:
  ///   The duration of time in minutes for which the student was assigned to participate in the program.
  ///
  /// * [bool] englishLearnerParticipation:
  ///   An indication that an English learner student is served by an English language instruction educational program supported with Title III of ESEA funds.
  ///
  /// * [String] reasonExitedDescriptor:
  ///   The reason the student left the program within a school or district.
  ///
  /// * [DateTime] endDate:
  ///   The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] servedOutsideOfRegularSession:
  ///   Indicates whether the student received services during the summer session or between sessions.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<List<EdFiStudentLanguageInstructionProgramAssociation>?> getStudentLanguageInstructionProgramAssociations({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, DateTime? beginDate, int? educationOrganizationId, int? programEducationOrganizationId, String? programName, String? programTypeDescriptor, String? studentUniqueId, int? dosage, bool? englishLearnerParticipation, String? reasonExitedDescriptor, DateTime? endDate, String? id, bool? servedOutsideOfRegularSession, bool? useSnapshot, }) async {
    final response = await getStudentLanguageInstructionProgramAssociationsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, beginDate: beginDate, educationOrganizationId: educationOrganizationId, programEducationOrganizationId: programEducationOrganizationId, programName: programName, programTypeDescriptor: programTypeDescriptor, studentUniqueId: studentUniqueId, dosage: dosage, englishLearnerParticipation: englishLearnerParticipation, reasonExitedDescriptor: reasonExitedDescriptor, endDate: endDate, id: id, servedOutsideOfRegularSession: servedOutsideOfRegularSession, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiStudentLanguageInstructionProgramAssociation>') as List)
        .cast<EdFiStudentLanguageInstructionProgramAssociation>()
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
  Future<Response> getStudentLanguageInstructionProgramAssociationsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentLanguageInstructionProgramAssociations/{id}'
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
  Future<EdFiStudentLanguageInstructionProgramAssociation?> getStudentLanguageInstructionProgramAssociationsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getStudentLanguageInstructionProgramAssociationsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiStudentLanguageInstructionProgramAssociation',) as EdFiStudentLanguageInstructionProgramAssociation;
    
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
  /// * [DateTime] beginDate:
  ///   The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [int] programEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] programName:
  ///   The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
  ///
  /// * [String] programTypeDescriptor:
  ///   The type of program.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [int] dosage:
  ///   The duration of time in minutes for which the student was assigned to participate in the program.
  ///
  /// * [bool] englishLearnerParticipation:
  ///   An indication that an English learner student is served by an English language instruction educational program supported with Title III of ESEA funds.
  ///
  /// * [String] reasonExitedDescriptor:
  ///   The reason the student left the program within a school or district.
  ///
  /// * [DateTime] endDate:
  ///   The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] servedOutsideOfRegularSession:
  ///   Indicates whether the student received services during the summer session or between sessions.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getStudentLanguageInstructionProgramAssociationsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, DateTime? beginDate, int? educationOrganizationId, int? programEducationOrganizationId, String? programName, String? programTypeDescriptor, String? studentUniqueId, int? dosage, bool? englishLearnerParticipation, String? reasonExitedDescriptor, DateTime? endDate, String? id, bool? servedOutsideOfRegularSession, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentLanguageInstructionProgramAssociations/partitions';

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
    if (beginDate != null) {
      queryParams.addAll(_queryParams('', 'beginDate', beginDate));
    }
    if (educationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'educationOrganizationId', educationOrganizationId));
    }
    if (programEducationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'programEducationOrganizationId', programEducationOrganizationId));
    }
    if (programName != null) {
      queryParams.addAll(_queryParams('', 'programName', programName));
    }
    if (programTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'programTypeDescriptor', programTypeDescriptor));
    }
    if (studentUniqueId != null) {
      queryParams.addAll(_queryParams('', 'studentUniqueId', studentUniqueId));
    }
    if (dosage != null) {
      queryParams.addAll(_queryParams('', 'dosage', dosage));
    }
    if (englishLearnerParticipation != null) {
      queryParams.addAll(_queryParams('', 'englishLearnerParticipation', englishLearnerParticipation));
    }
    if (reasonExitedDescriptor != null) {
      queryParams.addAll(_queryParams('', 'reasonExitedDescriptor', reasonExitedDescriptor));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (servedOutsideOfRegularSession != null) {
      queryParams.addAll(_queryParams('', 'servedOutsideOfRegularSession', servedOutsideOfRegularSession));
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
  /// * [DateTime] beginDate:
  ///   The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [int] programEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] programName:
  ///   The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
  ///
  /// * [String] programTypeDescriptor:
  ///   The type of program.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [int] dosage:
  ///   The duration of time in minutes for which the student was assigned to participate in the program.
  ///
  /// * [bool] englishLearnerParticipation:
  ///   An indication that an English learner student is served by an English language instruction educational program supported with Title III of ESEA funds.
  ///
  /// * [String] reasonExitedDescriptor:
  ///   The reason the student left the program within a school or district.
  ///
  /// * [DateTime] endDate:
  ///   The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] servedOutsideOfRegularSession:
  ///   Indicates whether the student received services during the summer session or between sessions.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<GetAcademicWeeksPartitions200Response?> getStudentLanguageInstructionProgramAssociationsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, DateTime? beginDate, int? educationOrganizationId, int? programEducationOrganizationId, String? programName, String? programTypeDescriptor, String? studentUniqueId, int? dosage, bool? englishLearnerParticipation, String? reasonExitedDescriptor, DateTime? endDate, String? id, bool? servedOutsideOfRegularSession, bool? useSnapshot, }) async {
    final response = await getStudentLanguageInstructionProgramAssociationsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, beginDate: beginDate, educationOrganizationId: educationOrganizationId, programEducationOrganizationId: programEducationOrganizationId, programName: programName, programTypeDescriptor: programTypeDescriptor, studentUniqueId: studentUniqueId, dosage: dosage, englishLearnerParticipation: englishLearnerParticipation, reasonExitedDescriptor: reasonExitedDescriptor, endDate: endDate, id: id, servedOutsideOfRegularSession: servedOutsideOfRegularSession, useSnapshot: useSnapshot, );
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
  Future<Response> keyChangesStudentLanguageInstructionProgramAssociationsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentLanguageInstructionProgramAssociations/keyChanges';

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
  Future<List<TrackedChangesEdFiStudentLanguageInstructionProgramAssociationKeyChange>?> keyChangesStudentLanguageInstructionProgramAssociations({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesStudentLanguageInstructionProgramAssociationsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStudentLanguageInstructionProgramAssociationKeyChange>') as List)
        .cast<TrackedChangesEdFiStudentLanguageInstructionProgramAssociationKeyChange>()
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
  /// * [EdFiStudentLanguageInstructionProgramAssociation] edFiStudentLanguageInstructionProgramAssociation (required):
  ///   The JSON representation of the \"studentLanguageInstructionProgramAssociation\" resource to be created or updated.
  Future<Response> postStudentLanguageInstructionProgramAssociationWithHttpInfo(EdFiStudentLanguageInstructionProgramAssociation edFiStudentLanguageInstructionProgramAssociation,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentLanguageInstructionProgramAssociations';

    // ignore: prefer_final_locals
    Object? postBody = edFiStudentLanguageInstructionProgramAssociation;

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
  /// * [EdFiStudentLanguageInstructionProgramAssociation] edFiStudentLanguageInstructionProgramAssociation (required):
  ///   The JSON representation of the \"studentLanguageInstructionProgramAssociation\" resource to be created or updated.
  Future<void> postStudentLanguageInstructionProgramAssociation(EdFiStudentLanguageInstructionProgramAssociation edFiStudentLanguageInstructionProgramAssociation,) async {
    final response = await postStudentLanguageInstructionProgramAssociationWithHttpInfo(edFiStudentLanguageInstructionProgramAssociation,);
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
  /// * [EdFiStudentLanguageInstructionProgramAssociation] edFiStudentLanguageInstructionProgramAssociation (required):
  ///   The JSON representation of the \"studentLanguageInstructionProgramAssociation\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putStudentLanguageInstructionProgramAssociationWithHttpInfo(String id, EdFiStudentLanguageInstructionProgramAssociation edFiStudentLanguageInstructionProgramAssociation, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentLanguageInstructionProgramAssociations/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiStudentLanguageInstructionProgramAssociation;

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
  /// * [EdFiStudentLanguageInstructionProgramAssociation] edFiStudentLanguageInstructionProgramAssociation (required):
  ///   The JSON representation of the \"studentLanguageInstructionProgramAssociation\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putStudentLanguageInstructionProgramAssociation(String id, EdFiStudentLanguageInstructionProgramAssociation edFiStudentLanguageInstructionProgramAssociation, { String? ifMatch, }) async {
    final response = await putStudentLanguageInstructionProgramAssociationWithHttpInfo(id, edFiStudentLanguageInstructionProgramAssociation,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
