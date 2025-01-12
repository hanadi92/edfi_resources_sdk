//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiProgramLearningStandard {
  /// Returns a new [EdFiProgramLearningStandard] instance.
  EdFiProgramLearningStandard({
    required this.learningStandardReference,
  });

  EdFiLearningStandardReference learningStandardReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiProgramLearningStandard &&
    other.learningStandardReference == learningStandardReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (learningStandardReference.hashCode);

  @override
  String toString() => 'EdFiProgramLearningStandard[learningStandardReference=$learningStandardReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'learningStandardReference'] = this.learningStandardReference;
    return json;
  }

  /// Returns a new [EdFiProgramLearningStandard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiProgramLearningStandard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiProgramLearningStandard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiProgramLearningStandard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiProgramLearningStandard(
        learningStandardReference: EdFiLearningStandardReference.fromJson(json[r'learningStandardReference'])!,
      );
    }
    return null;
  }

  static List<EdFiProgramLearningStandard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiProgramLearningStandard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiProgramLearningStandard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiProgramLearningStandard> mapFromJson(dynamic json) {
    final map = <String, EdFiProgramLearningStandard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiProgramLearningStandard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiProgramLearningStandard-objects as value to a dart map
  static Map<String, List<EdFiProgramLearningStandard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiProgramLearningStandard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiProgramLearningStandard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'learningStandardReference',
  };
}

