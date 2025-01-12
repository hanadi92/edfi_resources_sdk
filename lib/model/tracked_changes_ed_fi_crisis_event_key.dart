//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiCrisisEventKey {
  /// Returns a new [TrackedChangesEdFiCrisisEventKey] instance.
  TrackedChangesEdFiCrisisEventKey({
    this.crisisEventName,
  });

  /// The name of the crisis event that occurred. If there is no generally accepted name for this crisis event, the suggested format: Location + Crisis type + Year.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? crisisEventName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiCrisisEventKey &&
    other.crisisEventName == crisisEventName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (crisisEventName == null ? 0 : crisisEventName!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiCrisisEventKey[crisisEventName=$crisisEventName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.crisisEventName != null) {
      json[r'crisisEventName'] = this.crisisEventName;
    } else {
      json[r'crisisEventName'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiCrisisEventKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiCrisisEventKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiCrisisEventKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiCrisisEventKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiCrisisEventKey(
        crisisEventName: mapValueOfType<String>(json, r'crisisEventName'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiCrisisEventKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiCrisisEventKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiCrisisEventKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiCrisisEventKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiCrisisEventKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiCrisisEventKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiCrisisEventKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiCrisisEventKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiCrisisEventKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiCrisisEventKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

