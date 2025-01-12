//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiAssessmentAdministrationParticipationKey {
  /// Returns a new [TrackedChangesEdFiAssessmentAdministrationParticipationKey] instance.
  TrackedChangesEdFiAssessmentAdministrationParticipationKey({
    this.administrationIdentifier,
    this.assessmentIdentifier,
    this.assigningEducationOrganizationId,
    this.namespace,
    this.participatingEducationOrganizationId,
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

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? assigningEducationOrganizationId;

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
  int? participatingEducationOrganizationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiAssessmentAdministrationParticipationKey &&
    other.administrationIdentifier == administrationIdentifier &&
    other.assessmentIdentifier == assessmentIdentifier &&
    other.assigningEducationOrganizationId == assigningEducationOrganizationId &&
    other.namespace == namespace &&
    other.participatingEducationOrganizationId == participatingEducationOrganizationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (administrationIdentifier == null ? 0 : administrationIdentifier!.hashCode) +
    (assessmentIdentifier == null ? 0 : assessmentIdentifier!.hashCode) +
    (assigningEducationOrganizationId == null ? 0 : assigningEducationOrganizationId!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (participatingEducationOrganizationId == null ? 0 : participatingEducationOrganizationId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiAssessmentAdministrationParticipationKey[administrationIdentifier=$administrationIdentifier, assessmentIdentifier=$assessmentIdentifier, assigningEducationOrganizationId=$assigningEducationOrganizationId, namespace=$namespace, participatingEducationOrganizationId=$participatingEducationOrganizationId]';

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
    if (this.assigningEducationOrganizationId != null) {
      json[r'assigningEducationOrganizationId'] = this.assigningEducationOrganizationId;
    } else {
      json[r'assigningEducationOrganizationId'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    if (this.participatingEducationOrganizationId != null) {
      json[r'participatingEducationOrganizationId'] = this.participatingEducationOrganizationId;
    } else {
      json[r'participatingEducationOrganizationId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiAssessmentAdministrationParticipationKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiAssessmentAdministrationParticipationKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiAssessmentAdministrationParticipationKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiAssessmentAdministrationParticipationKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiAssessmentAdministrationParticipationKey(
        administrationIdentifier: mapValueOfType<String>(json, r'administrationIdentifier'),
        assessmentIdentifier: mapValueOfType<String>(json, r'assessmentIdentifier'),
        assigningEducationOrganizationId: mapValueOfType<int>(json, r'assigningEducationOrganizationId'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        participatingEducationOrganizationId: mapValueOfType<int>(json, r'participatingEducationOrganizationId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiAssessmentAdministrationParticipationKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiAssessmentAdministrationParticipationKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiAssessmentAdministrationParticipationKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiAssessmentAdministrationParticipationKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiAssessmentAdministrationParticipationKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiAssessmentAdministrationParticipationKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiAssessmentAdministrationParticipationKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiAssessmentAdministrationParticipationKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiAssessmentAdministrationParticipationKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiAssessmentAdministrationParticipationKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

