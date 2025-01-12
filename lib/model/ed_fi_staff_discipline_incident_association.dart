//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaffDisciplineIncidentAssociation {
  /// Returns a new [EdFiStaffDisciplineIncidentAssociation] instance.
  EdFiStaffDisciplineIncidentAssociation({
    this.id,
    this.disciplineIncidentParticipationCodes = const [],
    required this.disciplineIncidentReference,
    required this.staffReference,
    this.etag,
    this.lastModifiedDate,
  });

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// An unordered collection of staffDisciplineIncidentAssociationDisciplineIncidentParticipationCodes. The role or type of participation of a student in a discipline incident.
  List<EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode> disciplineIncidentParticipationCodes;

  EdFiDisciplineIncidentReference disciplineIncidentReference;

  EdFiStaffReference staffReference;

  /// A unique system-generated value that identifies the version of the resource.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? etag;

  /// The date and time the resource was last modified.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastModifiedDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaffDisciplineIncidentAssociation &&
    other.id == id &&
    _deepEquality.equals(other.disciplineIncidentParticipationCodes, disciplineIncidentParticipationCodes) &&
    other.disciplineIncidentReference == disciplineIncidentReference &&
    other.staffReference == staffReference &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (disciplineIncidentParticipationCodes.hashCode) +
    (disciplineIncidentReference.hashCode) +
    (staffReference.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStaffDisciplineIncidentAssociation[id=$id, disciplineIncidentParticipationCodes=$disciplineIncidentParticipationCodes, disciplineIncidentReference=$disciplineIncidentReference, staffReference=$staffReference, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'disciplineIncidentParticipationCodes'] = this.disciplineIncidentParticipationCodes;
      json[r'disciplineIncidentReference'] = this.disciplineIncidentReference;
      json[r'staffReference'] = this.staffReference;
    if (this.etag != null) {
      json[r'_etag'] = this.etag;
    } else {
      json[r'_etag'] = null;
    }
    if (this.lastModifiedDate != null) {
      json[r'_lastModifiedDate'] = this.lastModifiedDate!.toUtc().toIso8601String();
    } else {
      json[r'_lastModifiedDate'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiStaffDisciplineIncidentAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaffDisciplineIncidentAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaffDisciplineIncidentAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaffDisciplineIncidentAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaffDisciplineIncidentAssociation(
        id: mapValueOfType<String>(json, r'id'),
        disciplineIncidentParticipationCodes: EdFiStaffDisciplineIncidentAssociationDisciplineIncidentParticipationCode.listFromJson(json[r'disciplineIncidentParticipationCodes']),
        disciplineIncidentReference: EdFiDisciplineIncidentReference.fromJson(json[r'disciplineIncidentReference'])!,
        staffReference: EdFiStaffReference.fromJson(json[r'staffReference'])!,
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStaffDisciplineIncidentAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaffDisciplineIncidentAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaffDisciplineIncidentAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaffDisciplineIncidentAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStaffDisciplineIncidentAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaffDisciplineIncidentAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaffDisciplineIncidentAssociation-objects as value to a dart map
  static Map<String, List<EdFiStaffDisciplineIncidentAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaffDisciplineIncidentAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaffDisciplineIncidentAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'disciplineIncidentParticipationCodes',
    'disciplineIncidentReference',
    'staffReference',
  };
}

