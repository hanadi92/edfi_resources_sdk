//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class LearningStandardsApi {
  LearningStandardsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteLearningStandardByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/learningStandards/{id}'
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
  Future<void> deleteLearningStandardById(String id, { String? ifMatch, }) async {
    final response = await deleteLearningStandardByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesLearningStandardsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/learningStandards/deletes';

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
  Future<List<TrackedChangesEdFiLearningStandardDelete>?> deletesLearningStandards({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesLearningStandardsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiLearningStandardDelete>') as List)
        .cast<TrackedChangesEdFiLearningStandardDelete>()
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
  /// * [String] learningStandardId:
  ///   The identifier for the specific learning standard (e.g., 111.15.3.1.A).
  ///
  /// * [String] parentLearningStandardId:
  ///   The identifier for the specific learning standard (e.g., 111.15.3.1.A).
  ///
  /// * [String] learningStandardCategoryDescriptor:
  ///   An additional classification of the type of a specific learning standard.
  ///
  /// * [String] learningStandardScopeDescriptor:
  ///   Signals the scope of usage the standard. Does not necessarily relate the standard to the governing body.
  ///
  /// * [String] courseTitle:
  ///   The official course title with which this learning standard is associated.
  ///
  /// * [String] description:
  ///   The text of the statement. The textual content that either describes a specific competency such as \"Apply the Pythagorean Theorem to determine unknown side lengths in right triangles in real-world and mathematical problems in two and three dimensions.\" or describes a less granular group of competencies within the taxonomy of the standards document, e.g. \"Understand and apply the Pythagorean Theorem,\" or \"Geometry\".
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] learningStandardItemCode:
  ///   A code designated by the promulgating body to identify the statement, e.g. 1.N.3 (usually not globally unique).
  ///
  /// * [String] namespace:
  ///   The namespace of the organization or entity who governs the standard. It is recommended the namespaces observe a URI format and begin with a domain name under the governing organization or entity control.
  ///
  /// * [String] successCriteria:
  ///   One or more statements that describes the criteria used by teachers and students to check for attainment of a learning standard. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the learning standard.
  ///
  /// * [String] uri:
  ///   An unambiguous reference to the statement using a network-resolvable URI.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] contentStandardName:
  ///   The name of the content standard, for example Common Core.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to a Learning Standard.
  Future<Response> getLearningStandardsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? learningStandardId, String? parentLearningStandardId, String? learningStandardCategoryDescriptor, String? learningStandardScopeDescriptor, String? courseTitle, String? description, String? id, String? learningStandardItemCode, String? namespace, String? successCriteria, String? uri, bool? useSnapshot, String? contentStandardName, String? identificationCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/learningStandards';

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
    if (learningStandardId != null) {
      queryParams.addAll(_queryParams('', 'learningStandardId', learningStandardId));
    }
    if (parentLearningStandardId != null) {
      queryParams.addAll(_queryParams('', 'parentLearningStandardId', parentLearningStandardId));
    }
    if (learningStandardCategoryDescriptor != null) {
      queryParams.addAll(_queryParams('', 'learningStandardCategoryDescriptor', learningStandardCategoryDescriptor));
    }
    if (learningStandardScopeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'learningStandardScopeDescriptor', learningStandardScopeDescriptor));
    }
    if (courseTitle != null) {
      queryParams.addAll(_queryParams('', 'courseTitle', courseTitle));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (learningStandardItemCode != null) {
      queryParams.addAll(_queryParams('', 'learningStandardItemCode', learningStandardItemCode));
    }
    if (namespace != null) {
      queryParams.addAll(_queryParams('', 'namespace', namespace));
    }
    if (successCriteria != null) {
      queryParams.addAll(_queryParams('', 'successCriteria', successCriteria));
    }
    if (uri != null) {
      queryParams.addAll(_queryParams('', 'uri', uri));
    }
    if (contentStandardName != null) {
      queryParams.addAll(_queryParams('', 'contentStandardName', contentStandardName));
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
  /// * [String] learningStandardId:
  ///   The identifier for the specific learning standard (e.g., 111.15.3.1.A).
  ///
  /// * [String] parentLearningStandardId:
  ///   The identifier for the specific learning standard (e.g., 111.15.3.1.A).
  ///
  /// * [String] learningStandardCategoryDescriptor:
  ///   An additional classification of the type of a specific learning standard.
  ///
  /// * [String] learningStandardScopeDescriptor:
  ///   Signals the scope of usage the standard. Does not necessarily relate the standard to the governing body.
  ///
  /// * [String] courseTitle:
  ///   The official course title with which this learning standard is associated.
  ///
  /// * [String] description:
  ///   The text of the statement. The textual content that either describes a specific competency such as \"Apply the Pythagorean Theorem to determine unknown side lengths in right triangles in real-world and mathematical problems in two and three dimensions.\" or describes a less granular group of competencies within the taxonomy of the standards document, e.g. \"Understand and apply the Pythagorean Theorem,\" or \"Geometry\".
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] learningStandardItemCode:
  ///   A code designated by the promulgating body to identify the statement, e.g. 1.N.3 (usually not globally unique).
  ///
  /// * [String] namespace:
  ///   The namespace of the organization or entity who governs the standard. It is recommended the namespaces observe a URI format and begin with a domain name under the governing organization or entity control.
  ///
  /// * [String] successCriteria:
  ///   One or more statements that describes the criteria used by teachers and students to check for attainment of a learning standard. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the learning standard.
  ///
  /// * [String] uri:
  ///   An unambiguous reference to the statement using a network-resolvable URI.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] contentStandardName:
  ///   The name of the content standard, for example Common Core.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to a Learning Standard.
  Future<List<EdFiLearningStandard>?> getLearningStandards({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? learningStandardId, String? parentLearningStandardId, String? learningStandardCategoryDescriptor, String? learningStandardScopeDescriptor, String? courseTitle, String? description, String? id, String? learningStandardItemCode, String? namespace, String? successCriteria, String? uri, bool? useSnapshot, String? contentStandardName, String? identificationCode, }) async {
    final response = await getLearningStandardsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, learningStandardId: learningStandardId, parentLearningStandardId: parentLearningStandardId, learningStandardCategoryDescriptor: learningStandardCategoryDescriptor, learningStandardScopeDescriptor: learningStandardScopeDescriptor, courseTitle: courseTitle, description: description, id: id, learningStandardItemCode: learningStandardItemCode, namespace: namespace, successCriteria: successCriteria, uri: uri, useSnapshot: useSnapshot, contentStandardName: contentStandardName, identificationCode: identificationCode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiLearningStandard>') as List)
        .cast<EdFiLearningStandard>()
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
  Future<Response> getLearningStandardsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/learningStandards/{id}'
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
  Future<EdFiLearningStandard?> getLearningStandardsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getLearningStandardsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiLearningStandard',) as EdFiLearningStandard;
    
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
  /// * [String] learningStandardId:
  ///   The identifier for the specific learning standard (e.g., 111.15.3.1.A).
  ///
  /// * [String] parentLearningStandardId:
  ///   The identifier for the specific learning standard (e.g., 111.15.3.1.A).
  ///
  /// * [String] learningStandardCategoryDescriptor:
  ///   An additional classification of the type of a specific learning standard.
  ///
  /// * [String] learningStandardScopeDescriptor:
  ///   Signals the scope of usage the standard. Does not necessarily relate the standard to the governing body.
  ///
  /// * [String] courseTitle:
  ///   The official course title with which this learning standard is associated.
  ///
  /// * [String] description:
  ///   The text of the statement. The textual content that either describes a specific competency such as \"Apply the Pythagorean Theorem to determine unknown side lengths in right triangles in real-world and mathematical problems in two and three dimensions.\" or describes a less granular group of competencies within the taxonomy of the standards document, e.g. \"Understand and apply the Pythagorean Theorem,\" or \"Geometry\".
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] learningStandardItemCode:
  ///   A code designated by the promulgating body to identify the statement, e.g. 1.N.3 (usually not globally unique).
  ///
  /// * [String] namespace:
  ///   The namespace of the organization or entity who governs the standard. It is recommended the namespaces observe a URI format and begin with a domain name under the governing organization or entity control.
  ///
  /// * [String] successCriteria:
  ///   One or more statements that describes the criteria used by teachers and students to check for attainment of a learning standard. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the learning standard.
  ///
  /// * [String] uri:
  ///   An unambiguous reference to the statement using a network-resolvable URI.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] contentStandardName:
  ///   The name of the content standard, for example Common Core.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to a Learning Standard.
  Future<Response> getLearningStandardsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, String? learningStandardId, String? parentLearningStandardId, String? learningStandardCategoryDescriptor, String? learningStandardScopeDescriptor, String? courseTitle, String? description, String? id, String? learningStandardItemCode, String? namespace, String? successCriteria, String? uri, bool? useSnapshot, String? contentStandardName, String? identificationCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/learningStandards/partitions';

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
    if (learningStandardId != null) {
      queryParams.addAll(_queryParams('', 'learningStandardId', learningStandardId));
    }
    if (parentLearningStandardId != null) {
      queryParams.addAll(_queryParams('', 'parentLearningStandardId', parentLearningStandardId));
    }
    if (learningStandardCategoryDescriptor != null) {
      queryParams.addAll(_queryParams('', 'learningStandardCategoryDescriptor', learningStandardCategoryDescriptor));
    }
    if (learningStandardScopeDescriptor != null) {
      queryParams.addAll(_queryParams('', 'learningStandardScopeDescriptor', learningStandardScopeDescriptor));
    }
    if (courseTitle != null) {
      queryParams.addAll(_queryParams('', 'courseTitle', courseTitle));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (learningStandardItemCode != null) {
      queryParams.addAll(_queryParams('', 'learningStandardItemCode', learningStandardItemCode));
    }
    if (namespace != null) {
      queryParams.addAll(_queryParams('', 'namespace', namespace));
    }
    if (successCriteria != null) {
      queryParams.addAll(_queryParams('', 'successCriteria', successCriteria));
    }
    if (uri != null) {
      queryParams.addAll(_queryParams('', 'uri', uri));
    }
    if (contentStandardName != null) {
      queryParams.addAll(_queryParams('', 'contentStandardName', contentStandardName));
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
  /// * [String] learningStandardId:
  ///   The identifier for the specific learning standard (e.g., 111.15.3.1.A).
  ///
  /// * [String] parentLearningStandardId:
  ///   The identifier for the specific learning standard (e.g., 111.15.3.1.A).
  ///
  /// * [String] learningStandardCategoryDescriptor:
  ///   An additional classification of the type of a specific learning standard.
  ///
  /// * [String] learningStandardScopeDescriptor:
  ///   Signals the scope of usage the standard. Does not necessarily relate the standard to the governing body.
  ///
  /// * [String] courseTitle:
  ///   The official course title with which this learning standard is associated.
  ///
  /// * [String] description:
  ///   The text of the statement. The textual content that either describes a specific competency such as \"Apply the Pythagorean Theorem to determine unknown side lengths in right triangles in real-world and mathematical problems in two and three dimensions.\" or describes a less granular group of competencies within the taxonomy of the standards document, e.g. \"Understand and apply the Pythagorean Theorem,\" or \"Geometry\".
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] learningStandardItemCode:
  ///   A code designated by the promulgating body to identify the statement, e.g. 1.N.3 (usually not globally unique).
  ///
  /// * [String] namespace:
  ///   The namespace of the organization or entity who governs the standard. It is recommended the namespaces observe a URI format and begin with a domain name under the governing organization or entity control.
  ///
  /// * [String] successCriteria:
  ///   One or more statements that describes the criteria used by teachers and students to check for attainment of a learning standard. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the learning standard.
  ///
  /// * [String] uri:
  ///   An unambiguous reference to the statement using a network-resolvable URI.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] contentStandardName:
  ///   The name of the content standard, for example Common Core.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code assigned to a Learning Standard.
  Future<GetAcademicWeeksPartitions200Response?> getLearningStandardsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, String? learningStandardId, String? parentLearningStandardId, String? learningStandardCategoryDescriptor, String? learningStandardScopeDescriptor, String? courseTitle, String? description, String? id, String? learningStandardItemCode, String? namespace, String? successCriteria, String? uri, bool? useSnapshot, String? contentStandardName, String? identificationCode, }) async {
    final response = await getLearningStandardsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, learningStandardId: learningStandardId, parentLearningStandardId: parentLearningStandardId, learningStandardCategoryDescriptor: learningStandardCategoryDescriptor, learningStandardScopeDescriptor: learningStandardScopeDescriptor, courseTitle: courseTitle, description: description, id: id, learningStandardItemCode: learningStandardItemCode, namespace: namespace, successCriteria: successCriteria, uri: uri, useSnapshot: useSnapshot, contentStandardName: contentStandardName, identificationCode: identificationCode, );
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
  Future<Response> keyChangesLearningStandardsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/learningStandards/keyChanges';

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
  Future<List<TrackedChangesEdFiLearningStandardKeyChange>?> keyChangesLearningStandards({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesLearningStandardsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiLearningStandardKeyChange>') as List)
        .cast<TrackedChangesEdFiLearningStandardKeyChange>()
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
  /// * [EdFiLearningStandard] edFiLearningStandard (required):
  ///   The JSON representation of the \"learningStandard\" resource to be created or updated.
  Future<Response> postLearningStandardWithHttpInfo(EdFiLearningStandard edFiLearningStandard,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/learningStandards';

    // ignore: prefer_final_locals
    Object? postBody = edFiLearningStandard;

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
  /// * [EdFiLearningStandard] edFiLearningStandard (required):
  ///   The JSON representation of the \"learningStandard\" resource to be created or updated.
  Future<void> postLearningStandard(EdFiLearningStandard edFiLearningStandard,) async {
    final response = await postLearningStandardWithHttpInfo(edFiLearningStandard,);
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
  /// * [EdFiLearningStandard] edFiLearningStandard (required):
  ///   The JSON representation of the \"learningStandard\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putLearningStandardWithHttpInfo(String id, EdFiLearningStandard edFiLearningStandard, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/learningStandards/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiLearningStandard;

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
  /// * [EdFiLearningStandard] edFiLearningStandard (required):
  ///   The JSON representation of the \"learningStandard\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putLearningStandard(String id, EdFiLearningStandard edFiLearningStandard, { String? ifMatch, }) async {
    final response = await putLearningStandardWithHttpInfo(id, edFiLearningStandard,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
