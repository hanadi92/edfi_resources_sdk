//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StudentAssessmentsApi {
  StudentAssessmentsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteStudentAssessmentByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentAssessments/{id}'
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
  Future<void> deleteStudentAssessmentById(String id, { String? ifMatch, }) async {
    final response = await deleteStudentAssessmentByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesStudentAssessmentsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentAssessments/deletes';

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
  Future<List<TrackedChangesEdFiStudentAssessmentDelete>?> deletesStudentAssessments({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesStudentAssessmentsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStudentAssessmentDelete>') as List)
        .cast<TrackedChangesEdFiStudentAssessmentDelete>()
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
  /// * [String] studentAssessmentIdentifier:
  ///   A unique number or alphanumeric code assigned to an assessment administered to a student.
  ///
  /// * [String] assessmentIdentifier:
  ///   A unique number or alphanumeric code assigned to an assessment.
  ///
  /// * [String] namespace:
  ///   Namespace for the assessment.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [int] reportedSchoolId:
  ///   The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [int] schoolYear:
  ///   The school year for which the assessment was administered to a student. Among other uses, handles cases in which a student takes a prior-year exam in a subsequent school year during an exam re-test.
  ///
  /// * [String] administrationEnvironmentDescriptor:
  ///   The environment in which the test was administered.
  ///
  /// * [String] eventCircumstanceDescriptor:
  ///   An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc.
  ///
  /// * [String] whenAssessedGradeLevelDescriptor:
  ///   The grade level of a student when assessed.
  ///
  /// * [String] administrationLanguageDescriptor:
  ///   The language in which an assessment is written and/or administered.
  ///
  /// * [String] platformTypeDescriptor:
  ///   The platform with which the assessment was delivered to the student during the assessment session.
  ///
  /// * [String] reasonNotTestedDescriptor:
  ///   The primary reason student is not tested.
  ///
  /// * [String] retestIndicatorDescriptor:
  ///   Indicator if the test was a retake.
  ///
  /// * [DateTime] administrationDate:
  ///   The date and time an assessment was completed by the student. The use of ISO-8601 formats with a timezone designator (UTC or time offset) is recommended in order to prevent ambiguity due to time zones.
  ///
  /// * [DateTime] administrationEndDate:
  ///   The date and time an assessment administration ended.
  ///
  /// * [int] assessedMinutes:
  ///   Reported time student was assessed in minutes.
  ///
  /// * [String] eventDescription:
  ///   Describes special events that occur before during or after the assessment session that may impact use of results.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] reportedSchoolIdentifier:
  ///   A reported school identifier for the school the enrollment at the time of the assessment used when the assigned SchoolId is not known by the assessment vendor.
  ///
  /// * [String] serialNumber:
  ///   The unique number for the assessment form or answer document.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getStudentAssessmentsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? studentAssessmentIdentifier, String? assessmentIdentifier, String? namespace, String? studentUniqueId, int? reportedSchoolId, int? schoolYear, String? administrationEnvironmentDescriptor, String? eventCircumstanceDescriptor, String? whenAssessedGradeLevelDescriptor, String? administrationLanguageDescriptor, String? platformTypeDescriptor, String? reasonNotTestedDescriptor, String? retestIndicatorDescriptor, DateTime? administrationDate, DateTime? administrationEndDate, int? assessedMinutes, String? eventDescription, String? id, String? reportedSchoolIdentifier, String? serialNumber, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentAssessments';

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
    if (studentAssessmentIdentifier != null) {
      queryParams.addAll(_queryParams('', 'studentAssessmentIdentifier', studentAssessmentIdentifier));
    }
    if (assessmentIdentifier != null) {
      queryParams.addAll(_queryParams('', 'assessmentIdentifier', assessmentIdentifier));
    }
    if (namespace != null) {
      queryParams.addAll(_queryParams('', 'namespace', namespace));
    }
    if (studentUniqueId != null) {
      queryParams.addAll(_queryParams('', 'studentUniqueId', studentUniqueId));
    }
    if (reportedSchoolId != null) {
      queryParams.addAll(_queryParams('', 'reportedSchoolId', reportedSchoolId));
    }
    if (schoolYear != null) {
      queryParams.addAll(_queryParams('', 'schoolYear', schoolYear));
    }
    if (administrationEnvironmentDescriptor != null) {
      queryParams.addAll(_queryParams('', 'administrationEnvironmentDescriptor', administrationEnvironmentDescriptor));
    }
    if (eventCircumstanceDescriptor != null) {
      queryParams.addAll(_queryParams('', 'eventCircumstanceDescriptor', eventCircumstanceDescriptor));
    }
    if (whenAssessedGradeLevelDescriptor != null) {
      queryParams.addAll(_queryParams('', 'whenAssessedGradeLevelDescriptor', whenAssessedGradeLevelDescriptor));
    }
    if (administrationLanguageDescriptor != null) {
      queryParams.addAll(_queryParams('', 'administrationLanguageDescriptor', administrationLanguageDescriptor));
    }
    if (platformTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'platformTypeDescriptor', platformTypeDescriptor));
    }
    if (reasonNotTestedDescriptor != null) {
      queryParams.addAll(_queryParams('', 'reasonNotTestedDescriptor', reasonNotTestedDescriptor));
    }
    if (retestIndicatorDescriptor != null) {
      queryParams.addAll(_queryParams('', 'retestIndicatorDescriptor', retestIndicatorDescriptor));
    }
    if (administrationDate != null) {
      queryParams.addAll(_queryParams('', 'administrationDate', administrationDate));
    }
    if (administrationEndDate != null) {
      queryParams.addAll(_queryParams('', 'administrationEndDate', administrationEndDate));
    }
    if (assessedMinutes != null) {
      queryParams.addAll(_queryParams('', 'assessedMinutes', assessedMinutes));
    }
    if (eventDescription != null) {
      queryParams.addAll(_queryParams('', 'eventDescription', eventDescription));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (reportedSchoolIdentifier != null) {
      queryParams.addAll(_queryParams('', 'reportedSchoolIdentifier', reportedSchoolIdentifier));
    }
    if (serialNumber != null) {
      queryParams.addAll(_queryParams('', 'serialNumber', serialNumber));
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
  /// * [String] studentAssessmentIdentifier:
  ///   A unique number or alphanumeric code assigned to an assessment administered to a student.
  ///
  /// * [String] assessmentIdentifier:
  ///   A unique number or alphanumeric code assigned to an assessment.
  ///
  /// * [String] namespace:
  ///   Namespace for the assessment.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [int] reportedSchoolId:
  ///   The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [int] schoolYear:
  ///   The school year for which the assessment was administered to a student. Among other uses, handles cases in which a student takes a prior-year exam in a subsequent school year during an exam re-test.
  ///
  /// * [String] administrationEnvironmentDescriptor:
  ///   The environment in which the test was administered.
  ///
  /// * [String] eventCircumstanceDescriptor:
  ///   An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc.
  ///
  /// * [String] whenAssessedGradeLevelDescriptor:
  ///   The grade level of a student when assessed.
  ///
  /// * [String] administrationLanguageDescriptor:
  ///   The language in which an assessment is written and/or administered.
  ///
  /// * [String] platformTypeDescriptor:
  ///   The platform with which the assessment was delivered to the student during the assessment session.
  ///
  /// * [String] reasonNotTestedDescriptor:
  ///   The primary reason student is not tested.
  ///
  /// * [String] retestIndicatorDescriptor:
  ///   Indicator if the test was a retake.
  ///
  /// * [DateTime] administrationDate:
  ///   The date and time an assessment was completed by the student. The use of ISO-8601 formats with a timezone designator (UTC or time offset) is recommended in order to prevent ambiguity due to time zones.
  ///
  /// * [DateTime] administrationEndDate:
  ///   The date and time an assessment administration ended.
  ///
  /// * [int] assessedMinutes:
  ///   Reported time student was assessed in minutes.
  ///
  /// * [String] eventDescription:
  ///   Describes special events that occur before during or after the assessment session that may impact use of results.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] reportedSchoolIdentifier:
  ///   A reported school identifier for the school the enrollment at the time of the assessment used when the assigned SchoolId is not known by the assessment vendor.
  ///
  /// * [String] serialNumber:
  ///   The unique number for the assessment form or answer document.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<List<EdFiStudentAssessment>?> getStudentAssessments({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? studentAssessmentIdentifier, String? assessmentIdentifier, String? namespace, String? studentUniqueId, int? reportedSchoolId, int? schoolYear, String? administrationEnvironmentDescriptor, String? eventCircumstanceDescriptor, String? whenAssessedGradeLevelDescriptor, String? administrationLanguageDescriptor, String? platformTypeDescriptor, String? reasonNotTestedDescriptor, String? retestIndicatorDescriptor, DateTime? administrationDate, DateTime? administrationEndDate, int? assessedMinutes, String? eventDescription, String? id, String? reportedSchoolIdentifier, String? serialNumber, bool? useSnapshot, }) async {
    final response = await getStudentAssessmentsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, studentAssessmentIdentifier: studentAssessmentIdentifier, assessmentIdentifier: assessmentIdentifier, namespace: namespace, studentUniqueId: studentUniqueId, reportedSchoolId: reportedSchoolId, schoolYear: schoolYear, administrationEnvironmentDescriptor: administrationEnvironmentDescriptor, eventCircumstanceDescriptor: eventCircumstanceDescriptor, whenAssessedGradeLevelDescriptor: whenAssessedGradeLevelDescriptor, administrationLanguageDescriptor: administrationLanguageDescriptor, platformTypeDescriptor: platformTypeDescriptor, reasonNotTestedDescriptor: reasonNotTestedDescriptor, retestIndicatorDescriptor: retestIndicatorDescriptor, administrationDate: administrationDate, administrationEndDate: administrationEndDate, assessedMinutes: assessedMinutes, eventDescription: eventDescription, id: id, reportedSchoolIdentifier: reportedSchoolIdentifier, serialNumber: serialNumber, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiStudentAssessment>') as List)
        .cast<EdFiStudentAssessment>()
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
  Future<Response> getStudentAssessmentsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentAssessments/{id}'
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
  Future<EdFiStudentAssessment?> getStudentAssessmentsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getStudentAssessmentsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiStudentAssessment',) as EdFiStudentAssessment;
    
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
  /// * [String] studentAssessmentIdentifier:
  ///   A unique number or alphanumeric code assigned to an assessment administered to a student.
  ///
  /// * [String] assessmentIdentifier:
  ///   A unique number or alphanumeric code assigned to an assessment.
  ///
  /// * [String] namespace:
  ///   Namespace for the assessment.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [int] reportedSchoolId:
  ///   The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [int] schoolYear:
  ///   The school year for which the assessment was administered to a student. Among other uses, handles cases in which a student takes a prior-year exam in a subsequent school year during an exam re-test.
  ///
  /// * [String] administrationEnvironmentDescriptor:
  ///   The environment in which the test was administered.
  ///
  /// * [String] eventCircumstanceDescriptor:
  ///   An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc.
  ///
  /// * [String] whenAssessedGradeLevelDescriptor:
  ///   The grade level of a student when assessed.
  ///
  /// * [String] administrationLanguageDescriptor:
  ///   The language in which an assessment is written and/or administered.
  ///
  /// * [String] platformTypeDescriptor:
  ///   The platform with which the assessment was delivered to the student during the assessment session.
  ///
  /// * [String] reasonNotTestedDescriptor:
  ///   The primary reason student is not tested.
  ///
  /// * [String] retestIndicatorDescriptor:
  ///   Indicator if the test was a retake.
  ///
  /// * [DateTime] administrationDate:
  ///   The date and time an assessment was completed by the student. The use of ISO-8601 formats with a timezone designator (UTC or time offset) is recommended in order to prevent ambiguity due to time zones.
  ///
  /// * [DateTime] administrationEndDate:
  ///   The date and time an assessment administration ended.
  ///
  /// * [int] assessedMinutes:
  ///   Reported time student was assessed in minutes.
  ///
  /// * [String] eventDescription:
  ///   Describes special events that occur before during or after the assessment session that may impact use of results.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] reportedSchoolIdentifier:
  ///   A reported school identifier for the school the enrollment at the time of the assessment used when the assigned SchoolId is not known by the assessment vendor.
  ///
  /// * [String] serialNumber:
  ///   The unique number for the assessment form or answer document.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getStudentAssessmentsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, String? studentAssessmentIdentifier, String? assessmentIdentifier, String? namespace, String? studentUniqueId, int? reportedSchoolId, int? schoolYear, String? administrationEnvironmentDescriptor, String? eventCircumstanceDescriptor, String? whenAssessedGradeLevelDescriptor, String? administrationLanguageDescriptor, String? platformTypeDescriptor, String? reasonNotTestedDescriptor, String? retestIndicatorDescriptor, DateTime? administrationDate, DateTime? administrationEndDate, int? assessedMinutes, String? eventDescription, String? id, String? reportedSchoolIdentifier, String? serialNumber, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentAssessments/partitions';

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
    if (studentAssessmentIdentifier != null) {
      queryParams.addAll(_queryParams('', 'studentAssessmentIdentifier', studentAssessmentIdentifier));
    }
    if (assessmentIdentifier != null) {
      queryParams.addAll(_queryParams('', 'assessmentIdentifier', assessmentIdentifier));
    }
    if (namespace != null) {
      queryParams.addAll(_queryParams('', 'namespace', namespace));
    }
    if (studentUniqueId != null) {
      queryParams.addAll(_queryParams('', 'studentUniqueId', studentUniqueId));
    }
    if (reportedSchoolId != null) {
      queryParams.addAll(_queryParams('', 'reportedSchoolId', reportedSchoolId));
    }
    if (schoolYear != null) {
      queryParams.addAll(_queryParams('', 'schoolYear', schoolYear));
    }
    if (administrationEnvironmentDescriptor != null) {
      queryParams.addAll(_queryParams('', 'administrationEnvironmentDescriptor', administrationEnvironmentDescriptor));
    }
    if (eventCircumstanceDescriptor != null) {
      queryParams.addAll(_queryParams('', 'eventCircumstanceDescriptor', eventCircumstanceDescriptor));
    }
    if (whenAssessedGradeLevelDescriptor != null) {
      queryParams.addAll(_queryParams('', 'whenAssessedGradeLevelDescriptor', whenAssessedGradeLevelDescriptor));
    }
    if (administrationLanguageDescriptor != null) {
      queryParams.addAll(_queryParams('', 'administrationLanguageDescriptor', administrationLanguageDescriptor));
    }
    if (platformTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'platformTypeDescriptor', platformTypeDescriptor));
    }
    if (reasonNotTestedDescriptor != null) {
      queryParams.addAll(_queryParams('', 'reasonNotTestedDescriptor', reasonNotTestedDescriptor));
    }
    if (retestIndicatorDescriptor != null) {
      queryParams.addAll(_queryParams('', 'retestIndicatorDescriptor', retestIndicatorDescriptor));
    }
    if (administrationDate != null) {
      queryParams.addAll(_queryParams('', 'administrationDate', administrationDate));
    }
    if (administrationEndDate != null) {
      queryParams.addAll(_queryParams('', 'administrationEndDate', administrationEndDate));
    }
    if (assessedMinutes != null) {
      queryParams.addAll(_queryParams('', 'assessedMinutes', assessedMinutes));
    }
    if (eventDescription != null) {
      queryParams.addAll(_queryParams('', 'eventDescription', eventDescription));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (reportedSchoolIdentifier != null) {
      queryParams.addAll(_queryParams('', 'reportedSchoolIdentifier', reportedSchoolIdentifier));
    }
    if (serialNumber != null) {
      queryParams.addAll(_queryParams('', 'serialNumber', serialNumber));
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
  /// * [String] studentAssessmentIdentifier:
  ///   A unique number or alphanumeric code assigned to an assessment administered to a student.
  ///
  /// * [String] assessmentIdentifier:
  ///   A unique number or alphanumeric code assigned to an assessment.
  ///
  /// * [String] namespace:
  ///   Namespace for the assessment.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [int] reportedSchoolId:
  ///   The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [int] schoolYear:
  ///   The school year for which the assessment was administered to a student. Among other uses, handles cases in which a student takes a prior-year exam in a subsequent school year during an exam re-test.
  ///
  /// * [String] administrationEnvironmentDescriptor:
  ///   The environment in which the test was administered.
  ///
  /// * [String] eventCircumstanceDescriptor:
  ///   An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc.
  ///
  /// * [String] whenAssessedGradeLevelDescriptor:
  ///   The grade level of a student when assessed.
  ///
  /// * [String] administrationLanguageDescriptor:
  ///   The language in which an assessment is written and/or administered.
  ///
  /// * [String] platformTypeDescriptor:
  ///   The platform with which the assessment was delivered to the student during the assessment session.
  ///
  /// * [String] reasonNotTestedDescriptor:
  ///   The primary reason student is not tested.
  ///
  /// * [String] retestIndicatorDescriptor:
  ///   Indicator if the test was a retake.
  ///
  /// * [DateTime] administrationDate:
  ///   The date and time an assessment was completed by the student. The use of ISO-8601 formats with a timezone designator (UTC or time offset) is recommended in order to prevent ambiguity due to time zones.
  ///
  /// * [DateTime] administrationEndDate:
  ///   The date and time an assessment administration ended.
  ///
  /// * [int] assessedMinutes:
  ///   Reported time student was assessed in minutes.
  ///
  /// * [String] eventDescription:
  ///   Describes special events that occur before during or after the assessment session that may impact use of results.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] reportedSchoolIdentifier:
  ///   A reported school identifier for the school the enrollment at the time of the assessment used when the assigned SchoolId is not known by the assessment vendor.
  ///
  /// * [String] serialNumber:
  ///   The unique number for the assessment form or answer document.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<GetAcademicWeeksPartitions200Response?> getStudentAssessmentsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, String? studentAssessmentIdentifier, String? assessmentIdentifier, String? namespace, String? studentUniqueId, int? reportedSchoolId, int? schoolYear, String? administrationEnvironmentDescriptor, String? eventCircumstanceDescriptor, String? whenAssessedGradeLevelDescriptor, String? administrationLanguageDescriptor, String? platformTypeDescriptor, String? reasonNotTestedDescriptor, String? retestIndicatorDescriptor, DateTime? administrationDate, DateTime? administrationEndDate, int? assessedMinutes, String? eventDescription, String? id, String? reportedSchoolIdentifier, String? serialNumber, bool? useSnapshot, }) async {
    final response = await getStudentAssessmentsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, studentAssessmentIdentifier: studentAssessmentIdentifier, assessmentIdentifier: assessmentIdentifier, namespace: namespace, studentUniqueId: studentUniqueId, reportedSchoolId: reportedSchoolId, schoolYear: schoolYear, administrationEnvironmentDescriptor: administrationEnvironmentDescriptor, eventCircumstanceDescriptor: eventCircumstanceDescriptor, whenAssessedGradeLevelDescriptor: whenAssessedGradeLevelDescriptor, administrationLanguageDescriptor: administrationLanguageDescriptor, platformTypeDescriptor: platformTypeDescriptor, reasonNotTestedDescriptor: reasonNotTestedDescriptor, retestIndicatorDescriptor: retestIndicatorDescriptor, administrationDate: administrationDate, administrationEndDate: administrationEndDate, assessedMinutes: assessedMinutes, eventDescription: eventDescription, id: id, reportedSchoolIdentifier: reportedSchoolIdentifier, serialNumber: serialNumber, useSnapshot: useSnapshot, );
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
  Future<Response> keyChangesStudentAssessmentsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentAssessments/keyChanges';

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
  Future<List<TrackedChangesEdFiStudentAssessmentKeyChange>?> keyChangesStudentAssessments({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesStudentAssessmentsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStudentAssessmentKeyChange>') as List)
        .cast<TrackedChangesEdFiStudentAssessmentKeyChange>()
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
  /// * [EdFiStudentAssessment] edFiStudentAssessment (required):
  ///   The JSON representation of the \"studentAssessment\" resource to be created or updated.
  Future<Response> postStudentAssessmentWithHttpInfo(EdFiStudentAssessment edFiStudentAssessment,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentAssessments';

    // ignore: prefer_final_locals
    Object? postBody = edFiStudentAssessment;

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
  /// * [EdFiStudentAssessment] edFiStudentAssessment (required):
  ///   The JSON representation of the \"studentAssessment\" resource to be created or updated.
  Future<void> postStudentAssessment(EdFiStudentAssessment edFiStudentAssessment,) async {
    final response = await postStudentAssessmentWithHttpInfo(edFiStudentAssessment,);
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
  /// * [EdFiStudentAssessment] edFiStudentAssessment (required):
  ///   The JSON representation of the \"studentAssessment\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putStudentAssessmentWithHttpInfo(String id, EdFiStudentAssessment edFiStudentAssessment, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentAssessments/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiStudentAssessment;

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
  /// * [EdFiStudentAssessment] edFiStudentAssessment (required):
  ///   The JSON representation of the \"studentAssessment\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putStudentAssessment(String id, EdFiStudentAssessment edFiStudentAssessment, { String? ifMatch, }) async {
    final response = await putStudentAssessmentWithHttpInfo(id, edFiStudentAssessment,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
