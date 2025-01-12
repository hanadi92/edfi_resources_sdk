//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey {
  /// Returns a new [TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey] instance.
  TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey({
    this.educationOrganizationAssociationTypeDescriptor,
    this.educationOrganizationId,
    this.assessmentIdentifier,
    this.namespace,
    this.studentAssessmentIdentifier,
    this.studentUniqueId,
  });

  /// The type of association being represented.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? educationOrganizationAssociationTypeDescriptor;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

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

  /// A unique number or alphanumeric code assigned to an assessment administered to a student.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studentAssessmentIdentifier;

  /// A unique alphanumeric code assigned to a student.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studentUniqueId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey &&
    other.educationOrganizationAssociationTypeDescriptor == educationOrganizationAssociationTypeDescriptor &&
    other.educationOrganizationId == educationOrganizationId &&
    other.assessmentIdentifier == assessmentIdentifier &&
    other.namespace == namespace &&
    other.studentAssessmentIdentifier == studentAssessmentIdentifier &&
    other.studentUniqueId == studentUniqueId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (educationOrganizationAssociationTypeDescriptor == null ? 0 : educationOrganizationAssociationTypeDescriptor!.hashCode) +
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (assessmentIdentifier == null ? 0 : assessmentIdentifier!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (studentAssessmentIdentifier == null ? 0 : studentAssessmentIdentifier!.hashCode) +
    (studentUniqueId == null ? 0 : studentUniqueId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey[educationOrganizationAssociationTypeDescriptor=$educationOrganizationAssociationTypeDescriptor, educationOrganizationId=$educationOrganizationId, assessmentIdentifier=$assessmentIdentifier, namespace=$namespace, studentAssessmentIdentifier=$studentAssessmentIdentifier, studentUniqueId=$studentUniqueId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.educationOrganizationAssociationTypeDescriptor != null) {
      json[r'educationOrganizationAssociationTypeDescriptor'] = this.educationOrganizationAssociationTypeDescriptor;
    } else {
      json[r'educationOrganizationAssociationTypeDescriptor'] = null;
    }
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
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
    if (this.studentAssessmentIdentifier != null) {
      json[r'studentAssessmentIdentifier'] = this.studentAssessmentIdentifier;
    } else {
      json[r'studentAssessmentIdentifier'] = null;
    }
    if (this.studentUniqueId != null) {
      json[r'studentUniqueId'] = this.studentUniqueId;
    } else {
      json[r'studentUniqueId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey(
        educationOrganizationAssociationTypeDescriptor: mapValueOfType<String>(json, r'educationOrganizationAssociationTypeDescriptor'),
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        assessmentIdentifier: mapValueOfType<String>(json, r'assessmentIdentifier'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        studentAssessmentIdentifier: mapValueOfType<String>(json, r'studentAssessmentIdentifier'),
        studentUniqueId: mapValueOfType<String>(json, r'studentUniqueId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiStudentAssessmentEducationOrganizationAssociationKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

