//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult {
  /// Returns a new [EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult] instance.
  EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult({
    required this.assessmentReportingMethodDescriptor,
    required this.resultDatatypeTypeDescriptor,
    required this.result,
  });

  /// The method that the administrator of the assessment uses to report the performance and achievement of all students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.
  String assessmentReportingMethodDescriptor;

  /// The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.
  String resultDatatypeTypeDescriptor;

  /// The value of a meaningful raw score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc.
  String result;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult &&
    other.assessmentReportingMethodDescriptor == assessmentReportingMethodDescriptor &&
    other.resultDatatypeTypeDescriptor == resultDatatypeTypeDescriptor &&
    other.result == result;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assessmentReportingMethodDescriptor.hashCode) +
    (resultDatatypeTypeDescriptor.hashCode) +
    (result.hashCode);

  @override
  String toString() => 'EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult[assessmentReportingMethodDescriptor=$assessmentReportingMethodDescriptor, resultDatatypeTypeDescriptor=$resultDatatypeTypeDescriptor, result=$result]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assessmentReportingMethodDescriptor'] = this.assessmentReportingMethodDescriptor;
      json[r'resultDatatypeTypeDescriptor'] = this.resultDatatypeTypeDescriptor;
      json[r'result'] = this.result;
    return json;
  }

  /// Returns a new [EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult(
        assessmentReportingMethodDescriptor: mapValueOfType<String>(json, r'assessmentReportingMethodDescriptor')!,
        resultDatatypeTypeDescriptor: mapValueOfType<String>(json, r'resultDatatypeTypeDescriptor')!,
        result: mapValueOfType<String>(json, r'result')!,
      );
    }
    return null;
  }

  static List<EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult-objects as value to a dart map
  static Map<String, List<EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assessmentReportingMethodDescriptor',
    'resultDatatypeTypeDescriptor',
    'result',
  };
}

