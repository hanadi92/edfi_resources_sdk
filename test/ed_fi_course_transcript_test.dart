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

// tests for EdFiCourseTranscript
void main() {
  // final instance = EdFiCourseTranscript();

  group('test EdFiCourseTranscript', () {
    // 
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The result from the student's attempt to take the course.
    // String courseAttemptResultDescriptor
    test('to test the property `courseAttemptResultDescriptor`', () async {
      // TODO
    });

    // EdFiCourseReference courseReference
    test('to test the property `courseReference`', () async {
      // TODO
    });

    // EdFiEducationOrganizationReference externalEducationOrganizationReference
    test('to test the property `externalEducationOrganizationReference`', () async {
      // TODO
    });

    // EdFiStaffReference responsibleTeacherStaffReference
    test('to test the property `responsibleTeacherStaffReference`', () async {
      // TODO
    });

    // EdFiStudentAcademicRecordReference studentAcademicRecordReference
    test('to test the property `studentAcademicRecordReference`', () async {
      // TODO
    });

    // An unordered collection of courseTranscriptAcademicSubjects. The subject area for the course transcript credits awarded in the course transcript.
    // List<EdFiCourseTranscriptAcademicSubject> academicSubjects (default value: const [])
    test('to test the property `academicSubjects`', () async {
      // TODO
    });

    // An unordered collection of courseTranscriptAlternativeCourseIdentificationCodes. The code that identifies the course, course offering, the code from an external educational organization, or other alternate course code.
    // List<EdFiCourseTranscriptAlternativeCourseIdentificationCode> alternativeCourseIdentificationCodes (default value: const [])
    test('to test the property `alternativeCourseIdentificationCodes`', () async {
      // TODO
    });

    // The descriptive name given to a course of study offered in the school, if different from the CourseTitle.
    // String alternativeCourseTitle
    test('to test the property `alternativeCourseTitle`', () async {
      // TODO
    });

    // The organization code or name assigning the course identification code.
    // String assigningOrganizationIdentificationCode
    test('to test the property `assigningOrganizationIdentificationCode`', () async {
      // TODO
    });

    // Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
    // double attemptedCreditConversion
    test('to test the property `attemptedCreditConversion`', () async {
      // TODO
    });

    // The value of credits or units of value awarded for the completion of a course.
    // double attemptedCredits
    test('to test the property `attemptedCredits`', () async {
      // TODO
    });

    // The type of credits or units of value awarded for the completion of a course.
    // String attemptedCreditTypeDescriptor
    test('to test the property `attemptedCreditTypeDescriptor`', () async {
      // TODO
    });

    // The URL for the course catalog that defines the course identification code.
    // String courseCatalogURL
    test('to test the property `courseCatalogURL`', () async {
      // TODO
    });

    // An unordered collection of courseTranscriptCoursePrograms. The program(s) that the student participated in the context of the course.
    // List<EdFiCourseTranscriptCourseProgram> coursePrograms (default value: const [])
    test('to test the property `coursePrograms`', () async {
      // TODO
    });

    // Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student's academic grade average.
    // String courseRepeatCodeDescriptor
    test('to test the property `courseRepeatCodeDescriptor`', () async {
      // TODO
    });

    // The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, language arts).
    // String courseTitle
    test('to test the property `courseTitle`', () async {
      // TODO
    });

    // An unordered collection of courseTranscriptCreditCategories. A categorization for the course transcript credits awarded in the course transcript.
    // List<EdFiCourseTranscriptCreditCategory> creditCategories (default value: const [])
    test('to test the property `creditCategories`', () async {
      // TODO
    });

    // An unordered collection of courseTranscriptEarnedAdditionalCredits. The number of additional credits a student attempted and could earn for successfully completing a given course.
    // List<EdFiCourseTranscriptEarnedAdditionalCredits> earnedAdditionalCredits (default value: const [])
    test('to test the property `earnedAdditionalCredits`', () async {
      // TODO
    });

    // Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
    // double earnedCreditConversion
    test('to test the property `earnedCreditConversion`', () async {
      // TODO
    });

    // The value of credits or units of value awarded for the completion of a course.
    // double earnedCredits
    test('to test the property `earnedCredits`', () async {
      // TODO
    });

    // The type of credits or units of value awarded for the completion of a course.
    // String earnedCreditTypeDescriptor
    test('to test the property `earnedCreditTypeDescriptor`', () async {
      // TODO
    });

    // Name of the external institution where the student completed the course; to be used only when the reference external education organization is not available.
    // String externalEducationOrganizationNameOfInstitution
    test('to test the property `externalEducationOrganizationNameOfInstitution`', () async {
      // TODO
    });

    // The final indicator of student performance in a class as submitted by the instructor.
    // String finalLetterGradeEarned
    test('to test the property `finalLetterGradeEarned`', () async {
      // TODO
    });

    // The final indicator of student performance in a class as submitted by the instructor.
    // double finalNumericGradeEarned
    test('to test the property `finalNumericGradeEarned`', () async {
      // TODO
    });

    // The method the credits were earned.
    // String methodCreditEarnedDescriptor
    test('to test the property `methodCreditEarnedDescriptor`', () async {
      // TODO
    });

    // An unordered collection of courseTranscriptPartialCourseTranscriptAwards. A collection of partial credits and/or grades a student earned against the course over the session, used when awards of credit are incremental.
    // List<EdFiCourseTranscriptPartialCourseTranscriptAwards> partialCourseTranscriptAwards (default value: const [])
    test('to test the property `partialCourseTranscriptAwards`', () async {
      // TODO
    });

    // An unordered collection of courseTranscriptSections. The section(s) associated with the course transcript.
    // List<EdFiCourseTranscriptSection> sections (default value: const [])
    test('to test the property `sections`', () async {
      // TODO
    });

    // Student's grade level at time of course.
    // String whenTakenGradeLevelDescriptor
    test('to test the property `whenTakenGradeLevelDescriptor`', () async {
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
