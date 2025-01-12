//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AssessmentsApi {
  AssessmentsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteAssessmentByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/assessments/{id}'
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
  Future<void> deleteAssessmentById(String id, { String? ifMatch, }) async {
    final response = await deleteAssessmentByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesAssessmentsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/assessments/deletes';

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
  Future<List<TrackedChangesEdFiAssessmentDelete>?> deletesAssessments({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesAssessmentsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiAssessmentDelete>') as List)
        .cast<TrackedChangesEdFiAssessmentDelete>()
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
  /// * [String] assessmentIdentifier:
  ///   A unique number or alphanumeric code assigned to an assessment.
  ///
  /// * [String] namespace:
  ///   Namespace for the assessment.
  ///
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] assessmentCategoryDescriptor:
  ///   The category of an assessment based on format and content.
  ///
  /// * [bool] adaptiveAssessment:
  ///   Indicates that the assessment is adaptive.
  ///
  /// * [String] assessmentFamily:
  ///   The assessment family this assessment is a member of.
  ///
  /// * [String] assessmentForm:
  ///   Identifies the form of the assessment, for example a regular versus makeup form, multiple choice versus constructed response, etc.
  ///
  /// * [String] assessmentTitle:
  ///   The title or name of the assessment.
  ///
  /// * [int] assessmentVersion:
  ///   The version identifier for the assessment.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [double] maxRawScore:
  ///   The maximum raw score achievable across all assessment items that are correct and scored at the maximum.
  ///
  /// * [String] nomenclature:
  ///   Reflects the specific nomenclature used for assessment.
  ///
  /// * [DateTime] revisionDate:
  ///   The month, day, and year that the conceptual design for the assessment was most recently revised substantially.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] assessmentIdentificationSystemDescriptor:
  ///   A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to an assessment.
  ///
  /// * [String] assigningOrganizationIdentificationCode:
  ///   The organization code or name assigning the assessment identification code.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to an assessment by a school, school system, state, or other agency or entity.
  Future<Response> getAssessmentsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? assessmentIdentifier, String? namespace, int? educationOrganizationId, String? assessmentCategoryDescriptor, bool? adaptiveAssessment, String? assessmentFamily, String? assessmentForm, String? assessmentTitle, int? assessmentVersion, String? id, double? maxRawScore, String? nomenclature, DateTime? revisionDate, bool? useSnapshot, String? assessmentIdentificationSystemDescriptor, String? assigningOrganizationIdentificationCode, String? identificationCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/assessments';

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
    if (assessmentIdentifier != null) {
      queryParams.addAll(_queryParams('', 'assessmentIdentifier', assessmentIdentifier));
    }
    if (namespace != null) {
      queryParams.addAll(_queryParams('', 'namespace', namespace));
    }
    if (educationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'educationOrganizationId', educationOrganizationId));
    }
    if (assessmentCategoryDescriptor != null) {
      queryParams.addAll(_queryParams('', 'assessmentCategoryDescriptor', assessmentCategoryDescriptor));
    }
    if (adaptiveAssessment != null) {
      queryParams.addAll(_queryParams('', 'adaptiveAssessment', adaptiveAssessment));
    }
    if (assessmentFamily != null) {
      queryParams.addAll(_queryParams('', 'assessmentFamily', assessmentFamily));
    }
    if (assessmentForm != null) {
      queryParams.addAll(_queryParams('', 'assessmentForm', assessmentForm));
    }
    if (assessmentTitle != null) {
      queryParams.addAll(_queryParams('', 'assessmentTitle', assessmentTitle));
    }
    if (assessmentVersion != null) {
      queryParams.addAll(_queryParams('', 'assessmentVersion', assessmentVersion));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (maxRawScore != null) {
      queryParams.addAll(_queryParams('', 'maxRawScore', maxRawScore));
    }
    if (nomenclature != null) {
      queryParams.addAll(_queryParams('', 'nomenclature', nomenclature));
    }
    if (revisionDate != null) {
      queryParams.addAll(_queryParams('', 'revisionDate', revisionDate));
    }
    if (assessmentIdentificationSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'assessmentIdentificationSystemDescriptor', assessmentIdentificationSystemDescriptor));
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
  /// * [String] assessmentIdentifier:
  ///   A unique number or alphanumeric code assigned to an assessment.
  ///
  /// * [String] namespace:
  ///   Namespace for the assessment.
  ///
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] assessmentCategoryDescriptor:
  ///   The category of an assessment based on format and content.
  ///
  /// * [bool] adaptiveAssessment:
  ///   Indicates that the assessment is adaptive.
  ///
  /// * [String] assessmentFamily:
  ///   The assessment family this assessment is a member of.
  ///
  /// * [String] assessmentForm:
  ///   Identifies the form of the assessment, for example a regular versus makeup form, multiple choice versus constructed response, etc.
  ///
  /// * [String] assessmentTitle:
  ///   The title or name of the assessment.
  ///
  /// * [int] assessmentVersion:
  ///   The version identifier for the assessment.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [double] maxRawScore:
  ///   The maximum raw score achievable across all assessment items that are correct and scored at the maximum.
  ///
  /// * [String] nomenclature:
  ///   Reflects the specific nomenclature used for assessment.
  ///
  /// * [DateTime] revisionDate:
  ///   The month, day, and year that the conceptual design for the assessment was most recently revised substantially.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] assessmentIdentificationSystemDescriptor:
  ///   A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to an assessment.
  ///
  /// * [String] assigningOrganizationIdentificationCode:
  ///   The organization code or name assigning the assessment identification code.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to an assessment by a school, school system, state, or other agency or entity.
  Future<List<EdFiAssessment>?> getAssessments({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? assessmentIdentifier, String? namespace, int? educationOrganizationId, String? assessmentCategoryDescriptor, bool? adaptiveAssessment, String? assessmentFamily, String? assessmentForm, String? assessmentTitle, int? assessmentVersion, String? id, double? maxRawScore, String? nomenclature, DateTime? revisionDate, bool? useSnapshot, String? assessmentIdentificationSystemDescriptor, String? assigningOrganizationIdentificationCode, String? identificationCode, }) async {
    final response = await getAssessmentsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, assessmentIdentifier: assessmentIdentifier, namespace: namespace, educationOrganizationId: educationOrganizationId, assessmentCategoryDescriptor: assessmentCategoryDescriptor, adaptiveAssessment: adaptiveAssessment, assessmentFamily: assessmentFamily, assessmentForm: assessmentForm, assessmentTitle: assessmentTitle, assessmentVersion: assessmentVersion, id: id, maxRawScore: maxRawScore, nomenclature: nomenclature, revisionDate: revisionDate, useSnapshot: useSnapshot, assessmentIdentificationSystemDescriptor: assessmentIdentificationSystemDescriptor, assigningOrganizationIdentificationCode: assigningOrganizationIdentificationCode, identificationCode: identificationCode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiAssessment>') as List)
        .cast<EdFiAssessment>()
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
  Future<Response> getAssessmentsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/assessments/{id}'
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
  Future<EdFiAssessment?> getAssessmentsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getAssessmentsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiAssessment',) as EdFiAssessment;
    
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
  /// * [String] assessmentIdentifier:
  ///   A unique number or alphanumeric code assigned to an assessment.
  ///
  /// * [String] namespace:
  ///   Namespace for the assessment.
  ///
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] assessmentCategoryDescriptor:
  ///   The category of an assessment based on format and content.
  ///
  /// * [bool] adaptiveAssessment:
  ///   Indicates that the assessment is adaptive.
  ///
  /// * [String] assessmentFamily:
  ///   The assessment family this assessment is a member of.
  ///
  /// * [String] assessmentForm:
  ///   Identifies the form of the assessment, for example a regular versus makeup form, multiple choice versus constructed response, etc.
  ///
  /// * [String] assessmentTitle:
  ///   The title or name of the assessment.
  ///
  /// * [int] assessmentVersion:
  ///   The version identifier for the assessment.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [double] maxRawScore:
  ///   The maximum raw score achievable across all assessment items that are correct and scored at the maximum.
  ///
  /// * [String] nomenclature:
  ///   Reflects the specific nomenclature used for assessment.
  ///
  /// * [DateTime] revisionDate:
  ///   The month, day, and year that the conceptual design for the assessment was most recently revised substantially.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] assessmentIdentificationSystemDescriptor:
  ///   A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to an assessment.
  ///
  /// * [String] assigningOrganizationIdentificationCode:
  ///   The organization code or name assigning the assessment identification code.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to an assessment by a school, school system, state, or other agency or entity.
  Future<Response> getAssessmentsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, String? assessmentIdentifier, String? namespace, int? educationOrganizationId, String? assessmentCategoryDescriptor, bool? adaptiveAssessment, String? assessmentFamily, String? assessmentForm, String? assessmentTitle, int? assessmentVersion, String? id, double? maxRawScore, String? nomenclature, DateTime? revisionDate, bool? useSnapshot, String? assessmentIdentificationSystemDescriptor, String? assigningOrganizationIdentificationCode, String? identificationCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/assessments/partitions';

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
    if (assessmentIdentifier != null) {
      queryParams.addAll(_queryParams('', 'assessmentIdentifier', assessmentIdentifier));
    }
    if (namespace != null) {
      queryParams.addAll(_queryParams('', 'namespace', namespace));
    }
    if (educationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'educationOrganizationId', educationOrganizationId));
    }
    if (assessmentCategoryDescriptor != null) {
      queryParams.addAll(_queryParams('', 'assessmentCategoryDescriptor', assessmentCategoryDescriptor));
    }
    if (adaptiveAssessment != null) {
      queryParams.addAll(_queryParams('', 'adaptiveAssessment', adaptiveAssessment));
    }
    if (assessmentFamily != null) {
      queryParams.addAll(_queryParams('', 'assessmentFamily', assessmentFamily));
    }
    if (assessmentForm != null) {
      queryParams.addAll(_queryParams('', 'assessmentForm', assessmentForm));
    }
    if (assessmentTitle != null) {
      queryParams.addAll(_queryParams('', 'assessmentTitle', assessmentTitle));
    }
    if (assessmentVersion != null) {
      queryParams.addAll(_queryParams('', 'assessmentVersion', assessmentVersion));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (maxRawScore != null) {
      queryParams.addAll(_queryParams('', 'maxRawScore', maxRawScore));
    }
    if (nomenclature != null) {
      queryParams.addAll(_queryParams('', 'nomenclature', nomenclature));
    }
    if (revisionDate != null) {
      queryParams.addAll(_queryParams('', 'revisionDate', revisionDate));
    }
    if (assessmentIdentificationSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'assessmentIdentificationSystemDescriptor', assessmentIdentificationSystemDescriptor));
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
  /// * [String] assessmentIdentifier:
  ///   A unique number or alphanumeric code assigned to an assessment.
  ///
  /// * [String] namespace:
  ///   Namespace for the assessment.
  ///
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] assessmentCategoryDescriptor:
  ///   The category of an assessment based on format and content.
  ///
  /// * [bool] adaptiveAssessment:
  ///   Indicates that the assessment is adaptive.
  ///
  /// * [String] assessmentFamily:
  ///   The assessment family this assessment is a member of.
  ///
  /// * [String] assessmentForm:
  ///   Identifies the form of the assessment, for example a regular versus makeup form, multiple choice versus constructed response, etc.
  ///
  /// * [String] assessmentTitle:
  ///   The title or name of the assessment.
  ///
  /// * [int] assessmentVersion:
  ///   The version identifier for the assessment.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [double] maxRawScore:
  ///   The maximum raw score achievable across all assessment items that are correct and scored at the maximum.
  ///
  /// * [String] nomenclature:
  ///   Reflects the specific nomenclature used for assessment.
  ///
  /// * [DateTime] revisionDate:
  ///   The month, day, and year that the conceptual design for the assessment was most recently revised substantially.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] assessmentIdentificationSystemDescriptor:
  ///   A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to an assessment.
  ///
  /// * [String] assigningOrganizationIdentificationCode:
  ///   The organization code or name assigning the assessment identification code.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to an assessment by a school, school system, state, or other agency or entity.
  Future<GetAcademicWeeksPartitions200Response?> getAssessmentsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, String? assessmentIdentifier, String? namespace, int? educationOrganizationId, String? assessmentCategoryDescriptor, bool? adaptiveAssessment, String? assessmentFamily, String? assessmentForm, String? assessmentTitle, int? assessmentVersion, String? id, double? maxRawScore, String? nomenclature, DateTime? revisionDate, bool? useSnapshot, String? assessmentIdentificationSystemDescriptor, String? assigningOrganizationIdentificationCode, String? identificationCode, }) async {
    final response = await getAssessmentsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, assessmentIdentifier: assessmentIdentifier, namespace: namespace, educationOrganizationId: educationOrganizationId, assessmentCategoryDescriptor: assessmentCategoryDescriptor, adaptiveAssessment: adaptiveAssessment, assessmentFamily: assessmentFamily, assessmentForm: assessmentForm, assessmentTitle: assessmentTitle, assessmentVersion: assessmentVersion, id: id, maxRawScore: maxRawScore, nomenclature: nomenclature, revisionDate: revisionDate, useSnapshot: useSnapshot, assessmentIdentificationSystemDescriptor: assessmentIdentificationSystemDescriptor, assigningOrganizationIdentificationCode: assigningOrganizationIdentificationCode, identificationCode: identificationCode, );
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
  Future<Response> keyChangesAssessmentsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/assessments/keyChanges';

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
  Future<List<TrackedChangesEdFiAssessmentKeyChange>?> keyChangesAssessments({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesAssessmentsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiAssessmentKeyChange>') as List)
        .cast<TrackedChangesEdFiAssessmentKeyChange>()
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
  /// * [EdFiAssessment] edFiAssessment (required):
  ///   The JSON representation of the \"assessment\" resource to be created or updated.
  Future<Response> postAssessmentWithHttpInfo(EdFiAssessment edFiAssessment,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/assessments';

    // ignore: prefer_final_locals
    Object? postBody = edFiAssessment;

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
  /// * [EdFiAssessment] edFiAssessment (required):
  ///   The JSON representation of the \"assessment\" resource to be created or updated.
  Future<void> postAssessment(EdFiAssessment edFiAssessment,) async {
    final response = await postAssessmentWithHttpInfo(edFiAssessment,);
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
  /// * [EdFiAssessment] edFiAssessment (required):
  ///   The JSON representation of the \"assessment\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putAssessmentWithHttpInfo(String id, EdFiAssessment edFiAssessment, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/assessments/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiAssessment;

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
  /// * [EdFiAssessment] edFiAssessment (required):
  ///   The JSON representation of the \"assessment\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putAssessment(String id, EdFiAssessment edFiAssessment, { String? ifMatch, }) async {
    final response = await putAssessmentWithHttpInfo(id, edFiAssessment,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
