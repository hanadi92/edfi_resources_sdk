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

// tests for EdFiStudentSectionAttendanceEvent
void main() {
  // final instance = EdFiStudentSectionAttendanceEvent();

  group('test EdFiStudentSectionAttendanceEvent', () {
    // 
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // A code describing the attendance event, for example:         Present         Unexcused absence         Excused absence         Tardy.
    // String attendanceEventCategoryDescriptor
    test('to test the property `attendanceEventCategoryDescriptor`', () async {
      // TODO
    });

    // Date for this attendance event.
    // DateTime eventDate
    test('to test the property `eventDate`', () async {
      // TODO
    });

    // EdFiSectionReference sectionReference
    test('to test the property `sectionReference`', () async {
      // TODO
    });

    // EdFiStudentReference studentReference
    test('to test the property `studentReference`', () async {
      // TODO
    });

    // The time of day the student arrived for the attendance event in ISO 8601 format.
    // String arrivalTime
    test('to test the property `arrivalTime`', () async {
      // TODO
    });

    // The reported reason for a student's absence.
    // String attendanceEventReason
    test('to test the property `attendanceEventReason`', () async {
      // TODO
    });

    // An unordered collection of studentSectionAttendanceEventClassPeriods. The class period(s) to which the section attendance event applies.
    // List<EdFiStudentSectionAttendanceEventClassPeriod> classPeriods (default value: const [])
    test('to test the property `classPeriods`', () async {
      // TODO
    });

    // The time of day the student departed for the attendance event in ISO 8601 format.
    // String departureTime
    test('to test the property `departureTime`', () async {
      // TODO
    });

    // The setting in which a child receives education and related services. This attribute is only used if it differs from the EducationalEnvironment of the Section. This is only used in the AttendanceEvent if different from the associated Section.
    // String educationalEnvironmentDescriptor
    test('to test the property `educationalEnvironmentDescriptor`', () async {
      // TODO
    });

    // The amount of time in days for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.
    // double eventDuration
    test('to test the property `eventDuration`', () async {
      // TODO
    });

    // The duration in minutes of the section attendance event.
    // int sectionAttendanceDuration
    test('to test the property `sectionAttendanceDuration`', () async {
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
