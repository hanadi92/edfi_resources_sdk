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

// tests for EdFiStudentCTEProgramAssociation
void main() {
  // final instance = EdFiStudentCTEProgramAssociation();

  group('test EdFiStudentCTEProgramAssociation', () {
    // 
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
    // DateTime beginDate
    test('to test the property `beginDate`', () async {
      // TODO
    });

    // EdFiEducationOrganizationReference educationOrganizationReference
    test('to test the property `educationOrganizationReference`', () async {
      // TODO
    });

    // EdFiProgramReference programReference
    test('to test the property `programReference`', () async {
      // TODO
    });

    // EdFiStudentReference studentReference
    test('to test the property `studentReference`', () async {
      // TODO
    });

    // An unordered collection of studentCTEProgramAssociationCTEProgramServices. Indicates the service(s) being provided to the student by the CTE program.
    // List<EdFiStudentCTEProgramAssociationCTEProgramService> cteProgramServices (default value: const [])
    test('to test the property `cteProgramServices`', () async {
      // TODO
    });

    // The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
    // DateTime endDate
    test('to test the property `endDate`', () async {
      // TODO
    });

    // Indicator that student is from a gender group that comprises less than 25% of the individuals employed in an occupation or field of work.
    // bool nonTraditionalGenderStatus
    test('to test the property `nonTraditionalGenderStatus`', () async {
      // TODO
    });

    // Indicator that student participated in career and technical education at private agencies or institutions that are reported by the state for purposes of the Elementary and Secondary Education Act (ESEA). Students in private institutions which do not receive Perkins funding are reported only in the state file.
    // bool privateCTEProgram
    test('to test the property `privateCTEProgram`', () async {
      // TODO
    });

    // An unordered collection of generalStudentProgramAssociationProgramParticipationStatuses. The status of the student's program participation.
    // List<EdFiGeneralStudentProgramAssociationProgramParticipationStatus> programParticipationStatuses (default value: const [])
    test('to test the property `programParticipationStatuses`', () async {
      // TODO
    });

    // The reason the student left the program within a school or district.
    // String reasonExitedDescriptor
    test('to test the property `reasonExitedDescriptor`', () async {
      // TODO
    });

    // Indicates whether the student received services during the summer session or between sessions.
    // bool servedOutsideOfRegularSession
    test('to test the property `servedOutsideOfRegularSession`', () async {
      // TODO
    });

    // Results of technical skills assessment aligned with industry recognized standards.
    // String technicalSkillsAssessmentDescriptor
    test('to test the property `technicalSkillsAssessmentDescriptor`', () async {
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
