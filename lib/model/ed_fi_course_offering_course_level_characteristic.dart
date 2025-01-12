//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCourseOfferingCourseLevelCharacteristic {
  /// Returns a new [EdFiCourseOfferingCourseLevelCharacteristic] instance.
  EdFiCourseOfferingCourseLevelCharacteristic({
    required this.courseLevelCharacteristicDescriptor,
  });

  /// The type of specific program or designation with which the course offering is associated (e.g., AP, IB, Dual Credit, CTE). This collection should only be populated if it differs from the course level characteristics identified at the course level.
  String courseLevelCharacteristicDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiCourseOfferingCourseLevelCharacteristic &&
    other.courseLevelCharacteristicDescriptor == courseLevelCharacteristicDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (courseLevelCharacteristicDescriptor.hashCode);

  @override
  String toString() => 'EdFiCourseOfferingCourseLevelCharacteristic[courseLevelCharacteristicDescriptor=$courseLevelCharacteristicDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'courseLevelCharacteristicDescriptor'] = this.courseLevelCharacteristicDescriptor;
    return json;
  }

  /// Returns a new [EdFiCourseOfferingCourseLevelCharacteristic] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCourseOfferingCourseLevelCharacteristic? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCourseOfferingCourseLevelCharacteristic[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCourseOfferingCourseLevelCharacteristic[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCourseOfferingCourseLevelCharacteristic(
        courseLevelCharacteristicDescriptor: mapValueOfType<String>(json, r'courseLevelCharacteristicDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiCourseOfferingCourseLevelCharacteristic> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCourseOfferingCourseLevelCharacteristic>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCourseOfferingCourseLevelCharacteristic.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCourseOfferingCourseLevelCharacteristic> mapFromJson(dynamic json) {
    final map = <String, EdFiCourseOfferingCourseLevelCharacteristic>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCourseOfferingCourseLevelCharacteristic.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCourseOfferingCourseLevelCharacteristic-objects as value to a dart map
  static Map<String, List<EdFiCourseOfferingCourseLevelCharacteristic>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCourseOfferingCourseLevelCharacteristic>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCourseOfferingCourseLevelCharacteristic.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'courseLevelCharacteristicDescriptor',
  };
}

