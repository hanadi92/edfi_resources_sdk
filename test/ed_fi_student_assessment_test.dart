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

// tests for EdFiStudentAssessment
void main() {
  // final instance = EdFiStudentAssessment();

  group('test EdFiStudentAssessment', () {
    // 
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // A unique number or alphanumeric code assigned to an assessment administered to a student.
    // String studentAssessmentIdentifier
    test('to test the property `studentAssessmentIdentifier`', () async {
      // TODO
    });

    // EdFiAssessmentReference assessmentReference
    test('to test the property `assessmentReference`', () async {
      // TODO
    });

    // EdFiSchoolReference reportedSchoolReference
    test('to test the property `reportedSchoolReference`', () async {
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

    // An unordered collection of studentAssessmentAccommodations. The specific type of special variation used in how an examination is presented, how it is administered, or how the test taker is allowed to respond. This generally refers to changes that do not substantially alter what the examination measures. The proper use of accommodations does not substantially change academic level or performance criteria.
    // List<EdFiStudentAssessmentAccommodation> accommodations (default value: const [])
    test('to test the property `accommodations`', () async {
      // TODO
    });

    // The date and time an assessment was completed by the student. The use of ISO-8601 formats with a timezone designator (UTC or time offset) is recommended in order to prevent ambiguity due to time zones.
    // DateTime administrationDate
    test('to test the property `administrationDate`', () async {
      // TODO
    });

    // The date and time an assessment administration ended.
    // DateTime administrationEndDate
    test('to test the property `administrationEndDate`', () async {
      // TODO
    });

    // The environment in which the test was administered.
    // String administrationEnvironmentDescriptor
    test('to test the property `administrationEnvironmentDescriptor`', () async {
      // TODO
    });

    // The language in which an assessment is written and/or administered.
    // String administrationLanguageDescriptor
    test('to test the property `administrationLanguageDescriptor`', () async {
      // TODO
    });

    // Reported time student was assessed in minutes.
    // int assessedMinutes
    test('to test the property `assessedMinutes`', () async {
      // TODO
    });

    // An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc.
    // String eventCircumstanceDescriptor
    test('to test the property `eventCircumstanceDescriptor`', () async {
      // TODO
    });

    // Describes special events that occur before during or after the assessment session that may impact use of results.
    // String eventDescription
    test('to test the property `eventDescription`', () async {
      // TODO
    });

    // An unordered collection of studentAssessmentItems. The student's response to an assessment item and the item-level scores such as correct, incorrect, or met standard.
    // List<EdFiStudentAssessmentItem> items (default value: const [])
    test('to test the property `items`', () async {
      // TODO
    });

    // An unordered collection of studentAssessmentPerformanceLevels. The performance level(s) achieved for the student assessment.
    // List<EdFiStudentAssessmentPerformanceLevel> performanceLevels (default value: const [])
    test('to test the property `performanceLevels`', () async {
      // TODO
    });

    // EdFiStudentAssessmentPeriod period
    test('to test the property `period`', () async {
      // TODO
    });

    // The platform with which the assessment was delivered to the student during the assessment session.
    // String platformTypeDescriptor
    test('to test the property `platformTypeDescriptor`', () async {
      // TODO
    });

    // The primary reason student is not tested.
    // String reasonNotTestedDescriptor
    test('to test the property `reasonNotTestedDescriptor`', () async {
      // TODO
    });

    // A reported school identifier for the school the enrollment at the time of the assessment used when the assigned SchoolId is not known by the assessment vendor.
    // String reportedSchoolIdentifier
    test('to test the property `reportedSchoolIdentifier`', () async {
      // TODO
    });

    // Indicator if the test was a retake.
    // String retestIndicatorDescriptor
    test('to test the property `retestIndicatorDescriptor`', () async {
      // TODO
    });

    // An unordered collection of studentAssessmentScoreResults. A meaningful score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc.
    // List<EdFiStudentAssessmentScoreResult> scoreResults (default value: const [])
    test('to test the property `scoreResults`', () async {
      // TODO
    });

    // The unique number for the assessment form or answer document.
    // String serialNumber
    test('to test the property `serialNumber`', () async {
      // TODO
    });

    // An unordered collection of studentAssessmentStudentObjectiveAssessments. The student's score and/or performance levels earned for an objective assessment.
    // List<EdFiStudentAssessmentStudentObjectiveAssessment> studentObjectiveAssessments (default value: const [])
    test('to test the property `studentObjectiveAssessments`', () async {
      // TODO
    });

    // The grade level of a student when assessed.
    // String whenAssessedGradeLevelDescriptor
    test('to test the property `whenAssessedGradeLevelDescriptor`', () async {
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
