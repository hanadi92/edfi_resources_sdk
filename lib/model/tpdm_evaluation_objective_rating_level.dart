//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmEvaluationObjectiveRatingLevel {
  /// Returns a new [TpdmEvaluationObjectiveRatingLevel] instance.
  TpdmEvaluationObjectiveRatingLevel({
    required this.evaluationRatingLevelDescriptor,
    this.maxRating,
    this.minRating,
  });

  /// The title for a level of rating or evaluation band (e.g., Excellent, Acceptable, Needs Improvement, Unacceptable).
  String evaluationRatingLevelDescriptor;

  /// The maximum numerical rating or score to achieve the evaluation rating level.
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? maxRating;

  /// The minimum numerical rating or score to achieve the evaluation rating level.
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? minRating;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TpdmEvaluationObjectiveRatingLevel &&
    other.evaluationRatingLevelDescriptor == evaluationRatingLevelDescriptor &&
    other.maxRating == maxRating &&
    other.minRating == minRating;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (evaluationRatingLevelDescriptor.hashCode) +
    (maxRating == null ? 0 : maxRating!.hashCode) +
    (minRating == null ? 0 : minRating!.hashCode);

  @override
  String toString() => 'TpdmEvaluationObjectiveRatingLevel[evaluationRatingLevelDescriptor=$evaluationRatingLevelDescriptor, maxRating=$maxRating, minRating=$minRating]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'evaluationRatingLevelDescriptor'] = this.evaluationRatingLevelDescriptor;
    if (this.maxRating != null) {
      json[r'maxRating'] = this.maxRating;
    } else {
      json[r'maxRating'] = null;
    }
    if (this.minRating != null) {
      json[r'minRating'] = this.minRating;
    } else {
      json[r'minRating'] = null;
    }
    return json;
  }

  /// Returns a new [TpdmEvaluationObjectiveRatingLevel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmEvaluationObjectiveRatingLevel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmEvaluationObjectiveRatingLevel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmEvaluationObjectiveRatingLevel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmEvaluationObjectiveRatingLevel(
        evaluationRatingLevelDescriptor: mapValueOfType<String>(json, r'evaluationRatingLevelDescriptor')!,
        maxRating: mapValueOfType<double>(json, r'maxRating'),
        minRating: mapValueOfType<double>(json, r'minRating'),
      );
    }
    return null;
  }

  static List<TpdmEvaluationObjectiveRatingLevel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmEvaluationObjectiveRatingLevel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmEvaluationObjectiveRatingLevel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmEvaluationObjectiveRatingLevel> mapFromJson(dynamic json) {
    final map = <String, TpdmEvaluationObjectiveRatingLevel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmEvaluationObjectiveRatingLevel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmEvaluationObjectiveRatingLevel-objects as value to a dart map
  static Map<String, List<TpdmEvaluationObjectiveRatingLevel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmEvaluationObjectiveRatingLevel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmEvaluationObjectiveRatingLevel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'evaluationRatingLevelDescriptor',
  };
}

