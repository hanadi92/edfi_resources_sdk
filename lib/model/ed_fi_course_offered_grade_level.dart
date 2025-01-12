//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCourseOfferedGradeLevel {
  /// Returns a new [EdFiCourseOfferedGradeLevel] instance.
  EdFiCourseOfferedGradeLevel({
    required this.gradeLevelDescriptor,
  });

  /// The grade levels in which the course is offered.
  String gradeLevelDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiCourseOfferedGradeLevel &&
    other.gradeLevelDescriptor == gradeLevelDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gradeLevelDescriptor.hashCode);

  @override
  String toString() => 'EdFiCourseOfferedGradeLevel[gradeLevelDescriptor=$gradeLevelDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'gradeLevelDescriptor'] = this.gradeLevelDescriptor;
    return json;
  }

  /// Returns a new [EdFiCourseOfferedGradeLevel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCourseOfferedGradeLevel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCourseOfferedGradeLevel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCourseOfferedGradeLevel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCourseOfferedGradeLevel(
        gradeLevelDescriptor: mapValueOfType<String>(json, r'gradeLevelDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiCourseOfferedGradeLevel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCourseOfferedGradeLevel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCourseOfferedGradeLevel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCourseOfferedGradeLevel> mapFromJson(dynamic json) {
    final map = <String, EdFiCourseOfferedGradeLevel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCourseOfferedGradeLevel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCourseOfferedGradeLevel-objects as value to a dart map
  static Map<String, List<EdFiCourseOfferedGradeLevel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCourseOfferedGradeLevel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCourseOfferedGradeLevel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'gradeLevelDescriptor',
  };
}

