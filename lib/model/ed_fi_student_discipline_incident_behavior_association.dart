//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentDisciplineIncidentBehaviorAssociation {
  /// Returns a new [EdFiStudentDisciplineIncidentBehaviorAssociation] instance.
  EdFiStudentDisciplineIncidentBehaviorAssociation({
    this.id,
    required this.behaviorDescriptor,
    required this.disciplineIncidentReference,
    required this.studentReference,
    this.behaviorDetailedDescription,
    this.disciplineIncidentParticipationCodes = const [],
    this.weapons = const [],
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

  /// Describes behavior by category.
  String behaviorDescriptor;

  EdFiDisciplineIncidentReference disciplineIncidentReference;

  EdFiStudentReference studentReference;

  /// Specifies a more granular level of detail of a behavior involved in the incident.
  String? behaviorDetailedDescription;

  /// An unordered collection of studentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCodes. The role or type of participation of a student in a discipline incident.
  List<EdFiStudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode> disciplineIncidentParticipationCodes;

  /// An unordered collection of studentDisciplineIncidentBehaviorAssociationWeapons. Identifies the type(s) of weapon used by the student during a discipline incident. The Federal Gun-Free Schools Act requires states to report the number of students expelled for bringing firearms to school by type of firearm.
  List<EdFiStudentDisciplineIncidentBehaviorAssociationWeapon> weapons;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentDisciplineIncidentBehaviorAssociation &&
    other.id == id &&
    other.behaviorDescriptor == behaviorDescriptor &&
    other.disciplineIncidentReference == disciplineIncidentReference &&
    other.studentReference == studentReference &&
    other.behaviorDetailedDescription == behaviorDetailedDescription &&
    _deepEquality.equals(other.disciplineIncidentParticipationCodes, disciplineIncidentParticipationCodes) &&
    _deepEquality.equals(other.weapons, weapons) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (behaviorDescriptor.hashCode) +
    (disciplineIncidentReference.hashCode) +
    (studentReference.hashCode) +
    (behaviorDetailedDescription == null ? 0 : behaviorDetailedDescription!.hashCode) +
    (disciplineIncidentParticipationCodes.hashCode) +
    (weapons.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentDisciplineIncidentBehaviorAssociation[id=$id, behaviorDescriptor=$behaviorDescriptor, disciplineIncidentReference=$disciplineIncidentReference, studentReference=$studentReference, behaviorDetailedDescription=$behaviorDetailedDescription, disciplineIncidentParticipationCodes=$disciplineIncidentParticipationCodes, weapons=$weapons, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'behaviorDescriptor'] = this.behaviorDescriptor;
      json[r'disciplineIncidentReference'] = this.disciplineIncidentReference;
      json[r'studentReference'] = this.studentReference;
    if (this.behaviorDetailedDescription != null) {
      json[r'behaviorDetailedDescription'] = this.behaviorDetailedDescription;
    } else {
      json[r'behaviorDetailedDescription'] = null;
    }
      json[r'disciplineIncidentParticipationCodes'] = this.disciplineIncidentParticipationCodes;
      json[r'weapons'] = this.weapons;
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

  /// Returns a new [EdFiStudentDisciplineIncidentBehaviorAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentDisciplineIncidentBehaviorAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentDisciplineIncidentBehaviorAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentDisciplineIncidentBehaviorAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentDisciplineIncidentBehaviorAssociation(
        id: mapValueOfType<String>(json, r'id'),
        behaviorDescriptor: mapValueOfType<String>(json, r'behaviorDescriptor')!,
        disciplineIncidentReference: EdFiDisciplineIncidentReference.fromJson(json[r'disciplineIncidentReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        behaviorDetailedDescription: mapValueOfType<String>(json, r'behaviorDetailedDescription'),
        disciplineIncidentParticipationCodes: EdFiStudentDisciplineIncidentBehaviorAssociationDisciplineIncidentParticipationCode.listFromJson(json[r'disciplineIncidentParticipationCodes']),
        weapons: EdFiStudentDisciplineIncidentBehaviorAssociationWeapon.listFromJson(json[r'weapons']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentDisciplineIncidentBehaviorAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentDisciplineIncidentBehaviorAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentDisciplineIncidentBehaviorAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentDisciplineIncidentBehaviorAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentDisciplineIncidentBehaviorAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentDisciplineIncidentBehaviorAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentDisciplineIncidentBehaviorAssociation-objects as value to a dart map
  static Map<String, List<EdFiStudentDisciplineIncidentBehaviorAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentDisciplineIncidentBehaviorAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentDisciplineIncidentBehaviorAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'behaviorDescriptor',
    'disciplineIncidentReference',
    'studentReference',
  };
}

