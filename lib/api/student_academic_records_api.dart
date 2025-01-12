//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StudentAcademicRecordsApi {
  StudentAcademicRecordsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteStudentAcademicRecordByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentAcademicRecords/{id}'
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
  Future<void> deleteStudentAcademicRecordById(String id, { String? ifMatch, }) async {
    final response = await deleteStudentAcademicRecordByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesStudentAcademicRecordsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentAcademicRecords/deletes';

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
  Future<List<TrackedChangesEdFiStudentAcademicRecordDelete>?> deletesStudentAcademicRecords({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesStudentAcademicRecordsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStudentAcademicRecordDelete>') as List)
        .cast<TrackedChangesEdFiStudentAcademicRecordDelete>()
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
  /// * [String] termDescriptor:
  ///   The term for the session during the school year.
  ///
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [int] schoolYear:
  ///   The identifier for the school year.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [String] cumulativeEarnedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] cumulativeAttemptedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] sessionEarnedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] sessionAttemptedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [double] cumulativeAttemptedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] cumulativeAttemptedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [double] cumulativeEarnedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] cumulativeEarnedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [DateTime] projectedGraduationDate:
  ///   The month and year the student is projected to graduate.
  ///
  /// * [double] sessionAttemptedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] sessionAttemptedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [double] sessionEarnedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] sessionEarnedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getStudentAcademicRecordsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? termDescriptor, int? educationOrganizationId, int? schoolYear, String? studentUniqueId, String? cumulativeEarnedCreditTypeDescriptor, String? cumulativeAttemptedCreditTypeDescriptor, String? sessionEarnedCreditTypeDescriptor, String? sessionAttemptedCreditTypeDescriptor, double? cumulativeAttemptedCreditConversion, double? cumulativeAttemptedCredits, double? cumulativeEarnedCreditConversion, double? cumulativeEarnedCredits, String? id, DateTime? projectedGraduationDate, double? sessionAttemptedCreditConversion, double? sessionAttemptedCredits, double? sessionEarnedCreditConversion, double? sessionEarnedCredits, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentAcademicRecords';

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
    if (termDescriptor != null) {
      queryParams.addAll(_queryParams('', 'termDescriptor', termDescriptor));
    }
    if (educationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'educationOrganizationId', educationOrganizationId));
    }
    if (schoolYear != null) {
      queryParams.addAll(_queryParams('', 'schoolYear', schoolYear));
    }
    if (studentUniqueId != null) {
      queryParams.addAll(_queryParams('', 'studentUniqueId', studentUniqueId));
    }
    if (cumulativeEarnedCreditTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'cumulativeEarnedCreditTypeDescriptor', cumulativeEarnedCreditTypeDescriptor));
    }
    if (cumulativeAttemptedCreditTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'cumulativeAttemptedCreditTypeDescriptor', cumulativeAttemptedCreditTypeDescriptor));
    }
    if (sessionEarnedCreditTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sessionEarnedCreditTypeDescriptor', sessionEarnedCreditTypeDescriptor));
    }
    if (sessionAttemptedCreditTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sessionAttemptedCreditTypeDescriptor', sessionAttemptedCreditTypeDescriptor));
    }
    if (cumulativeAttemptedCreditConversion != null) {
      queryParams.addAll(_queryParams('', 'cumulativeAttemptedCreditConversion', cumulativeAttemptedCreditConversion));
    }
    if (cumulativeAttemptedCredits != null) {
      queryParams.addAll(_queryParams('', 'cumulativeAttemptedCredits', cumulativeAttemptedCredits));
    }
    if (cumulativeEarnedCreditConversion != null) {
      queryParams.addAll(_queryParams('', 'cumulativeEarnedCreditConversion', cumulativeEarnedCreditConversion));
    }
    if (cumulativeEarnedCredits != null) {
      queryParams.addAll(_queryParams('', 'cumulativeEarnedCredits', cumulativeEarnedCredits));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (projectedGraduationDate != null) {
      queryParams.addAll(_queryParams('', 'projectedGraduationDate', projectedGraduationDate));
    }
    if (sessionAttemptedCreditConversion != null) {
      queryParams.addAll(_queryParams('', 'sessionAttemptedCreditConversion', sessionAttemptedCreditConversion));
    }
    if (sessionAttemptedCredits != null) {
      queryParams.addAll(_queryParams('', 'sessionAttemptedCredits', sessionAttemptedCredits));
    }
    if (sessionEarnedCreditConversion != null) {
      queryParams.addAll(_queryParams('', 'sessionEarnedCreditConversion', sessionEarnedCreditConversion));
    }
    if (sessionEarnedCredits != null) {
      queryParams.addAll(_queryParams('', 'sessionEarnedCredits', sessionEarnedCredits));
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
  /// * [String] termDescriptor:
  ///   The term for the session during the school year.
  ///
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [int] schoolYear:
  ///   The identifier for the school year.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [String] cumulativeEarnedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] cumulativeAttemptedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] sessionEarnedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] sessionAttemptedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [double] cumulativeAttemptedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] cumulativeAttemptedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [double] cumulativeEarnedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] cumulativeEarnedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [DateTime] projectedGraduationDate:
  ///   The month and year the student is projected to graduate.
  ///
  /// * [double] sessionAttemptedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] sessionAttemptedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [double] sessionEarnedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] sessionEarnedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<List<EdFiStudentAcademicRecord>?> getStudentAcademicRecords({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? termDescriptor, int? educationOrganizationId, int? schoolYear, String? studentUniqueId, String? cumulativeEarnedCreditTypeDescriptor, String? cumulativeAttemptedCreditTypeDescriptor, String? sessionEarnedCreditTypeDescriptor, String? sessionAttemptedCreditTypeDescriptor, double? cumulativeAttemptedCreditConversion, double? cumulativeAttemptedCredits, double? cumulativeEarnedCreditConversion, double? cumulativeEarnedCredits, String? id, DateTime? projectedGraduationDate, double? sessionAttemptedCreditConversion, double? sessionAttemptedCredits, double? sessionEarnedCreditConversion, double? sessionEarnedCredits, bool? useSnapshot, }) async {
    final response = await getStudentAcademicRecordsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, termDescriptor: termDescriptor, educationOrganizationId: educationOrganizationId, schoolYear: schoolYear, studentUniqueId: studentUniqueId, cumulativeEarnedCreditTypeDescriptor: cumulativeEarnedCreditTypeDescriptor, cumulativeAttemptedCreditTypeDescriptor: cumulativeAttemptedCreditTypeDescriptor, sessionEarnedCreditTypeDescriptor: sessionEarnedCreditTypeDescriptor, sessionAttemptedCreditTypeDescriptor: sessionAttemptedCreditTypeDescriptor, cumulativeAttemptedCreditConversion: cumulativeAttemptedCreditConversion, cumulativeAttemptedCredits: cumulativeAttemptedCredits, cumulativeEarnedCreditConversion: cumulativeEarnedCreditConversion, cumulativeEarnedCredits: cumulativeEarnedCredits, id: id, projectedGraduationDate: projectedGraduationDate, sessionAttemptedCreditConversion: sessionAttemptedCreditConversion, sessionAttemptedCredits: sessionAttemptedCredits, sessionEarnedCreditConversion: sessionEarnedCreditConversion, sessionEarnedCredits: sessionEarnedCredits, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiStudentAcademicRecord>') as List)
        .cast<EdFiStudentAcademicRecord>()
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
  Future<Response> getStudentAcademicRecordsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentAcademicRecords/{id}'
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
  Future<EdFiStudentAcademicRecord?> getStudentAcademicRecordsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getStudentAcademicRecordsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiStudentAcademicRecord',) as EdFiStudentAcademicRecord;
    
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
  /// * [String] termDescriptor:
  ///   The term for the session during the school year.
  ///
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [int] schoolYear:
  ///   The identifier for the school year.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [String] cumulativeEarnedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] cumulativeAttemptedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] sessionEarnedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] sessionAttemptedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [double] cumulativeAttemptedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] cumulativeAttemptedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [double] cumulativeEarnedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] cumulativeEarnedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [DateTime] projectedGraduationDate:
  ///   The month and year the student is projected to graduate.
  ///
  /// * [double] sessionAttemptedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] sessionAttemptedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [double] sessionEarnedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] sessionEarnedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getStudentAcademicRecordsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, String? termDescriptor, int? educationOrganizationId, int? schoolYear, String? studentUniqueId, String? cumulativeEarnedCreditTypeDescriptor, String? cumulativeAttemptedCreditTypeDescriptor, String? sessionEarnedCreditTypeDescriptor, String? sessionAttemptedCreditTypeDescriptor, double? cumulativeAttemptedCreditConversion, double? cumulativeAttemptedCredits, double? cumulativeEarnedCreditConversion, double? cumulativeEarnedCredits, String? id, DateTime? projectedGraduationDate, double? sessionAttemptedCreditConversion, double? sessionAttemptedCredits, double? sessionEarnedCreditConversion, double? sessionEarnedCredits, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentAcademicRecords/partitions';

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
    if (termDescriptor != null) {
      queryParams.addAll(_queryParams('', 'termDescriptor', termDescriptor));
    }
    if (educationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'educationOrganizationId', educationOrganizationId));
    }
    if (schoolYear != null) {
      queryParams.addAll(_queryParams('', 'schoolYear', schoolYear));
    }
    if (studentUniqueId != null) {
      queryParams.addAll(_queryParams('', 'studentUniqueId', studentUniqueId));
    }
    if (cumulativeEarnedCreditTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'cumulativeEarnedCreditTypeDescriptor', cumulativeEarnedCreditTypeDescriptor));
    }
    if (cumulativeAttemptedCreditTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'cumulativeAttemptedCreditTypeDescriptor', cumulativeAttemptedCreditTypeDescriptor));
    }
    if (sessionEarnedCreditTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sessionEarnedCreditTypeDescriptor', sessionEarnedCreditTypeDescriptor));
    }
    if (sessionAttemptedCreditTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sessionAttemptedCreditTypeDescriptor', sessionAttemptedCreditTypeDescriptor));
    }
    if (cumulativeAttemptedCreditConversion != null) {
      queryParams.addAll(_queryParams('', 'cumulativeAttemptedCreditConversion', cumulativeAttemptedCreditConversion));
    }
    if (cumulativeAttemptedCredits != null) {
      queryParams.addAll(_queryParams('', 'cumulativeAttemptedCredits', cumulativeAttemptedCredits));
    }
    if (cumulativeEarnedCreditConversion != null) {
      queryParams.addAll(_queryParams('', 'cumulativeEarnedCreditConversion', cumulativeEarnedCreditConversion));
    }
    if (cumulativeEarnedCredits != null) {
      queryParams.addAll(_queryParams('', 'cumulativeEarnedCredits', cumulativeEarnedCredits));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (projectedGraduationDate != null) {
      queryParams.addAll(_queryParams('', 'projectedGraduationDate', projectedGraduationDate));
    }
    if (sessionAttemptedCreditConversion != null) {
      queryParams.addAll(_queryParams('', 'sessionAttemptedCreditConversion', sessionAttemptedCreditConversion));
    }
    if (sessionAttemptedCredits != null) {
      queryParams.addAll(_queryParams('', 'sessionAttemptedCredits', sessionAttemptedCredits));
    }
    if (sessionEarnedCreditConversion != null) {
      queryParams.addAll(_queryParams('', 'sessionEarnedCreditConversion', sessionEarnedCreditConversion));
    }
    if (sessionEarnedCredits != null) {
      queryParams.addAll(_queryParams('', 'sessionEarnedCredits', sessionEarnedCredits));
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
  /// * [String] termDescriptor:
  ///   The term for the session during the school year.
  ///
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [int] schoolYear:
  ///   The identifier for the school year.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [String] cumulativeEarnedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] cumulativeAttemptedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] sessionEarnedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] sessionAttemptedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [double] cumulativeAttemptedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] cumulativeAttemptedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [double] cumulativeEarnedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] cumulativeEarnedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [DateTime] projectedGraduationDate:
  ///   The month and year the student is projected to graduate.
  ///
  /// * [double] sessionAttemptedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] sessionAttemptedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [double] sessionEarnedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] sessionEarnedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<GetAcademicWeeksPartitions200Response?> getStudentAcademicRecordsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, String? termDescriptor, int? educationOrganizationId, int? schoolYear, String? studentUniqueId, String? cumulativeEarnedCreditTypeDescriptor, String? cumulativeAttemptedCreditTypeDescriptor, String? sessionEarnedCreditTypeDescriptor, String? sessionAttemptedCreditTypeDescriptor, double? cumulativeAttemptedCreditConversion, double? cumulativeAttemptedCredits, double? cumulativeEarnedCreditConversion, double? cumulativeEarnedCredits, String? id, DateTime? projectedGraduationDate, double? sessionAttemptedCreditConversion, double? sessionAttemptedCredits, double? sessionEarnedCreditConversion, double? sessionEarnedCredits, bool? useSnapshot, }) async {
    final response = await getStudentAcademicRecordsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, termDescriptor: termDescriptor, educationOrganizationId: educationOrganizationId, schoolYear: schoolYear, studentUniqueId: studentUniqueId, cumulativeEarnedCreditTypeDescriptor: cumulativeEarnedCreditTypeDescriptor, cumulativeAttemptedCreditTypeDescriptor: cumulativeAttemptedCreditTypeDescriptor, sessionEarnedCreditTypeDescriptor: sessionEarnedCreditTypeDescriptor, sessionAttemptedCreditTypeDescriptor: sessionAttemptedCreditTypeDescriptor, cumulativeAttemptedCreditConversion: cumulativeAttemptedCreditConversion, cumulativeAttemptedCredits: cumulativeAttemptedCredits, cumulativeEarnedCreditConversion: cumulativeEarnedCreditConversion, cumulativeEarnedCredits: cumulativeEarnedCredits, id: id, projectedGraduationDate: projectedGraduationDate, sessionAttemptedCreditConversion: sessionAttemptedCreditConversion, sessionAttemptedCredits: sessionAttemptedCredits, sessionEarnedCreditConversion: sessionEarnedCreditConversion, sessionEarnedCredits: sessionEarnedCredits, useSnapshot: useSnapshot, );
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
  Future<Response> keyChangesStudentAcademicRecordsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentAcademicRecords/keyChanges';

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
  Future<List<TrackedChangesEdFiStudentAcademicRecordKeyChange>?> keyChangesStudentAcademicRecords({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesStudentAcademicRecordsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStudentAcademicRecordKeyChange>') as List)
        .cast<TrackedChangesEdFiStudentAcademicRecordKeyChange>()
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
  /// * [EdFiStudentAcademicRecord] edFiStudentAcademicRecord (required):
  ///   The JSON representation of the \"studentAcademicRecord\" resource to be created or updated.
  Future<Response> postStudentAcademicRecordWithHttpInfo(EdFiStudentAcademicRecord edFiStudentAcademicRecord,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentAcademicRecords';

    // ignore: prefer_final_locals
    Object? postBody = edFiStudentAcademicRecord;

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
  /// * [EdFiStudentAcademicRecord] edFiStudentAcademicRecord (required):
  ///   The JSON representation of the \"studentAcademicRecord\" resource to be created or updated.
  Future<void> postStudentAcademicRecord(EdFiStudentAcademicRecord edFiStudentAcademicRecord,) async {
    final response = await postStudentAcademicRecordWithHttpInfo(edFiStudentAcademicRecord,);
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
  /// * [EdFiStudentAcademicRecord] edFiStudentAcademicRecord (required):
  ///   The JSON representation of the \"studentAcademicRecord\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putStudentAcademicRecordWithHttpInfo(String id, EdFiStudentAcademicRecord edFiStudentAcademicRecord, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentAcademicRecords/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiStudentAcademicRecord;

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
  /// * [EdFiStudentAcademicRecord] edFiStudentAcademicRecord (required):
  ///   The JSON representation of the \"studentAcademicRecord\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putStudentAcademicRecord(String id, EdFiStudentAcademicRecord edFiStudentAcademicRecord, { String? ifMatch, }) async {
    final response = await putStudentAcademicRecordWithHttpInfo(id, edFiStudentAcademicRecord,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
