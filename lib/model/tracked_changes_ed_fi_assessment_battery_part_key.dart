//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiAssessmentBatteryPartKey {
  /// Returns a new [TrackedChangesEdFiAssessmentBatteryPartKey] instance.
  TrackedChangesEdFiAssessmentBatteryPartKey({
    this.assessmentBatteryPartName,
    this.assessmentIdentifier,
    this.namespace,
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

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiAssessmentBatteryPartKey &&
    other.assessmentBatteryPartName == assessmentBatteryPartName &&
    other.assessmentIdentifier == assessmentIdentifier &&
    other.namespace == namespace;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assessmentBatteryPartName == null ? 0 : assessmentBatteryPartName!.hashCode) +
    (assessmentIdentifier == null ? 0 : assessmentIdentifier!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiAssessmentBatteryPartKey[assessmentBatteryPartName=$assessmentBatteryPartName, assessmentIdentifier=$assessmentIdentifier, namespace=$namespace]';

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
    return json;
  }

  /// Returns a new [TrackedChangesEdFiAssessmentBatteryPartKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiAssessmentBatteryPartKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiAssessmentBatteryPartKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiAssessmentBatteryPartKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiAssessmentBatteryPartKey(
        assessmentBatteryPartName: mapValueOfType<String>(json, r'assessmentBatteryPartName'),
        assessmentIdentifier: mapValueOfType<String>(json, r'assessmentIdentifier'),
        namespace: mapValueOfType<String>(json, r'namespace'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiAssessmentBatteryPartKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiAssessmentBatteryPartKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiAssessmentBatteryPartKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiAssessmentBatteryPartKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiAssessmentBatteryPartKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiAssessmentBatteryPartKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiAssessmentBatteryPartKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiAssessmentBatteryPartKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiAssessmentBatteryPartKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiAssessmentBatteryPartKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

