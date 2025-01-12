//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SectionsApi {
  SectionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteSectionByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/sections/{id}'
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
  Future<void> deleteSectionById(String id, { String? ifMatch, }) async {
    final response = await deleteSectionByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesSectionsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/sections/deletes';

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
  Future<List<TrackedChangesEdFiSectionDelete>?> deletesSections({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesSectionsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiSectionDelete>') as List)
        .cast<TrackedChangesEdFiSectionDelete>()
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
  /// * [String] sectionIdentifier:
  ///   The local identifier assigned to a section.
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
  /// * [String] sessionName:
  ///   The identifier for the calendar for the academic session.
  ///
  /// * [String] locationClassroomIdentificationCode:
  ///   A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.
  ///
  /// * [int] locationSchoolId:
  ///   The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [String] availableCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] educationalEnvironmentDescriptor:
  ///   The setting in which a student receives education and related services.
  ///
  /// * [String] instructionLanguageDescriptor:
  ///   The primary language of instruction. If omitted, English is assumed.
  ///
  /// * [String] mediumOfInstructionDescriptor:
  ///   The media through which teachers provide instruction to students and students and teachers communicate about instructional matters.
  ///
  /// * [String] populationServedDescriptor:
  ///   The type of students the section is offered and tailored to.
  ///
  /// * [String] sectionTypeDescriptor:
  ///   Specifies whether the section is for attendance only, credit only, or both.
  ///
  /// * [double] availableCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] availableCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] officialAttendancePeriod:
  ///   Indicator of whether this section is used for official daily attendance. Alternatively, official daily attendance may be tied to a class period.
  ///
  /// * [String] sectionName:
  ///   A locally-defined name for the section, generally created to make the section more recognizable in informal contexts and generally distinct from the section identifier.
  ///
  /// * [int] sequenceOfCourse:
  ///   When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getSectionsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? sectionIdentifier, String? localCourseCode, int? schoolId, int? schoolYear, String? sessionName, String? locationClassroomIdentificationCode, int? locationSchoolId, String? availableCreditTypeDescriptor, String? educationalEnvironmentDescriptor, String? instructionLanguageDescriptor, String? mediumOfInstructionDescriptor, String? populationServedDescriptor, String? sectionTypeDescriptor, double? availableCreditConversion, double? availableCredits, String? id, bool? officialAttendancePeriod, String? sectionName, int? sequenceOfCourse, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/sections';

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
    if (sectionIdentifier != null) {
      queryParams.addAll(_queryParams('', 'sectionIdentifier', sectionIdentifier));
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
    if (sessionName != null) {
      queryParams.addAll(_queryParams('', 'sessionName', sessionName));
    }
    if (locationClassroomIdentificationCode != null) {
      queryParams.addAll(_queryParams('', 'locationClassroomIdentificationCode', locationClassroomIdentificationCode));
    }
    if (locationSchoolId != null) {
      queryParams.addAll(_queryParams('', 'locationSchoolId', locationSchoolId));
    }
    if (availableCreditTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'availableCreditTypeDescriptor', availableCreditTypeDescriptor));
    }
    if (educationalEnvironmentDescriptor != null) {
      queryParams.addAll(_queryParams('', 'educationalEnvironmentDescriptor', educationalEnvironmentDescriptor));
    }
    if (instructionLanguageDescriptor != null) {
      queryParams.addAll(_queryParams('', 'instructionLanguageDescriptor', instructionLanguageDescriptor));
    }
    if (mediumOfInstructionDescriptor != null) {
      queryParams.addAll(_queryParams('', 'mediumOfInstructionDescriptor', mediumOfInstructionDescriptor));
    }
    if (populationServedDescriptor != null) {
      queryParams.addAll(_queryParams('', 'populationServedDescriptor', populationServedDescriptor));
    }
    if (sectionTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sectionTypeDescriptor', sectionTypeDescriptor));
    }
    if (availableCreditConversion != null) {
      queryParams.addAll(_queryParams('', 'availableCreditConversion', availableCreditConversion));
    }
    if (availableCredits != null) {
      queryParams.addAll(_queryParams('', 'availableCredits', availableCredits));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (officialAttendancePeriod != null) {
      queryParams.addAll(_queryParams('', 'officialAttendancePeriod', officialAttendancePeriod));
    }
    if (sectionName != null) {
      queryParams.addAll(_queryParams('', 'sectionName', sectionName));
    }
    if (sequenceOfCourse != null) {
      queryParams.addAll(_queryParams('', 'sequenceOfCourse', sequenceOfCourse));
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
  /// * [String] sectionIdentifier:
  ///   The local identifier assigned to a section.
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
  /// * [String] sessionName:
  ///   The identifier for the calendar for the academic session.
  ///
  /// * [String] locationClassroomIdentificationCode:
  ///   A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.
  ///
  /// * [int] locationSchoolId:
  ///   The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [String] availableCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] educationalEnvironmentDescriptor:
  ///   The setting in which a student receives education and related services.
  ///
  /// * [String] instructionLanguageDescriptor:
  ///   The primary language of instruction. If omitted, English is assumed.
  ///
  /// * [String] mediumOfInstructionDescriptor:
  ///   The media through which teachers provide instruction to students and students and teachers communicate about instructional matters.
  ///
  /// * [String] populationServedDescriptor:
  ///   The type of students the section is offered and tailored to.
  ///
  /// * [String] sectionTypeDescriptor:
  ///   Specifies whether the section is for attendance only, credit only, or both.
  ///
  /// * [double] availableCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] availableCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] officialAttendancePeriod:
  ///   Indicator of whether this section is used for official daily attendance. Alternatively, official daily attendance may be tied to a class period.
  ///
  /// * [String] sectionName:
  ///   A locally-defined name for the section, generally created to make the section more recognizable in informal contexts and generally distinct from the section identifier.
  ///
  /// * [int] sequenceOfCourse:
  ///   When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<List<EdFiSection>?> getSections({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? sectionIdentifier, String? localCourseCode, int? schoolId, int? schoolYear, String? sessionName, String? locationClassroomIdentificationCode, int? locationSchoolId, String? availableCreditTypeDescriptor, String? educationalEnvironmentDescriptor, String? instructionLanguageDescriptor, String? mediumOfInstructionDescriptor, String? populationServedDescriptor, String? sectionTypeDescriptor, double? availableCreditConversion, double? availableCredits, String? id, bool? officialAttendancePeriod, String? sectionName, int? sequenceOfCourse, bool? useSnapshot, }) async {
    final response = await getSectionsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, sectionIdentifier: sectionIdentifier, localCourseCode: localCourseCode, schoolId: schoolId, schoolYear: schoolYear, sessionName: sessionName, locationClassroomIdentificationCode: locationClassroomIdentificationCode, locationSchoolId: locationSchoolId, availableCreditTypeDescriptor: availableCreditTypeDescriptor, educationalEnvironmentDescriptor: educationalEnvironmentDescriptor, instructionLanguageDescriptor: instructionLanguageDescriptor, mediumOfInstructionDescriptor: mediumOfInstructionDescriptor, populationServedDescriptor: populationServedDescriptor, sectionTypeDescriptor: sectionTypeDescriptor, availableCreditConversion: availableCreditConversion, availableCredits: availableCredits, id: id, officialAttendancePeriod: officialAttendancePeriod, sectionName: sectionName, sequenceOfCourse: sequenceOfCourse, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiSection>') as List)
        .cast<EdFiSection>()
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
  Future<Response> getSectionsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/sections/{id}'
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
  Future<EdFiSection?> getSectionsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getSectionsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiSection',) as EdFiSection;
    
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
  /// * [String] sectionIdentifier:
  ///   The local identifier assigned to a section.
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
  /// * [String] sessionName:
  ///   The identifier for the calendar for the academic session.
  ///
  /// * [String] locationClassroomIdentificationCode:
  ///   A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.
  ///
  /// * [int] locationSchoolId:
  ///   The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [String] availableCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] educationalEnvironmentDescriptor:
  ///   The setting in which a student receives education and related services.
  ///
  /// * [String] instructionLanguageDescriptor:
  ///   The primary language of instruction. If omitted, English is assumed.
  ///
  /// * [String] mediumOfInstructionDescriptor:
  ///   The media through which teachers provide instruction to students and students and teachers communicate about instructional matters.
  ///
  /// * [String] populationServedDescriptor:
  ///   The type of students the section is offered and tailored to.
  ///
  /// * [String] sectionTypeDescriptor:
  ///   Specifies whether the section is for attendance only, credit only, or both.
  ///
  /// * [double] availableCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] availableCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] officialAttendancePeriod:
  ///   Indicator of whether this section is used for official daily attendance. Alternatively, official daily attendance may be tied to a class period.
  ///
  /// * [String] sectionName:
  ///   A locally-defined name for the section, generally created to make the section more recognizable in informal contexts and generally distinct from the section identifier.
  ///
  /// * [int] sequenceOfCourse:
  ///   When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getSectionsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, String? sectionIdentifier, String? localCourseCode, int? schoolId, int? schoolYear, String? sessionName, String? locationClassroomIdentificationCode, int? locationSchoolId, String? availableCreditTypeDescriptor, String? educationalEnvironmentDescriptor, String? instructionLanguageDescriptor, String? mediumOfInstructionDescriptor, String? populationServedDescriptor, String? sectionTypeDescriptor, double? availableCreditConversion, double? availableCredits, String? id, bool? officialAttendancePeriod, String? sectionName, int? sequenceOfCourse, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/sections/partitions';

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
    if (sectionIdentifier != null) {
      queryParams.addAll(_queryParams('', 'sectionIdentifier', sectionIdentifier));
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
    if (sessionName != null) {
      queryParams.addAll(_queryParams('', 'sessionName', sessionName));
    }
    if (locationClassroomIdentificationCode != null) {
      queryParams.addAll(_queryParams('', 'locationClassroomIdentificationCode', locationClassroomIdentificationCode));
    }
    if (locationSchoolId != null) {
      queryParams.addAll(_queryParams('', 'locationSchoolId', locationSchoolId));
    }
    if (availableCreditTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'availableCreditTypeDescriptor', availableCreditTypeDescriptor));
    }
    if (educationalEnvironmentDescriptor != null) {
      queryParams.addAll(_queryParams('', 'educationalEnvironmentDescriptor', educationalEnvironmentDescriptor));
    }
    if (instructionLanguageDescriptor != null) {
      queryParams.addAll(_queryParams('', 'instructionLanguageDescriptor', instructionLanguageDescriptor));
    }
    if (mediumOfInstructionDescriptor != null) {
      queryParams.addAll(_queryParams('', 'mediumOfInstructionDescriptor', mediumOfInstructionDescriptor));
    }
    if (populationServedDescriptor != null) {
      queryParams.addAll(_queryParams('', 'populationServedDescriptor', populationServedDescriptor));
    }
    if (sectionTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sectionTypeDescriptor', sectionTypeDescriptor));
    }
    if (availableCreditConversion != null) {
      queryParams.addAll(_queryParams('', 'availableCreditConversion', availableCreditConversion));
    }
    if (availableCredits != null) {
      queryParams.addAll(_queryParams('', 'availableCredits', availableCredits));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (officialAttendancePeriod != null) {
      queryParams.addAll(_queryParams('', 'officialAttendancePeriod', officialAttendancePeriod));
    }
    if (sectionName != null) {
      queryParams.addAll(_queryParams('', 'sectionName', sectionName));
    }
    if (sequenceOfCourse != null) {
      queryParams.addAll(_queryParams('', 'sequenceOfCourse', sequenceOfCourse));
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
  /// * [String] sectionIdentifier:
  ///   The local identifier assigned to a section.
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
  /// * [String] sessionName:
  ///   The identifier for the calendar for the academic session.
  ///
  /// * [String] locationClassroomIdentificationCode:
  ///   A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.
  ///
  /// * [int] locationSchoolId:
  ///   The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [String] availableCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] educationalEnvironmentDescriptor:
  ///   The setting in which a student receives education and related services.
  ///
  /// * [String] instructionLanguageDescriptor:
  ///   The primary language of instruction. If omitted, English is assumed.
  ///
  /// * [String] mediumOfInstructionDescriptor:
  ///   The media through which teachers provide instruction to students and students and teachers communicate about instructional matters.
  ///
  /// * [String] populationServedDescriptor:
  ///   The type of students the section is offered and tailored to.
  ///
  /// * [String] sectionTypeDescriptor:
  ///   Specifies whether the section is for attendance only, credit only, or both.
  ///
  /// * [double] availableCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] availableCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] officialAttendancePeriod:
  ///   Indicator of whether this section is used for official daily attendance. Alternatively, official daily attendance may be tied to a class period.
  ///
  /// * [String] sectionName:
  ///   A locally-defined name for the section, generally created to make the section more recognizable in informal contexts and generally distinct from the section identifier.
  ///
  /// * [int] sequenceOfCourse:
  ///   When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<GetAcademicWeeksPartitions200Response?> getSectionsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, String? sectionIdentifier, String? localCourseCode, int? schoolId, int? schoolYear, String? sessionName, String? locationClassroomIdentificationCode, int? locationSchoolId, String? availableCreditTypeDescriptor, String? educationalEnvironmentDescriptor, String? instructionLanguageDescriptor, String? mediumOfInstructionDescriptor, String? populationServedDescriptor, String? sectionTypeDescriptor, double? availableCreditConversion, double? availableCredits, String? id, bool? officialAttendancePeriod, String? sectionName, int? sequenceOfCourse, bool? useSnapshot, }) async {
    final response = await getSectionsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, sectionIdentifier: sectionIdentifier, localCourseCode: localCourseCode, schoolId: schoolId, schoolYear: schoolYear, sessionName: sessionName, locationClassroomIdentificationCode: locationClassroomIdentificationCode, locationSchoolId: locationSchoolId, availableCreditTypeDescriptor: availableCreditTypeDescriptor, educationalEnvironmentDescriptor: educationalEnvironmentDescriptor, instructionLanguageDescriptor: instructionLanguageDescriptor, mediumOfInstructionDescriptor: mediumOfInstructionDescriptor, populationServedDescriptor: populationServedDescriptor, sectionTypeDescriptor: sectionTypeDescriptor, availableCreditConversion: availableCreditConversion, availableCredits: availableCredits, id: id, officialAttendancePeriod: officialAttendancePeriod, sectionName: sectionName, sequenceOfCourse: sequenceOfCourse, useSnapshot: useSnapshot, );
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
  Future<Response> keyChangesSectionsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/sections/keyChanges';

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
  Future<List<TrackedChangesEdFiSectionKeyChange>?> keyChangesSections({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesSectionsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiSectionKeyChange>') as List)
        .cast<TrackedChangesEdFiSectionKeyChange>()
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
  /// * [EdFiSection] edFiSection (required):
  ///   The JSON representation of the \"section\" resource to be created or updated.
  Future<Response> postSectionWithHttpInfo(EdFiSection edFiSection,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/sections';

    // ignore: prefer_final_locals
    Object? postBody = edFiSection;

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
  /// * [EdFiSection] edFiSection (required):
  ///   The JSON representation of the \"section\" resource to be created or updated.
  Future<void> postSection(EdFiSection edFiSection,) async {
    final response = await postSectionWithHttpInfo(edFiSection,);
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
  /// * [EdFiSection] edFiSection (required):
  ///   The JSON representation of the \"section\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putSectionWithHttpInfo(String id, EdFiSection edFiSection, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/sections/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiSection;

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
  /// * [EdFiSection] edFiSection (required):
  ///   The JSON representation of the \"section\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putSection(String id, EdFiSection edFiSection, { String? ifMatch, }) async {
    final response = await putSectionWithHttpInfo(id, edFiSection,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
