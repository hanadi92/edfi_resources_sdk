//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCredentialReference {
  /// Returns a new [EdFiCredentialReference] instance.
  EdFiCredentialReference({
    required this.credentialIdentifier,
    required this.stateOfIssueStateAbbreviationDescriptor,
    this.link,
  });

  /// Identifier or serial number assigned to the credential.
  String credentialIdentifier;

  /// The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.
  String stateOfIssueStateAbbreviationDescriptor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiCredentialReference &&
    other.credentialIdentifier == credentialIdentifier &&
    other.stateOfIssueStateAbbreviationDescriptor == stateOfIssueStateAbbreviationDescriptor &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (credentialIdentifier.hashCode) +
    (stateOfIssueStateAbbreviationDescriptor.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiCredentialReference[credentialIdentifier=$credentialIdentifier, stateOfIssueStateAbbreviationDescriptor=$stateOfIssueStateAbbreviationDescriptor, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'credentialIdentifier'] = this.credentialIdentifier;
      json[r'stateOfIssueStateAbbreviationDescriptor'] = this.stateOfIssueStateAbbreviationDescriptor;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiCredentialReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCredentialReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCredentialReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCredentialReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCredentialReference(
        credentialIdentifier: mapValueOfType<String>(json, r'credentialIdentifier')!,
        stateOfIssueStateAbbreviationDescriptor: mapValueOfType<String>(json, r'stateOfIssueStateAbbreviationDescriptor')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiCredentialReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCredentialReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCredentialReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCredentialReference> mapFromJson(dynamic json) {
    final map = <String, EdFiCredentialReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCredentialReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCredentialReference-objects as value to a dart map
  static Map<String, List<EdFiCredentialReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCredentialReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCredentialReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'credentialIdentifier',
    'stateOfIssueStateAbbreviationDescriptor',
  };
}

