//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCalendarGradeLevel {
  /// Returns a new [EdFiCalendarGradeLevel] instance.
  EdFiCalendarGradeLevel({
    required this.gradeLevelDescriptor,
  });

  /// Indicates the grade level associated with the calendar.
  String gradeLevelDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiCalendarGradeLevel &&
    other.gradeLevelDescriptor == gradeLevelDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gradeLevelDescriptor.hashCode);

  @override
  String toString() => 'EdFiCalendarGradeLevel[gradeLevelDescriptor=$gradeLevelDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'gradeLevelDescriptor'] = this.gradeLevelDescriptor;
    return json;
  }

  /// Returns a new [EdFiCalendarGradeLevel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCalendarGradeLevel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCalendarGradeLevel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCalendarGradeLevel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCalendarGradeLevel(
        gradeLevelDescriptor: mapValueOfType<String>(json, r'gradeLevelDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiCalendarGradeLevel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCalendarGradeLevel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCalendarGradeLevel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCalendarGradeLevel> mapFromJson(dynamic json) {
    final map = <String, EdFiCalendarGradeLevel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCalendarGradeLevel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCalendarGradeLevel-objects as value to a dart map
  static Map<String, List<EdFiCalendarGradeLevel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCalendarGradeLevel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCalendarGradeLevel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'gradeLevelDescriptor',
  };
}

