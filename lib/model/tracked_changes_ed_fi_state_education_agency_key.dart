//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiStateEducationAgencyKey {
  /// Returns a new [TrackedChangesEdFiStateEducationAgencyKey] instance.
  TrackedChangesEdFiStateEducationAgencyKey({
    this.stateEducationAgencyId,
  });

  /// The identifier assigned to a state education agency. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? stateEducationAgencyId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiStateEducationAgencyKey &&
    other.stateEducationAgencyId == stateEducationAgencyId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (stateEducationAgencyId == null ? 0 : stateEducationAgencyId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiStateEducationAgencyKey[stateEducationAgencyId=$stateEducationAgencyId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.stateEducationAgencyId != null) {
      json[r'stateEducationAgencyId'] = this.stateEducationAgencyId;
    } else {
      json[r'stateEducationAgencyId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiStateEducationAgencyKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiStateEducationAgencyKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiStateEducationAgencyKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiStateEducationAgencyKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiStateEducationAgencyKey(
        stateEducationAgencyId: mapValueOfType<int>(json, r'stateEducationAgencyId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiStateEducationAgencyKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiStateEducationAgencyKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiStateEducationAgencyKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiStateEducationAgencyKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiStateEducationAgencyKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiStateEducationAgencyKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiStateEducationAgencyKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiStateEducationAgencyKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiStateEducationAgencyKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiStateEducationAgencyKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

