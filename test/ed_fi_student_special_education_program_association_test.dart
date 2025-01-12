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

// tests for EdFiStudentSpecialEducationProgramAssociation
void main() {
  // final instance = EdFiStudentSpecialEducationProgramAssociation();

  group('test EdFiStudentSpecialEducationProgramAssociation', () {
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

    // An unordered collection of studentSpecialEducationProgramAssociationDisabilities. The disability condition(s) that best describes an individual's impairment, as related to special education services received.
    // List<EdFiStudentSpecialEducationProgramAssociationDisability> disabilities (default value: const [])
    test('to test the property `disabilities`', () async {
      // TODO
    });

    // The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
    // DateTime endDate
    test('to test the property `endDate`', () async {
      // TODO
    });

    // Indicator of the eligibility of the student to receive special education services according to the Individuals with Disabilities Education Act (IDEA).
    // bool ideaEligibility
    test('to test the property `ideaEligibility`', () async {
      // TODO
    });

    // The effective date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
    // DateTime iepBeginDate
    test('to test the property `iepBeginDate`', () async {
      // TODO
    });

    // The end date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
    // DateTime iepEndDate
    test('to test the property `iepEndDate`', () async {
      // TODO
    });

    // The date of the last IEP review.
    // DateTime iepReviewDate
    test('to test the property `iepReviewDate`', () async {
      // TODO
    });

    // The date of the last special education evaluation.
    // DateTime lastEvaluationDate
    test('to test the property `lastEvaluationDate`', () async {
      // TODO
    });

    // Indicates whether the student receiving special education and related services is: 1) in the age range of birth to 22 years, and 2) has a serious, ongoing illness or a chronic condition that has lasted or is anticipated to last at least 12 or more months or has required at least one month of hospitalization, and that requires daily, ongoing medical treatments and monitoring by appropriately trained personnel which may include parents or other family members, and 3) requires the routine use of medical device or of assistive technology to compensate for the loss of usefulness of a body function needed to participate in activities of daily living, and 4) lives with ongoing threat to his or her continued well-being. Aligns with federal requirements.
    // bool medicallyFragile
    test('to test the property `medicallyFragile`', () async {
      // TODO
    });

    // Indicates whether the student receiving special education and related services has been designated as multiply disabled by the admission, review, and dismissal committee as aligned with federal requirements.
    // bool multiplyDisabled
    test('to test the property `multiplyDisabled`', () async {
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

    // Records the number of hours reduced for the shortened school day for the IEP student as compared to peers in regular education.
    // double reductionInHoursPerWeekComparedToPeers
    test('to test the property `reductionInHoursPerWeekComparedToPeers`', () async {
      // TODO
    });

    // Indicate the total number of hours of instructional time per week for the school that the student attends.
    // double schoolHoursPerWeek
    test('to test the property `schoolHoursPerWeek`', () async {
      // TODO
    });

    // Indicates whether the student received services during the summer session or between sessions.
    // bool servedOutsideOfRegularSession
    test('to test the property `servedOutsideOfRegularSession`', () async {
      // TODO
    });

    // An unordered collection of studentSpecialEducationProgramAssociationServiceProviders. The staff providing special education services to the student.
    // List<EdFiStudentSpecialEducationProgramAssociationServiceProvider> serviceProviders (default value: const [])
    test('to test the property `serviceProviders`', () async {
      // TODO
    });

    // Indicator that the student's IEP requires a shortened school day.
    // bool shortenedSchoolDayIndicator
    test('to test the property `shortenedSchoolDayIndicator`', () async {
      // TODO
    });

    // The  month, day and year on which a person stops receiving special education services.
    // DateTime specialEducationExitDate
    test('to test the property `specialEducationExitDate`', () async {
      // TODO
    });

    // Explanation on why a person stops receiving special education services.
    // String specialEducationExitExplained
    test('to test the property `specialEducationExitExplained`', () async {
      // TODO
    });

    // The reason why a person stops receiving special education services.
    // String specialEducationExitReasonDescriptor
    test('to test the property `specialEducationExitReasonDescriptor`', () async {
      // TODO
    });

    // The number of hours per week for special education instruction and therapy.
    // double specialEducationHoursPerWeek
    test('to test the property `specialEducationHoursPerWeek`', () async {
      // TODO
    });

    // An unordered collection of studentSpecialEducationProgramAssociationSpecialEducationProgramServices. Indicates the service(s) being provided to the student by the special education program.
    // List<EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService> specialEducationProgramServices (default value: const [])
    test('to test the property `specialEducationProgramServices`', () async {
      // TODO
    });

    // The major instructional setting (more than 50 percent of a student's special education program).
    // String specialEducationSettingDescriptor
    test('to test the property `specialEducationSettingDescriptor`', () async {
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
