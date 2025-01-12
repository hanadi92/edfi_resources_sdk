//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiLocalAccount {
  /// Returns a new [EdFiLocalAccount] instance.
  EdFiLocalAccount({
    this.id,
    required this.accountIdentifier,
    required this.fiscalYear,
    required this.chartOfAccountReference,
    required this.educationOrganizationReference,
    this.accountName,
    this.reportingTags = const [],
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

  /// Code value for the valid combination of account dimensions by LEA under which financials are reported.
  String accountIdentifier;

  /// The fiscal year for the account.
  ///
  /// Minimum value: 2020
  /// Maximum value: 2040
  int fiscalYear;

  EdFiChartOfAccountReference chartOfAccountReference;

  EdFiEducationOrganizationReference educationOrganizationReference;

  /// A descriptive name for the account.
  String? accountName;

  /// An unordered collection of localAccountReportingTags. Optional tag for accountability reporting.
  List<EdFiLocalAccountReportingTag> reportingTags;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiLocalAccount &&
    other.id == id &&
    other.accountIdentifier == accountIdentifier &&
    other.fiscalYear == fiscalYear &&
    other.chartOfAccountReference == chartOfAccountReference &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.accountName == accountName &&
    _deepEquality.equals(other.reportingTags, reportingTags) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (accountIdentifier.hashCode) +
    (fiscalYear.hashCode) +
    (chartOfAccountReference.hashCode) +
    (educationOrganizationReference.hashCode) +
    (accountName == null ? 0 : accountName!.hashCode) +
    (reportingTags.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiLocalAccount[id=$id, accountIdentifier=$accountIdentifier, fiscalYear=$fiscalYear, chartOfAccountReference=$chartOfAccountReference, educationOrganizationReference=$educationOrganizationReference, accountName=$accountName, reportingTags=$reportingTags, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'accountIdentifier'] = this.accountIdentifier;
      json[r'fiscalYear'] = this.fiscalYear;
      json[r'chartOfAccountReference'] = this.chartOfAccountReference;
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
    if (this.accountName != null) {
      json[r'accountName'] = this.accountName;
    } else {
      json[r'accountName'] = null;
    }
      json[r'reportingTags'] = this.reportingTags;
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

  /// Returns a new [EdFiLocalAccount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiLocalAccount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiLocalAccount[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiLocalAccount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiLocalAccount(
        id: mapValueOfType<String>(json, r'id'),
        accountIdentifier: mapValueOfType<String>(json, r'accountIdentifier')!,
        fiscalYear: mapValueOfType<int>(json, r'fiscalYear')!,
        chartOfAccountReference: EdFiChartOfAccountReference.fromJson(json[r'chartOfAccountReference'])!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        accountName: mapValueOfType<String>(json, r'accountName'),
        reportingTags: EdFiLocalAccountReportingTag.listFromJson(json[r'reportingTags']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiLocalAccount> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiLocalAccount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiLocalAccount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiLocalAccount> mapFromJson(dynamic json) {
    final map = <String, EdFiLocalAccount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiLocalAccount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiLocalAccount-objects as value to a dart map
  static Map<String, List<EdFiLocalAccount>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiLocalAccount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiLocalAccount.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'accountIdentifier',
    'fiscalYear',
    'chartOfAccountReference',
    'educationOrganizationReference',
  };
}

