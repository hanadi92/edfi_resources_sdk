//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiDescriptorMappingKey {
  /// Returns a new [TrackedChangesEdFiDescriptorMappingKey] instance.
  TrackedChangesEdFiDescriptorMappingKey({
    this.mappedNamespace,
    this.mappedValue,
    this.namespace,
    this.value,
  });

  /// The namespace of the descriptor value to which the from descriptor value is mapped to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mappedNamespace;

  /// The descriptor value to which the from descriptor value is being mapped to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mappedValue;

  /// The namespace of the descriptor value that is being mapped to another value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  /// The descriptor value that is being mapped to another value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiDescriptorMappingKey &&
    other.mappedNamespace == mappedNamespace &&
    other.mappedValue == mappedValue &&
    other.namespace == namespace &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mappedNamespace == null ? 0 : mappedNamespace!.hashCode) +
    (mappedValue == null ? 0 : mappedValue!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiDescriptorMappingKey[mappedNamespace=$mappedNamespace, mappedValue=$mappedValue, namespace=$namespace, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mappedNamespace != null) {
      json[r'mappedNamespace'] = this.mappedNamespace;
    } else {
      json[r'mappedNamespace'] = null;
    }
    if (this.mappedValue != null) {
      json[r'mappedValue'] = this.mappedValue;
    } else {
      json[r'mappedValue'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiDescriptorMappingKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiDescriptorMappingKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiDescriptorMappingKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiDescriptorMappingKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiDescriptorMappingKey(
        mappedNamespace: mapValueOfType<String>(json, r'mappedNamespace'),
        mappedValue: mapValueOfType<String>(json, r'mappedValue'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiDescriptorMappingKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiDescriptorMappingKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiDescriptorMappingKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiDescriptorMappingKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiDescriptorMappingKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiDescriptorMappingKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiDescriptorMappingKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiDescriptorMappingKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiDescriptorMappingKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiDescriptorMappingKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

