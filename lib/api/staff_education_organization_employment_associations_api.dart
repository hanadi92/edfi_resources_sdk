//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class StaffEducationOrganizationEmploymentAssociationsApi {
  StaffEducationOrganizationEmploymentAssociationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteStaffEducationOrganizationEmploymentAssociationByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffEducationOrganizationEmploymentAssociations/{id}'
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
  Future<void> deleteStaffEducationOrganizationEmploymentAssociationById(String id, { String? ifMatch, }) async {
    final response = await deleteStaffEducationOrganizationEmploymentAssociationByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesStaffEducationOrganizationEmploymentAssociationsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffEducationOrganizationEmploymentAssociations/deletes';

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
  Future<List<TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationDelete>?> deletesStaffEducationOrganizationEmploymentAssociations({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesStaffEducationOrganizationEmploymentAssociationsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationDelete>') as List)
        .cast<TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationDelete>()
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
  /// * [String] employmentStatusDescriptor:
  ///   Reflects the type of employment or contract.
  ///
  /// * [DateTime] hireDate:
  ///   The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
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
  /// * [String] separationDescriptor:
  ///   Type of employment separation.
  ///
  /// * [String] separationReasonDescriptor:
  ///   Reason for terminating the employment.
  ///
  /// * [double] annualWage:
  ///   Annual wage associated with the employment position being reported.
  ///
  /// * [String] department:
  ///   The department or suborganization the employee/contractor is associated with in the education organization.
  ///
  /// * [DateTime] endDate:
  ///   The month, day, and year on which a contract between an individual and a governing authority ends or is terminated under the provisions of the contract (or the date on which the agreement is made invalid).  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [double] fullTimeEquivalency:
  ///   The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.
  ///
  /// * [double] hourlyWage:
  ///   Hourly wage associated with the employment position being reported.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [DateTime] offerDate:
  ///   Date at which the staff member was made an official offer for this employment.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getStaffEducationOrganizationEmploymentAssociationsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? employmentStatusDescriptor, DateTime? hireDate, int? educationOrganizationId, String? staffUniqueId, String? credentialIdentifier, String? stateOfIssueStateAbbreviationDescriptor, String? separationDescriptor, String? separationReasonDescriptor, double? annualWage, String? department, DateTime? endDate, double? fullTimeEquivalency, double? hourlyWage, String? id, DateTime? offerDate, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffEducationOrganizationEmploymentAssociations';

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
    if (employmentStatusDescriptor != null) {
      queryParams.addAll(_queryParams('', 'employmentStatusDescriptor', employmentStatusDescriptor));
    }
    if (hireDate != null) {
      queryParams.addAll(_queryParams('', 'hireDate', hireDate));
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
    if (separationDescriptor != null) {
      queryParams.addAll(_queryParams('', 'separationDescriptor', separationDescriptor));
    }
    if (separationReasonDescriptor != null) {
      queryParams.addAll(_queryParams('', 'separationReasonDescriptor', separationReasonDescriptor));
    }
    if (annualWage != null) {
      queryParams.addAll(_queryParams('', 'annualWage', annualWage));
    }
    if (department != null) {
      queryParams.addAll(_queryParams('', 'department', department));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (fullTimeEquivalency != null) {
      queryParams.addAll(_queryParams('', 'fullTimeEquivalency', fullTimeEquivalency));
    }
    if (hourlyWage != null) {
      queryParams.addAll(_queryParams('', 'hourlyWage', hourlyWage));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (offerDate != null) {
      queryParams.addAll(_queryParams('', 'offerDate', offerDate));
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
  /// * [String] employmentStatusDescriptor:
  ///   Reflects the type of employment or contract.
  ///
  /// * [DateTime] hireDate:
  ///   The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
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
  /// * [String] separationDescriptor:
  ///   Type of employment separation.
  ///
  /// * [String] separationReasonDescriptor:
  ///   Reason for terminating the employment.
  ///
  /// * [double] annualWage:
  ///   Annual wage associated with the employment position being reported.
  ///
  /// * [String] department:
  ///   The department or suborganization the employee/contractor is associated with in the education organization.
  ///
  /// * [DateTime] endDate:
  ///   The month, day, and year on which a contract between an individual and a governing authority ends or is terminated under the provisions of the contract (or the date on which the agreement is made invalid).  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [double] fullTimeEquivalency:
  ///   The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.
  ///
  /// * [double] hourlyWage:
  ///   Hourly wage associated with the employment position being reported.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [DateTime] offerDate:
  ///   Date at which the staff member was made an official offer for this employment.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<List<EdFiStaffEducationOrganizationEmploymentAssociation>?> getStaffEducationOrganizationEmploymentAssociations({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? employmentStatusDescriptor, DateTime? hireDate, int? educationOrganizationId, String? staffUniqueId, String? credentialIdentifier, String? stateOfIssueStateAbbreviationDescriptor, String? separationDescriptor, String? separationReasonDescriptor, double? annualWage, String? department, DateTime? endDate, double? fullTimeEquivalency, double? hourlyWage, String? id, DateTime? offerDate, bool? useSnapshot, }) async {
    final response = await getStaffEducationOrganizationEmploymentAssociationsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, employmentStatusDescriptor: employmentStatusDescriptor, hireDate: hireDate, educationOrganizationId: educationOrganizationId, staffUniqueId: staffUniqueId, credentialIdentifier: credentialIdentifier, stateOfIssueStateAbbreviationDescriptor: stateOfIssueStateAbbreviationDescriptor, separationDescriptor: separationDescriptor, separationReasonDescriptor: separationReasonDescriptor, annualWage: annualWage, department: department, endDate: endDate, fullTimeEquivalency: fullTimeEquivalency, hourlyWage: hourlyWage, id: id, offerDate: offerDate, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiStaffEducationOrganizationEmploymentAssociation>') as List)
        .cast<EdFiStaffEducationOrganizationEmploymentAssociation>()
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
  Future<Response> getStaffEducationOrganizationEmploymentAssociationsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffEducationOrganizationEmploymentAssociations/{id}'
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
  Future<EdFiStaffEducationOrganizationEmploymentAssociation?> getStaffEducationOrganizationEmploymentAssociationsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getStaffEducationOrganizationEmploymentAssociationsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiStaffEducationOrganizationEmploymentAssociation',) as EdFiStaffEducationOrganizationEmploymentAssociation;
    
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
  /// * [String] employmentStatusDescriptor:
  ///   Reflects the type of employment or contract.
  ///
  /// * [DateTime] hireDate:
  ///   The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
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
  /// * [String] separationDescriptor:
  ///   Type of employment separation.
  ///
  /// * [String] separationReasonDescriptor:
  ///   Reason for terminating the employment.
  ///
  /// * [double] annualWage:
  ///   Annual wage associated with the employment position being reported.
  ///
  /// * [String] department:
  ///   The department or suborganization the employee/contractor is associated with in the education organization.
  ///
  /// * [DateTime] endDate:
  ///   The month, day, and year on which a contract between an individual and a governing authority ends or is terminated under the provisions of the contract (or the date on which the agreement is made invalid).  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [double] fullTimeEquivalency:
  ///   The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.
  ///
  /// * [double] hourlyWage:
  ///   Hourly wage associated with the employment position being reported.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [DateTime] offerDate:
  ///   Date at which the staff member was made an official offer for this employment.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getStaffEducationOrganizationEmploymentAssociationsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, String? employmentStatusDescriptor, DateTime? hireDate, int? educationOrganizationId, String? staffUniqueId, String? credentialIdentifier, String? stateOfIssueStateAbbreviationDescriptor, String? separationDescriptor, String? separationReasonDescriptor, double? annualWage, String? department, DateTime? endDate, double? fullTimeEquivalency, double? hourlyWage, String? id, DateTime? offerDate, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffEducationOrganizationEmploymentAssociations/partitions';

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
    if (employmentStatusDescriptor != null) {
      queryParams.addAll(_queryParams('', 'employmentStatusDescriptor', employmentStatusDescriptor));
    }
    if (hireDate != null) {
      queryParams.addAll(_queryParams('', 'hireDate', hireDate));
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
    if (separationDescriptor != null) {
      queryParams.addAll(_queryParams('', 'separationDescriptor', separationDescriptor));
    }
    if (separationReasonDescriptor != null) {
      queryParams.addAll(_queryParams('', 'separationReasonDescriptor', separationReasonDescriptor));
    }
    if (annualWage != null) {
      queryParams.addAll(_queryParams('', 'annualWage', annualWage));
    }
    if (department != null) {
      queryParams.addAll(_queryParams('', 'department', department));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
    }
    if (fullTimeEquivalency != null) {
      queryParams.addAll(_queryParams('', 'fullTimeEquivalency', fullTimeEquivalency));
    }
    if (hourlyWage != null) {
      queryParams.addAll(_queryParams('', 'hourlyWage', hourlyWage));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (offerDate != null) {
      queryParams.addAll(_queryParams('', 'offerDate', offerDate));
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
  /// * [String] employmentStatusDescriptor:
  ///   Reflects the type of employment or contract.
  ///
  /// * [DateTime] hireDate:
  ///   The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
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
  /// * [String] separationDescriptor:
  ///   Type of employment separation.
  ///
  /// * [String] separationReasonDescriptor:
  ///   Reason for terminating the employment.
  ///
  /// * [double] annualWage:
  ///   Annual wage associated with the employment position being reported.
  ///
  /// * [String] department:
  ///   The department or suborganization the employee/contractor is associated with in the education organization.
  ///
  /// * [DateTime] endDate:
  ///   The month, day, and year on which a contract between an individual and a governing authority ends or is terminated under the provisions of the contract (or the date on which the agreement is made invalid).  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// * [double] fullTimeEquivalency:
  ///   The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.
  ///
  /// * [double] hourlyWage:
  ///   Hourly wage associated with the employment position being reported.
  ///
  /// * [String] id:
  ///   
  ///
  /// * [DateTime] offerDate:
  ///   Date at which the staff member was made an official offer for this employment.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<GetAcademicWeeksPartitions200Response?> getStaffEducationOrganizationEmploymentAssociationsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, String? employmentStatusDescriptor, DateTime? hireDate, int? educationOrganizationId, String? staffUniqueId, String? credentialIdentifier, String? stateOfIssueStateAbbreviationDescriptor, String? separationDescriptor, String? separationReasonDescriptor, double? annualWage, String? department, DateTime? endDate, double? fullTimeEquivalency, double? hourlyWage, String? id, DateTime? offerDate, bool? useSnapshot, }) async {
    final response = await getStaffEducationOrganizationEmploymentAssociationsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, employmentStatusDescriptor: employmentStatusDescriptor, hireDate: hireDate, educationOrganizationId: educationOrganizationId, staffUniqueId: staffUniqueId, credentialIdentifier: credentialIdentifier, stateOfIssueStateAbbreviationDescriptor: stateOfIssueStateAbbreviationDescriptor, separationDescriptor: separationDescriptor, separationReasonDescriptor: separationReasonDescriptor, annualWage: annualWage, department: department, endDate: endDate, fullTimeEquivalency: fullTimeEquivalency, hourlyWage: hourlyWage, id: id, offerDate: offerDate, useSnapshot: useSnapshot, );
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
  Future<Response> keyChangesStaffEducationOrganizationEmploymentAssociationsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffEducationOrganizationEmploymentAssociations/keyChanges';

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
  Future<List<TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKeyChange>?> keyChangesStaffEducationOrganizationEmploymentAssociations({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesStaffEducationOrganizationEmploymentAssociationsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKeyChange>') as List)
        .cast<TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKeyChange>()
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
  /// * [EdFiStaffEducationOrganizationEmploymentAssociation] edFiStaffEducationOrganizationEmploymentAssociation (required):
  ///   The JSON representation of the \"staffEducationOrganizationEmploymentAssociation\" resource to be created or updated.
  Future<Response> postStaffEducationOrganizationEmploymentAssociationWithHttpInfo(EdFiStaffEducationOrganizationEmploymentAssociation edFiStaffEducationOrganizationEmploymentAssociation,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffEducationOrganizationEmploymentAssociations';

    // ignore: prefer_final_locals
    Object? postBody = edFiStaffEducationOrganizationEmploymentAssociation;

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
  /// * [EdFiStaffEducationOrganizationEmploymentAssociation] edFiStaffEducationOrganizationEmploymentAssociation (required):
  ///   The JSON representation of the \"staffEducationOrganizationEmploymentAssociation\" resource to be created or updated.
  Future<void> postStaffEducationOrganizationEmploymentAssociation(EdFiStaffEducationOrganizationEmploymentAssociation edFiStaffEducationOrganizationEmploymentAssociation,) async {
    final response = await postStaffEducationOrganizationEmploymentAssociationWithHttpInfo(edFiStaffEducationOrganizationEmploymentAssociation,);
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
  /// * [EdFiStaffEducationOrganizationEmploymentAssociation] edFiStaffEducationOrganizationEmploymentAssociation (required):
  ///   The JSON representation of the \"staffEducationOrganizationEmploymentAssociation\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putStaffEducationOrganizationEmploymentAssociationWithHttpInfo(String id, EdFiStaffEducationOrganizationEmploymentAssociation edFiStaffEducationOrganizationEmploymentAssociation, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/staffEducationOrganizationEmploymentAssociations/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiStaffEducationOrganizationEmploymentAssociation;

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
  /// * [EdFiStaffEducationOrganizationEmploymentAssociation] edFiStaffEducationOrganizationEmploymentAssociation (required):
  ///   The JSON representation of the \"staffEducationOrganizationEmploymentAssociation\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putStaffEducationOrganizationEmploymentAssociation(String id, EdFiStaffEducationOrganizationEmploymentAssociation edFiStaffEducationOrganizationEmploymentAssociation, { String? ifMatch, }) async {
    final response = await putStaffEducationOrganizationEmploymentAssociationWithHttpInfo(id, edFiStaffEducationOrganizationEmploymentAssociation,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
