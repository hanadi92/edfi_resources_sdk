//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiEducationServiceCenterKey {
  /// Returns a new [TrackedChangesEdFiEducationServiceCenterKey] instance.
  TrackedChangesEdFiEducationServiceCenterKey({
    this.educationServiceCenterId,
  });

  /// The identifier assigned to an education service center. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationServiceCenterId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiEducationServiceCenterKey &&
    other.educationServiceCenterId == educationServiceCenterId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (educationServiceCenterId == null ? 0 : educationServiceCenterId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiEducationServiceCenterKey[educationServiceCenterId=$educationServiceCenterId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.educationServiceCenterId != null) {
      json[r'educationServiceCenterId'] = this.educationServiceCenterId;
    } else {
      json[r'educationServiceCenterId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiEducationServiceCenterKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiEducationServiceCenterKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiEducationServiceCenterKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiEducationServiceCenterKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiEducationServiceCenterKey(
        educationServiceCenterId: mapValueOfType<int>(json, r'educationServiceCenterId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiEducationServiceCenterKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiEducationServiceCenterKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiEducationServiceCenterKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiEducationServiceCenterKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiEducationServiceCenterKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiEducationServiceCenterKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiEducationServiceCenterKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiEducationServiceCenterKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiEducationServiceCenterKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiEducationServiceCenterKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

