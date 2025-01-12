//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiLocalAccountKey {
  /// Returns a new [TrackedChangesEdFiLocalAccountKey] instance.
  TrackedChangesEdFiLocalAccountKey({
    this.accountIdentifier,
    this.fiscalYear,
    this.educationOrganizationId,
  });

  /// Code value for the valid combination of account dimensions by LEA under which financials are reported.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountIdentifier;

  /// The fiscal year for the account.
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

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiLocalAccountKey &&
    other.accountIdentifier == accountIdentifier &&
    other.fiscalYear == fiscalYear &&
    other.educationOrganizationId == educationOrganizationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountIdentifier == null ? 0 : accountIdentifier!.hashCode) +
    (fiscalYear == null ? 0 : fiscalYear!.hashCode) +
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiLocalAccountKey[accountIdentifier=$accountIdentifier, fiscalYear=$fiscalYear, educationOrganizationId=$educationOrganizationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountIdentifier != null) {
      json[r'accountIdentifier'] = this.accountIdentifier;
    } else {
      json[r'accountIdentifier'] = null;
    }
    if (this.fiscalYear != null) {
      json[r'fiscalYear'] = this.fiscalYear;
    } else {
      json[r'fiscalYear'] = null;
    }
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiLocalAccountKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiLocalAccountKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiLocalAccountKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiLocalAccountKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiLocalAccountKey(
        accountIdentifier: mapValueOfType<String>(json, r'accountIdentifier'),
        fiscalYear: mapValueOfType<int>(json, r'fiscalYear'),
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiLocalAccountKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiLocalAccountKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiLocalAccountKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiLocalAccountKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiLocalAccountKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiLocalAccountKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiLocalAccountKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiLocalAccountKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiLocalAccountKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiLocalAccountKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

