//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiAssessmentPerformanceLevel {
  /// Returns a new [EdFiAssessmentPerformanceLevel] instance.
  EdFiAssessmentPerformanceLevel({
    required this.assessmentReportingMethodDescriptor,
    required this.performanceLevelDescriptor,
    this.resultDatatypeTypeDescriptor,
    this.maximumScore,
    this.minimumScore,
    this.performanceLevelIndicatorName,
  });

  /// The method that the instructor of the class uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or numerical grade. In some cases, more than one type of reporting method may be used.
  String assessmentReportingMethodDescriptor;

  /// The performance level(s) defined for the assessment.
  String performanceLevelDescriptor;

  /// The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.
  String? resultDatatypeTypeDescriptor;

  /// The maximum score to make the indicated level of performance.
  String? maximumScore;

  /// The minimum score required to make the indicated level of performance.
  String? minimumScore;

  /// The name of the indicator being measured for a collection of performance level values.
  String? performanceLevelIndicatorName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiAssessmentPerformanceLevel &&
    other.assessmentReportingMethodDescriptor == assessmentReportingMethodDescriptor &&
    other.performanceLevelDescriptor == performanceLevelDescriptor &&
    other.resultDatatypeTypeDescriptor == resultDatatypeTypeDescriptor &&
    other.maximumScore == maximumScore &&
    other.minimumScore == minimumScore &&
    other.performanceLevelIndicatorName == performanceLevelIndicatorName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assessmentReportingMethodDescriptor.hashCode) +
    (performanceLevelDescriptor.hashCode) +
    (resultDatatypeTypeDescriptor == null ? 0 : resultDatatypeTypeDescriptor!.hashCode) +
    (maximumScore == null ? 0 : maximumScore!.hashCode) +
    (minimumScore == null ? 0 : minimumScore!.hashCode) +
    (performanceLevelIndicatorName == null ? 0 : performanceLevelIndicatorName!.hashCode);

  @override
  String toString() => 'EdFiAssessmentPerformanceLevel[assessmentReportingMethodDescriptor=$assessmentReportingMethodDescriptor, performanceLevelDescriptor=$performanceLevelDescriptor, resultDatatypeTypeDescriptor=$resultDatatypeTypeDescriptor, maximumScore=$maximumScore, minimumScore=$minimumScore, performanceLevelIndicatorName=$performanceLevelIndicatorName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assessmentReportingMethodDescriptor'] = this.assessmentReportingMethodDescriptor;
      json[r'performanceLevelDescriptor'] = this.performanceLevelDescriptor;
    if (this.resultDatatypeTypeDescriptor != null) {
      json[r'resultDatatypeTypeDescriptor'] = this.resultDatatypeTypeDescriptor;
    } else {
      json[r'resultDatatypeTypeDescriptor'] = null;
    }
    if (this.maximumScore != null) {
      json[r'maximumScore'] = this.maximumScore;
    } else {
      json[r'maximumScore'] = null;
    }
    if (this.minimumScore != null) {
      json[r'minimumScore'] = this.minimumScore;
    } else {
      json[r'minimumScore'] = null;
    }
    if (this.performanceLevelIndicatorName != null) {
      json[r'performanceLevelIndicatorName'] = this.performanceLevelIndicatorName;
    } else {
      json[r'performanceLevelIndicatorName'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiAssessmentPerformanceLevel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiAssessmentPerformanceLevel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiAssessmentPerformanceLevel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiAssessmentPerformanceLevel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiAssessmentPerformanceLevel(
        assessmentReportingMethodDescriptor: mapValueOfType<String>(json, r'assessmentReportingMethodDescriptor')!,
        performanceLevelDescriptor: mapValueOfType<String>(json, r'performanceLevelDescriptor')!,
        resultDatatypeTypeDescriptor: mapValueOfType<String>(json, r'resultDatatypeTypeDescriptor'),
        maximumScore: mapValueOfType<String>(json, r'maximumScore'),
        minimumScore: mapValueOfType<String>(json, r'minimumScore'),
        performanceLevelIndicatorName: mapValueOfType<String>(json, r'performanceLevelIndicatorName'),
      );
    }
    return null;
  }

  static List<EdFiAssessmentPerformanceLevel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiAssessmentPerformanceLevel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiAssessmentPerformanceLevel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiAssessmentPerformanceLevel> mapFromJson(dynamic json) {
    final map = <String, EdFiAssessmentPerformanceLevel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiAssessmentPerformanceLevel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiAssessmentPerformanceLevel-objects as value to a dart map
  static Map<String, List<EdFiAssessmentPerformanceLevel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiAssessmentPerformanceLevel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiAssessmentPerformanceLevel.listFromJson(entry.value, growable: growable,);
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

