//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GradesApi {
  GradesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteGradeByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/grades/{id}'
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
  Future<void> deleteGradeById(String id, { String? ifMatch, }) async {
    final response = await deleteGradeByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesGradesWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/grades/deletes';

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
  Future<List<TrackedChangesEdFiGradeDelete>?> deletesGrades({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesGradesWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiGradeDelete>') as List)
        .cast<TrackedChangesEdFiGradeDelete>()
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
  /// * [String] gradeTypeDescriptor:
  ///   The type of grade reported (e.g., exam, final, grading period).
  ///
  /// * [String] gradingPeriodDescriptor:
  ///   The state's name of the period for which grades are reported.
  ///
  /// * [String] gradingPeriodName:
  ///   The school's descriptive name of the grading period.
  ///
  /// * [int] schoolId:
  ///   The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [int] gradingPeriodSchoolYear:
  ///   The identifier for the grading period school year.
  ///
  /// * [DateTime] beginDate:
  ///   Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [String] localCourseCode:
  ///   The local code assigned by the School that identifies the course offering provided for the instruction of students.
  ///
  /// * [int] schoolYear:
  ///   The identifier for the school year.
  ///
  /// * [String] sectionIdentifier:
  ///   The local identifier assigned to a section.
  ///
  /// * [String] sessionName:
  ///   The identifier for the calendar for the academic session.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [String] performanceBaseConversionDescriptor:
  ///   A conversion of the level to a standard set of performance levels.
  ///
  /// * [DateTime] currentGradeAsOfDate:
  ///   As-Of date for a grade posted as the current grade.
  ///
  /// * [bool] currentGradeIndicator:
  ///   An indicator that the posted grade is an interim grade for the grading period and not the final grade.
  ///
  /// * [String] diagnosticStatement:
  ///   A statement provided by the teacher that provides information in addition to the grade or assessment score.
  ///
  /// * [String] gradeEarnedDescription:
  ///   A description of the grade earned by the learner.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] letterGradeEarned:
  ///   A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
  ///
  /// * [double] numericGradeEarned:
  ///   A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getGradesWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? gradeTypeDescriptor, String? gradingPeriodDescriptor, String? gradingPeriodName, int? schoolId, int? gradingPeriodSchoolYear, DateTime? beginDate, String? localCourseCode, int? schoolYear, String? sectionIdentifier, String? sessionName, String? studentUniqueId, String? performanceBaseConversionDescriptor, DateTime? currentGradeAsOfDate, bool? currentGradeIndicator, String? diagnosticStatement, String? gradeEarnedDescription, String? id, String? letterGradeEarned, double? numericGradeEarned, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/grades';

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
    if (gradeTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'gradeTypeDescriptor', gradeTypeDescriptor));
    }
    if (gradingPeriodDescriptor != null) {
      queryParams.addAll(_queryParams('', 'gradingPeriodDescriptor', gradingPeriodDescriptor));
    }
    if (gradingPeriodName != null) {
      queryParams.addAll(_queryParams('', 'gradingPeriodName', gradingPeriodName));
    }
    if (schoolId != null) {
      queryParams.addAll(_queryParams('', 'schoolId', schoolId));
    }
    if (gradingPeriodSchoolYear != null) {
      queryParams.addAll(_queryParams('', 'gradingPeriodSchoolYear', gradingPeriodSchoolYear));
    }
    if (beginDate != null) {
      queryParams.addAll(_queryParams('', 'beginDate', beginDate));
    }
    if (localCourseCode != null) {
      queryParams.addAll(_queryParams('', 'localCourseCode', localCourseCode));
    }
    if (schoolYear != null) {
      queryParams.addAll(_queryParams('', 'schoolYear', schoolYear));
    }
    if (sectionIdentifier != null) {
      queryParams.addAll(_queryParams('', 'sectionIdentifier', sectionIdentifier));
    }
    if (sessionName != null) {
      queryParams.addAll(_queryParams('', 'sessionName', sessionName));
    }
    if (studentUniqueId != null) {
      queryParams.addAll(_queryParams('', 'studentUniqueId', studentUniqueId));
    }
    if (performanceBaseConversionDescriptor != null) {
      queryParams.addAll(_queryParams('', 'performanceBaseConversionDescriptor', performanceBaseConversionDescriptor));
    }
    if (currentGradeAsOfDate != null) {
      queryParams.addAll(_queryParams('', 'currentGradeAsOfDate', currentGradeAsOfDate));
    }
    if (currentGradeIndicator != null) {
      queryParams.addAll(_queryParams('', 'currentGradeIndicator', currentGradeIndicator));
    }
    if (diagnosticStatement != null) {
      queryParams.addAll(_queryParams('', 'diagnosticStatement', diagnosticStatement));
    }
    if (gradeEarnedDescription != null) {
      queryParams.addAll(_queryParams('', 'gradeEarnedDescription', gradeEarnedDescription));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (letterGradeEarned != null) {
      queryParams.addAll(_queryParams('', 'letterGradeEarned', letterGradeEarned));
    }
    if (numericGradeEarned != null) {
      queryParams.addAll(_queryParams('', 'numericGradeEarned', numericGradeEarned));
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
  /// * [String] gradeTypeDescriptor:
  ///   The type of grade reported (e.g., exam, final, grading period).
  ///
  /// * [String] gradingPeriodDescriptor:
  ///   The state's name of the period for which grades are reported.
  ///
  /// * [String] gradingPeriodName:
  ///   The school's descriptive name of the grading period.
  ///
  /// * [int] schoolId:
  ///   The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [int] gradingPeriodSchoolYear:
  ///   The identifier for the grading period school year.
  ///
  /// * [DateTime] beginDate:
  ///   Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [String] localCourseCode:
  ///   The local code assigned by the School that identifies the course offering provided for the instruction of students.
  ///
  /// * [int] schoolYear:
  ///   The identifier for the school year.
  ///
  /// * [String] sectionIdentifier:
  ///   The local identifier assigned to a section.
  ///
  /// * [String] sessionName:
  ///   The identifier for the calendar for the academic session.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [String] performanceBaseConversionDescriptor:
  ///   A conversion of the level to a standard set of performance levels.
  ///
  /// * [DateTime] currentGradeAsOfDate:
  ///   As-Of date for a grade posted as the current grade.
  ///
  /// * [bool] currentGradeIndicator:
  ///   An indicator that the posted grade is an interim grade for the grading period and not the final grade.
  ///
  /// * [String] diagnosticStatement:
  ///   A statement provided by the teacher that provides information in addition to the grade or assessment score.
  ///
  /// * [String] gradeEarnedDescription:
  ///   A description of the grade earned by the learner.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] letterGradeEarned:
  ///   A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
  ///
  /// * [double] numericGradeEarned:
  ///   A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<List<EdFiGrade>?> getGrades({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? gradeTypeDescriptor, String? gradingPeriodDescriptor, String? gradingPeriodName, int? schoolId, int? gradingPeriodSchoolYear, DateTime? beginDate, String? localCourseCode, int? schoolYear, String? sectionIdentifier, String? sessionName, String? studentUniqueId, String? performanceBaseConversionDescriptor, DateTime? currentGradeAsOfDate, bool? currentGradeIndicator, String? diagnosticStatement, String? gradeEarnedDescription, String? id, String? letterGradeEarned, double? numericGradeEarned, bool? useSnapshot, }) async {
    final response = await getGradesWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, gradeTypeDescriptor: gradeTypeDescriptor, gradingPeriodDescriptor: gradingPeriodDescriptor, gradingPeriodName: gradingPeriodName, schoolId: schoolId, gradingPeriodSchoolYear: gradingPeriodSchoolYear, beginDate: beginDate, localCourseCode: localCourseCode, schoolYear: schoolYear, sectionIdentifier: sectionIdentifier, sessionName: sessionName, studentUniqueId: studentUniqueId, performanceBaseConversionDescriptor: performanceBaseConversionDescriptor, currentGradeAsOfDate: currentGradeAsOfDate, currentGradeIndicator: currentGradeIndicator, diagnosticStatement: diagnosticStatement, gradeEarnedDescription: gradeEarnedDescription, id: id, letterGradeEarned: letterGradeEarned, numericGradeEarned: numericGradeEarned, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiGrade>') as List)
        .cast<EdFiGrade>()
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
  Future<Response> getGradesByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/grades/{id}'
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
  Future<EdFiGrade?> getGradesById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getGradesByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiGrade',) as EdFiGrade;
    
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
  /// * [String] gradeTypeDescriptor:
  ///   The type of grade reported (e.g., exam, final, grading period).
  ///
  /// * [String] gradingPeriodDescriptor:
  ///   The state's name of the period for which grades are reported.
  ///
  /// * [String] gradingPeriodName:
  ///   The school's descriptive name of the grading period.
  ///
  /// * [int] schoolId:
  ///   The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [int] gradingPeriodSchoolYear:
  ///   The identifier for the grading period school year.
  ///
  /// * [DateTime] beginDate:
  ///   Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [String] localCourseCode:
  ///   The local code assigned by the School that identifies the course offering provided for the instruction of students.
  ///
  /// * [int] schoolYear:
  ///   The identifier for the school year.
  ///
  /// * [String] sectionIdentifier:
  ///   The local identifier assigned to a section.
  ///
  /// * [String] sessionName:
  ///   The identifier for the calendar for the academic session.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [String] performanceBaseConversionDescriptor:
  ///   A conversion of the level to a standard set of performance levels.
  ///
  /// * [DateTime] currentGradeAsOfDate:
  ///   As-Of date for a grade posted as the current grade.
  ///
  /// * [bool] currentGradeIndicator:
  ///   An indicator that the posted grade is an interim grade for the grading period and not the final grade.
  ///
  /// * [String] diagnosticStatement:
  ///   A statement provided by the teacher that provides information in addition to the grade or assessment score.
  ///
  /// * [String] gradeEarnedDescription:
  ///   A description of the grade earned by the learner.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] letterGradeEarned:
  ///   A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
  ///
  /// * [double] numericGradeEarned:
  ///   A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getGradesPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, String? gradeTypeDescriptor, String? gradingPeriodDescriptor, String? gradingPeriodName, int? schoolId, int? gradingPeriodSchoolYear, DateTime? beginDate, String? localCourseCode, int? schoolYear, String? sectionIdentifier, String? sessionName, String? studentUniqueId, String? performanceBaseConversionDescriptor, DateTime? currentGradeAsOfDate, bool? currentGradeIndicator, String? diagnosticStatement, String? gradeEarnedDescription, String? id, String? letterGradeEarned, double? numericGradeEarned, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/grades/partitions';

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
    if (gradeTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'gradeTypeDescriptor', gradeTypeDescriptor));
    }
    if (gradingPeriodDescriptor != null) {
      queryParams.addAll(_queryParams('', 'gradingPeriodDescriptor', gradingPeriodDescriptor));
    }
    if (gradingPeriodName != null) {
      queryParams.addAll(_queryParams('', 'gradingPeriodName', gradingPeriodName));
    }
    if (schoolId != null) {
      queryParams.addAll(_queryParams('', 'schoolId', schoolId));
    }
    if (gradingPeriodSchoolYear != null) {
      queryParams.addAll(_queryParams('', 'gradingPeriodSchoolYear', gradingPeriodSchoolYear));
    }
    if (beginDate != null) {
      queryParams.addAll(_queryParams('', 'beginDate', beginDate));
    }
    if (localCourseCode != null) {
      queryParams.addAll(_queryParams('', 'localCourseCode', localCourseCode));
    }
    if (schoolYear != null) {
      queryParams.addAll(_queryParams('', 'schoolYear', schoolYear));
    }
    if (sectionIdentifier != null) {
      queryParams.addAll(_queryParams('', 'sectionIdentifier', sectionIdentifier));
    }
    if (sessionName != null) {
      queryParams.addAll(_queryParams('', 'sessionName', sessionName));
    }
    if (studentUniqueId != null) {
      queryParams.addAll(_queryParams('', 'studentUniqueId', studentUniqueId));
    }
    if (performanceBaseConversionDescriptor != null) {
      queryParams.addAll(_queryParams('', 'performanceBaseConversionDescriptor', performanceBaseConversionDescriptor));
    }
    if (currentGradeAsOfDate != null) {
      queryParams.addAll(_queryParams('', 'currentGradeAsOfDate', currentGradeAsOfDate));
    }
    if (currentGradeIndicator != null) {
      queryParams.addAll(_queryParams('', 'currentGradeIndicator', currentGradeIndicator));
    }
    if (diagnosticStatement != null) {
      queryParams.addAll(_queryParams('', 'diagnosticStatement', diagnosticStatement));
    }
    if (gradeEarnedDescription != null) {
      queryParams.addAll(_queryParams('', 'gradeEarnedDescription', gradeEarnedDescription));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (letterGradeEarned != null) {
      queryParams.addAll(_queryParams('', 'letterGradeEarned', letterGradeEarned));
    }
    if (numericGradeEarned != null) {
      queryParams.addAll(_queryParams('', 'numericGradeEarned', numericGradeEarned));
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
  /// * [String] gradeTypeDescriptor:
  ///   The type of grade reported (e.g., exam, final, grading period).
  ///
  /// * [String] gradingPeriodDescriptor:
  ///   The state's name of the period for which grades are reported.
  ///
  /// * [String] gradingPeriodName:
  ///   The school's descriptive name of the grading period.
  ///
  /// * [int] schoolId:
  ///   The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [int] gradingPeriodSchoolYear:
  ///   The identifier for the grading period school year.
  ///
  /// * [DateTime] beginDate:
  ///   Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [String] localCourseCode:
  ///   The local code assigned by the School that identifies the course offering provided for the instruction of students.
  ///
  /// * [int] schoolYear:
  ///   The identifier for the school year.
  ///
  /// * [String] sectionIdentifier:
  ///   The local identifier assigned to a section.
  ///
  /// * [String] sessionName:
  ///   The identifier for the calendar for the academic session.
  ///
  /// * [String] studentUniqueId:
  ///   A unique alphanumeric code assigned to a student.
  ///
  /// * [String] performanceBaseConversionDescriptor:
  ///   A conversion of the level to a standard set of performance levels.
  ///
  /// * [DateTime] currentGradeAsOfDate:
  ///   As-Of date for a grade posted as the current grade.
  ///
  /// * [bool] currentGradeIndicator:
  ///   An indicator that the posted grade is an interim grade for the grading period and not the final grade.
  ///
  /// * [String] diagnosticStatement:
  ///   A statement provided by the teacher that provides information in addition to the grade or assessment score.
  ///
  /// * [String] gradeEarnedDescription:
  ///   A description of the grade earned by the learner.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] letterGradeEarned:
  ///   A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
  ///
  /// * [double] numericGradeEarned:
  ///   A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<GetAcademicWeeksPartitions200Response?> getGradesPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, String? gradeTypeDescriptor, String? gradingPeriodDescriptor, String? gradingPeriodName, int? schoolId, int? gradingPeriodSchoolYear, DateTime? beginDate, String? localCourseCode, int? schoolYear, String? sectionIdentifier, String? sessionName, String? studentUniqueId, String? performanceBaseConversionDescriptor, DateTime? currentGradeAsOfDate, bool? currentGradeIndicator, String? diagnosticStatement, String? gradeEarnedDescription, String? id, String? letterGradeEarned, double? numericGradeEarned, bool? useSnapshot, }) async {
    final response = await getGradesPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, gradeTypeDescriptor: gradeTypeDescriptor, gradingPeriodDescriptor: gradingPeriodDescriptor, gradingPeriodName: gradingPeriodName, schoolId: schoolId, gradingPeriodSchoolYear: gradingPeriodSchoolYear, beginDate: beginDate, localCourseCode: localCourseCode, schoolYear: schoolYear, sectionIdentifier: sectionIdentifier, sessionName: sessionName, studentUniqueId: studentUniqueId, performanceBaseConversionDescriptor: performanceBaseConversionDescriptor, currentGradeAsOfDate: currentGradeAsOfDate, currentGradeIndicator: currentGradeIndicator, diagnosticStatement: diagnosticStatement, gradeEarnedDescription: gradeEarnedDescription, id: id, letterGradeEarned: letterGradeEarned, numericGradeEarned: numericGradeEarned, useSnapshot: useSnapshot, );
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
  Future<Response> keyChangesGradesWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/grades/keyChanges';

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
  Future<List<TrackedChangesEdFiGradeKeyChange>?> keyChangesGrades({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesGradesWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiGradeKeyChange>') as List)
        .cast<TrackedChangesEdFiGradeKeyChange>()
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
  /// * [EdFiGrade] edFiGrade (required):
  ///   The JSON representation of the \"grade\" resource to be created or updated.
  Future<Response> postGradeWithHttpInfo(EdFiGrade edFiGrade,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/grades';

    // ignore: prefer_final_locals
    Object? postBody = edFiGrade;

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
  /// * [EdFiGrade] edFiGrade (required):
  ///   The JSON representation of the \"grade\" resource to be created or updated.
  Future<void> postGrade(EdFiGrade edFiGrade,) async {
    final response = await postGradeWithHttpInfo(edFiGrade,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates a resource based on the resource identifier.
  ///
  /// The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, if natural key values are being updated by the JSON body, those changes will be applied to the resource and will also cascade through to dependent resources.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A resource identifier that uniquely identifies the resource.
  ///
  /// * [EdFiGrade] edFiGrade (required):
  ///   The JSON representation of the \"grade\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putGradeWithHttpInfo(String id, EdFiGrade edFiGrade, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/grades/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiGrade;

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
  /// The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, if natural key values are being updated by the JSON body, those changes will be applied to the resource and will also cascade through to dependent resources.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   A resource identifier that uniquely identifies the resource.
  ///
  /// * [EdFiGrade] edFiGrade (required):
  ///   The JSON representation of the \"grade\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putGrade(String id, EdFiGrade edFiGrade, { String? ifMatch, }) async {
    final response = await putGradeWithHttpInfo(id, edFiGrade,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
