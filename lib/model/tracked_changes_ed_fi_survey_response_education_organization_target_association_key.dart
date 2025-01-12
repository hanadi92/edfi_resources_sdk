//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey {
  /// Returns a new [TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey] instance.
  TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey({
    this.educationOrganizationId,
    this.namespace,
    this.surveyIdentifier,
    this.surveyResponseIdentifier,
  });

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

  /// Namespace for the survey.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  /// The unique survey identifier from the survey tool.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? surveyIdentifier;

  /// The identifier of the survey typically from the survey application.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? surveyResponseIdentifier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey &&
    other.educationOrganizationId == educationOrganizationId &&
    other.namespace == namespace &&
    other.surveyIdentifier == surveyIdentifier &&
    other.surveyResponseIdentifier == surveyResponseIdentifier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (surveyIdentifier == null ? 0 : surveyIdentifier!.hashCode) +
    (surveyResponseIdentifier == null ? 0 : surveyResponseIdentifier!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey[educationOrganizationId=$educationOrganizationId, namespace=$namespace, surveyIdentifier=$surveyIdentifier, surveyResponseIdentifier=$surveyResponseIdentifier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    if (this.surveyIdentifier != null) {
      json[r'surveyIdentifier'] = this.surveyIdentifier;
    } else {
      json[r'surveyIdentifier'] = null;
    }
    if (this.surveyResponseIdentifier != null) {
      json[r'surveyResponseIdentifier'] = this.surveyResponseIdentifier;
    } else {
      json[r'surveyResponseIdentifier'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey(
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        surveyIdentifier: mapValueOfType<String>(json, r'surveyIdentifier'),
        surveyResponseIdentifier: mapValueOfType<String>(json, r'surveyResponseIdentifier'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiSurveyResponseEducationOrganizationTargetAssociationKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

