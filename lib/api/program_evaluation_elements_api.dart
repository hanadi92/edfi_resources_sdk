//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProgramEvaluationElementsApi {
  ProgramEvaluationElementsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteProgramEvaluationElementByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/programEvaluationElements/{id}'
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
  Future<void> deleteProgramEvaluationElementById(String id, { String? ifMatch, }) async {
    final response = await deleteProgramEvaluationElementByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesProgramEvaluationElementsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/programEvaluationElements/deletes';

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
  Future<List<TrackedChangesEdFiProgramEvaluationElementDelete>?> deletesProgramEvaluationElements({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesProgramEvaluationElementsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiProgramEvaluationElementDelete>') as List)
        .cast<TrackedChangesEdFiProgramEvaluationElementDelete>()
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
  /// * [String] programEvaluationElementTitle:
  ///   The name or title of the program evaluation element.
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
  /// * [String] programEvaluationObjectiveTitle:
  ///   The name or title of the program evaluation objective.
  ///
  /// * [double] elementMaxNumericRating:
  ///   The maximum summary numerical rating or score for the program evaluation element.
  ///
  /// * [double] elementMinNumericRating:
  ///   The minimum summary numerical rating or score for the program evaluation element. If omitted, assumed to be 0.0.
  ///
  /// * [int] elementSortOrder:
  ///   The sort order of this program evaluation element.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] programEvaluationElementDescription:
  ///   The long description of the program evaluation element.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getProgramEvaluationElementsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? programEvaluationElementTitle, int? programEducationOrganizationId, String? programEvaluationPeriodDescriptor, String? programEvaluationTitle, String? programEvaluationTypeDescriptor, String? programName, String? programTypeDescriptor, String? programEvaluationObjectiveTitle, double? elementMaxNumericRating, double? elementMinNumericRating, int? elementSortOrder, String? id, String? programEvaluationElementDescription, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/programEvaluationElements';

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
    if (programEvaluationElementTitle != null) {
      queryParams.addAll(_queryParams('', 'programEvaluationElementTitle', programEvaluationElementTitle));
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
    if (programEvaluationObjectiveTitle != null) {
      queryParams.addAll(_queryParams('', 'programEvaluationObjectiveTitle', programEvaluationObjectiveTitle));
    }
    if (elementMaxNumericRating != null) {
      queryParams.addAll(_queryParams('', 'elementMaxNumericRating', elementMaxNumericRating));
    }
    if (elementMinNumericRating != null) {
      queryParams.addAll(_queryParams('', 'elementMinNumericRating', elementMinNumericRating));
    }
    if (elementSortOrder != null) {
      queryParams.addAll(_queryParams('', 'elementSortOrder', elementSortOrder));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (programEvaluationElementDescription != null) {
      queryParams.addAll(_queryParams('', 'programEvaluationElementDescription', programEvaluationElementDescription));
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
  /// * [String] programEvaluationElementTitle:
  ///   The name or title of the program evaluation element.
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
  /// * [String] programEvaluationObjectiveTitle:
  ///   The name or title of the program evaluation objective.
  ///
  /// * [double] elementMaxNumericRating:
  ///   The maximum summary numerical rating or score for the program evaluation element.
  ///
  /// * [double] elementMinNumericRating:
  ///   The minimum summary numerical rating or score for the program evaluation element. If omitted, assumed to be 0.0.
  ///
  /// * [int] elementSortOrder:
  ///   The sort order of this program evaluation element.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] programEvaluationElementDescription:
  ///   The long description of the program evaluation element.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<List<EdFiProgramEvaluationElement>?> getProgramEvaluationElements({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? programEvaluationElementTitle, int? programEducationOrganizationId, String? programEvaluationPeriodDescriptor, String? programEvaluationTitle, String? programEvaluationTypeDescriptor, String? programName, String? programTypeDescriptor, String? programEvaluationObjectiveTitle, double? elementMaxNumericRating, double? elementMinNumericRating, int? elementSortOrder, String? id, String? programEvaluationElementDescription, bool? useSnapshot, }) async {
    final response = await getProgramEvaluationElementsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, programEvaluationElementTitle: programEvaluationElementTitle, programEducationOrganizationId: programEducationOrganizationId, programEvaluationPeriodDescriptor: programEvaluationPeriodDescriptor, programEvaluationTitle: programEvaluationTitle, programEvaluationTypeDescriptor: programEvaluationTypeDescriptor, programName: programName, programTypeDescriptor: programTypeDescriptor, programEvaluationObjectiveTitle: programEvaluationObjectiveTitle, elementMaxNumericRating: elementMaxNumericRating, elementMinNumericRating: elementMinNumericRating, elementSortOrder: elementSortOrder, id: id, programEvaluationElementDescription: programEvaluationElementDescription, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiProgramEvaluationElement>') as List)
        .cast<EdFiProgramEvaluationElement>()
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
  Future<Response> getProgramEvaluationElementsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/programEvaluationElements/{id}'
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
  Future<EdFiProgramEvaluationElement?> getProgramEvaluationElementsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getProgramEvaluationElementsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiProgramEvaluationElement',) as EdFiProgramEvaluationElement;
    
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
  /// * [String] programEvaluationElementTitle:
  ///   The name or title of the program evaluation element.
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
  /// * [String] programEvaluationObjectiveTitle:
  ///   The name or title of the program evaluation objective.
  ///
  /// * [double] elementMaxNumericRating:
  ///   The maximum summary numerical rating or score for the program evaluation element.
  ///
  /// * [double] elementMinNumericRating:
  ///   The minimum summary numerical rating or score for the program evaluation element. If omitted, assumed to be 0.0.
  ///
  /// * [int] elementSortOrder:
  ///   The sort order of this program evaluation element.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] programEvaluationElementDescription:
  ///   The long description of the program evaluation element.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getProgramEvaluationElementsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, String? programEvaluationElementTitle, int? programEducationOrganizationId, String? programEvaluationPeriodDescriptor, String? programEvaluationTitle, String? programEvaluationTypeDescriptor, String? programName, String? programTypeDescriptor, String? programEvaluationObjectiveTitle, double? elementMaxNumericRating, double? elementMinNumericRating, int? elementSortOrder, String? id, String? programEvaluationElementDescription, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/programEvaluationElements/partitions';

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
    if (programEvaluationElementTitle != null) {
      queryParams.addAll(_queryParams('', 'programEvaluationElementTitle', programEvaluationElementTitle));
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
    if (programEvaluationObjectiveTitle != null) {
      queryParams.addAll(_queryParams('', 'programEvaluationObjectiveTitle', programEvaluationObjectiveTitle));
    }
    if (elementMaxNumericRating != null) {
      queryParams.addAll(_queryParams('', 'elementMaxNumericRating', elementMaxNumericRating));
    }
    if (elementMinNumericRating != null) {
      queryParams.addAll(_queryParams('', 'elementMinNumericRating', elementMinNumericRating));
    }
    if (elementSortOrder != null) {
      queryParams.addAll(_queryParams('', 'elementSortOrder', elementSortOrder));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (programEvaluationElementDescription != null) {
      queryParams.addAll(_queryParams('', 'programEvaluationElementDescription', programEvaluationElementDescription));
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
  /// * [String] programEvaluationElementTitle:
  ///   The name or title of the program evaluation element.
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
  /// * [String] programEvaluationObjectiveTitle:
  ///   The name or title of the program evaluation objective.
  ///
  /// * [double] elementMaxNumericRating:
  ///   The maximum summary numerical rating or score for the program evaluation element.
  ///
  /// * [double] elementMinNumericRating:
  ///   The minimum summary numerical rating or score for the program evaluation element. If omitted, assumed to be 0.0.
  ///
  /// * [int] elementSortOrder:
  ///   The sort order of this program evaluation element.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] programEvaluationElementDescription:
  ///   The long description of the program evaluation element.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<GetAcademicWeeksPartitions200Response?> getProgramEvaluationElementsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, String? programEvaluationElementTitle, int? programEducationOrganizationId, String? programEvaluationPeriodDescriptor, String? programEvaluationTitle, String? programEvaluationTypeDescriptor, String? programName, String? programTypeDescriptor, String? programEvaluationObjectiveTitle, double? elementMaxNumericRating, double? elementMinNumericRating, int? elementSortOrder, String? id, String? programEvaluationElementDescription, bool? useSnapshot, }) async {
    final response = await getProgramEvaluationElementsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, programEvaluationElementTitle: programEvaluationElementTitle, programEducationOrganizationId: programEducationOrganizationId, programEvaluationPeriodDescriptor: programEvaluationPeriodDescriptor, programEvaluationTitle: programEvaluationTitle, programEvaluationTypeDescriptor: programEvaluationTypeDescriptor, programName: programName, programTypeDescriptor: programTypeDescriptor, programEvaluationObjectiveTitle: programEvaluationObjectiveTitle, elementMaxNumericRating: elementMaxNumericRating, elementMinNumericRating: elementMinNumericRating, elementSortOrder: elementSortOrder, id: id, programEvaluationElementDescription: programEvaluationElementDescription, useSnapshot: useSnapshot, );
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
  Future<Response> keyChangesProgramEvaluationElementsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/programEvaluationElements/keyChanges';

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
  Future<List<TrackedChangesEdFiProgramEvaluationElementKeyChange>?> keyChangesProgramEvaluationElements({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesProgramEvaluationElementsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiProgramEvaluationElementKeyChange>') as List)
        .cast<TrackedChangesEdFiProgramEvaluationElementKeyChange>()
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
  /// * [EdFiProgramEvaluationElement] edFiProgramEvaluationElement (required):
  ///   The JSON representation of the \"programEvaluationElement\" resource to be created or updated.
  Future<Response> postProgramEvaluationElementWithHttpInfo(EdFiProgramEvaluationElement edFiProgramEvaluationElement,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/programEvaluationElements';

    // ignore: prefer_final_locals
    Object? postBody = edFiProgramEvaluationElement;

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
  /// * [EdFiProgramEvaluationElement] edFiProgramEvaluationElement (required):
  ///   The JSON representation of the \"programEvaluationElement\" resource to be created or updated.
  Future<void> postProgramEvaluationElement(EdFiProgramEvaluationElement edFiProgramEvaluationElement,) async {
    final response = await postProgramEvaluationElementWithHttpInfo(edFiProgramEvaluationElement,);
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
  /// * [EdFiProgramEvaluationElement] edFiProgramEvaluationElement (required):
  ///   The JSON representation of the \"programEvaluationElement\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putProgramEvaluationElementWithHttpInfo(String id, EdFiProgramEvaluationElement edFiProgramEvaluationElement, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/programEvaluationElements/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiProgramEvaluationElement;

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
  /// * [EdFiProgramEvaluationElement] edFiProgramEvaluationElement (required):
  ///   The JSON representation of the \"programEvaluationElement\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putProgramEvaluationElement(String id, EdFiProgramEvaluationElement edFiProgramEvaluationElement, { String? ifMatch, }) async {
    final response = await putProgramEvaluationElementWithHttpInfo(id, edFiProgramEvaluationElement,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
