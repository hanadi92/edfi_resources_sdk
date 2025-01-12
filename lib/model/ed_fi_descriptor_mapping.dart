//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiDescriptorMapping {
  /// Returns a new [EdFiDescriptorMapping] instance.
  EdFiDescriptorMapping({
    this.id,
    required this.mappedNamespace,
    required this.mappedValue,
    required this.namespace,
    required this.value,
    this.modelEntities = const [],
    this.etag,
    this.lastModifiedDate,
  });

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The namespace of the descriptor value to which the from descriptor value is mapped to.
  String mappedNamespace;

  /// The descriptor value to which the from descriptor value is being mapped to.
  String mappedValue;

  /// The namespace of the descriptor value that is being mapped to another value.
  String namespace;

  /// The descriptor value that is being mapped to another value.
  String value;

  /// An unordered collection of descriptorMappingModelEntities. The resources for which the descriptor mapping applies. If empty, the mapping is assumed to be applicable to all resources in which the descriptor appears.
  List<EdFiDescriptorMappingModelEntity> modelEntities;

  /// A unique system-generated value that identifies the version of the resource.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? etag;

  /// The date and time the resource was last modified.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastModifiedDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiDescriptorMapping &&
    other.id == id &&
    other.mappedNamespace == mappedNamespace &&
    other.mappedValue == mappedValue &&
    other.namespace == namespace &&
    other.value == value &&
    _deepEquality.equals(other.modelEntities, modelEntities) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (mappedNamespace.hashCode) +
    (mappedValue.hashCode) +
    (namespace.hashCode) +
    (value.hashCode) +
    (modelEntities.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiDescriptorMapping[id=$id, mappedNamespace=$mappedNamespace, mappedValue=$mappedValue, namespace=$namespace, value=$value, modelEntities=$modelEntities, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'mappedNamespace'] = this.mappedNamespace;
      json[r'mappedValue'] = this.mappedValue;
      json[r'namespace'] = this.namespace;
      json[r'value'] = this.value;
      json[r'modelEntities'] = this.modelEntities;
    if (this.etag != null) {
      json[r'_etag'] = this.etag;
    } else {
      json[r'_etag'] = null;
    }
    if (this.lastModifiedDate != null) {
      json[r'_lastModifiedDate'] = this.lastModifiedDate!.toUtc().toIso8601String();
    } else {
      json[r'_lastModifiedDate'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiDescriptorMapping] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiDescriptorMapping? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiDescriptorMapping[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiDescriptorMapping[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiDescriptorMapping(
        id: mapValueOfType<String>(json, r'id'),
        mappedNamespace: mapValueOfType<String>(json, r'mappedNamespace')!,
        mappedValue: mapValueOfType<String>(json, r'mappedValue')!,
        namespace: mapValueOfType<String>(json, r'namespace')!,
        value: mapValueOfType<String>(json, r'value')!,
        modelEntities: EdFiDescriptorMappingModelEntity.listFromJson(json[r'modelEntities']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiDescriptorMapping> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiDescriptorMapping>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiDescriptorMapping.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiDescriptorMapping> mapFromJson(dynamic json) {
    final map = <String, EdFiDescriptorMapping>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiDescriptorMapping.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiDescriptorMapping-objects as value to a dart map
  static Map<String, List<EdFiDescriptorMapping>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiDescriptorMapping>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiDescriptorMapping.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'mappedNamespace',
    'mappedValue',
    'namespace',
    'value',
  };
}

