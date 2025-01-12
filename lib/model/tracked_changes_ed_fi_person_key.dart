//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiPersonKey {
  /// Returns a new [TrackedChangesEdFiPersonKey] instance.
  TrackedChangesEdFiPersonKey({
    this.sourceSystemDescriptor,
    this.personId,
  });

  /// This descriptor defines the originating record source system for the person.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceSystemDescriptor;

  /// A unique alphanumeric code assigned to a person.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? personId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiPersonKey &&
    other.sourceSystemDescriptor == sourceSystemDescriptor &&
    other.personId == personId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sourceSystemDescriptor == null ? 0 : sourceSystemDescriptor!.hashCode) +
    (personId == null ? 0 : personId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiPersonKey[sourceSystemDescriptor=$sourceSystemDescriptor, personId=$personId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sourceSystemDescriptor != null) {
      json[r'sourceSystemDescriptor'] = this.sourceSystemDescriptor;
    } else {
      json[r'sourceSystemDescriptor'] = null;
    }
    if (this.personId != null) {
      json[r'personId'] = this.personId;
    } else {
      json[r'personId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiPersonKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiPersonKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiPersonKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiPersonKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiPersonKey(
        sourceSystemDescriptor: mapValueOfType<String>(json, r'sourceSystemDescriptor'),
        personId: mapValueOfType<String>(json, r'personId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiPersonKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiPersonKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiPersonKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiPersonKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiPersonKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiPersonKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiPersonKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiPersonKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiPersonKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiPersonKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

