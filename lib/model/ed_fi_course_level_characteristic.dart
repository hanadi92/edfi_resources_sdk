//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCourseLevelCharacteristic {
  /// Returns a new [EdFiCourseLevelCharacteristic] instance.
  EdFiCourseLevelCharacteristic({
    required this.courseLevelCharacteristicDescriptor,
  });

  /// The type of specific program or designation with which the course is associated (e.g., AP, IB, Dual Credit, CTE).
  String courseLevelCharacteristicDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiCourseLevelCharacteristic &&
    other.courseLevelCharacteristicDescriptor == courseLevelCharacteristicDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (courseLevelCharacteristicDescriptor.hashCode);

  @override
  String toString() => 'EdFiCourseLevelCharacteristic[courseLevelCharacteristicDescriptor=$courseLevelCharacteristicDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'courseLevelCharacteristicDescriptor'] = this.courseLevelCharacteristicDescriptor;
    return json;
  }

  /// Returns a new [EdFiCourseLevelCharacteristic] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCourseLevelCharacteristic? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCourseLevelCharacteristic[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCourseLevelCharacteristic[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCourseLevelCharacteristic(
        courseLevelCharacteristicDescriptor: mapValueOfType<String>(json, r'courseLevelCharacteristicDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiCourseLevelCharacteristic> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCourseLevelCharacteristic>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCourseLevelCharacteristic.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCourseLevelCharacteristic> mapFromJson(dynamic json) {
    final map = <String, EdFiCourseLevelCharacteristic>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCourseLevelCharacteristic.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCourseLevelCharacteristic-objects as value to a dart map
  static Map<String, List<EdFiCourseLevelCharacteristic>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCourseLevelCharacteristic>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCourseLevelCharacteristic.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'courseLevelCharacteristicDescriptor',
  };
}

