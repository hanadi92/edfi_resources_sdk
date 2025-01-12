//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CourseTranscriptsApi {
  CourseTranscriptsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteCourseTranscriptByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/courseTranscripts/{id}'
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
  Future<void> deleteCourseTranscriptById(String id, { String? ifMatch, }) async {
    final response = await deleteCourseTranscriptByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesCourseTranscriptsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/courseTranscripts/deletes';

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
  Future<List<TrackedChangesEdFiCourseTranscriptDelete>?> deletesCourseTranscripts({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesCourseTranscriptsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiCourseTranscriptDelete>') as List)
        .cast<TrackedChangesEdFiCourseTranscriptDelete>()
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
  /// * [String] courseAttemptResultDescriptor:
  ///   The result from the student's attempt to take the course.
  ///
  /// * [String] courseCode:
  ///   A unique alphanumeric code assigned to a course.
  ///
  /// * [int] courseEducationOrganizationId:
  ///   The identifier assigned to an education organization.
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
  /// * [String] termDescriptor:
  ///   The term for the session during the school year.
  ///
  /// * [int] externalEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] responsibleTeacherStaffUniqueId:
  ///   A unique alphanumeric code assigned to a responsibleteacherstaff.
  ///
  /// * [String] courseRepeatCodeDescriptor:
  ///   Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student's academic grade average.
  ///
  /// * [String] attemptedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] earnedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] whenTakenGradeLevelDescriptor:
  ///   Student's grade level at time of course.
  ///
  /// * [String] methodCreditEarnedDescriptor:
  ///   The method the credits were earned.
  ///
  /// * [String] alternativeCourseTitle:
  ///   The descriptive name given to a course of study offered in the school, if different from the CourseTitle.
  ///
  /// * [String] assigningOrganizationIdentificationCode:
  ///   The organization code or name assigning the course identification code.
  ///
  /// * [double] attemptedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] attemptedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] courseCatalogURL:
  ///   The URL for the course catalog that defines the course identification code.
  ///
  /// * [String] courseTitle:
  ///   The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, language arts).
  ///
  /// * [double] earnedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] earnedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] externalEducationOrganizationNameOfInstitution:
  ///   Name of the external institution where the student completed the course; to be used only when the reference external education organization is not available.
  ///
  /// * [String] finalLetterGradeEarned:
  ///   The final indicator of student performance in a class as submitted by the instructor.
  ///
  /// * [double] finalNumericGradeEarned:
  ///   The final indicator of student performance in a class as submitted by the instructor.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] courseIdentificationSystemDescriptor:
  ///   A system that is used to identify the organization of subject matter and related learning experiences provided for the instruction of students.
  ///
  /// * [String] assigningOrganizationIdentificationCode2:
  ///   The organization code or name assigning the Identification Code.
  ///
  /// * [String] courseCatalogURL2:
  ///   The URL for the course catalog that defines the course identification code.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to a course by a school, school system, state, or other agency or entity. For multi-part course codes, concatenate the parts separated by a \"/\". For example, consider the following SCED code-    subject = 20 Math    course = 272 Geometry    level = G General    credits = 1.00   course sequence 1 of 1- would be entered as 20/272/G/1.00/1 of 1.
  Future<Response> getCourseTranscriptsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? courseAttemptResultDescriptor, String? courseCode, int? courseEducationOrganizationId, int? educationOrganizationId, int? schoolYear, String? studentUniqueId, String? termDescriptor, int? externalEducationOrganizationId, String? responsibleTeacherStaffUniqueId, String? courseRepeatCodeDescriptor, String? attemptedCreditTypeDescriptor, String? earnedCreditTypeDescriptor, String? whenTakenGradeLevelDescriptor, String? methodCreditEarnedDescriptor, String? alternativeCourseTitle, String? assigningOrganizationIdentificationCode, double? attemptedCreditConversion, double? attemptedCredits, String? courseCatalogURL, String? courseTitle, double? earnedCreditConversion, double? earnedCredits, String? externalEducationOrganizationNameOfInstitution, String? finalLetterGradeEarned, double? finalNumericGradeEarned, String? id, bool? useSnapshot, String? courseIdentificationSystemDescriptor, String? assigningOrganizationIdentificationCode2, String? courseCatalogURL2, String? identificationCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/courseTranscripts';

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
    if (courseAttemptResultDescriptor != null) {
      queryParams.addAll(_queryParams('', 'courseAttemptResultDescriptor', courseAttemptResultDescriptor));
    }
    if (courseCode != null) {
      queryParams.addAll(_queryParams('', 'courseCode', courseCode));
    }
    if (courseEducationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'courseEducationOrganizationId', courseEducationOrganizationId));
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
    if (termDescriptor != null) {
      queryParams.addAll(_queryParams('', 'termDescriptor', termDescriptor));
    }
    if (externalEducationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'externalEducationOrganizationId', externalEducationOrganizationId));
    }
    if (responsibleTeacherStaffUniqueId != null) {
      queryParams.addAll(_queryParams('', 'responsibleTeacherStaffUniqueId', responsibleTeacherStaffUniqueId));
    }
    if (courseRepeatCodeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'courseRepeatCodeDescriptor', courseRepeatCodeDescriptor));
    }
    if (attemptedCreditTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'attemptedCreditTypeDescriptor', attemptedCreditTypeDescriptor));
    }
    if (earnedCreditTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'earnedCreditTypeDescriptor', earnedCreditTypeDescriptor));
    }
    if (whenTakenGradeLevelDescriptor != null) {
      queryParams.addAll(_queryParams('', 'whenTakenGradeLevelDescriptor', whenTakenGradeLevelDescriptor));
    }
    if (methodCreditEarnedDescriptor != null) {
      queryParams.addAll(_queryParams('', 'methodCreditEarnedDescriptor', methodCreditEarnedDescriptor));
    }
    if (alternativeCourseTitle != null) {
      queryParams.addAll(_queryParams('', 'alternativeCourseTitle', alternativeCourseTitle));
    }
    if (assigningOrganizationIdentificationCode != null) {
      queryParams.addAll(_queryParams('', 'assigningOrganizationIdentificationCode', assigningOrganizationIdentificationCode));
    }
    if (attemptedCreditConversion != null) {
      queryParams.addAll(_queryParams('', 'attemptedCreditConversion', attemptedCreditConversion));
    }
    if (attemptedCredits != null) {
      queryParams.addAll(_queryParams('', 'attemptedCredits', attemptedCredits));
    }
    if (courseCatalogURL != null) {
      queryParams.addAll(_queryParams('', 'courseCatalogURL', courseCatalogURL));
    }
    if (courseTitle != null) {
      queryParams.addAll(_queryParams('', 'courseTitle', courseTitle));
    }
    if (earnedCreditConversion != null) {
      queryParams.addAll(_queryParams('', 'earnedCreditConversion', earnedCreditConversion));
    }
    if (earnedCredits != null) {
      queryParams.addAll(_queryParams('', 'earnedCredits', earnedCredits));
    }
    if (externalEducationOrganizationNameOfInstitution != null) {
      queryParams.addAll(_queryParams('', 'externalEducationOrganizationNameOfInstitution', externalEducationOrganizationNameOfInstitution));
    }
    if (finalLetterGradeEarned != null) {
      queryParams.addAll(_queryParams('', 'finalLetterGradeEarned', finalLetterGradeEarned));
    }
    if (finalNumericGradeEarned != null) {
      queryParams.addAll(_queryParams('', 'finalNumericGradeEarned', finalNumericGradeEarned));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (courseIdentificationSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'courseIdentificationSystemDescriptor', courseIdentificationSystemDescriptor));
    }
    if (assigningOrganizationIdentificationCode2 != null) {
      queryParams.addAll(_queryParams('', 'assigningOrganizationIdentificationCode', assigningOrganizationIdentificationCode2));
    }
    if (courseCatalogURL2 != null) {
      queryParams.addAll(_queryParams('', 'courseCatalogURL', courseCatalogURL2));
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
  /// * [String] courseAttemptResultDescriptor:
  ///   The result from the student's attempt to take the course.
  ///
  /// * [String] courseCode:
  ///   A unique alphanumeric code assigned to a course.
  ///
  /// * [int] courseEducationOrganizationId:
  ///   The identifier assigned to an education organization.
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
  /// * [String] termDescriptor:
  ///   The term for the session during the school year.
  ///
  /// * [int] externalEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] responsibleTeacherStaffUniqueId:
  ///   A unique alphanumeric code assigned to a responsibleteacherstaff.
  ///
  /// * [String] courseRepeatCodeDescriptor:
  ///   Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student's academic grade average.
  ///
  /// * [String] attemptedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] earnedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] whenTakenGradeLevelDescriptor:
  ///   Student's grade level at time of course.
  ///
  /// * [String] methodCreditEarnedDescriptor:
  ///   The method the credits were earned.
  ///
  /// * [String] alternativeCourseTitle:
  ///   The descriptive name given to a course of study offered in the school, if different from the CourseTitle.
  ///
  /// * [String] assigningOrganizationIdentificationCode:
  ///   The organization code or name assigning the course identification code.
  ///
  /// * [double] attemptedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] attemptedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] courseCatalogURL:
  ///   The URL for the course catalog that defines the course identification code.
  ///
  /// * [String] courseTitle:
  ///   The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, language arts).
  ///
  /// * [double] earnedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] earnedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] externalEducationOrganizationNameOfInstitution:
  ///   Name of the external institution where the student completed the course; to be used only when the reference external education organization is not available.
  ///
  /// * [String] finalLetterGradeEarned:
  ///   The final indicator of student performance in a class as submitted by the instructor.
  ///
  /// * [double] finalNumericGradeEarned:
  ///   The final indicator of student performance in a class as submitted by the instructor.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] courseIdentificationSystemDescriptor:
  ///   A system that is used to identify the organization of subject matter and related learning experiences provided for the instruction of students.
  ///
  /// * [String] assigningOrganizationIdentificationCode2:
  ///   The organization code or name assigning the Identification Code.
  ///
  /// * [String] courseCatalogURL2:
  ///   The URL for the course catalog that defines the course identification code.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to a course by a school, school system, state, or other agency or entity. For multi-part course codes, concatenate the parts separated by a \"/\". For example, consider the following SCED code-    subject = 20 Math    course = 272 Geometry    level = G General    credits = 1.00   course sequence 1 of 1- would be entered as 20/272/G/1.00/1 of 1.
  Future<List<EdFiCourseTranscript>?> getCourseTranscripts({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? courseAttemptResultDescriptor, String? courseCode, int? courseEducationOrganizationId, int? educationOrganizationId, int? schoolYear, String? studentUniqueId, String? termDescriptor, int? externalEducationOrganizationId, String? responsibleTeacherStaffUniqueId, String? courseRepeatCodeDescriptor, String? attemptedCreditTypeDescriptor, String? earnedCreditTypeDescriptor, String? whenTakenGradeLevelDescriptor, String? methodCreditEarnedDescriptor, String? alternativeCourseTitle, String? assigningOrganizationIdentificationCode, double? attemptedCreditConversion, double? attemptedCredits, String? courseCatalogURL, String? courseTitle, double? earnedCreditConversion, double? earnedCredits, String? externalEducationOrganizationNameOfInstitution, String? finalLetterGradeEarned, double? finalNumericGradeEarned, String? id, bool? useSnapshot, String? courseIdentificationSystemDescriptor, String? assigningOrganizationIdentificationCode2, String? courseCatalogURL2, String? identificationCode, }) async {
    final response = await getCourseTranscriptsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, courseAttemptResultDescriptor: courseAttemptResultDescriptor, courseCode: courseCode, courseEducationOrganizationId: courseEducationOrganizationId, educationOrganizationId: educationOrganizationId, schoolYear: schoolYear, studentUniqueId: studentUniqueId, termDescriptor: termDescriptor, externalEducationOrganizationId: externalEducationOrganizationId, responsibleTeacherStaffUniqueId: responsibleTeacherStaffUniqueId, courseRepeatCodeDescriptor: courseRepeatCodeDescriptor, attemptedCreditTypeDescriptor: attemptedCreditTypeDescriptor, earnedCreditTypeDescriptor: earnedCreditTypeDescriptor, whenTakenGradeLevelDescriptor: whenTakenGradeLevelDescriptor, methodCreditEarnedDescriptor: methodCreditEarnedDescriptor, alternativeCourseTitle: alternativeCourseTitle, assigningOrganizationIdentificationCode: assigningOrganizationIdentificationCode, attemptedCreditConversion: attemptedCreditConversion, attemptedCredits: attemptedCredits, courseCatalogURL: courseCatalogURL, courseTitle: courseTitle, earnedCreditConversion: earnedCreditConversion, earnedCredits: earnedCredits, externalEducationOrganizationNameOfInstitution: externalEducationOrganizationNameOfInstitution, finalLetterGradeEarned: finalLetterGradeEarned, finalNumericGradeEarned: finalNumericGradeEarned, id: id, useSnapshot: useSnapshot, courseIdentificationSystemDescriptor: courseIdentificationSystemDescriptor, assigningOrganizationIdentificationCode2: assigningOrganizationIdentificationCode2, courseCatalogURL2: courseCatalogURL2, identificationCode: identificationCode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiCourseTranscript>') as List)
        .cast<EdFiCourseTranscript>()
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
  Future<Response> getCourseTranscriptsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/courseTranscripts/{id}'
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
  Future<EdFiCourseTranscript?> getCourseTranscriptsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getCourseTranscriptsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiCourseTranscript',) as EdFiCourseTranscript;
    
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
  /// * [String] courseAttemptResultDescriptor:
  ///   The result from the student's attempt to take the course.
  ///
  /// * [String] courseCode:
  ///   A unique alphanumeric code assigned to a course.
  ///
  /// * [int] courseEducationOrganizationId:
  ///   The identifier assigned to an education organization.
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
  /// * [String] termDescriptor:
  ///   The term for the session during the school year.
  ///
  /// * [int] externalEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] responsibleTeacherStaffUniqueId:
  ///   A unique alphanumeric code assigned to a responsibleteacherstaff.
  ///
  /// * [String] courseRepeatCodeDescriptor:
  ///   Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student's academic grade average.
  ///
  /// * [String] attemptedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] earnedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] whenTakenGradeLevelDescriptor:
  ///   Student's grade level at time of course.
  ///
  /// * [String] methodCreditEarnedDescriptor:
  ///   The method the credits were earned.
  ///
  /// * [String] alternativeCourseTitle:
  ///   The descriptive name given to a course of study offered in the school, if different from the CourseTitle.
  ///
  /// * [String] assigningOrganizationIdentificationCode:
  ///   The organization code or name assigning the course identification code.
  ///
  /// * [double] attemptedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] attemptedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] courseCatalogURL:
  ///   The URL for the course catalog that defines the course identification code.
  ///
  /// * [String] courseTitle:
  ///   The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, language arts).
  ///
  /// * [double] earnedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] earnedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] externalEducationOrganizationNameOfInstitution:
  ///   Name of the external institution where the student completed the course; to be used only when the reference external education organization is not available.
  ///
  /// * [String] finalLetterGradeEarned:
  ///   The final indicator of student performance in a class as submitted by the instructor.
  ///
  /// * [double] finalNumericGradeEarned:
  ///   The final indicator of student performance in a class as submitted by the instructor.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] courseIdentificationSystemDescriptor:
  ///   A system that is used to identify the organization of subject matter and related learning experiences provided for the instruction of students.
  ///
  /// * [String] assigningOrganizationIdentificationCode2:
  ///   The organization code or name assigning the Identification Code.
  ///
  /// * [String] courseCatalogURL2:
  ///   The URL for the course catalog that defines the course identification code.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to a course by a school, school system, state, or other agency or entity. For multi-part course codes, concatenate the parts separated by a \"/\". For example, consider the following SCED code-    subject = 20 Math    course = 272 Geometry    level = G General    credits = 1.00   course sequence 1 of 1- would be entered as 20/272/G/1.00/1 of 1.
  Future<Response> getCourseTranscriptsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, String? courseAttemptResultDescriptor, String? courseCode, int? courseEducationOrganizationId, int? educationOrganizationId, int? schoolYear, String? studentUniqueId, String? termDescriptor, int? externalEducationOrganizationId, String? responsibleTeacherStaffUniqueId, String? courseRepeatCodeDescriptor, String? attemptedCreditTypeDescriptor, String? earnedCreditTypeDescriptor, String? whenTakenGradeLevelDescriptor, String? methodCreditEarnedDescriptor, String? alternativeCourseTitle, String? assigningOrganizationIdentificationCode, double? attemptedCreditConversion, double? attemptedCredits, String? courseCatalogURL, String? courseTitle, double? earnedCreditConversion, double? earnedCredits, String? externalEducationOrganizationNameOfInstitution, String? finalLetterGradeEarned, double? finalNumericGradeEarned, String? id, bool? useSnapshot, String? courseIdentificationSystemDescriptor, String? assigningOrganizationIdentificationCode2, String? courseCatalogURL2, String? identificationCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/courseTranscripts/partitions';

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
    if (courseAttemptResultDescriptor != null) {
      queryParams.addAll(_queryParams('', 'courseAttemptResultDescriptor', courseAttemptResultDescriptor));
    }
    if (courseCode != null) {
      queryParams.addAll(_queryParams('', 'courseCode', courseCode));
    }
    if (courseEducationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'courseEducationOrganizationId', courseEducationOrganizationId));
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
    if (termDescriptor != null) {
      queryParams.addAll(_queryParams('', 'termDescriptor', termDescriptor));
    }
    if (externalEducationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'externalEducationOrganizationId', externalEducationOrganizationId));
    }
    if (responsibleTeacherStaffUniqueId != null) {
      queryParams.addAll(_queryParams('', 'responsibleTeacherStaffUniqueId', responsibleTeacherStaffUniqueId));
    }
    if (courseRepeatCodeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'courseRepeatCodeDescriptor', courseRepeatCodeDescriptor));
    }
    if (attemptedCreditTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'attemptedCreditTypeDescriptor', attemptedCreditTypeDescriptor));
    }
    if (earnedCreditTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'earnedCreditTypeDescriptor', earnedCreditTypeDescriptor));
    }
    if (whenTakenGradeLevelDescriptor != null) {
      queryParams.addAll(_queryParams('', 'whenTakenGradeLevelDescriptor', whenTakenGradeLevelDescriptor));
    }
    if (methodCreditEarnedDescriptor != null) {
      queryParams.addAll(_queryParams('', 'methodCreditEarnedDescriptor', methodCreditEarnedDescriptor));
    }
    if (alternativeCourseTitle != null) {
      queryParams.addAll(_queryParams('', 'alternativeCourseTitle', alternativeCourseTitle));
    }
    if (assigningOrganizationIdentificationCode != null) {
      queryParams.addAll(_queryParams('', 'assigningOrganizationIdentificationCode', assigningOrganizationIdentificationCode));
    }
    if (attemptedCreditConversion != null) {
      queryParams.addAll(_queryParams('', 'attemptedCreditConversion', attemptedCreditConversion));
    }
    if (attemptedCredits != null) {
      queryParams.addAll(_queryParams('', 'attemptedCredits', attemptedCredits));
    }
    if (courseCatalogURL != null) {
      queryParams.addAll(_queryParams('', 'courseCatalogURL', courseCatalogURL));
    }
    if (courseTitle != null) {
      queryParams.addAll(_queryParams('', 'courseTitle', courseTitle));
    }
    if (earnedCreditConversion != null) {
      queryParams.addAll(_queryParams('', 'earnedCreditConversion', earnedCreditConversion));
    }
    if (earnedCredits != null) {
      queryParams.addAll(_queryParams('', 'earnedCredits', earnedCredits));
    }
    if (externalEducationOrganizationNameOfInstitution != null) {
      queryParams.addAll(_queryParams('', 'externalEducationOrganizationNameOfInstitution', externalEducationOrganizationNameOfInstitution));
    }
    if (finalLetterGradeEarned != null) {
      queryParams.addAll(_queryParams('', 'finalLetterGradeEarned', finalLetterGradeEarned));
    }
    if (finalNumericGradeEarned != null) {
      queryParams.addAll(_queryParams('', 'finalNumericGradeEarned', finalNumericGradeEarned));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (courseIdentificationSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'courseIdentificationSystemDescriptor', courseIdentificationSystemDescriptor));
    }
    if (assigningOrganizationIdentificationCode2 != null) {
      queryParams.addAll(_queryParams('', 'assigningOrganizationIdentificationCode', assigningOrganizationIdentificationCode2));
    }
    if (courseCatalogURL2 != null) {
      queryParams.addAll(_queryParams('', 'courseCatalogURL', courseCatalogURL2));
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
  /// * [String] courseAttemptResultDescriptor:
  ///   The result from the student's attempt to take the course.
  ///
  /// * [String] courseCode:
  ///   A unique alphanumeric code assigned to a course.
  ///
  /// * [int] courseEducationOrganizationId:
  ///   The identifier assigned to an education organization.
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
  /// * [String] termDescriptor:
  ///   The term for the session during the school year.
  ///
  /// * [int] externalEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] responsibleTeacherStaffUniqueId:
  ///   A unique alphanumeric code assigned to a responsibleteacherstaff.
  ///
  /// * [String] courseRepeatCodeDescriptor:
  ///   Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student's academic grade average.
  ///
  /// * [String] attemptedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] earnedCreditTypeDescriptor:
  ///   The type of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] whenTakenGradeLevelDescriptor:
  ///   Student's grade level at time of course.
  ///
  /// * [String] methodCreditEarnedDescriptor:
  ///   The method the credits were earned.
  ///
  /// * [String] alternativeCourseTitle:
  ///   The descriptive name given to a course of study offered in the school, if different from the CourseTitle.
  ///
  /// * [String] assigningOrganizationIdentificationCode:
  ///   The organization code or name assigning the course identification code.
  ///
  /// * [double] attemptedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] attemptedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] courseCatalogURL:
  ///   The URL for the course catalog that defines the course identification code.
  ///
  /// * [String] courseTitle:
  ///   The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, language arts).
  ///
  /// * [double] earnedCreditConversion:
  ///   Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// * [double] earnedCredits:
  ///   The value of credits or units of value awarded for the completion of a course.
  ///
  /// * [String] externalEducationOrganizationNameOfInstitution:
  ///   Name of the external institution where the student completed the course; to be used only when the reference external education organization is not available.
  ///
  /// * [String] finalLetterGradeEarned:
  ///   The final indicator of student performance in a class as submitted by the instructor.
  ///
  /// * [double] finalNumericGradeEarned:
  ///   The final indicator of student performance in a class as submitted by the instructor.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] courseIdentificationSystemDescriptor:
  ///   A system that is used to identify the organization of subject matter and related learning experiences provided for the instruction of students.
  ///
  /// * [String] assigningOrganizationIdentificationCode2:
  ///   The organization code or name assigning the Identification Code.
  ///
  /// * [String] courseCatalogURL2:
  ///   The URL for the course catalog that defines the course identification code.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to a course by a school, school system, state, or other agency or entity. For multi-part course codes, concatenate the parts separated by a \"/\". For example, consider the following SCED code-    subject = 20 Math    course = 272 Geometry    level = G General    credits = 1.00   course sequence 1 of 1- would be entered as 20/272/G/1.00/1 of 1.
  Future<GetAcademicWeeksPartitions200Response?> getCourseTranscriptsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, String? courseAttemptResultDescriptor, String? courseCode, int? courseEducationOrganizationId, int? educationOrganizationId, int? schoolYear, String? studentUniqueId, String? termDescriptor, int? externalEducationOrganizationId, String? responsibleTeacherStaffUniqueId, String? courseRepeatCodeDescriptor, String? attemptedCreditTypeDescriptor, String? earnedCreditTypeDescriptor, String? whenTakenGradeLevelDescriptor, String? methodCreditEarnedDescriptor, String? alternativeCourseTitle, String? assigningOrganizationIdentificationCode, double? attemptedCreditConversion, double? attemptedCredits, String? courseCatalogURL, String? courseTitle, double? earnedCreditConversion, double? earnedCredits, String? externalEducationOrganizationNameOfInstitution, String? finalLetterGradeEarned, double? finalNumericGradeEarned, String? id, bool? useSnapshot, String? courseIdentificationSystemDescriptor, String? assigningOrganizationIdentificationCode2, String? courseCatalogURL2, String? identificationCode, }) async {
    final response = await getCourseTranscriptsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, courseAttemptResultDescriptor: courseAttemptResultDescriptor, courseCode: courseCode, courseEducationOrganizationId: courseEducationOrganizationId, educationOrganizationId: educationOrganizationId, schoolYear: schoolYear, studentUniqueId: studentUniqueId, termDescriptor: termDescriptor, externalEducationOrganizationId: externalEducationOrganizationId, responsibleTeacherStaffUniqueId: responsibleTeacherStaffUniqueId, courseRepeatCodeDescriptor: courseRepeatCodeDescriptor, attemptedCreditTypeDescriptor: attemptedCreditTypeDescriptor, earnedCreditTypeDescriptor: earnedCreditTypeDescriptor, whenTakenGradeLevelDescriptor: whenTakenGradeLevelDescriptor, methodCreditEarnedDescriptor: methodCreditEarnedDescriptor, alternativeCourseTitle: alternativeCourseTitle, assigningOrganizationIdentificationCode: assigningOrganizationIdentificationCode, attemptedCreditConversion: attemptedCreditConversion, attemptedCredits: attemptedCredits, courseCatalogURL: courseCatalogURL, courseTitle: courseTitle, earnedCreditConversion: earnedCreditConversion, earnedCredits: earnedCredits, externalEducationOrganizationNameOfInstitution: externalEducationOrganizationNameOfInstitution, finalLetterGradeEarned: finalLetterGradeEarned, finalNumericGradeEarned: finalNumericGradeEarned, id: id, useSnapshot: useSnapshot, courseIdentificationSystemDescriptor: courseIdentificationSystemDescriptor, assigningOrganizationIdentificationCode2: assigningOrganizationIdentificationCode2, courseCatalogURL2: courseCatalogURL2, identificationCode: identificationCode, );
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
  Future<Response> keyChangesCourseTranscriptsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/courseTranscripts/keyChanges';

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
  Future<List<TrackedChangesEdFiCourseTranscriptKeyChange>?> keyChangesCourseTranscripts({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesCourseTranscriptsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiCourseTranscriptKeyChange>') as List)
        .cast<TrackedChangesEdFiCourseTranscriptKeyChange>()
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
  /// * [EdFiCourseTranscript] edFiCourseTranscript (required):
  ///   The JSON representation of the \"courseTranscript\" resource to be created or updated.
  Future<Response> postCourseTranscriptWithHttpInfo(EdFiCourseTranscript edFiCourseTranscript,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/courseTranscripts';

    // ignore: prefer_final_locals
    Object? postBody = edFiCourseTranscript;

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
  /// * [EdFiCourseTranscript] edFiCourseTranscript (required):
  ///   The JSON representation of the \"courseTranscript\" resource to be created or updated.
  Future<void> postCourseTranscript(EdFiCourseTranscript edFiCourseTranscript,) async {
    final response = await postCourseTranscriptWithHttpInfo(edFiCourseTranscript,);
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
  /// * [EdFiCourseTranscript] edFiCourseTranscript (required):
  ///   The JSON representation of the \"courseTranscript\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putCourseTranscriptWithHttpInfo(String id, EdFiCourseTranscript edFiCourseTranscript, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/courseTranscripts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiCourseTranscript;

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
  /// * [EdFiCourseTranscript] edFiCourseTranscript (required):
  ///   The JSON representation of the \"courseTranscript\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putCourseTranscript(String id, EdFiCourseTranscript edFiCourseTranscript, { String? ifMatch, }) async {
    final response = await putCourseTranscriptWithHttpInfo(id, edFiCourseTranscript,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
