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

// tests for EdFiGraduationPlan
void main() {
  // final instance = EdFiGraduationPlan();

  group('test EdFiGraduationPlan', () {
    // 
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // The type of academic plan the student is following for graduation.
    // String graduationPlanTypeDescriptor
    test('to test the property `graduationPlanTypeDescriptor`', () async {
      // TODO
    });

    // EdFiEducationOrganizationReference educationOrganizationReference
    test('to test the property `educationOrganizationReference`', () async {
      // TODO
    });

    // EdFiSchoolYearTypeReference graduationSchoolYearTypeReference
    test('to test the property `graduationSchoolYearTypeReference`', () async {
      // TODO
    });

    // An unordered collection of graduationPlanCreditsByCourses. The total credits required for graduation by taking a specific course, or by taking one or more from a set of courses.
    // List<EdFiGraduationPlanCreditsByCourse> creditsByCourses (default value: const [])
    test('to test the property `creditsByCourses`', () async {
      // TODO
    });

    // An unordered collection of graduationPlanCreditsByCreditCategories. The total credits required for graduation based on the credit category.
    // List<EdFiGraduationPlanCreditsByCreditCategory> creditsByCreditCategories (default value: const [])
    test('to test the property `creditsByCreditCategories`', () async {
      // TODO
    });

    // An unordered collection of graduationPlanCreditsBySubjects. The total credits required in subject to graduate. Only those courses identified as a high school course requirement are eligible to meet subject credit requirements.
    // List<EdFiGraduationPlanCreditsBySubject> creditsBySubjects (default value: const [])
    test('to test the property `creditsBySubjects`', () async {
      // TODO
    });

    // An indicator of whether the graduation plan is tailored for an individual.
    // bool individualPlan
    test('to test the property `individualPlan`', () async {
      // TODO
    });

    // An unordered collection of graduationPlanRequiredAssessments. The assessments and associated required score and performance level needed to satisfy graduation requirements.
    // List<EdFiGraduationPlanRequiredAssessment> requiredAssessments (default value: const [])
    test('to test the property `requiredAssessments`', () async {
      // TODO
    });

    // Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
    // double totalRequiredCreditConversion
    test('to test the property `totalRequiredCreditConversion`', () async {
      // TODO
    });

    // The value of credits or units of value awarded for the completion of a course.
    // double totalRequiredCredits
    test('to test the property `totalRequiredCredits`', () async {
      // TODO
    });

    // The type of credits or units of value awarded for the completion of a course.
    // String totalRequiredCreditTypeDescriptor
    test('to test the property `totalRequiredCreditTypeDescriptor`', () async {
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
