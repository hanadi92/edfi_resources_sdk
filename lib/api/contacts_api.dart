//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ContactsApi {
  ContactsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteContactByIdWithHttpInfo(String id, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/contacts/{id}'
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
  Future<void> deleteContactById(String id, { String? ifMatch, }) async {
    final response = await deleteContactByIdWithHttpInfo(id,  ifMatch: ifMatch, );
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
  Future<Response> deletesContactsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/contacts/deletes';

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
  Future<List<TrackedChangesEdFiContactDelete>?> deletesContacts({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await deletesContactsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiContactDelete>') as List)
        .cast<TrackedChangesEdFiContactDelete>()
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
  /// * [String] contactUniqueId:
  ///   A unique alphanumeric code assigned to a contact.
  ///
  /// * [String] personId:
  ///   A unique alphanumeric code assigned to a person.
  ///
  /// * [String] sourceSystemDescriptor:
  ///   This descriptor defines the originating record source system for the person.
  ///
  /// * [String] highestCompletedLevelOfEducationDescriptor:
  ///   The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).
  ///
  /// * [String] sexDescriptor:
  ///   A person's birth sex.
  ///
  /// * [String] firstName:
  ///   A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  ///
  /// * [String] genderIdentity:
  ///   The gender the contact identifies themselves as.
  ///
  /// * [String] generationCodeSuffix:
  ///   An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] lastSurname:
  ///   The name borne in common by members of a family.
  ///
  /// * [String] loginId:
  ///   The login ID for the user; used for security access control interface.
  ///
  /// * [String] maidenName:
  ///   The individual's maiden name.
  ///
  /// * [String] middleName:
  ///   A secondary name given to an individual at birth, baptism, or during another naming ceremony.
  ///
  /// * [String] personalTitlePrefix:
  ///   A prefix used to denote the title, degree, position, or seniority of the individual.
  ///
  /// * [String] preferredFirstName:
  ///   The first name the individual prefers, if different from their legal first name
  ///
  /// * [String] preferredLastSurname:
  ///   The last name the individual prefers, if different from their legal last name
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getContactsWithHttpInfo({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? contactUniqueId, String? personId, String? sourceSystemDescriptor, String? highestCompletedLevelOfEducationDescriptor, String? sexDescriptor, String? firstName, String? genderIdentity, String? generationCodeSuffix, String? id, String? lastSurname, String? loginId, String? maidenName, String? middleName, String? personalTitlePrefix, String? preferredFirstName, String? preferredLastSurname, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/contacts';

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
    if (contactUniqueId != null) {
      queryParams.addAll(_queryParams('', 'contactUniqueId', contactUniqueId));
    }
    if (personId != null) {
      queryParams.addAll(_queryParams('', 'personId', personId));
    }
    if (sourceSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sourceSystemDescriptor', sourceSystemDescriptor));
    }
    if (highestCompletedLevelOfEducationDescriptor != null) {
      queryParams.addAll(_queryParams('', 'highestCompletedLevelOfEducationDescriptor', highestCompletedLevelOfEducationDescriptor));
    }
    if (sexDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sexDescriptor', sexDescriptor));
    }
    if (firstName != null) {
      queryParams.addAll(_queryParams('', 'firstName', firstName));
    }
    if (genderIdentity != null) {
      queryParams.addAll(_queryParams('', 'genderIdentity', genderIdentity));
    }
    if (generationCodeSuffix != null) {
      queryParams.addAll(_queryParams('', 'generationCodeSuffix', generationCodeSuffix));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (lastSurname != null) {
      queryParams.addAll(_queryParams('', 'lastSurname', lastSurname));
    }
    if (loginId != null) {
      queryParams.addAll(_queryParams('', 'loginId', loginId));
    }
    if (maidenName != null) {
      queryParams.addAll(_queryParams('', 'maidenName', maidenName));
    }
    if (middleName != null) {
      queryParams.addAll(_queryParams('', 'middleName', middleName));
    }
    if (personalTitlePrefix != null) {
      queryParams.addAll(_queryParams('', 'personalTitlePrefix', personalTitlePrefix));
    }
    if (preferredFirstName != null) {
      queryParams.addAll(_queryParams('', 'preferredFirstName', preferredFirstName));
    }
    if (preferredLastSurname != null) {
      queryParams.addAll(_queryParams('', 'preferredLastSurname', preferredLastSurname));
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
  /// * [String] contactUniqueId:
  ///   A unique alphanumeric code assigned to a contact.
  ///
  /// * [String] personId:
  ///   A unique alphanumeric code assigned to a person.
  ///
  /// * [String] sourceSystemDescriptor:
  ///   This descriptor defines the originating record source system for the person.
  ///
  /// * [String] highestCompletedLevelOfEducationDescriptor:
  ///   The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).
  ///
  /// * [String] sexDescriptor:
  ///   A person's birth sex.
  ///
  /// * [String] firstName:
  ///   A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  ///
  /// * [String] genderIdentity:
  ///   The gender the contact identifies themselves as.
  ///
  /// * [String] generationCodeSuffix:
  ///   An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] lastSurname:
  ///   The name borne in common by members of a family.
  ///
  /// * [String] loginId:
  ///   The login ID for the user; used for security access control interface.
  ///
  /// * [String] maidenName:
  ///   The individual's maiden name.
  ///
  /// * [String] middleName:
  ///   A secondary name given to an individual at birth, baptism, or during another naming ceremony.
  ///
  /// * [String] personalTitlePrefix:
  ///   A prefix used to denote the title, degree, position, or seniority of the individual.
  ///
  /// * [String] preferredFirstName:
  ///   The first name the individual prefers, if different from their legal first name
  ///
  /// * [String] preferredLastSurname:
  ///   The last name the individual prefers, if different from their legal last name
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<List<EdFiContact>?> getContacts({ int? offset, int? limit, String? pageToken, int? pageSize, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, String? contactUniqueId, String? personId, String? sourceSystemDescriptor, String? highestCompletedLevelOfEducationDescriptor, String? sexDescriptor, String? firstName, String? genderIdentity, String? generationCodeSuffix, String? id, String? lastSurname, String? loginId, String? maidenName, String? middleName, String? personalTitlePrefix, String? preferredFirstName, String? preferredLastSurname, bool? useSnapshot, }) async {
    final response = await getContactsWithHttpInfo( offset: offset, limit: limit, pageToken: pageToken, pageSize: pageSize, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, contactUniqueId: contactUniqueId, personId: personId, sourceSystemDescriptor: sourceSystemDescriptor, highestCompletedLevelOfEducationDescriptor: highestCompletedLevelOfEducationDescriptor, sexDescriptor: sexDescriptor, firstName: firstName, genderIdentity: genderIdentity, generationCodeSuffix: generationCodeSuffix, id: id, lastSurname: lastSurname, loginId: loginId, maidenName: maidenName, middleName: middleName, personalTitlePrefix: personalTitlePrefix, preferredFirstName: preferredFirstName, preferredLastSurname: preferredLastSurname, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EdFiContact>') as List)
        .cast<EdFiContact>()
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
  Future<Response> getContactsByIdWithHttpInfo(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/contacts/{id}'
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
  Future<EdFiContact?> getContactsById(String id, { String? ifNoneMatch, bool? useSnapshot, }) async {
    final response = await getContactsByIdWithHttpInfo(id,  ifNoneMatch: ifNoneMatch, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EdFiContact',) as EdFiContact;
    
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
  /// * [String] contactUniqueId:
  ///   A unique alphanumeric code assigned to a contact.
  ///
  /// * [String] personId:
  ///   A unique alphanumeric code assigned to a person.
  ///
  /// * [String] sourceSystemDescriptor:
  ///   This descriptor defines the originating record source system for the person.
  ///
  /// * [String] highestCompletedLevelOfEducationDescriptor:
  ///   The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).
  ///
  /// * [String] sexDescriptor:
  ///   A person's birth sex.
  ///
  /// * [String] firstName:
  ///   A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  ///
  /// * [String] genderIdentity:
  ///   The gender the contact identifies themselves as.
  ///
  /// * [String] generationCodeSuffix:
  ///   An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] lastSurname:
  ///   The name borne in common by members of a family.
  ///
  /// * [String] loginId:
  ///   The login ID for the user; used for security access control interface.
  ///
  /// * [String] maidenName:
  ///   The individual's maiden name.
  ///
  /// * [String] middleName:
  ///   A secondary name given to an individual at birth, baptism, or during another naming ceremony.
  ///
  /// * [String] personalTitlePrefix:
  ///   A prefix used to denote the title, degree, position, or seniority of the individual.
  ///
  /// * [String] preferredFirstName:
  ///   The first name the individual prefers, if different from their legal first name
  ///
  /// * [String] preferredLastSurname:
  ///   The last name the individual prefers, if different from their legal last name
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<Response> getContactsPartitionsWithHttpInfo({ int? number, int? minChangeVersion, int? maxChangeVersion, String? contactUniqueId, String? personId, String? sourceSystemDescriptor, String? highestCompletedLevelOfEducationDescriptor, String? sexDescriptor, String? firstName, String? genderIdentity, String? generationCodeSuffix, String? id, String? lastSurname, String? loginId, String? maidenName, String? middleName, String? personalTitlePrefix, String? preferredFirstName, String? preferredLastSurname, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/contacts/partitions';

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
    if (contactUniqueId != null) {
      queryParams.addAll(_queryParams('', 'contactUniqueId', contactUniqueId));
    }
    if (personId != null) {
      queryParams.addAll(_queryParams('', 'personId', personId));
    }
    if (sourceSystemDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sourceSystemDescriptor', sourceSystemDescriptor));
    }
    if (highestCompletedLevelOfEducationDescriptor != null) {
      queryParams.addAll(_queryParams('', 'highestCompletedLevelOfEducationDescriptor', highestCompletedLevelOfEducationDescriptor));
    }
    if (sexDescriptor != null) {
      queryParams.addAll(_queryParams('', 'sexDescriptor', sexDescriptor));
    }
    if (firstName != null) {
      queryParams.addAll(_queryParams('', 'firstName', firstName));
    }
    if (genderIdentity != null) {
      queryParams.addAll(_queryParams('', 'genderIdentity', genderIdentity));
    }
    if (generationCodeSuffix != null) {
      queryParams.addAll(_queryParams('', 'generationCodeSuffix', generationCodeSuffix));
    }
    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
    }
    if (lastSurname != null) {
      queryParams.addAll(_queryParams('', 'lastSurname', lastSurname));
    }
    if (loginId != null) {
      queryParams.addAll(_queryParams('', 'loginId', loginId));
    }
    if (maidenName != null) {
      queryParams.addAll(_queryParams('', 'maidenName', maidenName));
    }
    if (middleName != null) {
      queryParams.addAll(_queryParams('', 'middleName', middleName));
    }
    if (personalTitlePrefix != null) {
      queryParams.addAll(_queryParams('', 'personalTitlePrefix', personalTitlePrefix));
    }
    if (preferredFirstName != null) {
      queryParams.addAll(_queryParams('', 'preferredFirstName', preferredFirstName));
    }
    if (preferredLastSurname != null) {
      queryParams.addAll(_queryParams('', 'preferredLastSurname', preferredLastSurname));
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
  /// * [String] contactUniqueId:
  ///   A unique alphanumeric code assigned to a contact.
  ///
  /// * [String] personId:
  ///   A unique alphanumeric code assigned to a person.
  ///
  /// * [String] sourceSystemDescriptor:
  ///   This descriptor defines the originating record source system for the person.
  ///
  /// * [String] highestCompletedLevelOfEducationDescriptor:
  ///   The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).
  ///
  /// * [String] sexDescriptor:
  ///   A person's birth sex.
  ///
  /// * [String] firstName:
  ///   A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  ///
  /// * [String] genderIdentity:
  ///   The gender the contact identifies themselves as.
  ///
  /// * [String] generationCodeSuffix:
  ///   An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  ///
  /// * [String] id:
  ///   
  ///
  /// * [String] lastSurname:
  ///   The name borne in common by members of a family.
  ///
  /// * [String] loginId:
  ///   The login ID for the user; used for security access control interface.
  ///
  /// * [String] maidenName:
  ///   The individual's maiden name.
  ///
  /// * [String] middleName:
  ///   A secondary name given to an individual at birth, baptism, or during another naming ceremony.
  ///
  /// * [String] personalTitlePrefix:
  ///   A prefix used to denote the title, degree, position, or seniority of the individual.
  ///
  /// * [String] preferredFirstName:
  ///   The first name the individual prefers, if different from their legal first name
  ///
  /// * [String] preferredLastSurname:
  ///   The last name the individual prefers, if different from their legal last name
  ///
  /// * [bool] useSnapshot:
  ///   Indicates if the configured Snapshot should be used.
  Future<GetAcademicWeeksPartitions200Response?> getContactsPartitions({ int? number, int? minChangeVersion, int? maxChangeVersion, String? contactUniqueId, String? personId, String? sourceSystemDescriptor, String? highestCompletedLevelOfEducationDescriptor, String? sexDescriptor, String? firstName, String? genderIdentity, String? generationCodeSuffix, String? id, String? lastSurname, String? loginId, String? maidenName, String? middleName, String? personalTitlePrefix, String? preferredFirstName, String? preferredLastSurname, bool? useSnapshot, }) async {
    final response = await getContactsPartitionsWithHttpInfo( number: number, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, contactUniqueId: contactUniqueId, personId: personId, sourceSystemDescriptor: sourceSystemDescriptor, highestCompletedLevelOfEducationDescriptor: highestCompletedLevelOfEducationDescriptor, sexDescriptor: sexDescriptor, firstName: firstName, genderIdentity: genderIdentity, generationCodeSuffix: generationCodeSuffix, id: id, lastSurname: lastSurname, loginId: loginId, maidenName: maidenName, middleName: middleName, personalTitlePrefix: personalTitlePrefix, preferredFirstName: preferredFirstName, preferredLastSurname: preferredLastSurname, useSnapshot: useSnapshot, );
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
  Future<Response> keyChangesContactsWithHttpInfo({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/contacts/keyChanges';

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
  Future<List<TrackedChangesEdFiContactKeyChange>?> keyChangesContacts({ int? offset, int? limit, int? minChangeVersion, int? maxChangeVersion, bool? totalCount, bool? useSnapshot, }) async {
    final response = await keyChangesContactsWithHttpInfo( offset: offset, limit: limit, minChangeVersion: minChangeVersion, maxChangeVersion: maxChangeVersion, totalCount: totalCount, useSnapshot: useSnapshot, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TrackedChangesEdFiContactKeyChange>') as List)
        .cast<TrackedChangesEdFiContactKeyChange>()
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
  /// * [EdFiContact] edFiContact (required):
  ///   The JSON representation of the \"contact\" resource to be created or updated.
  Future<Response> postContactWithHttpInfo(EdFiContact edFiContact,) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/contacts';

    // ignore: prefer_final_locals
    Object? postBody = edFiContact;

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
  /// * [EdFiContact] edFiContact (required):
  ///   The JSON representation of the \"contact\" resource to be created or updated.
  Future<void> postContact(EdFiContact edFiContact,) async {
    final response = await postContactWithHttpInfo(edFiContact,);
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
  /// * [EdFiContact] edFiContact (required):
  ///   The JSON representation of the \"contact\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<Response> putContactWithHttpInfo(String id, EdFiContact edFiContact, { String? ifMatch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/ed-fi/contacts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = edFiContact;

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
  /// * [EdFiContact] edFiContact (required):
  ///   The JSON representation of the \"contact\" resource to be created or updated.
  ///
  /// * [String] ifMatch:
  ///   The ETag header value used to prevent the PUT from updating a resource modified by another consumer.
  Future<void> putContact(String id, EdFiContact edFiContact, { String? ifMatch, }) async {
    final response = await putContactWithHttpInfo(id, edFiContact,  ifMatch: ifMatch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
