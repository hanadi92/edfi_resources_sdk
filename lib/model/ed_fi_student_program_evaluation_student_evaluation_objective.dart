//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentProgramEvaluationStudentEvaluationObjective {
  /// Returns a new [EdFiStudentProgramEvaluationStudentEvaluationObjective] instance.
  EdFiStudentProgramEvaluationStudentEvaluationObjective({
    this.evaluationObjectiveRatingLevelDescriptor,
    this.evaluationObjectiveNumericRating,
    required this.programEvaluationObjectiveReference,
  });

  /// The rating level achieved based upon the rating or score for the evaluation objective.
  String? evaluationObjectiveRatingLevelDescriptor;

  /// The numerical rating or score for the evaluation objective.
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? evaluationObjectiveNumericRating;

  EdFiProgramEvaluationObjectiveReference programEvaluationObjectiveReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentProgramEvaluationStudentEvaluationObjective &&
    other.evaluationObjectiveRatingLevelDescriptor == evaluationObjectiveRatingLevelDescriptor &&
    other.evaluationObjectiveNumericRating == evaluationObjectiveNumericRating &&
    other.programEvaluationObjectiveReference == programEvaluationObjectiveReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (evaluationObjectiveRatingLevelDescriptor == null ? 0 : evaluationObjectiveRatingLevelDescriptor!.hashCode) +
    (evaluationObjectiveNumericRating == null ? 0 : evaluationObjectiveNumericRating!.hashCode) +
    (programEvaluationObjectiveReference.hashCode);

  @override
  String toString() => 'EdFiStudentProgramEvaluationStudentEvaluationObjective[evaluationObjectiveRatingLevelDescriptor=$evaluationObjectiveRatingLevelDescriptor, evaluationObjectiveNumericRating=$evaluationObjectiveNumericRating, programEvaluationObjectiveReference=$programEvaluationObjectiveReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.evaluationObjectiveRatingLevelDescriptor != null) {
      json[r'evaluationObjectiveRatingLevelDescriptor'] = this.evaluationObjectiveRatingLevelDescriptor;
    } else {
      json[r'evaluationObjectiveRatingLevelDescriptor'] = null;
    }
    if (this.evaluationObjectiveNumericRating != null) {
      json[r'evaluationObjectiveNumericRating'] = this.evaluationObjectiveNumericRating;
    } else {
      json[r'evaluationObjectiveNumericRating'] = null;
    }
      json[r'programEvaluationObjectiveReference'] = this.programEvaluationObjectiveReference;
    return json;
  }

  /// Returns a new [EdFiStudentProgramEvaluationStudentEvaluationObjective] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentProgramEvaluationStudentEvaluationObjective? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentProgramEvaluationStudentEvaluationObjective[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentProgramEvaluationStudentEvaluationObjective[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentProgramEvaluationStudentEvaluationObjective(
        evaluationObjectiveRatingLevelDescriptor: mapValueOfType<String>(json, r'evaluationObjectiveRatingLevelDescriptor'),
        evaluationObjectiveNumericRating: mapValueOfType<double>(json, r'evaluationObjectiveNumericRating'),
        programEvaluationObjectiveReference: EdFiProgramEvaluationObjectiveReference.fromJson(json[r'programEvaluationObjectiveReference'])!,
      );
    }
    return null;
  }

  static List<EdFiStudentProgramEvaluationStudentEvaluationObjective> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentProgramEvaluationStudentEvaluationObjective>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentProgramEvaluationStudentEvaluationObjective.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentProgramEvaluationStudentEvaluationObjective> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentProgramEvaluationStudentEvaluationObjective>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentProgramEvaluationStudentEvaluationObjective.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentProgramEvaluationStudentEvaluationObjective-objects as value to a dart map
  static Map<String, List<EdFiStudentProgramEvaluationStudentEvaluationObjective>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentProgramEvaluationStudentEvaluationObjective>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentProgramEvaluationStudentEvaluationObjective.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'programEvaluationObjectiveReference',
  };
}

