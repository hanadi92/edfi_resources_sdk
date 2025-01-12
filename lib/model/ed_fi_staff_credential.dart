//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaffCredential {
  /// Returns a new [EdFiStaffCredential] instance.
  EdFiStaffCredential({
    required this.credentialReference,
  });

  EdFiCredentialReference credentialReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaffCredential &&
    other.credentialReference == credentialReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (credentialReference.hashCode);

  @override
  String toString() => 'EdFiStaffCredential[credentialReference=$credentialReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'credentialReference'] = this.credentialReference;
    return json;
  }

  /// Returns a new [EdFiStaffCredential] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaffCredential? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaffCredential[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaffCredential[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaffCredential(
        credentialReference: EdFiCredentialReference.fromJson(json[r'credentialReference'])!,
      );
    }
    return null;
  }

  static List<EdFiStaffCredential> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaffCredential>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaffCredential.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaffCredential> mapFromJson(dynamic json) {
    final map = <String, EdFiStaffCredential>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaffCredential.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaffCredential-objects as value to a dart map
  static Map<String, List<EdFiStaffCredential>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaffCredential>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaffCredential.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'credentialReference',
  };
}

