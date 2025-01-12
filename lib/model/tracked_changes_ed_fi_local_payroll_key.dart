//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiLocalPayrollKey {
  /// Returns a new [TrackedChangesEdFiLocalPayrollKey] instance.
  TrackedChangesEdFiLocalPayrollKey({
    this.asOfDate,
    this.accountIdentifier,
    this.educationOrganizationId,
    this.fiscalYear,
    this.staffUniqueId,
  });

  /// The date of the reported amount for the account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? asOfDate;

  /// Code value for the valid combination of account dimensions by LEA under which financials are reported.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountIdentifier;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

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

  /// A unique alphanumeric code assigned to a staff.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? staffUniqueId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiLocalPayrollKey &&
    other.asOfDate == asOfDate &&
    other.accountIdentifier == accountIdentifier &&
    other.educationOrganizationId == educationOrganizationId &&
    other.fiscalYear == fiscalYear &&
    other.staffUniqueId == staffUniqueId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (asOfDate == null ? 0 : asOfDate!.hashCode) +
    (accountIdentifier == null ? 0 : accountIdentifier!.hashCode) +
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (fiscalYear == null ? 0 : fiscalYear!.hashCode) +
    (staffUniqueId == null ? 0 : staffUniqueId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiLocalPayrollKey[asOfDate=$asOfDate, accountIdentifier=$accountIdentifier, educationOrganizationId=$educationOrganizationId, fiscalYear=$fiscalYear, staffUniqueId=$staffUniqueId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.asOfDate != null) {
      json[r'asOfDate'] = _dateFormatter.format(this.asOfDate!.toUtc());
    } else {
      json[r'asOfDate'] = null;
    }
    if (this.accountIdentifier != null) {
      json[r'accountIdentifier'] = this.accountIdentifier;
    } else {
      json[r'accountIdentifier'] = null;
    }
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    if (this.fiscalYear != null) {
      json[r'fiscalYear'] = this.fiscalYear;
    } else {
      json[r'fiscalYear'] = null;
    }
    if (this.staffUniqueId != null) {
      json[r'staffUniqueId'] = this.staffUniqueId;
    } else {
      json[r'staffUniqueId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiLocalPayrollKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiLocalPayrollKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiLocalPayrollKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiLocalPayrollKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiLocalPayrollKey(
        asOfDate: mapDateTime(json, r'asOfDate', r''),
        accountIdentifier: mapValueOfType<String>(json, r'accountIdentifier'),
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        fiscalYear: mapValueOfType<int>(json, r'fiscalYear'),
        staffUniqueId: mapValueOfType<String>(json, r'staffUniqueId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiLocalPayrollKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiLocalPayrollKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiLocalPayrollKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiLocalPayrollKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiLocalPayrollKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiLocalPayrollKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiLocalPayrollKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiLocalPayrollKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiLocalPayrollKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiLocalPayrollKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

