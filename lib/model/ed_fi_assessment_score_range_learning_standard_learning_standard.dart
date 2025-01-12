//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiAssessmentScoreRangeLearningStandardLearningStandard {
  /// Returns a new [EdFiAssessmentScoreRangeLearningStandardLearningStandard] instance.
  EdFiAssessmentScoreRangeLearningStandardLearningStandard({
    required this.learningStandardReference,
  });

  EdFiLearningStandardReference learningStandardReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiAssessmentScoreRangeLearningStandardLearningStandard &&
    other.learningStandardReference == learningStandardReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (learningStandardReference.hashCode);

  @override
  String toString() => 'EdFiAssessmentScoreRangeLearningStandardLearningStandard[learningStandardReference=$learningStandardReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'learningStandardReference'] = this.learningStandardReference;
    return json;
  }

  /// Returns a new [EdFiAssessmentScoreRangeLearningStandardLearningStandard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiAssessmentScoreRangeLearningStandardLearningStandard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiAssessmentScoreRangeLearningStandardLearningStandard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiAssessmentScoreRangeLearningStandardLearningStandard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiAssessmentScoreRangeLearningStandardLearningStandard(
        learningStandardReference: EdFiLearningStandardReference.fromJson(json[r'learningStandardReference'])!,
      );
    }
    return null;
  }

  static List<EdFiAssessmentScoreRangeLearningStandardLearningStandard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiAssessmentScoreRangeLearningStandardLearningStandard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiAssessmentScoreRangeLearningStandardLearningStandard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiAssessmentScoreRangeLearningStandardLearningStandard> mapFromJson(dynamic json) {
    final map = <String, EdFiAssessmentScoreRangeLearningStandardLearningStandard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiAssessmentScoreRangeLearningStandardLearningStandard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiAssessmentScoreRangeLearningStandardLearningStandard-objects as value to a dart map
  static Map<String, List<EdFiAssessmentScoreRangeLearningStandardLearningStandard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiAssessmentScoreRangeLearningStandardLearningStandard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiAssessmentScoreRangeLearningStandardLearningStandard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'learningStandardReference',
  };
}

