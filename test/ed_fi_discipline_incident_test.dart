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

// tests for EdFiDisciplineIncident
void main() {
  // final instance = EdFiDisciplineIncident();

  group('test EdFiDisciplineIncident', () {
    // 
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.
    // String incidentIdentifier
    test('to test the property `incidentIdentifier`', () async {
      // TODO
    });

    // EdFiSchoolReference schoolReference
    test('to test the property `schoolReference`', () async {
      // TODO
    });

    // An unordered collection of disciplineIncidentBehaviors. Describes behavior by category and provides a detailed description.
    // List<EdFiDisciplineIncidentBehavior> behaviors (default value: const [])
    test('to test the property `behaviors`', () async {
      // TODO
    });

    // The case number assigned to the DisciplineIncident by law enforcement or other organization.
    // String caseNumber
    test('to test the property `caseNumber`', () async {
      // TODO
    });

    // An unordered collection of disciplineIncidentExternalParticipants. Information on an individual involved in the discipline incident.
    // List<EdFiDisciplineIncidentExternalParticipant> externalParticipants (default value: const [])
    test('to test the property `externalParticipants`', () async {
      // TODO
    });

    // The value of any quantifiable monetary loss directly resulting from the discipline incident. Examples include the value of repairs necessitated by vandalism of a school facility, or the value of personnel resources used for repairs or consumed by the incident.
    // double incidentCost
    test('to test the property `incidentCost`', () async {
      // TODO
    });

    // The month, day, and year on which the discipline incident occurred.
    // DateTime incidentDate
    test('to test the property `incidentDate`', () async {
      // TODO
    });

    // The description for an incident.
    // String incidentDescription
    test('to test the property `incidentDescription`', () async {
      // TODO
    });

    // Identifies where the discipline incident occurred and whether or not it occurred on school.
    // String incidentLocationDescriptor
    test('to test the property `incidentLocationDescriptor`', () async {
      // TODO
    });

    // An indication of the time of day the incident took place.
    // String incidentTime
    test('to test the property `incidentTime`', () async {
      // TODO
    });

    // Indicator of whether the incident was reported to law enforcement.
    // bool reportedToLawEnforcement
    test('to test the property `reportedToLawEnforcement`', () async {
      // TODO
    });

    // Information on the type of individual who reported the discipline incident. When known and/or if useful, use a more specific option code (e.g., \"Counselor\" rather than \"Professional Staff\").
    // String reporterDescriptionDescriptor
    test('to test the property `reporterDescriptionDescriptor`', () async {
      // TODO
    });

    // Identifies the reporter of the discipline incident by name.
    // String reporterName
    test('to test the property `reporterName`', () async {
      // TODO
    });

    // An unordered collection of disciplineIncidentWeapons. Identifies the type of weapon used during an incident. The Federal Gun-Free Schools Act requires states to report the number of students expelled for bringing firearms to school by type of firearm.
    // List<EdFiDisciplineIncidentWeapon> weapons (default value: const [])
    test('to test the property `weapons`', () async {
      // TODO
    });

    // A unique system-generated value that identifies the version of the resource.
    // String etag
    test('to test the property `etag`', () async {
      // TODO
    });

    // The date and time the resource was last modified.
    // DateTime lastModifiedDate
    test('to test the property `lastModifiedDate`', () async {
      // TODO
    });


  });

}
