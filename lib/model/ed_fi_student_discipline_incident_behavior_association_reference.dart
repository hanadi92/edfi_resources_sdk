//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentDisciplineIncidentBehaviorAssociationReference {
  /// Returns a new [EdFiStudentDisciplineIncidentBehaviorAssociationReference] instance.
  EdFiStudentDisciplineIncidentBehaviorAssociationReference({
    required this.behaviorDescriptor,
    required this.incidentIdentifier,
    required this.schoolId,
    required this.studentUniqueId,
    this.link,
  });

  /// Describes behavior by category.
  String behaviorDescriptor;

  /// A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.
  String incidentIdentifier;

  /// The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  int schoolId;

  /// A unique alphanumeric code assigned to a student.
  String studentUniqueId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentDisciplineIncidentBehaviorAssociationReference &&
    other.behaviorDescriptor == behaviorDescriptor &&
    other.incidentIdentifier == incidentIdentifier &&
    other.schoolId == schoolId &&
    other.studentUniqueId == studentUniqueId &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (behaviorDescriptor.hashCode) +
    (incidentIdentifier.hashCode) +
    (schoolId.hashCode) +
    (studentUniqueId.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiStudentDisciplineIncidentBehaviorAssociationReference[behaviorDescriptor=$behaviorDescriptor, incidentIdentifier=$incidentIdentifier, schoolId=$schoolId, studentUniqueId=$studentUniqueId, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'behaviorDescriptor'] = this.behaviorDescriptor;
      json[r'incidentIdentifier'] = this.incidentIdentifier;
      json[r'schoolId'] = this.schoolId;
      json[r'studentUniqueId'] = this.studentUniqueId;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiStudentDisciplineIncidentBehaviorAssociationReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentDisciplineIncidentBehaviorAssociationReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentDisciplineIncidentBehaviorAssociationReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentDisciplineIncidentBehaviorAssociationReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentDisciplineIncidentBehaviorAssociationReference(
        behaviorDescriptor: mapValueOfType<String>(json, r'behaviorDescriptor')!,
        incidentIdentifier: mapValueOfType<String>(json, r'incidentIdentifier')!,
        schoolId: mapValueOfType<int>(json, r'schoolId')!,
        studentUniqueId: mapValueOfType<String>(json, r'studentUniqueId')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiStudentDisciplineIncidentBehaviorAssociationReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentDisciplineIncidentBehaviorAssociationReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentDisciplineIncidentBehaviorAssociationReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentDisciplineIncidentBehaviorAssociationReference> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentDisciplineIncidentBehaviorAssociationReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentDisciplineIncidentBehaviorAssociationReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentDisciplineIncidentBehaviorAssociationReference-objects as value to a dart map
  static Map<String, List<EdFiStudentDisciplineIncidentBehaviorAssociationReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentDisciplineIncidentBehaviorAssociationReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentDisciplineIncidentBehaviorAssociationReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'behaviorDescriptor',
    'incidentIdentifier',
    'schoolId',
    'studentUniqueId',
  };
}

