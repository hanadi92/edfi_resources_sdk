//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StudentSpecialEducationProgramEligibilityAssociationsApi {
  StudentSpecialEducationProgramEligibilityAssociationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteStudentSpecialEducationProgramEligibilityAssociationByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentSpecialEducationProgramEligibilityAssociations/{id}'
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
  Future<void> deleteStudentSpecialEducationProgramEligibilityAssociationById(String id, { String? ifMatch, }) async {
    final response = await deleteStudentSpecialEducationProgramEligibilityAssociationByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesStudentSpecialEducationProgramEligibilityAssociationsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentSpecialEducationProgramEligibilityAssociations/deletes';

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
  Future<List<TrackedChangesEdFiStudentSpecialEducationProgramEligibilityAssociationDelete>?> deletesStudentSpecialEducationProgramEligibilityAssociations({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesStudentSpecialEducationProgramEligibilityAssociationsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStudentSpecialEducationProgramEligibilityAssociationDelete>') as List)
        .cast<TrackedChangesEdFiStudentSpecialEducationProgramEligibilityAssociationDelete>()
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
  /// * [DateTime] consentToEvaluationReceivedDate:
  ///   Indicates the date on which the local education agency received written consent for the evaluation from the student's parent or guardian. This is the first day of the evaluation timeframe.
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
  /// * [String] eligibilityDelayReasonDescriptor:
  ///   The reason why the eligibility determination was completed beyond the required timeframe.
  ///
  /// * [String] eligibilityEvaluationTypeDescriptor:
  ///   Indicates if this is an initial evaluation or a reevaluation.
  ///
  /// * [String] evaluationDelayReasonDescriptor:
  ///   Refers to the justification as to why the evaluation report was completed beyond the state-established timeframe. This descriptor field will have allowed reasons as descriptor values.
  ///
  /// * [String] ideaPartDescriptor:
  ///   Indicates if the evaluation is done under Part B IDEA or Part C IDEA.
  ///
  /// * [DateTime] consentToEvaluationDate:
  ///   The date on which the student's parent gave a consent (Parent Consent Date).
  ///
  /// * [DateTime] eligibilityConferenceDate:
  ///   The month, day, and year when the eligibility conference is held between the parent(s)/guardian(s) and the educational organization responsible staff member(s) to review and make decision on special education related services eligibility.
  ///
  /// * [DateTime] eligibilityDeterminationDate:
  ///   Indicates the month, day, and year the local education agency (LEA) held the admission, review, and dismissal committee meeting regarding the child's eligibility determination for special education and related services. An individualized education plan (IEP) would be developed and implemented for a child admitted into special education on this same date.
  ///
  /// * [DateTime] eligibilityEvaluationDate:
  ///   Indicates the month, day, and year when the written individual evaluation report was completed.
  ///
  /// * [bool] evaluationCompleteIndicator:
  ///   Indicates the evaluation completed status.
  ///
  /// * [int] evaluationDelayDays:
  ///   Indicates the number of student absences, if any, beginning the first instructional day following the date on which the local education agency (LEA) received written parental or guardian consent for the evaluation.
  ///
  /// * [String] evaluationLateReason:
  ///   Refers to additional information for delay in doing the evaluation.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] ideaIndicator:
  ///   Indicates whether or not the student was determined eligible as a result of an evaluation.
  ///
  /// * [DateTime] originalECIServicesDate:
  ///   The month, date, and year when an infant or toddler, from birth through age 2, began participating in the early childhood intervention (ECI) program.
  ///
  /// * [DateTime] transitionConferenceDate:
  ///   Indicates the month, day, and year when the transition conference was held (for a child receiving early childhood intervention (ECI) services) among the lead agency, the family, and the local education agency (LEA) where the child resides to discuss the child's potential eligibility for early childhood special education (ECSE) services.
  ///
  /// * [DateTime] transitionNotificationDate:
  ///   Indicates the month, day, and year the LEA Notification of Potentially Eligible for Special Education Services was sent by the early childhood intervention (ECI) contractor to the local education agency (LEA) to notify them that a child enrolled in ECI will shortly reach the age of eligibility for Part B services and the child is potentially eligible for services under Part B, early childhood special education (ECSE). The LEA Notification constitutes a referral to the LEA for an initial evaluation and eligibility determination of the child which the parent or guardian may opt out from the referral.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getStudentSpecialEducationProgramEligibilityAssociationsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, DateTime? consentToEvaluationReceivedDate, int? educationOrganizationId, int? programEducationOrganizationId, String? programName, String? programTypeDescriptor, String? studentUniqueId, String? eligibilityDelayReasonDescriptor, String? eligibilityEvaluationTypeDescriptor, String? evaluationDelayReasonDescriptor, String? ideaPartDescriptor, DateTime? consentToEvaluationDate, DateTime? eligibilityConferenceDate, DateTime? eligibilityDeterminationDate, DateTime? eligibilityEvaluationDate, bool? evaluationCompleteIndicator, int? evaluationDelayDays, String? evaluationLateReason, String? id, bool? ideaIndicator, DateTime? originalECIServicesDate, DateTime? transitionConferenceDate, DateTime? transitionNotificationDate, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentSpecialEducationProgramEligibilityAssociations';

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
    if (consentToEvaluationReceivedDate != null) {
      queryParams.addAll(_queryParams('', 'consentToEvaluationReceivedDate', consentToEvaluationReceivedDate));
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
    if (eligibilityDelayReasonDescriptor != null) {
      queryParams.addAll(_queryParams('', 'eligibilityDelayReasonDescriptor', eligibilityDelayReasonDescriptor));
    }
    if (eligibilityEvaluationTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'eligibilityEvaluationTypeDescriptor', eligibilityEvaluationTypeDescriptor));
    }
    if (evaluationDelayReasonDescriptor != null) {
      queryParams.addAll(_queryParams('', 'evaluationDelayReasonDescriptor', evaluationDelayReasonDescriptor));
    }
    if (ideaPartDescriptor != null) {
      queryParams.addAll(_queryParams('', 'ideaPartDescriptor', ideaPartDescriptor));
    }
    if (consentToEvaluationDate != null) {
      queryParams.addAll(_queryParams('', 'consentToEvaluationDate', consentToEvaluationDate));
    }
    if (eligibilityConferenceDate != null) {
      queryParams.addAll(_queryParams('', 'eligibilityConferenceDate', eligibilityConferenceDate));
    }
    if (eligibilityDeterminationDate != null) {
      queryParams.addAll(_queryParams('', 'eligibilityDeterminationDate', eligibilityDeterminationDate));
    }
    if (eligibilityEvaluationDate != null) {
      queryParams.addAll(_queryParams('', 'eligibilityEvaluationDate', eligibilityEvaluationDate));
    }
    if (evaluationCompleteIndicator != null) {
      queryParams.addAll(_queryParams('', 'evaluationCompleteIndicator', evaluationCompleteIndicator));
    }
    if (evaluationDelayDays != null) {
      queryParams.addAll(_queryParams('', 'evaluationDelayDays', evaluationDelayDays));
    }
    if (evaluationLateReason != null) {
      queryParams.addAll(_queryParams('', 'evaluationLateReason', evaluationLateReason));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (ideaIndicator != null) {
      queryParams.addAll(_queryParams('', 'ideaIndicator', ideaIndicator));
    }
    if (originalECIServicesDate != null) {
      queryParams.addAll(_queryParams('', 'originalECIServicesDate', originalECIServicesDate));
    }
    if (transitionConferenceDate != null) {
      queryParams.addAll(_queryParams('', 'transitionConferenceDate', transitionConferenceDate));
    }
    if (transitionNotificationDate != null) {
      queryParams.addAll(_queryParams('', 'transitionNotificationDate', transitionNotificationDate));
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
  /// * [DateTime] consentToEvaluationReceivedDate:
  ///   Indicates the date on which the local education agency received written consent for the evaluation from the student's parent or guardian. This is the first day of the evaluation timeframe.
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
  /// * [String] eligibilityDelayReasonDescriptor:
  ///   The reason why the eligibility determination was completed beyond the required timeframe.
  ///
  /// * [String] eligibilityEvaluationTypeDescriptor:
  ///   Indicates if this is an initial evaluation or a reevaluation.
  ///
  /// * [String] evaluationDelayReasonDescriptor:
  ///   Refers to the justification as to why the evaluation report was completed beyond the state-established timeframe. This descriptor field will have allowed reasons as descriptor values.
  ///
  /// * [String] ideaPartDescriptor:
  ///   Indicates if the evaluation is done under Part B IDEA or Part C IDEA.
  ///
  /// * [DateTime] consentToEvaluationDate:
  ///   The date on which the student's parent gave a consent (Parent Consent Date).
  ///
  /// * [DateTime] eligibilityConferenceDate:
  ///   The month, day, and year when the eligibility conference is held between the parent(s)/guardian(s) and the educational organization responsible staff member(s) to review and make decision on special education related services eligibility.
  ///
  /// * [DateTime] eligibilityDeterminationDate:
  ///   Indicates the month, day, and year the local education agency (LEA) held the admission, review, and dismissal committee meeting regarding the child's eligibility determination for special education and related services. An individualized education plan (IEP) would be developed and implemented for a child admitted into special education on this same date.
  ///
  /// * [DateTime] eligibilityEvaluationDate:
  ///   Indicates the month, day, and year when the written individual evaluation report was completed.
  ///
  /// * [bool] evaluationCompleteIndicator:
  ///   Indicates the evaluation completed status.
  ///
  /// * [int] evaluationDelayDays:
  ///   Indicates the number of student absences, if any, beginning the first instructional day following the date on which the local education agency (LEA) received written parental or guardian consent for the evaluation.
  ///
  /// * [String] evaluationLateReason:
  ///   Refers to additional information for delay in doing the evaluation.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] ideaIndicator:
  ///   Indicates whether or not the student was determined eligible as a result of an evaluation.
  ///
  /// * [DateTime] originalECIServicesDate:
  ///   The month, date, and year when an infant or toddler, from birth through age 2, began participating in the early childhood intervention (ECI) program.
  ///
  /// * [DateTime] transitionConferenceDate:
  ///   Indicates the month, day, and year when the transition conference was held (for a child receiving early childhood intervention (ECI) services) among the lead agency, the family, and the local education agency (LEA) where the child resides to discuss the child's potential eligibility for early childhood special education (ECSE) services.
  ///
  /// * [DateTime] transitionNotificationDate:
  ///   Indicates the month, day, and year the LEA Notification of Potentially Eligible for Special Education Services was sent by the early childhood intervention (ECI) contractor to the local education agency (LEA) to notify them that a child enrolled in ECI will shortly reach the age of eligibility for Part B services and the child is potentially eligible for services under Part B, early childhood special education (ECSE). The LEA Notification constitutes a referral to the LEA for an initial evaluation and eligibility determination of the child which the parent or guardian may opt out from the referral.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<List<EdFiStudentSpecialEducationProgramEligibilityAssociation>?> getStudentSpecialEducationProgramEligibilityAssociations({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, DateTime? consentToEvaluationReceivedDate, int? educationOrganizationId, int? programEducationOrganizationId, String? programName, String? programTypeDescriptor, String? studentUniqueId, String? eligibilityDelayReasonDescriptor, String? eligibilityEvaluationTypeDescriptor, String? evaluationDelayReasonDescriptor, String? ideaPartDescriptor, DateTime? consentToEvaluationDate, DateTime? eligibilityConferenceDate, DateTime? eligibilityDeterminationDate, DateTime? eligibilityEvaluationDate, bool? evaluationCompleteIndicator, int? evaluationDelayDays, String? evaluationLateReason, String? id, bool? ideaIndicator, DateTime? originalECIServicesDate, DateTime? transitionConferenceDate, DateTime? transitionNotificationDate, bool? useSnapshot, }) async {
    final response = await getStudentSpecialEducationProgramEligibilityAssociationsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, consentToEvaluationReceivedDate: consentToEvaluationReceivedDate, educationOrganizationId: educationOrganizationId, programEducationOrganizationId: programEducationOrganizationId, programName: programName, programTypeDescriptor: programTypeDescriptor, studentUniqueId: studentUniqueId, eligibilityDelayReasonDescriptor: eligibilityDelayReasonDescriptor, eligibilityEvaluationTypeDescriptor: eligibilityEvaluationTypeDescriptor, evaluationDelayReasonDescriptor: evaluationDelayReasonDescriptor, ideaPartDescriptor: ideaPartDescriptor, consentToEvaluationDate: consentToEvaluationDate, eligibilityConferenceDate: eligibilityConferenceDate, eligibilityDeterminationDate: eligibilityDeterminationDate, eligibilityEvaluationDate: eligibilityEvaluationDate, evaluationCompleteIndicator: evaluationCompleteIndicator, evaluationDelayDays: evaluationDelayDays, evaluationLateReason: evaluationLateReason, id: id, ideaIndicator: ideaIndicator, originalECIServicesDate: originalECIServicesDate, transitionConferenceDate: transitionConferenceDate, transitionNotificationDate: transitionNotificationDate, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiStudentSpecialEducationProgramEligibilityAssociation>') as List)
        .cast<EdFiStudentSpecialEducationProgramEligibilityAssociation>()
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
  Future<Response> getStudentSpecialEducationProgramEligibilityAssociationsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentSpecialEducationProgramEligibilityAssociations/{id}'
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
  Future<EdFiStudentSpecialEducationProgramEligibilityAssociation?> getStudentSpecialEducationProgramEligibilityAssociationsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getStudentSpecialEducationProgramEligibilityAssociationsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiStudentSpecialEducationProgramEligibilityAssociation',) as EdFiStudentSpecialEducationProgramEligibilityAssociation;
    
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
  /// * [DateTime] consentToEvaluationReceivedDate:
  ///   Indicates the date on which the local education agency received written consent for the evaluation from the student's parent or guardian. This is the first day of the evaluation timeframe.
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
  /// * [String] eligibilityDelayReasonDescriptor:
  ///   The reason why the eligibility determination was completed beyond the required timeframe.
  ///
  /// * [String] eligibilityEvaluationTypeDescriptor:
  ///   Indicates if this is an initial evaluation or a reevaluation.
  ///
  /// * [String] evaluationDelayReasonDescriptor:
  ///   Refers to the justification as to why the evaluation report was completed beyond the state-established timeframe. This descriptor field will have allowed reasons as descriptor values.
  ///
  /// * [String] ideaPartDescriptor:
  ///   Indicates if the evaluation is done under Part B IDEA or Part C IDEA.
  ///
  /// * [DateTime] consentToEvaluationDate:
  ///   The date on which the student's parent gave a consent (Parent Consent Date).
  ///
  /// * [DateTime] eligibilityConferenceDate:
  ///   The month, day, and year when the eligibility conference is held between the parent(s)/guardian(s) and the educational organization responsible staff member(s) to review and make decision on special education related services eligibility.
  ///
  /// * [DateTime] eligibilityDeterminationDate:
  ///   Indicates the month, day, and year the local education agency (LEA) held the admission, review, and dismissal committee meeting regarding the child's eligibility determination for special education and related services. An individualized education plan (IEP) would be developed and implemented for a child admitted into special education on this same date.
  ///
  /// * [DateTime] eligibilityEvaluationDate:
  ///   Indicates the month, day, and year when the written individual evaluation report was completed.
  ///
  /// * [bool] evaluationCompleteIndicator:
  ///   Indicates the evaluation completed status.
  ///
  /// * [int] evaluationDelayDays:
  ///   Indicates the number of student absences, if any, beginning the first instructional day following the date on which the local education agency (LEA) received written parental or guardian consent for the evaluation.
  ///
  /// * [String] evaluationLateReason:
  ///   Refers to additional information for delay in doing the evaluation.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] ideaIndicator:
  ///   Indicates whether or not the student was determined eligible as a result of an evaluation.
  ///
  /// * [DateTime] originalECIServicesDate:
  ///   The month, date, and year when an infant or toddler, from birth through age 2, began participating in the early childhood intervention (ECI) program.
  ///
  /// * [DateTime] transitionConferenceDate:
  ///   Indicates the month, day, and year when the transition conference was held (for a child receiving early childhood intervention (ECI) services) among the lead agency, the family, and the local education agency (LEA) where the child resides to discuss the child's potential eligibility for early childhood special education (ECSE) services.
  ///
  /// * [DateTime] transitionNotificationDate:
  ///   Indicates the month, day, and year the LEA Notification of Potentially Eligible for Special Education Services was sent by the early childhood intervention (ECI) contractor to the local education agency (LEA) to notify them that a child enrolled in ECI will shortly reach the age of eligibility for Part B services and the child is potentially eligible for services under Part B, early childhood special education (ECSE). The LEA Notification constitutes a referral to the LEA for an initial evaluation and eligibility determination of the child which the parent or guardian may opt out from the referral.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getStudentSpecialEducationProgramEligibilityAssociationsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, DateTime? consentToEvaluationReceivedDate, int? educationOrganizationId, int? programEducationOrganizationId, String? programName, String? programTypeDescriptor, String? studentUniqueId, String? eligibilityDelayReasonDescriptor, String? eligibilityEvaluationTypeDescriptor, String? evaluationDelayReasonDescriptor, String? ideaPartDescriptor, DateTime? consentToEvaluationDate, DateTime? eligibilityConferenceDate, DateTime? eligibilityDeterminationDate, DateTime? eligibilityEvaluationDate, bool? evaluationCompleteIndicator, int? evaluationDelayDays, String? evaluationLateReason, String? id, bool? ideaIndicator, DateTime? originalECIServicesDate, DateTime? transitionConferenceDate, DateTime? transitionNotificationDate, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentSpecialEducationProgramEligibilityAssociations/partitions';

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
    if (consentToEvaluationReceivedDate != null) {
      queryParams.addAll(_queryParams('', 'consentToEvaluationReceivedDate', consentToEvaluationReceivedDate));
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
    if (eligibilityDelayReasonDescriptor != null) {
      queryParams.addAll(_queryParams('', 'eligibilityDelayReasonDescriptor', eligibilityDelayReasonDescriptor));
    }
    if (eligibilityEvaluationTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'eligibilityEvaluationTypeDescriptor', eligibilityEvaluationTypeDescriptor));
    }
    if (evaluationDelayReasonDescriptor != null) {
      queryParams.addAll(_queryParams('', 'evaluationDelayReasonDescriptor', evaluationDelayReasonDescriptor));
    }
    if (ideaPartDescriptor != null) {
      queryParams.addAll(_queryParams('', 'ideaPartDescriptor', ideaPartDescriptor));
    }
    if (consentToEvaluationDate != null) {
      queryParams.addAll(_queryParams('', 'consentToEvaluationDate', consentToEvaluationDate));
    }
    if (eligibilityConferenceDate != null) {
      queryParams.addAll(_queryParams('', 'eligibilityConferenceDate', eligibilityConferenceDate));
    }
    if (eligibilityDeterminationDate != null) {
      queryParams.addAll(_queryParams('', 'eligibilityDeterminationDate', eligibilityDeterminationDate));
    }
    if (eligibilityEvaluationDate != null) {
      queryParams.addAll(_queryParams('', 'eligibilityEvaluationDate', eligibilityEvaluationDate));
    }
    if (evaluationCompleteIndicator != null) {
      queryParams.addAll(_queryParams('', 'evaluationCompleteIndicator', evaluationCompleteIndicator));
    }
    if (evaluationDelayDays != null) {
      queryParams.addAll(_queryParams('', 'evaluationDelayDays', evaluationDelayDays));
    }
    if (evaluationLateReason != null) {
      queryParams.addAll(_queryParams('', 'evaluationLateReason', evaluationLateReason));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (ideaIndicator != null) {
      queryParams.addAll(_queryParams('', 'ideaIndicator', ideaIndicator));
    }
    if (originalECIServicesDate != null) {
      queryParams.addAll(_queryParams('', 'originalECIServicesDate', originalECIServicesDate));
    }
    if (transitionConferenceDate != null) {
      queryParams.addAll(_queryParams('', 'transitionConferenceDate', transitionConferenceDate));
    }
    if (transitionNotificationDate != null) {
      queryParams.addAll(_queryParams('', 'transitionNotificationDate', transitionNotificationDate));
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
  /// * [DateTime] consentToEvaluationReceivedDate:
  ///   Indicates the date on which the local education agency received written consent for the evaluation from the student's parent or guardian. This is the first day of the evaluation timeframe.
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
  /// * [String] eligibilityDelayReasonDescriptor:
  ///   The reason why the eligibility determination was completed beyond the required timeframe.
  ///
  /// * [String] eligibilityEvaluationTypeDescriptor:
  ///   Indicates if this is an initial evaluation or a reevaluation.
  ///
  /// * [String] evaluationDelayReasonDescriptor:
  ///   Refers to the justification as to why the evaluation report was completed beyond the state-established timeframe. This descriptor field will have allowed reasons as descriptor values.
  ///
  /// * [String] ideaPartDescriptor:
  ///   Indicates if the evaluation is done under Part B IDEA or Part C IDEA.
  ///
  /// * [DateTime] consentToEvaluationDate:
  ///   The date on which the student's parent gave a consent (Parent Consent Date).
  ///
  /// * [DateTime] eligibilityConferenceDate:
  ///   The month, day, and year when the eligibility conference is held between the parent(s)/guardian(s) and the educational organization responsible staff member(s) to review and make decision on special education related services eligibility.
  ///
  /// * [DateTime] eligibilityDeterminationDate:
  ///   Indicates the month, day, and year the local education agency (LEA) held the admission, review, and dismissal committee meeting regarding the child's eligibility determination for special education and related services. An individualized education plan (IEP) would be developed and implemented for a child admitted into special education on this same date.
  ///
  /// * [DateTime] eligibilityEvaluationDate:
  ///   Indicates the month, day, and year when the written individual evaluation report was completed.
  ///
  /// * [bool] evaluationCompleteIndicator:
  ///   Indicates the evaluation completed status.
  ///
  /// * [int] evaluationDelayDays:
  ///   Indicates the number of student absences, if any, beginning the first instructional day following the date on which the local education agency (LEA) received written parental or guardian consent for the evaluation.
  ///
  /// * [String] evaluationLateReason:
  ///   Refers to additional information for delay in doing the evaluation.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] ideaIndicator:
  ///   Indicates whether or not the student was determined eligible as a result of an evaluation.
  ///
  /// * [DateTime] originalECIServicesDate:
  ///   The month, date, and year when an infant or toddler, from birth through age 2, began participating in the early childhood intervention (ECI) program.
  ///
  /// * [DateTime] transitionConferenceDate:
  ///   Indicates the month, day, and year when the transition conference was held (for a child receiving early childhood intervention (ECI) services) among the lead agency, the family, and the local education agency (LEA) where the child resides to discuss the child's potential eligibility for early childhood special education (ECSE) services.
  ///
  /// * [DateTime] transitionNotificationDate:
  ///   Indicates the month, day, and year the LEA Notification of Potentially Eligible for Special Education Services was sent by the early childhood intervention (ECI) contractor to the local education agency (LEA) to notify them that a child enrolled in ECI will shortly reach the age of eligibility for Part B services and the child is potentially eligible for services under Part B, early childhood special education (ECSE). The LEA Notification constitutes a referral to the LEA for an initial evaluation and eligibility determination of the child which the parent or guardian may opt out from the referral.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<GetAcademicWeeksPartitions200Response?> getStudentSpecialEducationProgramEligibilityAssociationsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, DateTime? consentToEvaluationReceivedDate, int? educationOrganizationId, int? programEducationOrganizationId, String? programName, String? programTypeDescriptor, String? studentUniqueId, String? eligibilityDelayReasonDescriptor, String? eligibilityEvaluationTypeDescriptor, String? evaluationDelayReasonDescriptor, String? ideaPartDescriptor, DateTime? consentToEvaluationDate, DateTime? eligibilityConferenceDate, DateTime? eligibilityDeterminationDate, DateTime? eligibilityEvaluationDate, bool? evaluationCompleteIndicator, int? evaluationDelayDays, String? evaluationLateReason, String? id, bool? ideaIndicator, DateTime? originalECIServicesDate, DateTime? transitionConferenceDate, DateTime? transitionNotificationDate, bool? useSnapshot, }) async {
    final response = await getStudentSpecialEducationProgramEligibilityAssociationsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, consentToEvaluationReceivedDate: consentToEvaluationReceivedDate, educationOrganizationId: educationOrganizationId, programEducationOrganizationId: programEducationOrganizationId, programName: programName, programTypeDescriptor: programTypeDescriptor, studentUniqueId: studentUniqueId, eligibilityDelayReasonDescriptor: eligibilityDelayReasonDescriptor, eligibilityEvaluationTypeDescriptor: eligibilityEvaluationTypeDescriptor, evaluationDelayReasonDescriptor: evaluationDelayReasonDescriptor, ideaPartDescriptor: ideaPartDescriptor, consentToEvaluationDate: consentToEvaluationDate, eligibilityConferenceDate: eligibilityConferenceDate, eligibilityDeterminationDate: eligibilityDeterminationDate, eligibilityEvaluationDate: eligibilityEvaluationDate, evaluationCompleteIndicator: evaluationCompleteIndicator, evaluationDelayDays: evaluationDelayDays, evaluationLateReason: evaluationLateReason, id: id, ideaIndicator: ideaIndicator, originalECIServicesDate: originalECIServicesDate, transitionConferenceDate: transitionConferenceDate, transitionNotificationDate: transitionNotificationDate, useSnapshot: useSnapshot, );
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
  Future<Response> keyChangesStudentSpecialEducationProgramEligibilityAssociationsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentSpecialEducationProgramEligibilityAssociations/keyChanges';

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
  Future<List<TrackedChangesEdFiStudentSpecialEducationProgramEligibilityAssociationKeyChange>?> keyChangesStudentSpecialEducationProgramEligibilityAssociations({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesStudentSpecialEducationProgramEligibilityAssociationsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStudentSpecialEducationProgramEligibilityAssociationKeyChange>') as List)
        .cast<TrackedChangesEdFiStudentSpecialEducationProgramEligibilityAssociationKeyChange>()
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
  /// * [EdFiStudentSpecialEducationProgramEligibilityAssociation] edFiStudentSpecialEducationProgramEligibilityAssociation (required):
  ///   The JSON representation of the \"studentSpecialEducationProgramEligibilityAssociation\" resource to be created or updated.
  Future<Response> postStudentSpecialEducationProgramEligibilityAssociationWithHttpInfo(EdFiStudentSpecialEducationProgramEligibilityAssociation edFiStudentSpecialEducationProgramEligibilityAssociation,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentSpecialEducationProgramEligibilityAssociations';

    // ignore: prefer_final_locals
    Object? postBody = edFiStudentSpecialEducationProgramEligibilityAssociation;

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
  /// * [EdFiStudentSpecialEducationProgramEligibilityAssociation] edFiStudentSpecialEducationProgramEligibilityAssociation (required):
  ///   The JSON representation of the \"studentSpecialEducationProgramEligibilityAssociation\" resource to be created or updated.
  Future<void> postStudentSpecialEducationProgramEligibilityAssociation(EdFiStudentSpecialEducationProgramEligibilityAssociation edFiStudentSpecialEducationProgramEligibilityAssociation,) async {
    final response = await postStudentSpecialEducationProgramEligibilityAssociationWithHttpInfo(edFiStudentSpecialEducationProgramEligibilityAssociation,);
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
  /// * [EdFiStudentSpecialEducationProgramEligibilityAssociation] edFiStudentSpecialEducationProgramEligibilityAssociation (required):
  ///   The JSON representation of the \"studentSpecialEducationProgramEligibilityAssociation\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putStudentSpecialEducationProgramEligibilityAssociationWithHttpInfo(String id, EdFiStudentSpecialEducationProgramEligibilityAssociation edFiStudentSpecialEducationProgramEligibilityAssociation, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/studentSpecialEducationProgramEligibilityAssociations/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiStudentSpecialEducationProgramEligibilityAssociation;

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
  /// * [EdFiStudentSpecialEducationProgramEligibilityAssociation] edFiStudentSpecialEducationProgramEligibilityAssociation (required):
  ///   The JSON representation of the \"studentSpecialEducationProgramEligibilityAssociation\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putStudentSpecialEducationProgramEligibilityAssociation(String id, EdFiStudentSpecialEducationProgramEligibilityAssociation edFiStudentSpecialEducationProgramEligibilityAssociation, { String? ifMatch, }) async {
    final response = await putStudentSpecialEducationProgramEligibilityAssociationWithHttpInfo(id, edFiStudentSpecialEducationProgramEligibilityAssociation,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
