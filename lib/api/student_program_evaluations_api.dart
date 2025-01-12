//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StudentProgramEvaluationsApi {
  StudentProgramEvaluationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteStudentProgramEvaluationByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentProgramEvaluations/{id}'
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
  Future<void> deleteStudentProgramEvaluationById(String id, { String? ifMatch, }) async {
    final response = await deleteStudentProgramEvaluationByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesStudentProgramEvaluationsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentProgramEvaluations/deletes';

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
  Future<List<TrackedChangesEdFiStudentProgramEvaluationDelete>?> deletesStudentProgramEvaluations({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesStudentProgramEvaluationsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStudentProgramEvaluationDelete>') as List)
        .cast<TrackedChangesEdFiStudentProgramEvaluationDelete>()
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
  /// * [DateTime] evaluationDate:
  ///   The month, day, and year on which the evaluation was conducted.
  ///
  /// * [int] programEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] programEvaluationPeriodDescriptor:
  ///   The name of the period for the program evaluation.
  ///
  /// * [String] programEvaluationTitle:
  ///   An assigned unique identifier for the student program evaluation.
  ///
  /// * [String] programEvaluationTypeDescriptor:
  ///   The type of program evaluation conducted.
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
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] staffEvaluatorStaffUniqueId:
  ///   A unique alphanumeric code assigned to a staffevaluatorstaff.
  ///
  /// * [String] summaryEvaluationRatingLevelDescriptor:
  ///   The summary rating level achieved based upon the rating or score.
  ///
  /// * [int] evaluationDuration:
  ///   The actual number of minutes to conduct the evaluation.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] summaryEvaluationComment:
  ///   Any comments about the summary evaluation to be captured.
  ///
  /// * [double] summaryEvaluationNumericRating:
  ///   The numerical summary rating or score for the evaluation.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getStudentProgramEvaluationsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, DateTime? evaluationDate, int? programEducationOrganizationId, String? programEvaluationPeriodDescriptor, String? programEvaluationTitle, String? programEvaluationTypeDescriptor, String? programName, String? programTypeDescriptor, String? studentUniqueId, int? educationOrganizationId, String? staffEvaluatorStaffUniqueId, String? summaryEvaluationRatingLevelDescriptor, int? evaluationDuration, String? id, String? summaryEvaluationComment, double? summaryEvaluationNumericRating, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentProgramEvaluations';

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
    if (evaluationDate != null) {
      queryParams.addAll(_queryParams('', 'evaluationDate', evaluationDate));
    }
    if (programEducationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'programEducationOrganizationId', programEducationOrganizationId));
    }
    if (programEvaluationPeriodDescriptor != null) {
      queryParams.addAll(_queryParams('', 'programEvaluationPeriodDescriptor', programEvaluationPeriodDescriptor));
    }
    if (programEvaluationTitle != null) {
      queryParams.addAll(_queryParams('', 'programEvaluationTitle', programEvaluationTitle));
    }
    if (programEvaluationTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'programEvaluationTypeDescriptor', programEvaluationTypeDescriptor));
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
    if (educationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'educationOrganizationId', educationOrganizationId));
    }
    if (staffEvaluatorStaffUniqueId != null) {
      queryParams.addAll(_queryParams('', 'staffEvaluatorStaffUniqueId', staffEvaluatorStaffUniqueId));
    }
    if (summaryEvaluationRatingLevelDescriptor != null) {
      queryParams.addAll(_queryParams('', 'summaryEvaluationRatingLevelDescriptor', summaryEvaluationRatingLevelDescriptor));
    }
    if (evaluationDuration != null) {
      queryParams.addAll(_queryParams('', 'evaluationDuration', evaluationDuration));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (summaryEvaluationComment != null) {
      queryParams.addAll(_queryParams('', 'summaryEvaluationComment', summaryEvaluationComment));
    }
    if (summaryEvaluationNumericRating != null) {
      queryParams.addAll(_queryParams('', 'summaryEvaluationNumericRating', summaryEvaluationNumericRating));
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
  /// * [DateTime] evaluationDate:
  ///   The month, day, and year on which the evaluation was conducted.
  ///
  /// * [int] programEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] programEvaluationPeriodDescriptor:
  ///   The name of the period for the program evaluation.
  ///
  /// * [String] programEvaluationTitle:
  ///   An assigned unique identifier for the student program evaluation.
  ///
  /// * [String] programEvaluationTypeDescriptor:
  ///   The type of program evaluation conducted.
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
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] staffEvaluatorStaffUniqueId:
  ///   A unique alphanumeric code assigned to a staffevaluatorstaff.
  ///
  /// * [String] summaryEvaluationRatingLevelDescriptor:
  ///   The summary rating level achieved based upon the rating or score.
  ///
  /// * [int] evaluationDuration:
  ///   The actual number of minutes to conduct the evaluation.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] summaryEvaluationComment:
  ///   Any comments about the summary evaluation to be captured.
  ///
  /// * [double] summaryEvaluationNumericRating:
  ///   The numerical summary rating or score for the evaluation.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<List<EdFiStudentProgramEvaluation>?> getStudentProgramEvaluations({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, DateTime? evaluationDate, int? programEducationOrganizationId, String? programEvaluationPeriodDescriptor, String? programEvaluationTitle, String? programEvaluationTypeDescriptor, String? programName, String? programTypeDescriptor, String? studentUniqueId, int? educationOrganizationId, String? staffEvaluatorStaffUniqueId, String? summaryEvaluationRatingLevelDescriptor, int? evaluationDuration, String? id, String? summaryEvaluationComment, double? summaryEvaluationNumericRating, bool? useSnapshot, }) async {
    final response = await getStudentProgramEvaluationsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, evaluationDate: evaluationDate, programEducationOrganizationId: programEducationOrganizationId, programEvaluationPeriodDescriptor: programEvaluationPeriodDescriptor, programEvaluationTitle: programEvaluationTitle, programEvaluationTypeDescriptor: programEvaluationTypeDescriptor, programName: programName, programTypeDescriptor: programTypeDescriptor, studentUniqueId: studentUniqueId, educationOrganizationId: educationOrganizationId, staffEvaluatorStaffUniqueId: staffEvaluatorStaffUniqueId, summaryEvaluationRatingLevelDescriptor: summaryEvaluationRatingLevelDescriptor, evaluationDuration: evaluationDuration, id: id, summaryEvaluationComment: summaryEvaluationComment, summaryEvaluationNumericRating: summaryEvaluationNumericRating, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiStudentProgramEvaluation>') as List)
        .cast<EdFiStudentProgramEvaluation>()
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
  Future<Response> getStudentProgramEvaluationsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentProgramEvaluations/{id}'
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
  Future<EdFiStudentProgramEvaluation?> getStudentProgramEvaluationsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getStudentProgramEvaluationsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiStudentProgramEvaluation',) as EdFiStudentProgramEvaluation;
    
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
  /// * [DateTime] evaluationDate:
  ///   The month, day, and year on which the evaluation was conducted.
  ///
  /// * [int] programEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] programEvaluationPeriodDescriptor:
  ///   The name of the period for the program evaluation.
  ///
  /// * [String] programEvaluationTitle:
  ///   An assigned unique identifier for the student program evaluation.
  ///
  /// * [String] programEvaluationTypeDescriptor:
  ///   The type of program evaluation conducted.
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
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] staffEvaluatorStaffUniqueId:
  ///   A unique alphanumeric code assigned to a staffevaluatorstaff.
  ///
  /// * [String] summaryEvaluationRatingLevelDescriptor:
  ///   The summary rating level achieved based upon the rating or score.
  ///
  /// * [int] evaluationDuration:
  ///   The actual number of minutes to conduct the evaluation.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] summaryEvaluationComment:
  ///   Any comments about the summary evaluation to be captured.
  ///
  /// * [double] summaryEvaluationNumericRating:
  ///   The numerical summary rating or score for the evaluation.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getStudentProgramEvaluationsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, DateTime? evaluationDate, int? programEducationOrganizationId, String? programEvaluationPeriodDescriptor, String? programEvaluationTitle, String? programEvaluationTypeDescriptor, String? programName, String? programTypeDescriptor, String? studentUniqueId, int? educationOrganizationId, String? staffEvaluatorStaffUniqueId, String? summaryEvaluationRatingLevelDescriptor, int? evaluationDuration, String? id, String? summaryEvaluationComment, double? summaryEvaluationNumericRating, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentProgramEvaluations/partitions';

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
    if (evaluationDate != null) {
      queryParams.addAll(_queryParams('', 'evaluationDate', evaluationDate));
    }
    if (programEducationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'programEducationOrganizationId', programEducationOrganizationId));
    }
    if (programEvaluationPeriodDescriptor != null) {
      queryParams.addAll(_queryParams('', 'programEvaluationPeriodDescriptor', programEvaluationPeriodDescriptor));
    }
    if (programEvaluationTitle != null) {
      queryParams.addAll(_queryParams('', 'programEvaluationTitle', programEvaluationTitle));
    }
    if (programEvaluationTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'programEvaluationTypeDescriptor', programEvaluationTypeDescriptor));
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
    if (educationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'educationOrganizationId', educationOrganizationId));
    }
    if (staffEvaluatorStaffUniqueId != null) {
      queryParams.addAll(_queryParams('', 'staffEvaluatorStaffUniqueId', staffEvaluatorStaffUniqueId));
    }
    if (summaryEvaluationRatingLevelDescriptor != null) {
      queryParams.addAll(_queryParams('', 'summaryEvaluationRatingLevelDescriptor', summaryEvaluationRatingLevelDescriptor));
    }
    if (evaluationDuration != null) {
      queryParams.addAll(_queryParams('', 'evaluationDuration', evaluationDuration));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (summaryEvaluationComment != null) {
      queryParams.addAll(_queryParams('', 'summaryEvaluationComment', summaryEvaluationComment));
    }
    if (summaryEvaluationNumericRating != null) {
      queryParams.addAll(_queryParams('', 'summaryEvaluationNumericRating', summaryEvaluationNumericRating));
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
  /// * [DateTime] evaluationDate:
  ///   The month, day, and year on which the evaluation was conducted.
  ///
  /// * [int] programEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] programEvaluationPeriodDescriptor:
  ///   The name of the period for the program evaluation.
  ///
  /// * [String] programEvaluationTitle:
  ///   An assigned unique identifier for the student program evaluation.
  ///
  /// * [String] programEvaluationTypeDescriptor:
  ///   The type of program evaluation conducted.
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
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] staffEvaluatorStaffUniqueId:
  ///   A unique alphanumeric code assigned to a staffevaluatorstaff.
  ///
  /// * [String] summaryEvaluationRatingLevelDescriptor:
  ///   The summary rating level achieved based upon the rating or score.
  ///
  /// * [int] evaluationDuration:
  ///   The actual number of minutes to conduct the evaluation.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] summaryEvaluationComment:
  ///   Any comments about the summary evaluation to be captured.
  ///
  /// * [double] summaryEvaluationNumericRating:
  ///   The numerical summary rating or score for the evaluation.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<GetAcademicWeeksPartitions200Response?> getStudentProgramEvaluationsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, DateTime? evaluationDate, int? programEducationOrganizationId, String? programEvaluationPeriodDescriptor, String? programEvaluationTitle, String? programEvaluationTypeDescriptor, String? programName, String? programTypeDescriptor, String? studentUniqueId, int? educationOrganizationId, String? staffEvaluatorStaffUniqueId, String? summaryEvaluationRatingLevelDescriptor, int? evaluationDuration, String? id, String? summaryEvaluationComment, double? summaryEvaluationNumericRating, bool? useSnapshot, }) async {
    final response = await getStudentProgramEvaluationsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, evaluationDate: evaluationDate, programEducationOrganizationId: programEducationOrganizationId, programEvaluationPeriodDescriptor: programEvaluationPeriodDescriptor, programEvaluationTitle: programEvaluationTitle, programEvaluationTypeDescriptor: programEvaluationTypeDescriptor, programName: programName, programTypeDescriptor: programTypeDescriptor, studentUniqueId: studentUniqueId, educationOrganizationId: educationOrganizationId, staffEvaluatorStaffUniqueId: staffEvaluatorStaffUniqueId, summaryEvaluationRatingLevelDescriptor: summaryEvaluationRatingLevelDescriptor, evaluationDuration: evaluationDuration, id: id, summaryEvaluationComment: summaryEvaluationComment, summaryEvaluationNumericRating: summaryEvaluationNumericRating, useSnapshot: useSnapshot, );
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
  Future<Response> keyChangesStudentProgramEvaluationsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentProgramEvaluations/keyChanges';

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
  Future<List<TrackedChangesEdFiStudentProgramEvaluationKeyChange>?> keyChangesStudentProgramEvaluations({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesStudentProgramEvaluationsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStudentProgramEvaluationKeyChange>') as List)
        .cast<TrackedChangesEdFiStudentProgramEvaluationKeyChange>()
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
  /// * [EdFiStudentProgramEvaluation] edFiStudentProgramEvaluation (required):
  ///   The JSON representation of the \"studentProgramEvaluation\" resource to be created or updated.
  Future<Response> postStudentProgramEvaluationWithHttpInfo(EdFiStudentProgramEvaluation edFiStudentProgramEvaluation,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentProgramEvaluations';

    // ignore: prefer_final_locals
    Object? postBody = edFiStudentProgramEvaluation;

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
  /// * [EdFiStudentProgramEvaluation] edFiStudentProgramEvaluation (required):
  ///   The JSON representation of the \"studentProgramEvaluation\" resource to be created or updated.
  Future<void> postStudentProgramEvaluation(EdFiStudentProgramEvaluation edFiStudentProgramEvaluation,) async {
    final response = await postStudentProgramEvaluationWithHttpInfo(edFiStudentProgramEvaluation,);
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
  /// * [EdFiStudentProgramEvaluation] edFiStudentProgramEvaluation (required):
  ///   The JSON representation of the \"studentProgramEvaluation\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putStudentProgramEvaluationWithHttpInfo(String id, EdFiStudentProgramEvaluation edFiStudentProgramEvaluation, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentProgramEvaluations/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiStudentProgramEvaluation;

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
  /// * [EdFiStudentProgramEvaluation] edFiStudentProgramEvaluation (required):
  ///   The JSON representation of the \"studentProgramEvaluation\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putStudentProgramEvaluation(String id, EdFiStudentProgramEvaluation edFiStudentProgramEvaluation, { String? ifMatch, }) async {
    final response = await putStudentProgramEvaluationWithHttpInfo(id, edFiStudentProgramEvaluation,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
