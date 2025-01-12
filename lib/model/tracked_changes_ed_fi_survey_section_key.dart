//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiSurveySectionKey {
  /// Returns a new [TrackedChangesEdFiSurveySectionKey] instance.
  TrackedChangesEdFiSurveySectionKey({
    this.surveySectionTitle,
    this.namespace,
    this.surveyIdentifier,
  });

  /// The title or label for the survey section.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? surveySectionTitle;

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
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiSurveySectionKey &&
    other.surveySectionTitle == surveySectionTitle &&
    other.namespace == namespace &&
    other.surveyIdentifier == surveyIdentifier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (surveySectionTitle == null ? 0 : surveySectionTitle!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (surveyIdentifier == null ? 0 : surveyIdentifier!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiSurveySectionKey[surveySectionTitle=$surveySectionTitle, namespace=$namespace, surveyIdentifier=$surveyIdentifier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.surveySectionTitle != null) {
      json[r'surveySectionTitle'] = this.surveySectionTitle;
    } else {
      json[r'surveySectionTitle'] = null;
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

  /// Returns a new [TrackedChangesEdFiSurveySectionKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiSurveySectionKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiSurveySectionKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiSurveySectionKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiSurveySectionKey(
        surveySectionTitle: mapValueOfType<String>(json, r'surveySectionTitle'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        surveyIdentifier: mapValueOfType<String>(json, r'surveyIdentifier'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiSurveySectionKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiSurveySectionKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiSurveySectionKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiSurveySectionKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiSurveySectionKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiSurveySectionKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiSurveySectionKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiSurveySectionKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiSurveySectionKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiSurveySectionKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

