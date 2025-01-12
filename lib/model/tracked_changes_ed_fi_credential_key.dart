//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiCredentialKey {
  /// Returns a new [TrackedChangesEdFiCredentialKey] instance.
  TrackedChangesEdFiCredentialKey({
    this.stateOfIssueStateAbbreviationDescriptor,
    this.credentialIdentifier,
  });

  /// The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stateOfIssueStateAbbreviationDescriptor;

  /// Identifier or serial number assigned to the credential.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? credentialIdentifier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiCredentialKey &&
    other.stateOfIssueStateAbbreviationDescriptor == stateOfIssueStateAbbreviationDescriptor &&
    other.credentialIdentifier == credentialIdentifier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (stateOfIssueStateAbbreviationDescriptor == null ? 0 : stateOfIssueStateAbbreviationDescriptor!.hashCode) +
    (credentialIdentifier == null ? 0 : credentialIdentifier!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiCredentialKey[stateOfIssueStateAbbreviationDescriptor=$stateOfIssueStateAbbreviationDescriptor, credentialIdentifier=$credentialIdentifier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.stateOfIssueStateAbbreviationDescriptor != null) {
      json[r'stateOfIssueStateAbbreviationDescriptor'] = this.stateOfIssueStateAbbreviationDescriptor;
    } else {
      json[r'stateOfIssueStateAbbreviationDescriptor'] = null;
    }
    if (this.credentialIdentifier != null) {
      json[r'credentialIdentifier'] = this.credentialIdentifier;
    } else {
      json[r'credentialIdentifier'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiCredentialKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiCredentialKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiCredentialKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiCredentialKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiCredentialKey(
        stateOfIssueStateAbbreviationDescriptor: mapValueOfType<String>(json, r'stateOfIssueStateAbbreviationDescriptor'),
        credentialIdentifier: mapValueOfType<String>(json, r'credentialIdentifier'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiCredentialKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiCredentialKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiCredentialKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiCredentialKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiCredentialKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiCredentialKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiCredentialKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiCredentialKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiCredentialKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiCredentialKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

