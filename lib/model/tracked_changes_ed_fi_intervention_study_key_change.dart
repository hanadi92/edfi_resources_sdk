//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiInterventionStudyKeyChange {
  /// Returns a new [TrackedChangesEdFiInterventionStudyKeyChange] instance.
  TrackedChangesEdFiInterventionStudyKeyChange({
    this.id,
    this.changeVersion,
    this.oldKeyValues,
    this.newKeyValues,
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
  TrackedChangesEdFiInterventionStudyKey? oldKeyValues;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TrackedChangesEdFiInterventionStudyKey? newKeyValues;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiInterventionStudyKeyChange &&
    other.id == id &&
    other.changeVersion == changeVersion &&
    other.oldKeyValues == oldKeyValues &&
    other.newKeyValues == newKeyValues;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (changeVersion == null ? 0 : changeVersion!.hashCode) +
    (oldKeyValues == null ? 0 : oldKeyValues!.hashCode) +
    (newKeyValues == null ? 0 : newKeyValues!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiInterventionStudyKeyChange[id=$id, changeVersion=$changeVersion, oldKeyValues=$oldKeyValues, newKeyValues=$newKeyValues]';

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
    if (this.oldKeyValues != null) {
      json[r'oldKeyValues'] = this.oldKeyValues;
    } else {
      json[r'oldKeyValues'] = null;
    }
    if (this.newKeyValues != null) {
      json[r'newKeyValues'] = this.newKeyValues;
    } else {
      json[r'newKeyValues'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiInterventionStudyKeyChange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiInterventionStudyKeyChange? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiInterventionStudyKeyChange[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiInterventionStudyKeyChange[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiInterventionStudyKeyChange(
        id: mapValueOfType<String>(json, r'id'),
        changeVersion: num.parse('${json[r'changeVersion']}'),
        oldKeyValues: TrackedChangesEdFiInterventionStudyKey.fromJson(json[r'oldKeyValues']),
        newKeyValues: TrackedChangesEdFiInterventionStudyKey.fromJson(json[r'newKeyValues']),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiInterventionStudyKeyChange> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiInterventionStudyKeyChange>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiInterventionStudyKeyChange.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiInterventionStudyKeyChange> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiInterventionStudyKeyChange>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiInterventionStudyKeyChange.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiInterventionStudyKeyChange-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiInterventionStudyKeyChange>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiInterventionStudyKeyChange>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiInterventionStudyKeyChange.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

