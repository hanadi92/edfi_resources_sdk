//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey {
  /// Returns a new [TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey] instance.
  TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey({
    this.personId,
    this.sourceSystemDescriptor,
    this.namespace,
    this.surveyIdentifier,
    this.surveyResponseIdentifier,
  });

  /// A unique alphanumeric code assigned to a person.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? personId;

  /// This descriptor defines the originating record source system for the person.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceSystemDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey &&
    other.personId == personId &&
    other.sourceSystemDescriptor == sourceSystemDescriptor &&
    other.namespace == namespace &&
    other.surveyIdentifier == surveyIdentifier &&
    other.surveyResponseIdentifier == surveyResponseIdentifier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (personId == null ? 0 : personId!.hashCode) +
    (sourceSystemDescriptor == null ? 0 : sourceSystemDescriptor!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (surveyIdentifier == null ? 0 : surveyIdentifier!.hashCode) +
    (surveyResponseIdentifier == null ? 0 : surveyResponseIdentifier!.hashCode);

  @override
  String toString() => 'TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey[personId=$personId, sourceSystemDescriptor=$sourceSystemDescriptor, namespace=$namespace, surveyIdentifier=$surveyIdentifier, surveyResponseIdentifier=$surveyResponseIdentifier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.personId != null) {
      json[r'personId'] = this.personId;
    } else {
      json[r'personId'] = null;
    }
    if (this.sourceSystemDescriptor != null) {
      json[r'sourceSystemDescriptor'] = this.sourceSystemDescriptor;
    } else {
      json[r'sourceSystemDescriptor'] = null;
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

  /// Returns a new [TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey(
        personId: mapValueOfType<String>(json, r'personId'),
        sourceSystemDescriptor: mapValueOfType<String>(json, r'sourceSystemDescriptor'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        surveyIdentifier: mapValueOfType<String>(json, r'surveyIdentifier'),
        surveyResponseIdentifier: mapValueOfType<String>(json, r'surveyResponseIdentifier'),
      );
    }
    return null;
  }

  static List<TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey-objects as value to a dart map
  static Map<String, List<TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesTpdmSurveyResponsePersonTargetAssociationKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

