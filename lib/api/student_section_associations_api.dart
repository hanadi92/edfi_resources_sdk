//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StudentSectionAssociationsApi {
  StudentSectionAssociationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteStudentSectionAssociationByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentSectionAssociations/{id}'
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
  Future<void> deleteStudentSectionAssociationById(String id, { String? ifMatch, }) async {
    final response = await deleteStudentSectionAssociationByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesStudentSectionAssociationsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentSectionAssociations/deletes';

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
  Future<List<TrackedChangesEdFiStudentSectionAssociationDelete>?> deletesStudentSectionAssociations({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesStudentSectionAssociationsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStudentSectionAssociationDelete>') as List)
        .cast<TrackedChangesEdFiStudentSectionAssociationDelete>()
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
  ///   Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [String] localCourseCode:
  ///   The local code assigned by the School that identifies the course offering provided for the instruction of students.
  ///
  /// * [int] schoolId:
  ///   The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
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
  /// * [int] dualCreditEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] attemptStatusDescriptor:
  ///   An indication of the student's completion status for the section.
  ///
  /// * [String] dualCreditInstitutionDescriptor:
  ///   Descriptor for the postsecondary institution offering college credit. This descriptor may be used to select a postsecondary institution that is not defined as an education organization, and/or select a general type of postsecondary institution.
  ///
  /// * [String] dualCreditTypeDescriptor:
  ///   For a student taking a dual credit course in a college or high school setting, indicates the type of dual credit program.
  ///
  /// * [String] repeatIdentifierDescriptor:
  ///   An indication as to whether a student has previously taken a given course.
  ///
  /// * [bool] dualCreditIndicator:
  ///   Indicates whether the student assigned to the section is to receive dual credit upon successful completion.
  ///
  /// * [bool] dualHighSchoolCreditIndicator:
  ///   Indicates whether successful completion of the course will result in credits toward high school graduation.
  ///
  /// * [DateTime] endDate:
  ///   Month, day, and year of the withdrawal or exit of the student from the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [bool] homeroomIndicator:
  ///   Indicates the section is the student's homeroom. Homeroom period may the convention for taking daily attendance.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] teacherStudentDataLinkExclusion:
  ///   Indicates that the student-section combination is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getStudentSectionAssociationsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, DateTime? beginDate, String? localCourseCode, int? schoolId, int? schoolYear, String? sectionIdentifier, String? sessionName, String? studentUniqueId, int? dualCreditEducationOrganizationId, String? attemptStatusDescriptor, String? dualCreditInstitutionDescriptor, String? dualCreditTypeDescriptor, String? repeatIdentifierDescriptor, bool? dualCreditIndicator, bool? dualHighSchoolCreditIndicator, DateTime? endDate, bool? homeroomIndicator, String? id, bool? teacherStudentDataLinkExclusion, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentSectionAssociations';

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
    if (localCourseCode != null) {
      queryParams.addAll(_queryParams('', 'localCourseCode', localCourseCode));
    }
    if (schoolId != null) {
      queryParams.addAll(_queryParams('', 'schoolId', schoolId));
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
    if (dualCreditEducationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'dualCreditEducationOrganizationId', dualCreditEducationOrganizationId));
    }
    if (attemptStatusDescriptor != null) {
      queryParams.addAll(_queryParams('', 'attemptStatusDescriptor', attemptStatusDescriptor));
    }
    if (dualCreditInstitutionDescriptor != null) {
      queryParams.addAll(_queryParams('', 'dualCreditInstitutionDescriptor', dualCreditInstitutionDescriptor));
    }
    if (dualCreditTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'dualCreditTypeDescriptor', dualCreditTypeDescriptor));
    }
    if (repeatIdentifierDescriptor != null) {
      queryParams.addAll(_queryParams('', 'repeatIdentifierDescriptor', repeatIdentifierDescriptor));
    }
    if (dualCreditIndicator != null) {
      queryParams.addAll(_queryParams('', 'dualCreditIndicator', dualCreditIndicator));
    }
    if (dualHighSchoolCreditIndicator != null) {
      queryParams.addAll(_queryParams('', 'dualHighSchoolCreditIndicator', dualHighSchoolCreditIndicator));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (homeroomIndicator != null) {
      queryParams.addAll(_queryParams('', 'homeroomIndicator', homeroomIndicator));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (teacherStudentDataLinkExclusion != null) {
      queryParams.addAll(_queryParams('', 'teacherStudentDataLinkExclusion', teacherStudentDataLinkExclusion));
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
  ///   Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [String] localCourseCode:
  ///   The local code assigned by the School that identifies the course offering provided for the instruction of students.
  ///
  /// * [int] schoolId:
  ///   The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
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
  /// * [int] dualCreditEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] attemptStatusDescriptor:
  ///   An indication of the student's completion status for the section.
  ///
  /// * [String] dualCreditInstitutionDescriptor:
  ///   Descriptor for the postsecondary institution offering college credit. This descriptor may be used to select a postsecondary institution that is not defined as an education organization, and/or select a general type of postsecondary institution.
  ///
  /// * [String] dualCreditTypeDescriptor:
  ///   For a student taking a dual credit course in a college or high school setting, indicates the type of dual credit program.
  ///
  /// * [String] repeatIdentifierDescriptor:
  ///   An indication as to whether a student has previously taken a given course.
  ///
  /// * [bool] dualCreditIndicator:
  ///   Indicates whether the student assigned to the section is to receive dual credit upon successful completion.
  ///
  /// * [bool] dualHighSchoolCreditIndicator:
  ///   Indicates whether successful completion of the course will result in credits toward high school graduation.
  ///
  /// * [DateTime] endDate:
  ///   Month, day, and year of the withdrawal or exit of the student from the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [bool] homeroomIndicator:
  ///   Indicates the section is the student's homeroom. Homeroom period may the convention for taking daily attendance.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] teacherStudentDataLinkExclusion:
  ///   Indicates that the student-section combination is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<List<EdFiStudentSectionAssociation>?> getStudentSectionAssociations({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, DateTime? beginDate, String? localCourseCode, int? schoolId, int? schoolYear, String? sectionIdentifier, String? sessionName, String? studentUniqueId, int? dualCreditEducationOrganizationId, String? attemptStatusDescriptor, String? dualCreditInstitutionDescriptor, String? dualCreditTypeDescriptor, String? repeatIdentifierDescriptor, bool? dualCreditIndicator, bool? dualHighSchoolCreditIndicator, DateTime? endDate, bool? homeroomIndicator, String? id, bool? teacherStudentDataLinkExclusion, bool? useSnapshot, }) async {
    final response = await getStudentSectionAssociationsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, beginDate: beginDate, localCourseCode: localCourseCode, schoolId: schoolId, schoolYear: schoolYear, sectionIdentifier: sectionIdentifier, sessionName: sessionName, studentUniqueId: studentUniqueId, dualCreditEducationOrganizationId: dualCreditEducationOrganizationId, attemptStatusDescriptor: attemptStatusDescriptor, dualCreditInstitutionDescriptor: dualCreditInstitutionDescriptor, dualCreditTypeDescriptor: dualCreditTypeDescriptor, repeatIdentifierDescriptor: repeatIdentifierDescriptor, dualCreditIndicator: dualCreditIndicator, dualHighSchoolCreditIndicator: dualHighSchoolCreditIndicator, endDate: endDate, homeroomIndicator: homeroomIndicator, id: id, teacherStudentDataLinkExclusion: teacherStudentDataLinkExclusion, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiStudentSectionAssociation>') as List)
        .cast<EdFiStudentSectionAssociation>()
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
  Future<Response> getStudentSectionAssociationsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentSectionAssociations/{id}'
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
  Future<EdFiStudentSectionAssociation?> getStudentSectionAssociationsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getStudentSectionAssociationsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiStudentSectionAssociation',) as EdFiStudentSectionAssociation;
    
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
  ///   Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [String] localCourseCode:
  ///   The local code assigned by the School that identifies the course offering provided for the instruction of students.
  ///
  /// * [int] schoolId:
  ///   The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
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
  /// * [int] dualCreditEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] attemptStatusDescriptor:
  ///   An indication of the student's completion status for the section.
  ///
  /// * [String] dualCreditInstitutionDescriptor:
  ///   Descriptor for the postsecondary institution offering college credit. This descriptor may be used to select a postsecondary institution that is not defined as an education organization, and/or select a general type of postsecondary institution.
  ///
  /// * [String] dualCreditTypeDescriptor:
  ///   For a student taking a dual credit course in a college or high school setting, indicates the type of dual credit program.
  ///
  /// * [String] repeatIdentifierDescriptor:
  ///   An indication as to whether a student has previously taken a given course.
  ///
  /// * [bool] dualCreditIndicator:
  ///   Indicates whether the student assigned to the section is to receive dual credit upon successful completion.
  ///
  /// * [bool] dualHighSchoolCreditIndicator:
  ///   Indicates whether successful completion of the course will result in credits toward high school graduation.
  ///
  /// * [DateTime] endDate:
  ///   Month, day, and year of the withdrawal or exit of the student from the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [bool] homeroomIndicator:
  ///   Indicates the section is the student's homeroom. Homeroom period may the convention for taking daily attendance.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] teacherStudentDataLinkExclusion:
  ///   Indicates that the student-section combination is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getStudentSectionAssociationsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, DateTime? beginDate, String? localCourseCode, int? schoolId, int? schoolYear, String? sectionIdentifier, String? sessionName, String? studentUniqueId, int? dualCreditEducationOrganizationId, String? attemptStatusDescriptor, String? dualCreditInstitutionDescriptor, String? dualCreditTypeDescriptor, String? repeatIdentifierDescriptor, bool? dualCreditIndicator, bool? dualHighSchoolCreditIndicator, DateTime? endDate, bool? homeroomIndicator, String? id, bool? teacherStudentDataLinkExclusion, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentSectionAssociations/partitions';

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
    if (localCourseCode != null) {
      queryParams.addAll(_queryParams('', 'localCourseCode', localCourseCode));
    }
    if (schoolId != null) {
      queryParams.addAll(_queryParams('', 'schoolId', schoolId));
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
    if (dualCreditEducationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'dualCreditEducationOrganizationId', dualCreditEducationOrganizationId));
    }
    if (attemptStatusDescriptor != null) {
      queryParams.addAll(_queryParams('', 'attemptStatusDescriptor', attemptStatusDescriptor));
    }
    if (dualCreditInstitutionDescriptor != null) {
      queryParams.addAll(_queryParams('', 'dualCreditInstitutionDescriptor', dualCreditInstitutionDescriptor));
    }
    if (dualCreditTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'dualCreditTypeDescriptor', dualCreditTypeDescriptor));
    }
    if (repeatIdentifierDescriptor != null) {
      queryParams.addAll(_queryParams('', 'repeatIdentifierDescriptor', repeatIdentifierDescriptor));
    }
    if (dualCreditIndicator != null) {
      queryParams.addAll(_queryParams('', 'dualCreditIndicator', dualCreditIndicator));
    }
    if (dualHighSchoolCreditIndicator != null) {
      queryParams.addAll(_queryParams('', 'dualHighSchoolCreditIndicator', dualHighSchoolCreditIndicator));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (homeroomIndicator != null) {
      queryParams.addAll(_queryParams('', 'homeroomIndicator', homeroomIndicator));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (teacherStudentDataLinkExclusion != null) {
      queryParams.addAll(_queryParams('', 'teacherStudentDataLinkExclusion', teacherStudentDataLinkExclusion));
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
  ///   Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [String] localCourseCode:
  ///   The local code assigned by the School that identifies the course offering provided for the instruction of students.
  ///
  /// * [int] schoolId:
  ///   The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
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
  /// * [int] dualCreditEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] attemptStatusDescriptor:
  ///   An indication of the student's completion status for the section.
  ///
  /// * [String] dualCreditInstitutionDescriptor:
  ///   Descriptor for the postsecondary institution offering college credit. This descriptor may be used to select a postsecondary institution that is not defined as an education organization, and/or select a general type of postsecondary institution.
  ///
  /// * [String] dualCreditTypeDescriptor:
  ///   For a student taking a dual credit course in a college or high school setting, indicates the type of dual credit program.
  ///
  /// * [String] repeatIdentifierDescriptor:
  ///   An indication as to whether a student has previously taken a given course.
  ///
  /// * [bool] dualCreditIndicator:
  ///   Indicates whether the student assigned to the section is to receive dual credit upon successful completion.
  ///
  /// * [bool] dualHighSchoolCreditIndicator:
  ///   Indicates whether successful completion of the course will result in credits toward high school graduation.
  ///
  /// * [DateTime] endDate:
  ///   Month, day, and year of the withdrawal or exit of the student from the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [bool] homeroomIndicator:
  ///   Indicates the section is the student's homeroom. Homeroom period may the convention for taking daily attendance.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] teacherStudentDataLinkExclusion:
  ///   Indicates that the student-section combination is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<GetAcademicWeeksPartitions200Response?> getStudentSectionAssociationsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, DateTime? beginDate, String? localCourseCode, int? schoolId, int? schoolYear, String? sectionIdentifier, String? sessionName, String? studentUniqueId, int? dualCreditEducationOrganizationId, String? attemptStatusDescriptor, String? dualCreditInstitutionDescriptor, String? dualCreditTypeDescriptor, String? repeatIdentifierDescriptor, bool? dualCreditIndicator, bool? dualHighSchoolCreditIndicator, DateTime? endDate, bool? homeroomIndicator, String? id, bool? teacherStudentDataLinkExclusion, bool? useSnapshot, }) async {
    final response = await getStudentSectionAssociationsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, beginDate: beginDate, localCourseCode: localCourseCode, schoolId: schoolId, schoolYear: schoolYear, sectionIdentifier: sectionIdentifier, sessionName: sessionName, studentUniqueId: studentUniqueId, dualCreditEducationOrganizationId: dualCreditEducationOrganizationId, attemptStatusDescriptor: attemptStatusDescriptor, dualCreditInstitutionDescriptor: dualCreditInstitutionDescriptor, dualCreditTypeDescriptor: dualCreditTypeDescriptor, repeatIdentifierDescriptor: repeatIdentifierDescriptor, dualCreditIndicator: dualCreditIndicator, dualHighSchoolCreditIndicator: dualHighSchoolCreditIndicator, endDate: endDate, homeroomIndicator: homeroomIndicator, id: id, teacherStudentDataLinkExclusion: teacherStudentDataLinkExclusion, useSnapshot: useSnapshot, );
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
  Future<Response> keyChangesStudentSectionAssociationsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentSectionAssociations/keyChanges';

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
  Future<List<TrackedChangesEdFiStudentSectionAssociationKeyChange>?> keyChangesStudentSectionAssociations({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesStudentSectionAssociationsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStudentSectionAssociationKeyChange>') as List)
        .cast<TrackedChangesEdFiStudentSectionAssociationKeyChange>()
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
  /// * [EdFiStudentSectionAssociation] edFiStudentSectionAssociation (required):
  ///   The JSON representation of the \"studentSectionAssociation\" resource to be created or updated.
  Future<Response> postStudentSectionAssociationWithHttpInfo(EdFiStudentSectionAssociation edFiStudentSectionAssociation,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentSectionAssociations';

    // ignore: prefer_final_locals
    Object? postBody = edFiStudentSectionAssociation;

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
  /// * [EdFiStudentSectionAssociation] edFiStudentSectionAssociation (required):
  ///   The JSON representation of the \"studentSectionAssociation\" resource to be created or updated.
  Future<void> postStudentSectionAssociation(EdFiStudentSectionAssociation edFiStudentSectionAssociation,) async {
    final response = await postStudentSectionAssociationWithHttpInfo(edFiStudentSectionAssociation,);
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
  /// * [EdFiStudentSectionAssociation] edFiStudentSectionAssociation (required):
  ///   The JSON representation of the \"studentSectionAssociation\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putStudentSectionAssociationWithHttpInfo(String id, EdFiStudentSectionAssociation edFiStudentSectionAssociation, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentSectionAssociations/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiStudentSectionAssociation;

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
  /// * [EdFiStudentSectionAssociation] edFiStudentSectionAssociation (required):
  ///   The JSON representation of the \"studentSectionAssociation\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putStudentSectionAssociation(String id, EdFiStudentSectionAssociation edFiStudentSectionAssociation, { String? ifMatch, }) async {
    final response = await putStudentSectionAssociationWithHttpInfo(id, edFiStudentSectionAssociation,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
