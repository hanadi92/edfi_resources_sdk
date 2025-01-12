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

// tests for EdFiStudentSchoolAssociation
void main() {
  // final instance = EdFiStudentSchoolAssociation();

  group('test EdFiStudentSchoolAssociation', () {
    // 
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student's enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
    // DateTime entryDate
    test('to test the property `entryDate`', () async {
      // TODO
    });

    // EdFiCalendarReference calendarReference
    test('to test the property `calendarReference`', () async {
      // TODO
    });

    // EdFiSchoolYearTypeReference classOfSchoolYearTypeReference
    test('to test the property `classOfSchoolYearTypeReference`', () async {
      // TODO
    });

    // EdFiGraduationPlanReference graduationPlanReference
    test('to test the property `graduationPlanReference`', () async {
      // TODO
    });

    // EdFiSchoolReference nextYearSchoolReference
    test('to test the property `nextYearSchoolReference`', () async {
      // TODO
    });

    // EdFiSchoolReference schoolReference
    test('to test the property `schoolReference`', () async {
      // TODO
    });

    // EdFiSchoolYearTypeReference schoolYearTypeReference
    test('to test the property `schoolYearTypeReference`', () async {
      // TODO
    });

    // EdFiStudentReference studentReference
    test('to test the property `studentReference`', () async {
      // TODO
    });

    // An unordered collection of studentSchoolAssociationAlternativeGraduationPlans. The secondary graduation plan or plans associated with the student enrolled in the school.
    // List<EdFiStudentSchoolAssociationAlternativeGraduationPlan> alternativeGraduationPlans (default value: const [])
    test('to test the property `alternativeGraduationPlans`', () async {
      // TODO
    });

    // An unordered collection of studentSchoolAssociationEducationPlans. The type of education plan(s) the student is following, if appropriate.
    // List<EdFiStudentSchoolAssociationEducationPlan> educationPlans (default value: const [])
    test('to test the property `educationPlans`', () async {
      // TODO
    });

    // An individual who is a paid employee or works in his or her own business, profession, or farm and at the same time is enrolled in secondary, postsecondary, or adult education.
    // bool employedWhileEnrolled
    test('to test the property `employedWhileEnrolled`', () async {
      // TODO
    });

    // The type of enrollment reflected by the StudentSchoolAssociation.
    // String enrollmentTypeDescriptor
    test('to test the property `enrollmentTypeDescriptor`', () async {
      // TODO
    });

    // The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session.
    // String entryGradeLevelDescriptor
    test('to test the property `entryGradeLevelDescriptor`', () async {
      // TODO
    });

    // The primary reason as to why a staff member determined that a student should be promoted or not (or be demoted) at the end of a given school term.
    // String entryGradeLevelReasonDescriptor
    test('to test the property `entryGradeLevelReasonDescriptor`', () async {
      // TODO
    });

    // The process by which a student enters a school during a given academic session.
    // String entryTypeDescriptor
    test('to test the property `entryTypeDescriptor`', () async {
      // TODO
    });

    // The recorded exit or withdraw date for the student.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
    // DateTime exitWithdrawDate
    test('to test the property `exitWithdrawDate`', () async {
      // TODO
    });

    // The circumstances under which the student exited from membership in an educational institution.
    // String exitWithdrawTypeDescriptor
    test('to test the property `exitWithdrawTypeDescriptor`', () async {
      // TODO
    });

    // The full-time equivalent ratio for the student s assignment to a school for services or instruction. For example, a full-time student would have an FTE value of 1 while a half-time student would have an FTE value of 0.5.
    // double fullTimeEquivalency
    test('to test the property `fullTimeEquivalency`', () async {
      // TODO
    });

    // The anticipated grade level for the student for the next school year.
    // String nextYearGradeLevelDescriptor
    test('to test the property `nextYearGradeLevelDescriptor`', () async {
      // TODO
    });

    // Indicates if a given enrollment record should be considered the primary record for a student.
    // bool primarySchool
    test('to test the property `primarySchool`', () async {
      // TODO
    });

    // An indicator of whether the student is enrolling to repeat a grade level, either by failure or an agreement to hold the student back.
    // bool repeatGradeIndicator
    test('to test the property `repeatGradeIndicator`', () async {
      // TODO
    });

    // An indication of the location of a persons legal residence relative to (within or outside of) the boundaries of the public school attended and its administrative unit.
    // String residencyStatusDescriptor
    test('to test the property `residencyStatusDescriptor`', () async {
      // TODO
    });

    // An indication of whether the student enrolled in this school under the provisions for public school choice
    // bool schoolChoice
    test('to test the property `schoolChoice`', () async {
      // TODO
    });

    // The legal basis for the school choice enrollment according to local, state or federal policy or regulation. (The descriptor provides the list of available bases specific to the state
    // String schoolChoiceBasisDescriptor
    test('to test the property `schoolChoiceBasisDescriptor`', () async {
      // TODO
    });

    // An indication of whether students transferred in or out of the school did so during the school year under the provisions for public school choice in accordance with Title I, Part A, Section 1116.
    // bool schoolChoiceTransfer
    test('to test the property `schoolChoiceTransfer`', () async {
      // TODO
    });

    // Idicates whether or not a student completed the most recent school term.
    // bool termCompletionIndicator
    test('to test the property `termCompletionIndicator`', () async {
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
