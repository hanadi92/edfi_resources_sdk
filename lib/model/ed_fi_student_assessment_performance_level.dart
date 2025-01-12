//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAssessmentPerformanceLevel {
  /// Returns a new [EdFiStudentAssessmentPerformanceLevel] instance.
  EdFiStudentAssessmentPerformanceLevel({
    required this.assessmentReportingMethodDescriptor,
    required this.performanceLevelDescriptor,
    this.performanceLevelIndicatorName,
  });

  /// The method that the instructor of the class uses to report the performance and achievement. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or numerical grade. In some cases, more than one type of reporting method may be used.
  String assessmentReportingMethodDescriptor;

  /// A specification of which performance level value describes the student proficiency.
  String performanceLevelDescriptor;

  /// The name of the indicator being measured for a collection of performance level values.
  String? performanceLevelIndicatorName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAssessmentPerformanceLevel &&
    other.assessmentReportingMethodDescriptor == assessmentReportingMethodDescriptor &&
    other.performanceLevelDescriptor == performanceLevelDescriptor &&
    other.performanceLevelIndicatorName == performanceLevelIndicatorName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assessmentReportingMethodDescriptor.hashCode) +
    (performanceLevelDescriptor.hashCode) +
    (performanceLevelIndicatorName == null ? 0 : performanceLevelIndicatorName!.hashCode);

  @override
  String toString() => 'EdFiStudentAssessmentPerformanceLevel[assessmentReportingMethodDescriptor=$assessmentReportingMethodDescriptor, performanceLevelDescriptor=$performanceLevelDescriptor, performanceLevelIndicatorName=$performanceLevelIndicatorName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assessmentReportingMethodDescriptor'] = this.assessmentReportingMethodDescriptor;
      json[r'performanceLevelDescriptor'] = this.performanceLevelDescriptor;
    if (this.performanceLevelIndicatorName != null) {
      json[r'performanceLevelIndicatorName'] = this.performanceLevelIndicatorName;
    } else {
      json[r'performanceLevelIndicatorName'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiStudentAssessmentPerformanceLevel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAssessmentPerformanceLevel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAssessmentPerformanceLevel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAssessmentPerformanceLevel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAssessmentPerformanceLevel(
        assessmentReportingMethodDescriptor: mapValueOfType<String>(json, r'assessmentReportingMethodDescriptor')!,
        performanceLevelDescriptor: mapValueOfType<String>(json, r'performanceLevelDescriptor')!,
        performanceLevelIndicatorName: mapValueOfType<String>(json, r'performanceLevelIndicatorName'),
      );
    }
    return null;
  }

  static List<EdFiStudentAssessmentPerformanceLevel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAssessmentPerformanceLevel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAssessmentPerformanceLevel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAssessmentPerformanceLevel> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAssessmentPerformanceLevel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAssessmentPerformanceLevel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAssessmentPerformanceLevel-objects as value to a dart map
  static Map<String, List<EdFiStudentAssessmentPerformanceLevel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAssessmentPerformanceLevel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAssessmentPerformanceLevel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assessmentReportingMethodDescriptor',
    'performanceLevelDescriptor',
  };
}

