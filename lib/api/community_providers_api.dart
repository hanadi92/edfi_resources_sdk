//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CommunityProvidersApi {
  CommunityProvidersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteCommunityProviderByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/communityProviders/{id}'
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
  Future<void> deleteCommunityProviderById(String id, { String? ifMatch, }) async {
    final response = await deleteCommunityProviderByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesCommunityProvidersWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/communityProviders/deletes';

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
  Future<List<TrackedChangesEdFiCommunityProviderDelete>?> deletesCommunityProviders({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesCommunityProvidersWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiCommunityProviderDelete>') as List)
        .cast<TrackedChangesEdFiCommunityProviderDelete>()
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
  /// * [int] communityProviderId:
  ///   The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [int] communityOrganizationId:
  ///   The identifier assigned to a community organization. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [String] providerCategoryDescriptor:
  ///   Indicates the category of the provider.
  ///
  /// * [String] providerProfitabilityDescriptor:
  ///   Indicates the profitability status of the provider.
  ///
  /// * [String] providerStatusDescriptor:
  ///   Indicates the status of the provider.
  ///
  /// * [bool] licenseExemptIndicator:
  ///   An indication of whether the provider is exempt from having a license.
  ///
  /// * [bool] schoolIndicator:
  ///   An indication of whether the community provider is a school.
  ///
  /// * [String] operationalStatusDescriptor:
  ///   The current operational status of the education organization (e.g., active, inactive).
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] nameOfInstitution:
  ///   The full, legally accepted name of the institution.
  ///
  /// * [String] shortNameOfInstitution:
  ///   A short name for the institution.
  ///
  /// * [String] webSite:
  ///   The public web site address (URL) for the education organization.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] educationOrganizationIdentificationSystemDescriptor:
  ///   The school system, state, or agency assigning the identification code.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code that is assigned to an education organization by a school, school system, state, or other agency or entity.
  Future<Response> getCommunityProvidersWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, int? communityProviderId, int? communityOrganizationId, String? providerCategoryDescriptor, String? providerProfitabilityDescriptor, String? providerStatusDescriptor, bool? licenseExemptIndicator, bool? schoolIndicator, String? operationalStatusDescriptor, String? id, String? nameOfInstitution, String? shortNameOfInstitution, String? webSite, bool? useSnapshot, String? educationOrganizationIdentificationSystemDescriptor, String? identificationCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/communityProviders';

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
    if (communityProviderId != null) {
      queryParams.addAll(_queryParams('', 'communityProviderId', communityProviderId));
    }
    if (communityOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'communityOrganizationId', communityOrganizationId));
    }
    if (providerCategoryDescriptor != null) {
      queryParams.addAll(_queryParams('', 'providerCategoryDescriptor', providerCategoryDescriptor));
    }
    if (providerProfitabilityDescriptor != null) {
      queryParams.addAll(_queryParams('', 'providerProfitabilityDescriptor', providerProfitabilityDescriptor));
    }
    if (providerStatusDescriptor != null) {
      queryParams.addAll(_queryParams('', 'providerStatusDescriptor', providerStatusDescriptor));
    }
    if (licenseExemptIndicator != null) {
      queryParams.addAll(_queryParams('', 'licenseExemptIndicator', licenseExemptIndicator));
    }
    if (schoolIndicator != null) {
      queryParams.addAll(_queryParams('', 'schoolIndicator', schoolIndicator));
    }
    if (operationalStatusDescriptor != null) {
      queryParams.addAll(_queryParams('', 'operationalStatusDescriptor', operationalStatusDescriptor));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (nameOfInstitution != null) {
      queryParams.addAll(_queryParams('', 'nameOfInstitution', nameOfInstitution));
    }
    if (shortNameOfInstitution != null) {
      queryParams.addAll(_queryParams('', 'shortNameOfInstitution', shortNameOfInstitution));
    }
    if (webSite != null) {
      queryParams.addAll(_queryParams('', 'webSite', webSite));
    }
    if (educationOrganizationIdentificationSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'educationOrganizationIdentificationSystemDescriptor', educationOrganizationIdentificationSystemDescriptor));
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
  /// * [int] communityProviderId:
  ///   The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [int] communityOrganizationId:
  ///   The identifier assigned to a community organization. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [String] providerCategoryDescriptor:
  ///   Indicates the category of the provider.
  ///
  /// * [String] providerProfitabilityDescriptor:
  ///   Indicates the profitability status of the provider.
  ///
  /// * [String] providerStatusDescriptor:
  ///   Indicates the status of the provider.
  ///
  /// * [bool] licenseExemptIndicator:
  ///   An indication of whether the provider is exempt from having a license.
  ///
  /// * [bool] schoolIndicator:
  ///   An indication of whether the community provider is a school.
  ///
  /// * [String] operationalStatusDescriptor:
  ///   The current operational status of the education organization (e.g., active, inactive).
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] nameOfInstitution:
  ///   The full, legally accepted name of the institution.
  ///
  /// * [String] shortNameOfInstitution:
  ///   A short name for the institution.
  ///
  /// * [String] webSite:
  ///   The public web site address (URL) for the education organization.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] educationOrganizationIdentificationSystemDescriptor:
  ///   The school system, state, or agency assigning the identification code.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code that is assigned to an education organization by a school, school system, state, or other agency or entity.
  Future<List<EdFiCommunityProvider>?> getCommunityProviders({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, int? communityProviderId, int? communityOrganizationId, String? providerCategoryDescriptor, String? providerProfitabilityDescriptor, String? providerStatusDescriptor, bool? licenseExemptIndicator, bool? schoolIndicator, String? operationalStatusDescriptor, String? id, String? nameOfInstitution, String? shortNameOfInstitution, String? webSite, bool? useSnapshot, String? educationOrganizationIdentificationSystemDescriptor, String? identificationCode, }) async {
    final response = await getCommunityProvidersWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, communityProviderId: communityProviderId, communityOrganizationId: communityOrganizationId, providerCategoryDescriptor: providerCategoryDescriptor, providerProfitabilityDescriptor: providerProfitabilityDescriptor, providerStatusDescriptor: providerStatusDescriptor, licenseExemptIndicator: licenseExemptIndicator, schoolIndicator: schoolIndicator, operationalStatusDescriptor: operationalStatusDescriptor, id: id, nameOfInstitution: nameOfInstitution, shortNameOfInstitution: shortNameOfInstitution, webSite: webSite, useSnapshot: useSnapshot, educationOrganizationIdentificationSystemDescriptor: educationOrganizationIdentificationSystemDescriptor, identificationCode: identificationCode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiCommunityProvider>') as List)
        .cast<EdFiCommunityProvider>()
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
  Future<Response> getCommunityProvidersByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/communityProviders/{id}'
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
  Future<EdFiCommunityProvider?> getCommunityProvidersById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getCommunityProvidersByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiCommunityProvider',) as EdFiCommunityProvider;
    
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
  /// * [int] communityProviderId:
  ///   The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [int] communityOrganizationId:
  ///   The identifier assigned to a community organization. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [String] providerCategoryDescriptor:
  ///   Indicates the category of the provider.
  ///
  /// * [String] providerProfitabilityDescriptor:
  ///   Indicates the profitability status of the provider.
  ///
  /// * [String] providerStatusDescriptor:
  ///   Indicates the status of the provider.
  ///
  /// * [bool] licenseExemptIndicator:
  ///   An indication of whether the provider is exempt from having a license.
  ///
  /// * [bool] schoolIndicator:
  ///   An indication of whether the community provider is a school.
  ///
  /// * [String] operationalStatusDescriptor:
  ///   The current operational status of the education organization (e.g., active, inactive).
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] nameOfInstitution:
  ///   The full, legally accepted name of the institution.
  ///
  /// * [String] shortNameOfInstitution:
  ///   A short name for the institution.
  ///
  /// * [String] webSite:
  ///   The public web site address (URL) for the education organization.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] educationOrganizationIdentificationSystemDescriptor:
  ///   The school system, state, or agency assigning the identification code.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code that is assigned to an education organization by a school, school system, state, or other agency or entity.
  Future<Response> getCommunityProvidersPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, int? communityProviderId, int? communityOrganizationId, String? providerCategoryDescriptor, String? providerProfitabilityDescriptor, String? providerStatusDescriptor, bool? licenseExemptIndicator, bool? schoolIndicator, String? operationalStatusDescriptor, String? id, String? nameOfInstitution, String? shortNameOfInstitution, String? webSite, bool? useSnapshot, String? educationOrganizationIdentificationSystemDescriptor, String? identificationCode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/communityProviders/partitions';

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
    if (communityProviderId != null) {
      queryParams.addAll(_queryParams('', 'communityProviderId', communityProviderId));
    }
    if (communityOrganizationId != null) {
      queryParams.addAll(_queryParams('', 'communityOrganizationId', communityOrganizationId));
    }
    if (providerCategoryDescriptor != null) {
      queryParams.addAll(_queryParams('', 'providerCategoryDescriptor', providerCategoryDescriptor));
    }
    if (providerProfitabilityDescriptor != null) {
      queryParams.addAll(_queryParams('', 'providerProfitabilityDescriptor', providerProfitabilityDescriptor));
    }
    if (providerStatusDescriptor != null) {
      queryParams.addAll(_queryParams('', 'providerStatusDescriptor', providerStatusDescriptor));
    }
    if (licenseExemptIndicator != null) {
      queryParams.addAll(_queryParams('', 'licenseExemptIndicator', licenseExemptIndicator));
    }
    if (schoolIndicator != null) {
      queryParams.addAll(_queryParams('', 'schoolIndicator', schoolIndicator));
    }
    if (operationalStatusDescriptor != null) {
      queryParams.addAll(_queryParams('', 'operationalStatusDescriptor', operationalStatusDescriptor));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (nameOfInstitution != null) {
      queryParams.addAll(_queryParams('', 'nameOfInstitution', nameOfInstitution));
    }
    if (shortNameOfInstitution != null) {
      queryParams.addAll(_queryParams('', 'shortNameOfInstitution', shortNameOfInstitution));
    }
    if (webSite != null) {
      queryParams.addAll(_queryParams('', 'webSite', webSite));
    }
    if (educationOrganizationIdentificationSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'educationOrganizationIdentificationSystemDescriptor', educationOrganizationIdentificationSystemDescriptor));
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
  /// * [int] communityProviderId:
  ///   The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [int] communityOrganizationId:
  ///   The identifier assigned to a community organization. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// * [String] providerCategoryDescriptor:
  ///   Indicates the category of the provider.
  ///
  /// * [String] providerProfitabilityDescriptor:
  ///   Indicates the profitability status of the provider.
  ///
  /// * [String] providerStatusDescriptor:
  ///   Indicates the status of the provider.
  ///
  /// * [bool] licenseExemptIndicator:
  ///   An indication of whether the provider is exempt from having a license.
  ///
  /// * [bool] schoolIndicator:
  ///   An indication of whether the community provider is a school.
  ///
  /// * [String] operationalStatusDescriptor:
  ///   The current operational status of the education organization (e.g., active, inactive).
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] nameOfInstitution:
  ///   The full, legally accepted name of the institution.
  ///
  /// * [String] shortNameOfInstitution:
  ///   A short name for the institution.
  ///
  /// * [String] webSite:
  ///   The public web site address (URL) for the education organization.
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  ///
  /// * [String] educationOrganizationIdentificationSystemDescriptor:
  ///   The school system, state, or agency assigning the identification code.
  ///
  /// * [String] identificationCode:
  ///   A unique number or alphanumeric code that is assigned to an education organization by a school, school system, state, or other agency or entity.
  Future<GetAcademicWeeksPartitions200Response?> getCommunityProvidersPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, int? communityProviderId, int? communityOrganizationId, String? providerCategoryDescriptor, String? providerProfitabilityDescriptor, String? providerStatusDescriptor, bool? licenseExemptIndicator, bool? schoolIndicator, String? operationalStatusDescriptor, String? id, String? nameOfInstitution, String? shortNameOfInstitution, String? webSite, bool? useSnapshot, String? educationOrganizationIdentificationSystemDescriptor, String? identificationCode, }) async {
    final response = await getCommunityProvidersPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, communityProviderId: communityProviderId, communityOrganizationId: communityOrganizationId, providerCategoryDescriptor: providerCategoryDescriptor, providerProfitabilityDescriptor: providerProfitabilityDescriptor, providerStatusDescriptor: providerStatusDescriptor, licenseExemptIndicator: licenseExemptIndicator, schoolIndicator: schoolIndicator, operationalStatusDescriptor: operationalStatusDescriptor, id: id, nameOfInstitution: nameOfInstitution, shortNameOfInstitution: shortNameOfInstitution, webSite: webSite, useSnapshot: useSnapshot, educationOrganizationIdentificationSystemDescriptor: educationOrganizationIdentificationSystemDescriptor, identificationCode: identificationCode, );
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
  Future<Response> keyChangesCommunityProvidersWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/communityProviders/keyChanges';

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
  Future<List<TrackedChangesEdFiCommunityProviderKeyChange>?> keyChangesCommunityProviders({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesCommunityProvidersWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiCommunityProviderKeyChange>') as List)
        .cast<TrackedChangesEdFiCommunityProviderKeyChange>()
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
  /// * [EdFiCommunityProvider] edFiCommunityProvider (required):
  ///   The JSON representation of the \"communityProvider\" resource to be created or updated.
  Future<Response> postCommunityProviderWithHttpInfo(EdFiCommunityProvider edFiCommunityProvider,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/communityProviders';

    // ignore: prefer_final_locals
    Object? postBody = edFiCommunityProvider;

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
  /// * [EdFiCommunityProvider] edFiCommunityProvider (required):
  ///   The JSON representation of the \"communityProvider\" resource to be created or updated.
  Future<void> postCommunityProvider(EdFiCommunityProvider edFiCommunityProvider,) async {
    final response = await postCommunityProviderWithHttpInfo(edFiCommunityProvider,);
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
  /// * [EdFiCommunityProvider] edFiCommunityProvider (required):
  ///   The JSON representation of the \"communityProvider\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putCommunityProviderWithHttpInfo(String id, EdFiCommunityProvider edFiCommunityProvider, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/communityProviders/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiCommunityProvider;

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
  /// * [EdFiCommunityProvider] edFiCommunityProvider (required):
  ///   The JSON representation of the \"communityProvider\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putCommunityProvider(String id, EdFiCommunityProvider edFiCommunityProvider, { String? ifMatch, }) async {
    final response = await putCommunityProviderWithHttpInfo(id, edFiCommunityProvider,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
