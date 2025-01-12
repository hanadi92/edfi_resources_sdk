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

// tests for EdFiObjectiveAssessment
void main() {
  // final instance = EdFiObjectiveAssessment();

  group('test EdFiObjectiveAssessment', () {
    // 
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // A unique number or alphanumeric code assigned to an objective assessment by a school, school system, a state, or other agency or entity.
    // String identificationCode
    test('to test the property `identificationCode`', () async {
      // TODO
    });

    // EdFiAssessmentReference assessmentReference
    test('to test the property `assessmentReference`', () async {
      // TODO
    });

    // EdFiObjectiveAssessmentReference parentObjectiveAssessmentReference
    test('to test the property `parentObjectiveAssessmentReference`', () async {
      // TODO
    });

    // The subject area of the objective assessment.
    // String academicSubjectDescriptor
    test('to test the property `academicSubjectDescriptor`', () async {
      // TODO
    });

    // An unordered collection of objectiveAssessmentAssessmentItems. References individual test items, if appropriate.
    // List<EdFiObjectiveAssessmentAssessmentItem> assessmentItems (default value: const [])
    test('to test the property `assessmentItems`', () async {
      // TODO
    });

    // The description of the objective assessment (e.g., vocabulary, measurement, or geometry).
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // An unordered collection of objectiveAssessmentLearningStandards. Learning standard tested by this objective assessment.
    // List<EdFiObjectiveAssessmentLearningStandard> learningStandards (default value: const [])
    test('to test the property `learningStandards`', () async {
      // TODO
    });

    // The maximum raw score achievable across all assessment items that are correct and scored at the maximum.
    // double maxRawScore
    test('to test the property `maxRawScore`', () async {
      // TODO
    });

    // Reflects the specific nomenclature used for this level of objective assessment.
    // String nomenclature
    test('to test the property `nomenclature`', () async {
      // TODO
    });

    // The percentage of the assessment that tests this objective.
    // double percentOfAssessment
    test('to test the property `percentOfAssessment`', () async {
      // TODO
    });

    // An unordered collection of objectiveAssessmentPerformanceLevels. Definition of the performance levels and the associated cut scores. Three styles are supported: 1. Specification of performance level by minimum and maximum score, 2. Specification of performance level by cut score, using only minimum score, 3. Specification of performance level without any mapping to scores
    // List<EdFiObjectiveAssessmentPerformanceLevel> performanceLevels (default value: const [])
    test('to test the property `performanceLevels`', () async {
      // TODO
    });

    // An unordered collection of objectiveAssessmentScores. Definition of the scores to be expected from this objective assessment.
    // List<EdFiObjectiveAssessmentScore> scores (default value: const [])
    test('to test the property `scores`', () async {
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
