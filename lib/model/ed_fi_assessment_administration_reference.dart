//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiAssessmentAdministrationReference {
  /// Returns a new [EdFiAssessmentAdministrationReference] instance.
  EdFiAssessmentAdministrationReference({
    required this.administrationIdentifier,
    required this.assessmentIdentifier,
    required this.assigningEducationOrganizationId,
    required this.namespace,
    this.link,
  });

  /// The title or name of the assessment in the context of its administration.
  String administrationIdentifier;

  /// A unique number or alphanumeric code assigned to an assessment.
  String assessmentIdentifier;

  /// The identifier assigned to an education organization.
  int assigningEducationOrganizationId;

  /// Namespace for the assessment.
  String namespace;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiAssessmentAdministrationReference &&
    other.administrationIdentifier == administrationIdentifier &&
    other.assessmentIdentifier == assessmentIdentifier &&
    other.assigningEducationOrganizationId == assigningEducationOrganizationId &&
    other.namespace == namespace &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (administrationIdentifier.hashCode) +
    (assessmentIdentifier.hashCode) +
    (assigningEducationOrganizationId.hashCode) +
    (namespace.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiAssessmentAdministrationReference[administrationIdentifier=$administrationIdentifier, assessmentIdentifier=$assessmentIdentifier, assigningEducationOrganizationId=$assigningEducationOrganizationId, namespace=$namespace, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'administrationIdentifier'] = this.administrationIdentifier;
      json[r'assessmentIdentifier'] = this.assessmentIdentifier;
      json[r'assigningEducationOrganizationId'] = this.assigningEducationOrganizationId;
      json[r'namespace'] = this.namespace;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiAssessmentAdministrationReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiAssessmentAdministrationReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiAssessmentAdministrationReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiAssessmentAdministrationReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiAssessmentAdministrationReference(
        administrationIdentifier: mapValueOfType<String>(json, r'administrationIdentifier')!,
        assessmentIdentifier: mapValueOfType<String>(json, r'assessmentIdentifier')!,
        assigningEducationOrganizationId: mapValueOfType<int>(json, r'assigningEducationOrganizationId')!,
        namespace: mapValueOfType<String>(json, r'namespace')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiAssessmentAdministrationReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiAssessmentAdministrationReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiAssessmentAdministrationReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiAssessmentAdministrationReference> mapFromJson(dynamic json) {
    final map = <String, EdFiAssessmentAdministrationReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiAssessmentAdministrationReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiAssessmentAdministrationReference-objects as value to a dart map
  static Map<String, List<EdFiAssessmentAdministrationReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiAssessmentAdministrationReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiAssessmentAdministrationReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'administrationIdentifier',
    'assessmentIdentifier',
    'assigningEducationOrganizationId',
    'namespace',
  };
}

