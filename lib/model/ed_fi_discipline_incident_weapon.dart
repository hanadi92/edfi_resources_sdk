//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiDisciplineIncidentWeapon {
  /// Returns a new [EdFiDisciplineIncidentWeapon] instance.
  EdFiDisciplineIncidentWeapon({
    required this.weaponDescriptor,
  });

  /// Identifies the type of weapon used during an incident. The Federal Gun-Free Schools Act requires states to report the number of students expelled for bringing firearms to school by type of firearm.
  String weaponDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiDisciplineIncidentWeapon &&
    other.weaponDescriptor == weaponDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (weaponDescriptor.hashCode);

  @override
  String toString() => 'EdFiDisciplineIncidentWeapon[weaponDescriptor=$weaponDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'weaponDescriptor'] = this.weaponDescriptor;
    return json;
  }

  /// Returns a new [EdFiDisciplineIncidentWeapon] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiDisciplineIncidentWeapon? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiDisciplineIncidentWeapon[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiDisciplineIncidentWeapon[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiDisciplineIncidentWeapon(
        weaponDescriptor: mapValueOfType<String>(json, r'weaponDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiDisciplineIncidentWeapon> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiDisciplineIncidentWeapon>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiDisciplineIncidentWeapon.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiDisciplineIncidentWeapon> mapFromJson(dynamic json) {
    final map = <String, EdFiDisciplineIncidentWeapon>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiDisciplineIncidentWeapon.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiDisciplineIncidentWeapon-objects as value to a dart map
  static Map<String, List<EdFiDisciplineIncidentWeapon>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiDisciplineIncidentWeapon>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiDisciplineIncidentWeapon.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'weaponDescriptor',
  };
}

