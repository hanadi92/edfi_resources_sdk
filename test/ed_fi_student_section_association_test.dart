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

// tests for EdFiStudentSectionAssociation
void main() {
  // final instance = EdFiStudentSectionAssociation();

  group('test EdFiStudentSectionAssociation', () {
    // 
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
    // DateTime beginDate
    test('to test the property `beginDate`', () async {
      // TODO
    });

    // EdFiEducationOrganizationReference dualCreditEducationOrganizationReference
    test('to test the property `dualCreditEducationOrganizationReference`', () async {
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

    // An indication of the student's completion status for the section.
    // String attemptStatusDescriptor
    test('to test the property `attemptStatusDescriptor`', () async {
      // TODO
    });

    // Indicates whether the student assigned to the section is to receive dual credit upon successful completion.
    // bool dualCreditIndicator
    test('to test the property `dualCreditIndicator`', () async {
      // TODO
    });

    // Descriptor for the postsecondary institution offering college credit. This descriptor may be used to select a postsecondary institution that is not defined as an education organization, and/or select a general type of postsecondary institution.
    // String dualCreditInstitutionDescriptor
    test('to test the property `dualCreditInstitutionDescriptor`', () async {
      // TODO
    });

    // For a student taking a dual credit course in a college or high school setting, indicates the type of dual credit program.
    // String dualCreditTypeDescriptor
    test('to test the property `dualCreditTypeDescriptor`', () async {
      // TODO
    });

    // Indicates whether successful completion of the course will result in credits toward high school graduation.
    // bool dualHighSchoolCreditIndicator
    test('to test the property `dualHighSchoolCreditIndicator`', () async {
      // TODO
    });

    // Month, day, and year of the withdrawal or exit of the student from the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
    // DateTime endDate
    test('to test the property `endDate`', () async {
      // TODO
    });

    // Indicates the section is the student's homeroom. Homeroom period may the convention for taking daily attendance.
    // bool homeroomIndicator
    test('to test the property `homeroomIndicator`', () async {
      // TODO
    });

    // An unordered collection of studentSectionAssociationPrograms. The program(s) that the student is participating in the context of the course.
    // List<EdFiStudentSectionAssociationProgram> programs (default value: const [])
    test('to test the property `programs`', () async {
      // TODO
    });

    // An indication as to whether a student has previously taken a given course.
    // String repeatIdentifierDescriptor
    test('to test the property `repeatIdentifierDescriptor`', () async {
      // TODO
    });

    // Indicates that the student-section combination is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation.
    // bool teacherStudentDataLinkExclusion
    test('to test the property `teacherStudentDataLinkExclusion`', () async {
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
