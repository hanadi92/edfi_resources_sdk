//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAssessmentRegistrationReference {
  /// Returns a new [EdFiStudentAssessmentRegistrationReference] instance.
  EdFiStudentAssessmentRegistrationReference({
    required this.administrationIdentifier,
    required this.assessmentIdentifier,
    required this.assigningEducationOrganizationId,
    required this.educationOrganizationId,
    required this.namespace,
    required this.studentUniqueId,
    this.link,
  });

  /// The title or name of the assessment in the context of its administration.
  String administrationIdentifier;

  /// A unique number or alphanumeric code assigned to an assessment.
  String assessmentIdentifier;

  /// The identifier assigned to an education organization.
  int assigningEducationOrganizationId;

  /// The identifier assigned to an education organization.
  int educationOrganizationId;

  /// Namespace for the assessment.
  String namespace;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAssessmentRegistrationReference &&
    other.administrationIdentifier == administrationIdentifier &&
    other.assessmentIdentifier == assessmentIdentifier &&
    other.assigningEducationOrganizationId == assigningEducationOrganizationId &&
    other.educationOrganizationId == educationOrganizationId &&
    other.namespace == namespace &&
    other.studentUniqueId == studentUniqueId &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (administrationIdentifier.hashCode) +
    (assessmentIdentifier.hashCode) +
    (assigningEducationOrganizationId.hashCode) +
    (educationOrganizationId.hashCode) +
    (namespace.hashCode) +
    (studentUniqueId.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiStudentAssessmentRegistrationReference[administrationIdentifier=$administrationIdentifier, assessmentIdentifier=$assessmentIdentifier, assigningEducationOrganizationId=$assigningEducationOrganizationId, educationOrganizationId=$educationOrganizationId, namespace=$namespace, studentUniqueId=$studentUniqueId, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'administrationIdentifier'] = this.administrationIdentifier;
      json[r'assessmentIdentifier'] = this.assessmentIdentifier;
      json[r'assigningEducationOrganizationId'] = this.assigningEducationOrganizationId;
      json[r'educationOrganizationId'] = this.educationOrganizationId;
      json[r'namespace'] = this.namespace;
      json[r'studentUniqueId'] = this.studentUniqueId;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiStudentAssessmentRegistrationReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAssessmentRegistrationReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAssessmentRegistrationReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAssessmentRegistrationReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAssessmentRegistrationReference(
        administrationIdentifier: mapValueOfType<String>(json, r'administrationIdentifier')!,
        assessmentIdentifier: mapValueOfType<String>(json, r'assessmentIdentifier')!,
        assigningEducationOrganizationId: mapValueOfType<int>(json, r'assigningEducationOrganizationId')!,
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId')!,
        namespace: mapValueOfType<String>(json, r'namespace')!,
        studentUniqueId: mapValueOfType<String>(json, r'studentUniqueId')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiStudentAssessmentRegistrationReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAssessmentRegistrationReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAssessmentRegistrationReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAssessmentRegistrationReference> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAssessmentRegistrationReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAssessmentRegistrationReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAssessmentRegistrationReference-objects as value to a dart map
  static Map<String, List<EdFiStudentAssessmentRegistrationReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAssessmentRegistrationReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAssessmentRegistrationReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'administrationIdentifier',
    'assessmentIdentifier',
    'assigningEducationOrganizationId',
    'educationOrganizationId',
    'namespace',
    'studentUniqueId',
  };
}

