//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiGradebookEntryKey {
  /// Returns a new [TrackedChangesEdFiGradebookEntryKey] instance.
  TrackedChangesEdFiGradebookEntryKey({
    this.gradebookEntryIdentifier,
    this.namespace,
  });

  /// A unique number or alphanumeric code assigned to a gradebook entry by the source system.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gradebookEntryIdentifier;

  /// Namespace URI for the source of the gradebook entry.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiGradebookEntryKey &&
    other.gradebookEntryIdentifier == gradebookEntryIdentifier &&
    other.namespace == namespace;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gradebookEntryIdentifier == null ? 0 : gradebookEntryIdentifier!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiGradebookEntryKey[gradebookEntryIdentifier=$gradebookEntryIdentifier, namespace=$namespace]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.gradebookEntryIdentifier != null) {
      json[r'gradebookEntryIdentifier'] = this.gradebookEntryIdentifier;
    } else {
      json[r'gradebookEntryIdentifier'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiGradebookEntryKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiGradebookEntryKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiGradebookEntryKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiGradebookEntryKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiGradebookEntryKey(
        gradebookEntryIdentifier: mapValueOfType<String>(json, r'gradebookEntryIdentifier'),
        namespace: mapValueOfType<String>(json, r'namespace'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiGradebookEntryKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiGradebookEntryKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiGradebookEntryKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiGradebookEntryKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiGradebookEntryKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiGradebookEntryKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiGradebookEntryKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiGradebookEntryKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiGradebookEntryKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiGradebookEntryKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

