//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EvaluationObjectiveRatingsApi {
  EvaluationObjectiveRatingsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteEvaluationObjectiveRatingByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tpdm/evaluationObjectiveRatings/{id}'
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
  Future<void> deleteEvaluationObjectiveRatingById(String id, { String? ifMatch, }) async {
    final response = await deleteEvaluationObjectiveRatingByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesEvaluationObjectiveRatingsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tpdm/evaluationObjectiveRatings/deletes';

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
  Future<List<TrackedChangesTpdmEvaluationObjectiveRatingDelete>?> deletesEvaluationObjectiveRatings({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesEvaluationObjectiveRatingsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesTpdmEvaluationObjectiveRatingDelete>') as List)
        .cast<TrackedChangesTpdmEvaluationObjectiveRatingDelete>()
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
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] evaluationObjectiveTitle:
  ///   The name or title of the evaluation Objective.
  ///
  /// * [String] evaluationPeriodDescriptor:
  ///   The period for the evaluation.
  ///
  /// * [String] evaluationTitle:
  ///   The name or title of the evaluation.
  ///
  /// * [String] performanceEvaluationTitle:
  ///   An assigned unique identifier for the performance evaluation.
  ///
  /// * [String] performanceEvaluationTypeDescriptor:
  ///   The type of performance evaluation conducted.
  ///
  /// * [int] schoolYear:
  ///   The identifier for the school year.
  ///
  /// * [String] termDescriptor:
  ///   The term for the session during the school year.
  ///
  /// * [DateTime] evaluationDate:
  ///   The date for the person's evaluation.
  ///
  /// * [String] personId:
  ///   A unique alphanumeric code assigned to a person.
  ///
  /// * [String] sourceSystemDescriptor:
  ///   This descriptor defines the originating record source system for the person.
  ///
  /// * [String] objectiveRatingLevelDescriptor:
  ///   The rating level achieved based upon the rating or score.
  ///
  /// * [String] comments:
  ///   Any comments about the performance evaluation to be captured.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getEvaluationObjectiveRatingsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, int? educationOrganizationId, String? evaluationObjectiveTitle, String? evaluationPeriodDescriptor, String? evaluationTitle, String? performanceEvaluationTitle, String? performanceEvaluationTypeDescriptor, int? schoolYear, String? termDescriptor, DateTime? evaluationDate, String? personId, String? sourceSystemDescriptor, String? objectiveRatingLevelDescriptor, String? comments, String? id, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tpdm/evaluationObjectiveRatings';

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
    if (educationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'educationOrganizationId', educationOrganizationId));
    }
    if (evaluationObjectiveTitle != null) {
      queryParams.addAll(_queryParams('', 'evaluationObjectiveTitle', evaluationObjectiveTitle));
    }
    if (evaluationPeriodDescriptor != null) {
      queryParams.addAll(_queryParams('', 'evaluationPeriodDescriptor', evaluationPeriodDescriptor));
    }
    if (evaluationTitle != null) {
      queryParams.addAll(_queryParams('', 'evaluationTitle', evaluationTitle));
    }
    if (performanceEvaluationTitle != null) {
      queryParams.addAll(_queryParams('', 'performanceEvaluationTitle', performanceEvaluationTitle));
    }
    if (performanceEvaluationTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'performanceEvaluationTypeDescriptor', performanceEvaluationTypeDescriptor));
    }
    if (schoolYear != null) {
      queryParams.addAll(_queryParams('', 'schoolYear', schoolYear));
    }
    if (termDescriptor != null) {
      queryParams.addAll(_queryParams('', 'termDescriptor', termDescriptor));
    }
    if (evaluationDate != null) {
      queryParams.addAll(_queryParams('', 'evaluationDate', evaluationDate));
    }
    if (personId != null) {
      queryParams.addAll(_queryParams('', 'personId', personId));
    }
    if (sourceSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sourceSystemDescriptor', sourceSystemDescriptor));
    }
    if (objectiveRatingLevelDescriptor != null) {
      queryParams.addAll(_queryParams('', 'objectiveRatingLevelDescriptor', objectiveRatingLevelDescriptor));
    }
    if (comments != null) {
      queryParams.addAll(_queryParams('', 'comments', comments));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] evaluationObjectiveTitle:
  ///   The name or title of the evaluation Objective.
  ///
  /// * [String] evaluationPeriodDescriptor:
  ///   The period for the evaluation.
  ///
  /// * [String] evaluationTitle:
  ///   The name or title of the evaluation.
  ///
  /// * [String] performanceEvaluationTitle:
  ///   An assigned unique identifier for the performance evaluation.
  ///
  /// * [String] performanceEvaluationTypeDescriptor:
  ///   The type of performance evaluation conducted.
  ///
  /// * [int] schoolYear:
  ///   The identifier for the school year.
  ///
  /// * [String] termDescriptor:
  ///   The term for the session during the school year.
  ///
  /// * [DateTime] evaluationDate:
  ///   The date for the person's evaluation.
  ///
  /// * [String] personId:
  ///   A unique alphanumeric code assigned to a person.
  ///
  /// * [String] sourceSystemDescriptor:
  ///   This descriptor defines the originating record source system for the person.
  ///
  /// * [String] objectiveRatingLevelDescriptor:
  ///   The rating level achieved based upon the rating or score.
  ///
  /// * [String] comments:
  ///   Any comments about the performance evaluation to be captured.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<List<TpdmEvaluationObjectiveRating>?> getEvaluationObjectiveRatings({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, int? educationOrganizationId, String? evaluationObjectiveTitle, String? evaluationPeriodDescriptor, String? evaluationTitle, String? performanceEvaluationTitle, String? performanceEvaluationTypeDescriptor, int? schoolYear, String? termDescriptor, DateTime? evaluationDate, String? personId, String? sourceSystemDescriptor, String? objectiveRatingLevelDescriptor, String? comments, String? id, bool? useSnapshot, }) async {
    final response = await getEvaluationObjectiveRatingsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, educationOrganizationId: educationOrganizationId, evaluationObjectiveTitle: evaluationObjectiveTitle, evaluationPeriodDescriptor: evaluationPeriodDescriptor, evaluationTitle: evaluationTitle, performanceEvaluationTitle: performanceEvaluationTitle, performanceEvaluationTypeDescriptor: performanceEvaluationTypeDescriptor, schoolYear: schoolYear, termDescriptor: termDescriptor, evaluationDate: evaluationDate, personId: personId, sourceSystemDescriptor: sourceSystemDescriptor, objectiveRatingLevelDescriptor: objectiveRatingLevelDescriptor, comments: comments, id: id, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TpdmEvaluationObjectiveRating>') as List)
        .cast<TpdmEvaluationObjectiveRating>()
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
  Future<Response> getEvaluationObjectiveRatingsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tpdm/evaluationObjectiveRatings/{id}'
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
  Future<TpdmEvaluationObjectiveRating?> getEvaluationObjectiveRatingsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getEvaluationObjectiveRatingsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TpdmEvaluationObjectiveRating',) as TpdmEvaluationObjectiveRating;
    
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
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] evaluationObjectiveTitle:
  ///   The name or title of the evaluation Objective.
  ///
  /// * [String] evaluationPeriodDescriptor:
  ///   The period for the evaluation.
  ///
  /// * [String] evaluationTitle:
  ///   The name or title of the evaluation.
  ///
  /// * [String] performanceEvaluationTitle:
  ///   An assigned unique identifier for the performance evaluation.
  ///
  /// * [String] performanceEvaluationTypeDescriptor:
  ///   The type of performance evaluation conducted.
  ///
  /// * [int] schoolYear:
  ///   The identifier for the school year.
  ///
  /// * [String] termDescriptor:
  ///   The term for the session during the school year.
  ///
  /// * [DateTime] evaluationDate:
  ///   The date for the person's evaluation.
  ///
  /// * [String] personId:
  ///   A unique alphanumeric code assigned to a person.
  ///
  /// * [String] sourceSystemDescriptor:
  ///   This descriptor defines the originating record source system for the person.
  ///
  /// * [String] objectiveRatingLevelDescriptor:
  ///   The rating level achieved based upon the rating or score.
  ///
  /// * [String] comments:
  ///   Any comments about the performance evaluation to be captured.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getEvaluationObjectiveRatingsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, int? educationOrganizationId, String? evaluationObjectiveTitle, String? evaluationPeriodDescriptor, String? evaluationTitle, String? performanceEvaluationTitle, String? performanceEvaluationTypeDescriptor, int? schoolYear, String? termDescriptor, DateTime? evaluationDate, String? personId, String? sourceSystemDescriptor, String? objectiveRatingLevelDescriptor, String? comments, String? id, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tpdm/evaluationObjectiveRatings/partitions';

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
    if (educationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'educationOrganizationId', educationOrganizationId));
    }
    if (evaluationObjectiveTitle != null) {
      queryParams.addAll(_queryParams('', 'evaluationObjectiveTitle', evaluationObjectiveTitle));
    }
    if (evaluationPeriodDescriptor != null) {
      queryParams.addAll(_queryParams('', 'evaluationPeriodDescriptor', evaluationPeriodDescriptor));
    }
    if (evaluationTitle != null) {
      queryParams.addAll(_queryParams('', 'evaluationTitle', evaluationTitle));
    }
    if (performanceEvaluationTitle != null) {
      queryParams.addAll(_queryParams('', 'performanceEvaluationTitle', performanceEvaluationTitle));
    }
    if (performanceEvaluationTypeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'performanceEvaluationTypeDescriptor', performanceEvaluationTypeDescriptor));
    }
    if (schoolYear != null) {
      queryParams.addAll(_queryParams('', 'schoolYear', schoolYear));
    }
    if (termDescriptor != null) {
      queryParams.addAll(_queryParams('', 'termDescriptor', termDescriptor));
    }
    if (evaluationDate != null) {
      queryParams.addAll(_queryParams('', 'evaluationDate', evaluationDate));
    }
    if (personId != null) {
      queryParams.addAll(_queryParams('', 'personId', personId));
    }
    if (sourceSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sourceSystemDescriptor', sourceSystemDescriptor));
    }
    if (objectiveRatingLevelDescriptor != null) {
      queryParams.addAll(_queryParams('', 'objectiveRatingLevelDescriptor', objectiveRatingLevelDescriptor));
    }
    if (comments != null) {
      queryParams.addAll(_queryParams('', 'comments', comments));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] evaluationObjectiveTitle:
  ///   The name or title of the evaluation Objective.
  ///
  /// * [String] evaluationPeriodDescriptor:
  ///   The period for the evaluation.
  ///
  /// * [String] evaluationTitle:
  ///   The name or title of the evaluation.
  ///
  /// * [String] performanceEvaluationTitle:
  ///   An assigned unique identifier for the performance evaluation.
  ///
  /// * [String] performanceEvaluationTypeDescriptor:
  ///   The type of performance evaluation conducted.
  ///
  /// * [int] schoolYear:
  ///   The identifier for the school year.
  ///
  /// * [String] termDescriptor:
  ///   The term for the session during the school year.
  ///
  /// * [DateTime] evaluationDate:
  ///   The date for the person's evaluation.
  ///
  /// * [String] personId:
  ///   A unique alphanumeric code assigned to a person.
  ///
  /// * [String] sourceSystemDescriptor:
  ///   This descriptor defines the originating record source system for the person.
  ///
  /// * [String] objectiveRatingLevelDescriptor:
  ///   The rating level achieved based upon the rating or score.
  ///
  /// * [String] comments:
  ///   Any comments about the performance evaluation to be captured.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<GetAcademicWeeksPartitions200Response?> getEvaluationObjectiveRatingsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, int? educationOrganizationId, String? evaluationObjectiveTitle, String? evaluationPeriodDescriptor, String? evaluationTitle, String? performanceEvaluationTitle, String? performanceEvaluationTypeDescriptor, int? schoolYear, String? termDescriptor, DateTime? evaluationDate, String? personId, String? sourceSystemDescriptor, String? objectiveRatingLevelDescriptor, String? comments, String? id, bool? useSnapshot, }) async {
    final response = await getEvaluationObjectiveRatingsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, educationOrganizationId: educationOrganizationId, evaluationObjectiveTitle: evaluationObjectiveTitle, evaluationPeriodDescriptor: evaluationPeriodDescriptor, evaluationTitle: evaluationTitle, performanceEvaluationTitle: performanceEvaluationTitle, performanceEvaluationTypeDescriptor: performanceEvaluationTypeDescriptor, schoolYear: schoolYear, termDescriptor: termDescriptor, evaluationDate: evaluationDate, personId: personId, sourceSystemDescriptor: sourceSystemDescriptor, objectiveRatingLevelDescriptor: objectiveRatingLevelDescriptor, comments: comments, id: id, useSnapshot: useSnapshot, );
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
  Future<Response> keyChangesEvaluationObjectiveRatingsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tpdm/evaluationObjectiveRatings/keyChanges';

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
  Future<List<TrackedChangesTpdmEvaluationObjectiveRatingKeyChange>?> keyChangesEvaluationObjectiveRatings({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesEvaluationObjectiveRatingsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesTpdmEvaluationObjectiveRatingKeyChange>') as List)
        .cast<TrackedChangesTpdmEvaluationObjectiveRatingKeyChange>()
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
  /// * [TpdmEvaluationObjectiveRating] tpdmEvaluationObjectiveRating (required):
  ///   The JSON representation of the \"evaluationObjectiveRating\" resource to be created or updated.
  Future<Response> postEvaluationObjectiveRatingWithHttpInfo(TpdmEvaluationObjectiveRating tpdmEvaluationObjectiveRating,) async {
    // ignore: prefer_const_declarations
    final path = r'/tpdm/evaluationObjectiveRatings';

    // ignore: prefer_final_locals
    Object? postBody = tpdmEvaluationObjectiveRating;

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
  /// * [TpdmEvaluationObjectiveRating] tpdmEvaluationObjectiveRating (required):
  ///   The JSON representation of the \"evaluationObjectiveRating\" resource to be created or updated.
  Future<void> postEvaluationObjectiveRating(TpdmEvaluationObjectiveRating tpdmEvaluationObjectiveRating,) async {
    final response = await postEvaluationObjectiveRatingWithHttpInfo(tpdmEvaluationObjectiveRating,);
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
  /// * [TpdmEvaluationObjectiveRating] tpdmEvaluationObjectiveRating (required):
  ///   The JSON representation of the \"evaluationObjectiveRating\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putEvaluationObjectiveRatingWithHttpInfo(String id, TpdmEvaluationObjectiveRating tpdmEvaluationObjectiveRating, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/tpdm/evaluationObjectiveRatings/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = tpdmEvaluationObjectiveRating;

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
  /// * [TpdmEvaluationObjectiveRating] tpdmEvaluationObjectiveRating (required):
  ///   The JSON representation of the \"evaluationObjectiveRating\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putEvaluationObjectiveRating(String id, TpdmEvaluationObjectiveRating tpdmEvaluationObjectiveRating, { String? ifMatch, }) async {
    final response = await putEvaluationObjectiveRatingWithHttpInfo(id, tpdmEvaluationObjectiveRating,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
