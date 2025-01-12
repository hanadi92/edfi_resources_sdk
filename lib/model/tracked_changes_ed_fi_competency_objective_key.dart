//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiCompetencyObjectiveKey {
  /// Returns a new [TrackedChangesEdFiCompetencyObjectiveKey] instance.
  TrackedChangesEdFiCompetencyObjectiveKey({
    this.objectiveGradeLevelDescriptor,
    this.objective,
    this.educationOrganizationId,
  });

  /// The grade level for which the competency objective is targeted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? objectiveGradeLevelDescriptor;

  /// The designated title of the competency objective.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? objective;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiCompetencyObjectiveKey &&
    other.objectiveGradeLevelDescriptor == objectiveGradeLevelDescriptor &&
    other.objective == objective &&
    other.educationOrganizationId == educationOrganizationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (objectiveGradeLevelDescriptor == null ? 0 : objectiveGradeLevelDescriptor!.hashCode) +
    (objective == null ? 0 : objective!.hashCode) +
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiCompetencyObjectiveKey[objectiveGradeLevelDescriptor=$objectiveGradeLevelDescriptor, objective=$objective, educationOrganizationId=$educationOrganizationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.objectiveGradeLevelDescriptor != null) {
      json[r'objectiveGradeLevelDescriptor'] = this.objectiveGradeLevelDescriptor;
    } else {
      json[r'objectiveGradeLevelDescriptor'] = null;
    }
    if (this.objective != null) {
      json[r'objective'] = this.objective;
    } else {
      json[r'objective'] = null;
    }
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiCompetencyObjectiveKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiCompetencyObjectiveKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiCompetencyObjectiveKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiCompetencyObjectiveKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiCompetencyObjectiveKey(
        objectiveGradeLevelDescriptor: mapValueOfType<String>(json, r'objectiveGradeLevelDescriptor'),
        objective: mapValueOfType<String>(json, r'objective'),
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiCompetencyObjectiveKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiCompetencyObjectiveKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiCompetencyObjectiveKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiCompetencyObjectiveKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiCompetencyObjectiveKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiCompetencyObjectiveKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiCompetencyObjectiveKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiCompetencyObjectiveKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiCompetencyObjectiveKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiCompetencyObjectiveKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

