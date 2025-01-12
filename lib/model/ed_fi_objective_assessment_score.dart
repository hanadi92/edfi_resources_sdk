//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiObjectiveAssessmentScore {
  /// Returns a new [EdFiObjectiveAssessmentScore] instance.
  EdFiObjectiveAssessmentScore({
    required this.assessmentReportingMethodDescriptor,
    this.resultDatatypeTypeDescriptor,
    this.maximumScore,
    this.minimumScore,
  });

  /// The method that the administrator of the assessment uses to report the performance and achievement of all students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.
  String assessmentReportingMethodDescriptor;

  /// The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.
  String? resultDatatypeTypeDescriptor;

  /// The maximum score possible on the assessment.
  String? maximumScore;

  /// The minimum score possible on the assessment.
  String? minimumScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiObjectiveAssessmentScore &&
    other.assessmentReportingMethodDescriptor == assessmentReportingMethodDescriptor &&
    other.resultDatatypeTypeDescriptor == resultDatatypeTypeDescriptor &&
    other.maximumScore == maximumScore &&
    other.minimumScore == minimumScore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assessmentReportingMethodDescriptor.hashCode) +
    (resultDatatypeTypeDescriptor == null ? 0 : resultDatatypeTypeDescriptor!.hashCode) +
    (maximumScore == null ? 0 : maximumScore!.hashCode) +
    (minimumScore == null ? 0 : minimumScore!.hashCode);

  @override
  String toString() => 'EdFiObjectiveAssessmentScore[assessmentReportingMethodDescriptor=$assessmentReportingMethodDescriptor, resultDatatypeTypeDescriptor=$resultDatatypeTypeDescriptor, maximumScore=$maximumScore, minimumScore=$minimumScore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assessmentReportingMethodDescriptor'] = this.assessmentReportingMethodDescriptor;
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
    return json;
  }

  /// Returns a new [EdFiObjectiveAssessmentScore] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiObjectiveAssessmentScore? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiObjectiveAssessmentScore[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiObjectiveAssessmentScore[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiObjectiveAssessmentScore(
        assessmentReportingMethodDescriptor: mapValueOfType<String>(json, r'assessmentReportingMethodDescriptor')!,
        resultDatatypeTypeDescriptor: mapValueOfType<String>(json, r'resultDatatypeTypeDescriptor'),
        maximumScore: mapValueOfType<String>(json, r'maximumScore'),
        minimumScore: mapValueOfType<String>(json, r'minimumScore'),
      );
    }
    return null;
  }

  static List<EdFiObjectiveAssessmentScore> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiObjectiveAssessmentScore>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiObjectiveAssessmentScore.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiObjectiveAssessmentScore> mapFromJson(dynamic json) {
    final map = <String, EdFiObjectiveAssessmentScore>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiObjectiveAssessmentScore.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiObjectiveAssessmentScore-objects as value to a dart map
  static Map<String, List<EdFiObjectiveAssessmentScore>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiObjectiveAssessmentScore>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiObjectiveAssessmentScore.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assessmentReportingMethodDescriptor',
  };
}

