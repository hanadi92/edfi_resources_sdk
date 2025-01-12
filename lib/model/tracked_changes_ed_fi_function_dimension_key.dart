//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiFunctionDimensionKey {
  /// Returns a new [TrackedChangesEdFiFunctionDimensionKey] instance.
  TrackedChangesEdFiFunctionDimensionKey({
    this.code,
    this.fiscalYear,
  });

  /// The code representation of the account function dimension.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// The fiscal year for which the account function dimension is valid.
  ///
  /// Minimum value: 2020
  /// Maximum value: 2040
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fiscalYear;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiFunctionDimensionKey &&
    other.code == code &&
    other.fiscalYear == fiscalYear;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (fiscalYear == null ? 0 : fiscalYear!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiFunctionDimensionKey[code=$code, fiscalYear=$fiscalYear]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.fiscalYear != null) {
      json[r'fiscalYear'] = this.fiscalYear;
    } else {
      json[r'fiscalYear'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiFunctionDimensionKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiFunctionDimensionKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiFunctionDimensionKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiFunctionDimensionKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiFunctionDimensionKey(
        code: mapValueOfType<String>(json, r'code'),
        fiscalYear: mapValueOfType<int>(json, r'fiscalYear'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiFunctionDimensionKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiFunctionDimensionKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiFunctionDimensionKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiFunctionDimensionKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiFunctionDimensionKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiFunctionDimensionKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiFunctionDimensionKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiFunctionDimensionKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiFunctionDimensionKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiFunctionDimensionKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

