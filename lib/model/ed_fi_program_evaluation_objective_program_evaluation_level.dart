//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiProgramEvaluationObjectiveProgramEvaluationLevel {
  /// Returns a new [EdFiProgramEvaluationObjectiveProgramEvaluationLevel] instance.
  EdFiProgramEvaluationObjectiveProgramEvaluationLevel({
    required this.ratingLevelDescriptor,
    this.maxNumericRating,
    this.minNumericRating,
  });

  /// The title for a level of rating or evaluation band (e.g., Excellent, Acceptable, Needs Improvement, Unacceptable).
  String ratingLevelDescriptor;

  /// The maximum numerical rating or score to achieve the evaluation rating level.
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? maxNumericRating;

  /// The minimum numerical rating or score to achieve the evaluation rating level.
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? minNumericRating;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiProgramEvaluationObjectiveProgramEvaluationLevel &&
    other.ratingLevelDescriptor == ratingLevelDescriptor &&
    other.maxNumericRating == maxNumericRating &&
    other.minNumericRating == minNumericRating;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ratingLevelDescriptor.hashCode) +
    (maxNumericRating == null ? 0 : maxNumericRating!.hashCode) +
    (minNumericRating == null ? 0 : minNumericRating!.hashCode);

  @override
  String toString() => 'EdFiProgramEvaluationObjectiveProgramEvaluationLevel[ratingLevelDescriptor=$ratingLevelDescriptor, maxNumericRating=$maxNumericRating, minNumericRating=$minNumericRating]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ratingLevelDescriptor'] = this.ratingLevelDescriptor;
    if (this.maxNumericRating != null) {
      json[r'maxNumericRating'] = this.maxNumericRating;
    } else {
      json[r'maxNumericRating'] = null;
    }
    if (this.minNumericRating != null) {
      json[r'minNumericRating'] = this.minNumericRating;
    } else {
      json[r'minNumericRating'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiProgramEvaluationObjectiveProgramEvaluationLevel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiProgramEvaluationObjectiveProgramEvaluationLevel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiProgramEvaluationObjectiveProgramEvaluationLevel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiProgramEvaluationObjectiveProgramEvaluationLevel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiProgramEvaluationObjectiveProgramEvaluationLevel(
        ratingLevelDescriptor: mapValueOfType<String>(json, r'ratingLevelDescriptor')!,
        maxNumericRating: mapValueOfType<double>(json, r'maxNumericRating'),
        minNumericRating: mapValueOfType<double>(json, r'minNumericRating'),
      );
    }
    return null;
  }

  static List<EdFiProgramEvaluationObjectiveProgramEvaluationLevel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiProgramEvaluationObjectiveProgramEvaluationLevel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiProgramEvaluationObjectiveProgramEvaluationLevel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiProgramEvaluationObjectiveProgramEvaluationLevel> mapFromJson(dynamic json) {
    final map = <String, EdFiProgramEvaluationObjectiveProgramEvaluationLevel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiProgramEvaluationObjectiveProgramEvaluationLevel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiProgramEvaluationObjectiveProgramEvaluationLevel-objects as value to a dart map
  static Map<String, List<EdFiProgramEvaluationObjectiveProgramEvaluationLevel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiProgramEvaluationObjectiveProgramEvaluationLevel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiProgramEvaluationObjectiveProgramEvaluationLevel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ratingLevelDescriptor',
  };
}

