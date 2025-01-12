//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiGraduationPlanRequiredAssessment {
  /// Returns a new [EdFiGraduationPlanRequiredAssessment] instance.
  EdFiGraduationPlanRequiredAssessment({
    required this.assessmentReference,
    this.scores = const [],
    this.performanceLevel,
  });

  EdFiAssessmentReference assessmentReference;

  /// An unordered collection of graduationPlanRequiredAssessmentScores. Score required to be met or exceeded.
  List<EdFiGraduationPlanRequiredAssessmentScore> scores;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiGraduationPlanRequiredAssessmentPerformanceLevel? performanceLevel;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiGraduationPlanRequiredAssessment &&
    other.assessmentReference == assessmentReference &&
    _deepEquality.equals(other.scores, scores) &&
    other.performanceLevel == performanceLevel;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assessmentReference.hashCode) +
    (scores.hashCode) +
    (performanceLevel == null ? 0 : performanceLevel!.hashCode);

  @override
  String toString() => 'EdFiGraduationPlanRequiredAssessment[assessmentReference=$assessmentReference, scores=$scores, performanceLevel=$performanceLevel]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assessmentReference'] = this.assessmentReference;
      json[r'scores'] = this.scores;
    if (this.performanceLevel != null) {
      json[r'performanceLevel'] = this.performanceLevel;
    } else {
      json[r'performanceLevel'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiGraduationPlanRequiredAssessment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiGraduationPlanRequiredAssessment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiGraduationPlanRequiredAssessment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiGraduationPlanRequiredAssessment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiGraduationPlanRequiredAssessment(
        assessmentReference: EdFiAssessmentReference.fromJson(json[r'assessmentReference'])!,
        scores: EdFiGraduationPlanRequiredAssessmentScore.listFromJson(json[r'scores']),
        performanceLevel: EdFiGraduationPlanRequiredAssessmentPerformanceLevel.fromJson(json[r'performanceLevel']),
      );
    }
    return null;
  }

  static List<EdFiGraduationPlanRequiredAssessment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiGraduationPlanRequiredAssessment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiGraduationPlanRequiredAssessment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiGraduationPlanRequiredAssessment> mapFromJson(dynamic json) {
    final map = <String, EdFiGraduationPlanRequiredAssessment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiGraduationPlanRequiredAssessment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiGraduationPlanRequiredAssessment-objects as value to a dart map
  static Map<String, List<EdFiGraduationPlanRequiredAssessment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiGraduationPlanRequiredAssessment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiGraduationPlanRequiredAssessment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assessmentReference',
  };
}

