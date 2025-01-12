//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey {
  /// Returns a new [TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey] instance.
  TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey({
    this.assessmentBatteryPartName,
    this.assessmentIdentifier,
    this.namespace,
    this.administrationIdentifier,
    this.assigningEducationOrganizationId,
    this.educationOrganizationId,
    this.studentUniqueId,
  });

  /// The name of the part of an assessment battery.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assessmentBatteryPartName;

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

  /// The title or name of the assessment in the context of its administration.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? administrationIdentifier;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? assigningEducationOrganizationId;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

  /// A unique alphanumeric code assigned to a student.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studentUniqueId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey &&
    other.assessmentBatteryPartName == assessmentBatteryPartName &&
    other.assessmentIdentifier == assessmentIdentifier &&
    other.namespace == namespace &&
    other.administrationIdentifier == administrationIdentifier &&
    other.assigningEducationOrganizationId == assigningEducationOrganizationId &&
    other.educationOrganizationId == educationOrganizationId &&
    other.studentUniqueId == studentUniqueId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assessmentBatteryPartName == null ? 0 : assessmentBatteryPartName!.hashCode) +
    (assessmentIdentifier == null ? 0 : assessmentIdentifier!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (administrationIdentifier == null ? 0 : administrationIdentifier!.hashCode) +
    (assigningEducationOrganizationId == null ? 0 : assigningEducationOrganizationId!.hashCode) +
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (studentUniqueId == null ? 0 : studentUniqueId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey[assessmentBatteryPartName=$assessmentBatteryPartName, assessmentIdentifier=$assessmentIdentifier, namespace=$namespace, administrationIdentifier=$administrationIdentifier, assigningEducationOrganizationId=$assigningEducationOrganizationId, educationOrganizationId=$educationOrganizationId, studentUniqueId=$studentUniqueId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assessmentBatteryPartName != null) {
      json[r'assessmentBatteryPartName'] = this.assessmentBatteryPartName;
    } else {
      json[r'assessmentBatteryPartName'] = null;
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
    if (this.administrationIdentifier != null) {
      json[r'administrationIdentifier'] = this.administrationIdentifier;
    } else {
      json[r'administrationIdentifier'] = null;
    }
    if (this.assigningEducationOrganizationId != null) {
      json[r'assigningEducationOrganizationId'] = this.assigningEducationOrganizationId;
    } else {
      json[r'assigningEducationOrganizationId'] = null;
    }
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    if (this.studentUniqueId != null) {
      json[r'studentUniqueId'] = this.studentUniqueId;
    } else {
      json[r'studentUniqueId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey(
        assessmentBatteryPartName: mapValueOfType<String>(json, r'assessmentBatteryPartName'),
        assessmentIdentifier: mapValueOfType<String>(json, r'assessmentIdentifier'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        administrationIdentifier: mapValueOfType<String>(json, r'administrationIdentifier'),
        assigningEducationOrganizationId: mapValueOfType<int>(json, r'assigningEducationOrganizationId'),
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        studentUniqueId: mapValueOfType<String>(json, r'studentUniqueId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiStudentAssessmentRegistrationBatteryPartAssociationKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

