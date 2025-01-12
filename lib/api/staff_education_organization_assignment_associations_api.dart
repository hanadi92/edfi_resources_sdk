//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StaffEducationOrganizationAssignmentAssociationsApi {
  StaffEducationOrganizationAssignmentAssociationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteStaffEducationOrganizationAssignmentAssociationByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffEducationOrganizationAssignmentAssociations/{id}'
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
  Future<void> deleteStaffEducationOrganizationAssignmentAssociationById(String id, { String? ifMatch, }) async {
    final response = await deleteStaffEducationOrganizationAssignmentAssociationByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesStaffEducationOrganizationAssignmentAssociationsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffEducationOrganizationAssignmentAssociations/deletes';

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
  Future<List<TrackedChangesEdFiStaffEducationOrganizationAssignmentAssociationDelete>?> deletesStaffEducationOrganizationAssignmentAssociations({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesStaffEducationOrganizationAssignmentAssociationsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStaffEducationOrganizationAssignmentAssociationDelete>') as List)
        .cast<TrackedChangesEdFiStaffEducationOrganizationAssignmentAssociationDelete>()
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
  /// * [String] staffClassificationDescriptor:
  ///   The titles of employment, official status, or rank of education staff.
  ///
  /// * [DateTime] beginDate:
  ///   Month, day, and year of the start or effective date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] staffUniqueId:
  ///   A unique alphanumeric code assigned to a staff.
  ///
  /// * [String] credentialIdentifier:
  ///   Identifier or serial number assigned to the credential.
  ///
  /// * [String] stateOfIssueStateAbbreviationDescriptor:
  ///   The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.
  ///
  /// * [int] employmentEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] employmentStatusDescriptor:
  ///   Reflects the type of employment or contract.
  ///
  /// * [DateTime] employmentHireDate:
  ///   The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [DateTime] endDate:
  ///   Month, day, and year of the end or termination date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [double] fullTimeEquivalency:
  ///   The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [int] orderOfAssignment:
  ///   Describes whether the assignment is this the staff member's primary assignment, secondary assignment, etc.
  ///
  /// * [String] positionTitle:
  ///   The descriptive name of an individual's position.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getStaffEducationOrganizationAssignmentAssociationsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? staffClassificationDescriptor, DateTime? beginDate, int? educationOrganizationId, String? staffUniqueId, String? credentialIdentifier, String? stateOfIssueStateAbbreviationDescriptor, int? employmentEducationOrganizationId, String? employmentStatusDescriptor, DateTime? employmentHireDate, DateTime? endDate, double? fullTimeEquivalency, String? id, int? orderOfAssignment, String? positionTitle, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffEducationOrganizationAssignmentAssociations';

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
    if (staffClassificationDescriptor != null) {
      queryParams.addAll(_queryParams('', 'staffClassificationDescriptor', staffClassificationDescriptor));
    }
    if (beginDate != null) {
      queryParams.addAll(_queryParams('', 'beginDate', beginDate));
    }
    if (educationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'educationOrganizationId', educationOrganizationId));
    }
    if (staffUniqueId != null) {
      queryParams.addAll(_queryParams('', 'staffUniqueId', staffUniqueId));
    }
    if (credentialIdentifier != null) {
      queryParams.addAll(_queryParams('', 'credentialIdentifier', credentialIdentifier));
    }
    if (stateOfIssueStateAbbreviationDescriptor != null) {
      queryParams.addAll(_queryParams('', 'stateOfIssueStateAbbreviationDescriptor', stateOfIssueStateAbbreviationDescriptor));
    }
    if (employmentEducationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'employmentEducationOrganizationId', employmentEducationOrganizationId));
    }
    if (employmentStatusDescriptor != null) {
      queryParams.addAll(_queryParams('', 'employmentStatusDescriptor', employmentStatusDescriptor));
    }
    if (employmentHireDate != null) {
      queryParams.addAll(_queryParams('', 'employmentHireDate', employmentHireDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (fullTimeEquivalency != null) {
      queryParams.addAll(_queryParams('', 'fullTimeEquivalency', fullTimeEquivalency));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (orderOfAssignment != null) {
      queryParams.addAll(_queryParams('', 'orderOfAssignment', orderOfAssignment));
    }
    if (positionTitle != null) {
      queryParams.addAll(_queryParams('', 'positionTitle', positionTitle));
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
  /// * [String] staffClassificationDescriptor:
  ///   The titles of employment, official status, or rank of education staff.
  ///
  /// * [DateTime] beginDate:
  ///   Month, day, and year of the start or effective date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] staffUniqueId:
  ///   A unique alphanumeric code assigned to a staff.
  ///
  /// * [String] credentialIdentifier:
  ///   Identifier or serial number assigned to the credential.
  ///
  /// * [String] stateOfIssueStateAbbreviationDescriptor:
  ///   The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.
  ///
  /// * [int] employmentEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] employmentStatusDescriptor:
  ///   Reflects the type of employment or contract.
  ///
  /// * [DateTime] employmentHireDate:
  ///   The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [DateTime] endDate:
  ///   Month, day, and year of the end or termination date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [double] fullTimeEquivalency:
  ///   The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [int] orderOfAssignment:
  ///   Describes whether the assignment is this the staff member's primary assignment, secondary assignment, etc.
  ///
  /// * [String] positionTitle:
  ///   The descriptive name of an individual's position.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<List<EdFiStaffEducationOrganizationAssignmentAssociation>?> getStaffEducationOrganizationAssignmentAssociations({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? staffClassificationDescriptor, DateTime? beginDate, int? educationOrganizationId, String? staffUniqueId, String? credentialIdentifier, String? stateOfIssueStateAbbreviationDescriptor, int? employmentEducationOrganizationId, String? employmentStatusDescriptor, DateTime? employmentHireDate, DateTime? endDate, double? fullTimeEquivalency, String? id, int? orderOfAssignment, String? positionTitle, bool? useSnapshot, }) async {
    final response = await getStaffEducationOrganizationAssignmentAssociationsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, staffClassificationDescriptor: staffClassificationDescriptor, beginDate: beginDate, educationOrganizationId: educationOrganizationId, staffUniqueId: staffUniqueId, credentialIdentifier: credentialIdentifier, stateOfIssueStateAbbreviationDescriptor: stateOfIssueStateAbbreviationDescriptor, employmentEducationOrganizationId: employmentEducationOrganizationId, employmentStatusDescriptor: employmentStatusDescriptor, employmentHireDate: employmentHireDate, endDate: endDate, fullTimeEquivalency: fullTimeEquivalency, id: id, orderOfAssignment: orderOfAssignment, positionTitle: positionTitle, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiStaffEducationOrganizationAssignmentAssociation>') as List)
        .cast<EdFiStaffEducationOrganizationAssignmentAssociation>()
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
  Future<Response> getStaffEducationOrganizationAssignmentAssociationsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffEducationOrganizationAssignmentAssociations/{id}'
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
  Future<EdFiStaffEducationOrganizationAssignmentAssociation?> getStaffEducationOrganizationAssignmentAssociationsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getStaffEducationOrganizationAssignmentAssociationsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiStaffEducationOrganizationAssignmentAssociation',) as EdFiStaffEducationOrganizationAssignmentAssociation;
    
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
  /// * [String] staffClassificationDescriptor:
  ///   The titles of employment, official status, or rank of education staff.
  ///
  /// * [DateTime] beginDate:
  ///   Month, day, and year of the start or effective date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] staffUniqueId:
  ///   A unique alphanumeric code assigned to a staff.
  ///
  /// * [String] credentialIdentifier:
  ///   Identifier or serial number assigned to the credential.
  ///
  /// * [String] stateOfIssueStateAbbreviationDescriptor:
  ///   The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.
  ///
  /// * [int] employmentEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] employmentStatusDescriptor:
  ///   Reflects the type of employment or contract.
  ///
  /// * [DateTime] employmentHireDate:
  ///   The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [DateTime] endDate:
  ///   Month, day, and year of the end or termination date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [double] fullTimeEquivalency:
  ///   The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [int] orderOfAssignment:
  ///   Describes whether the assignment is this the staff member's primary assignment, secondary assignment, etc.
  ///
  /// * [String] positionTitle:
  ///   The descriptive name of an individual's position.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getStaffEducationOrganizationAssignmentAssociationsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, String? staffClassificationDescriptor, DateTime? beginDate, int? educationOrganizationId, String? staffUniqueId, String? credentialIdentifier, String? stateOfIssueStateAbbreviationDescriptor, int? employmentEducationOrganizationId, String? employmentStatusDescriptor, DateTime? employmentHireDate, DateTime? endDate, double? fullTimeEquivalency, String? id, int? orderOfAssignment, String? positionTitle, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffEducationOrganizationAssignmentAssociations/partitions';

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
    if (staffClassificationDescriptor != null) {
      queryParams.addAll(_queryParams('', 'staffClassificationDescriptor', staffClassificationDescriptor));
    }
    if (beginDate != null) {
      queryParams.addAll(_queryParams('', 'beginDate', beginDate));
    }
    if (educationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'educationOrganizationId', educationOrganizationId));
    }
    if (staffUniqueId != null) {
      queryParams.addAll(_queryParams('', 'staffUniqueId', staffUniqueId));
    }
    if (credentialIdentifier != null) {
      queryParams.addAll(_queryParams('', 'credentialIdentifier', credentialIdentifier));
    }
    if (stateOfIssueStateAbbreviationDescriptor != null) {
      queryParams.addAll(_queryParams('', 'stateOfIssueStateAbbreviationDescriptor', stateOfIssueStateAbbreviationDescriptor));
    }
    if (employmentEducationOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'employmentEducationOrganizationId', employmentEducationOrganizationId));
    }
    if (employmentStatusDescriptor != null) {
      queryParams.addAll(_queryParams('', 'employmentStatusDescriptor', employmentStatusDescriptor));
    }
    if (employmentHireDate != null) {
      queryParams.addAll(_queryParams('', 'employmentHireDate', employmentHireDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (fullTimeEquivalency != null) {
      queryParams.addAll(_queryParams('', 'fullTimeEquivalency', fullTimeEquivalency));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (orderOfAssignment != null) {
      queryParams.addAll(_queryParams('', 'orderOfAssignment', orderOfAssignment));
    }
    if (positionTitle != null) {
      queryParams.addAll(_queryParams('', 'positionTitle', positionTitle));
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
  /// * [String] staffClassificationDescriptor:
  ///   The titles of employment, official status, or rank of education staff.
  ///
  /// * [DateTime] beginDate:
  ///   Month, day, and year of the start or effective date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [int] educationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] staffUniqueId:
  ///   A unique alphanumeric code assigned to a staff.
  ///
  /// * [String] credentialIdentifier:
  ///   Identifier or serial number assigned to the credential.
  ///
  /// * [String] stateOfIssueStateAbbreviationDescriptor:
  ///   The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.
  ///
  /// * [int] employmentEducationOrganizationId:
  ///   The identifier assigned to an education organization.
  ///
  /// * [String] employmentStatusDescriptor:
  ///   Reflects the type of employment or contract.
  ///
  /// * [DateTime] employmentHireDate:
  ///   The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [DateTime] endDate:
  ///   Month, day, and year of the end or termination date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [double] fullTimeEquivalency:
  ///   The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [int] orderOfAssignment:
  ///   Describes whether the assignment is this the staff member's primary assignment, secondary assignment, etc.
  ///
  /// * [String] positionTitle:
  ///   The descriptive name of an individual's position.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<GetAcademicWeeksPartitions200Response?> getStaffEducationOrganizationAssignmentAssociationsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, String? staffClassificationDescriptor, DateTime? beginDate, int? educationOrganizationId, String? staffUniqueId, String? credentialIdentifier, String? stateOfIssueStateAbbreviationDescriptor, int? employmentEducationOrganizationId, String? employmentStatusDescriptor, DateTime? employmentHireDate, DateTime? endDate, double? fullTimeEquivalency, String? id, int? orderOfAssignment, String? positionTitle, bool? useSnapshot, }) async {
    final response = await getStaffEducationOrganizationAssignmentAssociationsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, staffClassificationDescriptor: staffClassificationDescriptor, beginDate: beginDate, educationOrganizationId: educationOrganizationId, staffUniqueId: staffUniqueId, credentialIdentifier: credentialIdentifier, stateOfIssueStateAbbreviationDescriptor: stateOfIssueStateAbbreviationDescriptor, employmentEducationOrganizationId: employmentEducationOrganizationId, employmentStatusDescriptor: employmentStatusDescriptor, employmentHireDate: employmentHireDate, endDate: endDate, fullTimeEquivalency: fullTimeEquivalency, id: id, orderOfAssignment: orderOfAssignment, positionTitle: positionTitle, useSnapshot: useSnapshot, );
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
  Future<Response> keyChangesStaffEducationOrganizationAssignmentAssociationsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffEducationOrganizationAssignmentAssociations/keyChanges';

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
  Future<List<TrackedChangesEdFiStaffEducationOrganizationAssignmentAssociationKeyChange>?> keyChangesStaffEducationOrganizationAssignmentAssociations({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesStaffEducationOrganizationAssignmentAssociationsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStaffEducationOrganizationAssignmentAssociationKeyChange>') as List)
        .cast<TrackedChangesEdFiStaffEducationOrganizationAssignmentAssociationKeyChange>()
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
  /// * [EdFiStaffEducationOrganizationAssignmentAssociation] edFiStaffEducationOrganizationAssignmentAssociation (required):
  ///   The JSON representation of the \"staffEducationOrganizationAssignmentAssociation\" resource to be created or updated.
  Future<Response> postStaffEducationOrganizationAssignmentAssociationWithHttpInfo(EdFiStaffEducationOrganizationAssignmentAssociation edFiStaffEducationOrganizationAssignmentAssociation,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffEducationOrganizationAssignmentAssociations';

    // ignore: prefer_final_locals
    Object? postBody = edFiStaffEducationOrganizationAssignmentAssociation;

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
  /// * [EdFiStaffEducationOrganizationAssignmentAssociation] edFiStaffEducationOrganizationAssignmentAssociation (required):
  ///   The JSON representation of the \"staffEducationOrganizationAssignmentAssociation\" resource to be created or updated.
  Future<void> postStaffEducationOrganizationAssignmentAssociation(EdFiStaffEducationOrganizationAssignmentAssociation edFiStaffEducationOrganizationAssignmentAssociation,) async {
    final response = await postStaffEducationOrganizationAssignmentAssociationWithHttpInfo(edFiStaffEducationOrganizationAssignmentAssociation,);
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
  /// * [EdFiStaffEducationOrganizationAssignmentAssociation] edFiStaffEducationOrganizationAssignmentAssociation (required):
  ///   The JSON representation of the \"staffEducationOrganizationAssignmentAssociation\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putStaffEducationOrganizationAssignmentAssociationWithHttpInfo(String id, EdFiStaffEducationOrganizationAssignmentAssociation edFiStaffEducationOrganizationAssignmentAssociation, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffEducationOrganizationAssignmentAssociations/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiStaffEducationOrganizationAssignmentAssociation;

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
  /// * [EdFiStaffEducationOrganizationAssignmentAssociation] edFiStaffEducationOrganizationAssignmentAssociation (required):
  ///   The JSON representation of the \"staffEducationOrganizationAssignmentAssociation\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putStaffEducationOrganizationAssignmentAssociation(String id, EdFiStaffEducationOrganizationAssignmentAssociation edFiStaffEducationOrganizationAssignmentAssociation, { String? ifMatch, }) async {
    final response = await putStaffEducationOrganizationAssignmentAssociationWithHttpInfo(id, edFiStaffEducationOrganizationAssignmentAssociation,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
