//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:edfi_resources_sdk/api.dart';
import 'package:test/test.dart';


/// tests for StaffSectionAssociationsApi
void main() {
  // final instance = StaffSectionAssociationsApi();

  group('tests for StaffSectionAssociationsApi', () {
    // Deletes an existing resource using the resource identifier.
    //
    // The DELETE operation is used to delete an existing resource by identifier. If the resource doesn't exist, an error will result (the resource will not be found).
    //
    //Future deleteStaffSectionAssociationById(String id, { String ifMatch }) async
    test('test deleteStaffSectionAssociationById', () async {
      // TODO
    });

    // Retrieves deleted resources based on change version.
    //
    // This operation is used to retrieve identifying information about resources that have been deleted.
    //
    //Future<List<TrackedChangesEdFiStaffSectionAssociationDelete>> deletesStaffSectionAssociations({ int offset, int limit, int minChangeVersion, int maxChangeVersion, bool totalCount, bool useSnapshot }) async
    test('test deletesStaffSectionAssociations', () async {
      // TODO
    });

    // Retrieves specific resources using the resource's property values (using the \"Get\" pattern).
    //
    // This GET operation provides access to resources using the \"Get\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).
    //
    //Future<List<EdFiStaffSectionAssociation>> getStaffSectionAssociations({ int offset, int limit, String pageToken, int pageSize, int minChangeVersion, int maxChangeVersion, bool totalCount, DateTime beginDate, String localCourseCode, int schoolId, int schoolYear, String sectionIdentifier, String sessionName, String staffUniqueId, String classroomPositionDescriptor, DateTime endDate, bool highlyQualifiedTeacher, String id, double percentageContribution, bool teacherStudentDataLinkExclusion, bool useSnapshot }) async
    test('test getStaffSectionAssociations', () async {
      // TODO
    });

    // Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).
    //
    // This GET operation retrieves a resource by the specified resource identifier.
    //
    //Future<EdFiStaffSectionAssociation> getStaffSectionAssociationsById(String id, { String ifNoneMatch, bool useSnapshot }) async
    test('test getStaffSectionAssociationsById', () async {
      // TODO
    });

    // Retrieves a set of page tokens to be used for efficient client-side parallel processing.
    //
    // Computes an evenly distributed set of partitions over the accessible data and returns a set of page tokens, each representing the first page of one of the partitions.
    //
    //Future<GetAcademicWeeksPartitions200Response> getStaffSectionAssociationsPartitions({ int number, int minChangeVersion, int maxChangeVersion, DateTime beginDate, String localCourseCode, int schoolId, int schoolYear, String sectionIdentifier, String sessionName, String staffUniqueId, String classroomPositionDescriptor, DateTime endDate, bool highlyQualifiedTeacher, String id, double percentageContribution, bool teacherStudentDataLinkExclusion, bool useSnapshot }) async
    test('test getStaffSectionAssociationsPartitions', () async {
      // TODO
    });

    // Retrieves resources key changes based on change version.
    //
    // This operation is used to retrieve identifying information about resources whose key values have been changed.
    //
    //Future<List<TrackedChangesEdFiStaffSectionAssociationKeyChange>> keyChangesStaffSectionAssociations({ int offset, int limit, int minChangeVersion, int maxChangeVersion, bool totalCount, bool useSnapshot }) async
    test('test keyChangesStaffSectionAssociations', () async {
      // TODO
    });

    // Creates or updates resources based on the natural key values of the supplied resource.
    //
    // The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update). Clients should NOT include the resource \"id\" in the JSON body because it will result in an error. The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately. It is recommended to use POST for both create and update except while updating natural key of a resource in which case PUT operation must be used.
    //
    //Future postStaffSectionAssociation(EdFiStaffSectionAssociation edFiStaffSectionAssociation) async
    test('test postStaffSectionAssociation', () async {
      // TODO
    });

    // Updates a resource based on the resource identifier.
    //
    // The PUT operation is used to update a resource by identifier. If the resource identifier (\"id\") is provided in the JSON body, it will be ignored. Additionally, this API resource is not configured for cascading natural key updates. Natural key values for this resource cannot be changed using PUT operation, so the recommendation is to use POST as that supports upsert behavior.
    //
    //Future putStaffSectionAssociation(String id, EdFiStaffSectionAssociation edFiStaffSectionAssociation, { String ifMatch }) async
    test('test putStaffSectionAssociation', () async {
      // TODO
    });

  });
}
