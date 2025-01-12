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

// tests for EdFiStudentMigrantEducationProgramAssociation
void main() {
  // final instance = EdFiStudentMigrantEducationProgramAssociation();

  group('test EdFiStudentMigrantEducationProgramAssociation', () {
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

    // The \"continuation of services\" provision found in Section 1304(e) of the statute provides that (1) a child who ceases to be a migratory child during a school term shall be eligible for services until the end of such term; (2) a child who is no longer a migratory child may continue to receive services for one additional school year, but only if comparable services are not available through other programs; and (3) secondary school students who were eligible for services in secondary school may continue to be served through credit accrual programs until graduation. Only students who received services at any time during their 36 month eligibility period may continue to receive services (not necessarily the same service).
    // String continuationOfServicesReasonDescriptor
    test('to test the property `continuationOfServicesReasonDescriptor`', () async {
      // TODO
    });

    // The eligibility expiration date is used to determine end of eligibility and to account for a child's eligibility expiring earlier than 36 months from the child's QAD. A child's eligibility would end earlier than 36 months from the child's QAD, if the child is no longer entitled to a free public education (e.g., graduated with a high school diploma, obtained a high school equivalency diploma (HSED), or for other reasons as determined by states' requirements), or if the child passes away.
    // DateTime eligibilityExpirationDate
    test('to test the property `eligibilityExpirationDate`', () async {
      // TODO
    });

    // The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
    // DateTime endDate
    test('to test the property `endDate`', () async {
      // TODO
    });

    // Date the last qualifying move occurred; used to compute MEP status.
    // DateTime lastQualifyingMove
    test('to test the property `lastQualifyingMove`', () async {
      // TODO
    });

    // An unordered collection of studentMigrantEducationProgramAssociationMigrantEducationProgramServices. Indicates the service(s) being provided to the student by the migrant education program.
    // List<EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService> migrantEducationProgramServices (default value: const [])
    test('to test the property `migrantEducationProgramServices`', () async {
      // TODO
    });

    // Report migratory children who are classified as having \"priority for services\" because they are failing, or most at risk of failing to meet the state's challenging state academic content standards and challenging state student academic achievement standards, and their education has been interrupted during the regular school year.
    // bool priorityForServices
    test('to test the property `priorityForServices`', () async {
      // TODO
    });

    // An unordered collection of generalStudentProgramAssociationProgramParticipationStatuses. The status of the student's program participation.
    // List<EdFiGeneralStudentProgramAssociationProgramParticipationStatus> programParticipationStatuses (default value: const [])
    test('to test the property `programParticipationStatuses`', () async {
      // TODO
    });

    // The qualifying arrival date (QAD) is the date the child joins the worker who has already moved, or the date when the worker joins the child who has already moved. The QAD is the date that the child's eligibility for the MEP begins. The QAD is not affected by subsequent non-qualifying moves.
    // DateTime qualifyingArrivalDate
    test('to test the property `qualifyingArrivalDate`', () async {
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

    // The verified state residency for the student.
    // DateTime stateResidencyDate
    test('to test the property `stateResidencyDate`', () async {
      // TODO
    });

    // The month, day, and year on which the student first entered the U.S.
    // DateTime usInitialEntry
    test('to test the property `usInitialEntry`', () async {
      // TODO
    });

    // The month, day, and year on which the student first entered a U.S. school.
    // DateTime usInitialSchoolEntry
    test('to test the property `usInitialSchoolEntry`', () async {
      // TODO
    });

    // The month, day, and year of the student's most recent entry into the U.S.
    // DateTime usMostRecentEntry
    test('to test the property `usMostRecentEntry`', () async {
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
