//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCourseOfferingOfferedGradeLevel {
  /// Returns a new [EdFiCourseOfferingOfferedGradeLevel] instance.
  EdFiCourseOfferingOfferedGradeLevel({
    required this.gradeLevelDescriptor,
  });

  /// The grade levels in which the course is offered. This collection should only be populated if it differs from the offered grade levels identified at the course level.
  String gradeLevelDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiCourseOfferingOfferedGradeLevel &&
    other.gradeLevelDescriptor == gradeLevelDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gradeLevelDescriptor.hashCode);

  @override
  String toString() => 'EdFiCourseOfferingOfferedGradeLevel[gradeLevelDescriptor=$gradeLevelDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'gradeLevelDescriptor'] = this.gradeLevelDescriptor;
    return json;
  }

  /// Returns a new [EdFiCourseOfferingOfferedGradeLevel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCourseOfferingOfferedGradeLevel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCourseOfferingOfferedGradeLevel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCourseOfferingOfferedGradeLevel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCourseOfferingOfferedGradeLevel(
        gradeLevelDescriptor: mapValueOfType<String>(json, r'gradeLevelDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiCourseOfferingOfferedGradeLevel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCourseOfferingOfferedGradeLevel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCourseOfferingOfferedGradeLevel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCourseOfferingOfferedGradeLevel> mapFromJson(dynamic json) {
    final map = <String, EdFiCourseOfferingOfferedGradeLevel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCourseOfferingOfferedGradeLevel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCourseOfferingOfferedGradeLevel-objects as value to a dart map
  static Map<String, List<EdFiCourseOfferingOfferedGradeLevel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCourseOfferingOfferedGradeLevel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCourseOfferingOfferedGradeLevel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'gradeLevelDescriptor',
  };
}

