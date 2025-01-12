//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiAssessmentAdministrationKey {
  /// Returns a new [TrackedChangesEdFiAssessmentAdministrationKey] instance.
  TrackedChangesEdFiAssessmentAdministrationKey({
    this.administrationIdentifier,
    this.assessmentIdentifier,
    this.namespace,
    this.assigningEducationOrganizationId,
  });

  /// The title or name of the assessment in the context of its administration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? administrationIdentifier;

  /// A unique number or alphanumeric code assigned to an assessment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assessmentIdentifier;

  /// Namespace for the assessment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? assigningEducationOrganizationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiAssessmentAdministrationKey &&
    other.administrationIdentifier == administrationIdentifier &&
    other.assessmentIdentifier == assessmentIdentifier &&
    other.namespace == namespace &&
    other.assigningEducationOrganizationId == assigningEducationOrganizationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (administrationIdentifier == null ? 0 : administrationIdentifier!.hashCode) +
    (assessmentIdentifier == null ? 0 : assessmentIdentifier!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (assigningEducationOrganizationId == null ? 0 : assigningEducationOrganizationId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiAssessmentAdministrationKey[administrationIdentifier=$administrationIdentifier, assessmentIdentifier=$assessmentIdentifier, namespace=$namespace, assigningEducationOrganizationId=$assigningEducationOrganizationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.administrationIdentifier != null) {
      json[r'administrationIdentifier'] = this.administrationIdentifier;
    } else {
      json[r'administrationIdentifier'] = null;
    }
    if (this.assessmentIdentifier != null) {
      json[r'assessmentIdentifier'] = this.assessmentIdentifier;
    } else {
      json[r'assessmentIdentifier'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    if (this.assigningEducationOrganizationId != null) {
      json[r'assigningEducationOrganizationId'] = this.assigningEducationOrganizationId;
    } else {
      json[r'assigningEducationOrganizationId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiAssessmentAdministrationKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiAssessmentAdministrationKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiAssessmentAdministrationKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiAssessmentAdministrationKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiAssessmentAdministrationKey(
        administrationIdentifier: mapValueOfType<String>(json, r'administrationIdentifier'),
        assessmentIdentifier: mapValueOfType<String>(json, r'assessmentIdentifier'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        assigningEducationOrganizationId: mapValueOfType<int>(json, r'assigningEducationOrganizationId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiAssessmentAdministrationKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiAssessmentAdministrationKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiAssessmentAdministrationKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiAssessmentAdministrationKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiAssessmentAdministrationKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiAssessmentAdministrationKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiAssessmentAdministrationKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiAssessmentAdministrationKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiAssessmentAdministrationKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiAssessmentAdministrationKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

