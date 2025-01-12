//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiSurveyQuestionKey {
  /// Returns a new [TrackedChangesEdFiSurveyQuestionKey] instance.
  TrackedChangesEdFiSurveyQuestionKey({
    this.questionCode,
    this.namespace,
    this.surveyIdentifier,
  });

  /// The identifying code for the question, unique for the survey.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? questionCode;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiSurveyQuestionKey &&
    other.questionCode == questionCode &&
    other.namespace == namespace &&
    other.surveyIdentifier == surveyIdentifier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (questionCode == null ? 0 : questionCode!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (surveyIdentifier == null ? 0 : surveyIdentifier!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiSurveyQuestionKey[questionCode=$questionCode, namespace=$namespace, surveyIdentifier=$surveyIdentifier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.questionCode != null) {
      json[r'questionCode'] = this.questionCode;
    } else {
      json[r'questionCode'] = null;
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
    return json;
  }

  /// Returns a new [TrackedChangesEdFiSurveyQuestionKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiSurveyQuestionKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiSurveyQuestionKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiSurveyQuestionKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiSurveyQuestionKey(
        questionCode: mapValueOfType<String>(json, r'questionCode'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        surveyIdentifier: mapValueOfType<String>(json, r'surveyIdentifier'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiSurveyQuestionKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiSurveyQuestionKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiSurveyQuestionKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiSurveyQuestionKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiSurveyQuestionKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiSurveyQuestionKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiSurveyQuestionKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiSurveyQuestionKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiSurveyQuestionKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiSurveyQuestionKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

