//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiCohortKey {
  /// Returns a new [TrackedChangesEdFiCohortKey] instance.
  TrackedChangesEdFiCohortKey({
    this.cohortIdentifier,
    this.educationOrganizationId,
  });

  /// The name or ID for the cohort.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cohortIdentifier;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiCohortKey &&
    other.cohortIdentifier == cohortIdentifier &&
    other.educationOrganizationId == educationOrganizationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cohortIdentifier == null ? 0 : cohortIdentifier!.hashCode) +
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiCohortKey[cohortIdentifier=$cohortIdentifier, educationOrganizationId=$educationOrganizationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cohortIdentifier != null) {
      json[r'cohortIdentifier'] = this.cohortIdentifier;
    } else {
      json[r'cohortIdentifier'] = null;
    }
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiCohortKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiCohortKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiCohortKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiCohortKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiCohortKey(
        cohortIdentifier: mapValueOfType<String>(json, r'cohortIdentifier'),
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiCohortKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiCohortKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiCohortKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiCohortKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiCohortKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiCohortKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiCohortKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiCohortKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiCohortKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiCohortKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

