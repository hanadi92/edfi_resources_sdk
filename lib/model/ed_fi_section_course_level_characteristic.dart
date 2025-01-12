//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiSectionCourseLevelCharacteristic {
  /// Returns a new [EdFiSectionCourseLevelCharacteristic] instance.
  EdFiSectionCourseLevelCharacteristic({
    required this.courseLevelCharacteristicDescriptor,
  });

  /// The type of specific program or designation with which the section is associated. This collection should only be populated if it differs from the course level characteristics identified at the course offering level.
  String courseLevelCharacteristicDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiSectionCourseLevelCharacteristic &&
    other.courseLevelCharacteristicDescriptor == courseLevelCharacteristicDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (courseLevelCharacteristicDescriptor.hashCode);

  @override
  String toString() => 'EdFiSectionCourseLevelCharacteristic[courseLevelCharacteristicDescriptor=$courseLevelCharacteristicDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'courseLevelCharacteristicDescriptor'] = this.courseLevelCharacteristicDescriptor;
    return json;
  }

  /// Returns a new [EdFiSectionCourseLevelCharacteristic] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiSectionCourseLevelCharacteristic? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiSectionCourseLevelCharacteristic[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiSectionCourseLevelCharacteristic[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiSectionCourseLevelCharacteristic(
        courseLevelCharacteristicDescriptor: mapValueOfType<String>(json, r'courseLevelCharacteristicDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiSectionCourseLevelCharacteristic> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiSectionCourseLevelCharacteristic>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiSectionCourseLevelCharacteristic.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiSectionCourseLevelCharacteristic> mapFromJson(dynamic json) {
    final map = <String, EdFiSectionCourseLevelCharacteristic>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiSectionCourseLevelCharacteristic.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiSectionCourseLevelCharacteristic-objects as value to a dart map
  static Map<String, List<EdFiSectionCourseLevelCharacteristic>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiSectionCourseLevelCharacteristic>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiSectionCourseLevelCharacteristic.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'courseLevelCharacteristicDescriptor',
  };
}

