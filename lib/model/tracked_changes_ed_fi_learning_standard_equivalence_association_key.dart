//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiLearningStandardEquivalenceAssociationKey {
  /// Returns a new [TrackedChangesEdFiLearningStandardEquivalenceAssociationKey] instance.
  TrackedChangesEdFiLearningStandardEquivalenceAssociationKey({
    this.namespace,
    this.sourceLearningStandardId,
    this.targetLearningStandardId,
  });

  /// The namespace of the organization that has created and owns the association.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  /// The identifier for the specific learning standard (e.g., 111.15.3.1.A).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceLearningStandardId;

  /// The identifier for the specific learning standard (e.g., 111.15.3.1.A).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetLearningStandardId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiLearningStandardEquivalenceAssociationKey &&
    other.namespace == namespace &&
    other.sourceLearningStandardId == sourceLearningStandardId &&
    other.targetLearningStandardId == targetLearningStandardId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (namespace == null ? 0 : namespace!.hashCode) +
    (sourceLearningStandardId == null ? 0 : sourceLearningStandardId!.hashCode) +
    (targetLearningStandardId == null ? 0 : targetLearningStandardId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiLearningStandardEquivalenceAssociationKey[namespace=$namespace, sourceLearningStandardId=$sourceLearningStandardId, targetLearningStandardId=$targetLearningStandardId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    if (this.sourceLearningStandardId != null) {
      json[r'sourceLearningStandardId'] = this.sourceLearningStandardId;
    } else {
      json[r'sourceLearningStandardId'] = null;
    }
    if (this.targetLearningStandardId != null) {
      json[r'targetLearningStandardId'] = this.targetLearningStandardId;
    } else {
      json[r'targetLearningStandardId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiLearningStandardEquivalenceAssociationKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiLearningStandardEquivalenceAssociationKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiLearningStandardEquivalenceAssociationKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiLearningStandardEquivalenceAssociationKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiLearningStandardEquivalenceAssociationKey(
        namespace: mapValueOfType<String>(json, r'namespace'),
        sourceLearningStandardId: mapValueOfType<String>(json, r'sourceLearningStandardId'),
        targetLearningStandardId: mapValueOfType<String>(json, r'targetLearningStandardId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiLearningStandardEquivalenceAssociationKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiLearningStandardEquivalenceAssociationKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiLearningStandardEquivalenceAssociationKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiLearningStandardEquivalenceAssociationKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiLearningStandardEquivalenceAssociationKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiLearningStandardEquivalenceAssociationKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiLearningStandardEquivalenceAssociationKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiLearningStandardEquivalenceAssociationKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiLearningStandardEquivalenceAssociationKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiLearningStandardEquivalenceAssociationKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

