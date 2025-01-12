//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiContactDelete {
  /// Returns a new [TrackedChangesEdFiContactDelete] instance.
  TrackedChangesEdFiContactDelete({
    this.id,
    this.changeVersion,
    this.keyValues,
  });

  /// Resource identifier
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Change version
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? changeVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TrackedChangesEdFiContactKey? keyValues;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiContactDelete &&
    other.id == id &&
    other.changeVersion == changeVersion &&
    other.keyValues == keyValues;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (changeVersion == null ? 0 : changeVersion!.hashCode) +
    (keyValues == null ? 0 : keyValues!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiContactDelete[id=$id, changeVersion=$changeVersion, keyValues=$keyValues]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.changeVersion != null) {
      json[r'changeVersion'] = this.changeVersion;
    } else {
      json[r'changeVersion'] = null;
    }
    if (this.keyValues != null) {
      json[r'keyValues'] = this.keyValues;
    } else {
      json[r'keyValues'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiContactDelete] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiContactDelete? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiContactDelete[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiContactDelete[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiContactDelete(
        id: mapValueOfType<String>(json, r'id'),
        changeVersion: num.parse('${json[r'changeVersion']}'),
        keyValues: TrackedChangesEdFiContactKey.fromJson(json[r'keyValues']),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiContactDelete> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiContactDelete>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiContactDelete.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiContactDelete> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiContactDelete>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiContactDelete.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiContactDelete-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiContactDelete>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiContactDelete>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiContactDelete.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

