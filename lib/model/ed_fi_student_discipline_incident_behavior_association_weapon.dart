//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentDisciplineIncidentBehaviorAssociationWeapon {
  /// Returns a new [EdFiStudentDisciplineIncidentBehaviorAssociationWeapon] instance.
  EdFiStudentDisciplineIncidentBehaviorAssociationWeapon({
    required this.weaponDescriptor,
  });

  /// Identifies the type(s) of weapon used by the student during a discipline incident. The Federal Gun-Free Schools Act requires states to report the number of students expelled for bringing firearms to school by type of firearm.
  String weaponDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentDisciplineIncidentBehaviorAssociationWeapon &&
    other.weaponDescriptor == weaponDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (weaponDescriptor.hashCode);

  @override
  String toString() => 'EdFiStudentDisciplineIncidentBehaviorAssociationWeapon[weaponDescriptor=$weaponDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'weaponDescriptor'] = this.weaponDescriptor;
    return json;
  }

  /// Returns a new [EdFiStudentDisciplineIncidentBehaviorAssociationWeapon] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentDisciplineIncidentBehaviorAssociationWeapon? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentDisciplineIncidentBehaviorAssociationWeapon[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentDisciplineIncidentBehaviorAssociationWeapon[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentDisciplineIncidentBehaviorAssociationWeapon(
        weaponDescriptor: mapValueOfType<String>(json, r'weaponDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiStudentDisciplineIncidentBehaviorAssociationWeapon> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentDisciplineIncidentBehaviorAssociationWeapon>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentDisciplineIncidentBehaviorAssociationWeapon.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentDisciplineIncidentBehaviorAssociationWeapon> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentDisciplineIncidentBehaviorAssociationWeapon>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentDisciplineIncidentBehaviorAssociationWeapon.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentDisciplineIncidentBehaviorAssociationWeapon-objects as value to a dart map
  static Map<String, List<EdFiStudentDisciplineIncidentBehaviorAssociationWeapon>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentDisciplineIncidentBehaviorAssociationWeapon>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentDisciplineIncidentBehaviorAssociationWeapon.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'weaponDescriptor',
  };
}

