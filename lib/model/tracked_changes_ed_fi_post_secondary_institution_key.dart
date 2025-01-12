//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiPostSecondaryInstitutionKey {
  /// Returns a new [TrackedChangesEdFiPostSecondaryInstitutionKey] instance.
  TrackedChangesEdFiPostSecondaryInstitutionKey({
    this.postSecondaryInstitutionId,
  });

  /// The ID of the post secondary institution. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? postSecondaryInstitutionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiPostSecondaryInstitutionKey &&
    other.postSecondaryInstitutionId == postSecondaryInstitutionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (postSecondaryInstitutionId == null ? 0 : postSecondaryInstitutionId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiPostSecondaryInstitutionKey[postSecondaryInstitutionId=$postSecondaryInstitutionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.postSecondaryInstitutionId != null) {
      json[r'postSecondaryInstitutionId'] = this.postSecondaryInstitutionId;
    } else {
      json[r'postSecondaryInstitutionId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiPostSecondaryInstitutionKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiPostSecondaryInstitutionKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiPostSecondaryInstitutionKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiPostSecondaryInstitutionKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiPostSecondaryInstitutionKey(
        postSecondaryInstitutionId: mapValueOfType<int>(json, r'postSecondaryInstitutionId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiPostSecondaryInstitutionKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiPostSecondaryInstitutionKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiPostSecondaryInstitutionKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiPostSecondaryInstitutionKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiPostSecondaryInstitutionKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiPostSecondaryInstitutionKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiPostSecondaryInstitutionKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiPostSecondaryInstitutionKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiPostSecondaryInstitutionKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiPostSecondaryInstitutionKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

