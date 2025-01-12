//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiDisciplineIncidentExternalParticipant {
  /// Returns a new [EdFiDisciplineIncidentExternalParticipant] instance.
  EdFiDisciplineIncidentExternalParticipant({
    required this.disciplineIncidentParticipationCodeDescriptor,
    required this.firstName,
    required this.lastSurname,
  });

  /// The role or type of participation of an individual in the discipline incident.
  String disciplineIncidentParticipationCodeDescriptor;

  /// A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  String firstName;

  /// The name borne in common by members of a family.
  String lastSurname;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiDisciplineIncidentExternalParticipant &&
    other.disciplineIncidentParticipationCodeDescriptor == disciplineIncidentParticipationCodeDescriptor &&
    other.firstName == firstName &&
    other.lastSurname == lastSurname;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (disciplineIncidentParticipationCodeDescriptor.hashCode) +
    (firstName.hashCode) +
    (lastSurname.hashCode);

  @override
  String toString() => 'EdFiDisciplineIncidentExternalParticipant[disciplineIncidentParticipationCodeDescriptor=$disciplineIncidentParticipationCodeDescriptor, firstName=$firstName, lastSurname=$lastSurname]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'disciplineIncidentParticipationCodeDescriptor'] = this.disciplineIncidentParticipationCodeDescriptor;
      json[r'firstName'] = this.firstName;
      json[r'lastSurname'] = this.lastSurname;
    return json;
  }

  /// Returns a new [EdFiDisciplineIncidentExternalParticipant] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiDisciplineIncidentExternalParticipant? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiDisciplineIncidentExternalParticipant[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiDisciplineIncidentExternalParticipant[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiDisciplineIncidentExternalParticipant(
        disciplineIncidentParticipationCodeDescriptor: mapValueOfType<String>(json, r'disciplineIncidentParticipationCodeDescriptor')!,
        firstName: mapValueOfType<String>(json, r'firstName')!,
        lastSurname: mapValueOfType<String>(json, r'lastSurname')!,
      );
    }
    return null;
  }

  static List<EdFiDisciplineIncidentExternalParticipant> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiDisciplineIncidentExternalParticipant>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiDisciplineIncidentExternalParticipant.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiDisciplineIncidentExternalParticipant> mapFromJson(dynamic json) {
    final map = <String, EdFiDisciplineIncidentExternalParticipant>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiDisciplineIncidentExternalParticipant.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiDisciplineIncidentExternalParticipant-objects as value to a dart map
  static Map<String, List<EdFiDisciplineIncidentExternalParticipant>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiDisciplineIncidentExternalParticipant>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiDisciplineIncidentExternalParticipant.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'disciplineIncidentParticipationCodeDescriptor',
    'firstName',
    'lastSurname',
  };
}

