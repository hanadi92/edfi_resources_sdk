//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode {
  /// Returns a new [EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode] instance.
  EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode({
    required this.disciplineIncidentParticipationCodeDescriptor,
  });

  /// The role or type of participation of a student in a discipline incident.
  String disciplineIncidentParticipationCodeDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode &&
    other.disciplineIncidentParticipationCodeDescriptor == disciplineIncidentParticipationCodeDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (disciplineIncidentParticipationCodeDescriptor.hashCode);

  @override
  String toString() => 'EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode[disciplineIncidentParticipationCodeDescriptor=$disciplineIncidentParticipationCodeDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'disciplineIncidentParticipationCodeDescriptor'] = this.disciplineIncidentParticipationCodeDescriptor;
    return json;
  }

  /// Returns a new [EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode(
        disciplineIncidentParticipationCodeDescriptor: mapValueOfType<String>(json, r'disciplineIncidentParticipationCodeDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode> mapFromJson(dynamic json) {
    final map = <String, EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode-objects as value to a dart map
  static Map<String, List<EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'disciplineIncidentParticipationCodeDescriptor',
  };
}

