//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiChartOfAccount {
  /// Returns a new [EdFiChartOfAccount] instance.
  EdFiChartOfAccount({
    this.id,
    required this.accountIdentifier,
    required this.fiscalYear,
    this.balanceSheetDimensionReference,
    required this.educationOrganizationReference,
    this.functionDimensionReference,
    this.fundDimensionReference,
    this.objectDimensionReference,
    this.operationalUnitDimensionReference,
    this.programDimensionReference,
    this.projectDimensionReference,
    this.sourceDimensionReference,
    this.accountName,
    required this.accountTypeDescriptor,
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

  /// SEA populated code value for the valid combination of account dimensions under which financials are reported.
  String accountIdentifier;

  /// The fiscal year for the account
  ///
  /// Minimum value: 2020
  /// Maximum value: 2040
  int fiscalYear;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiBalanceSheetDimensionReference? balanceSheetDimensionReference;

  EdFiEducationOrganizationReference educationOrganizationReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiFunctionDimensionReference? functionDimensionReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiFundDimensionReference? fundDimensionReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiObjectDimensionReference? objectDimensionReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiOperationalUnitDimensionReference? operationalUnitDimensionReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiProgramDimensionReference? programDimensionReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiProjectDimensionReference? projectDimensionReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiSourceDimensionReference? sourceDimensionReference;

  /// A descriptive name for the account.
  String? accountName;

  /// The type of account used in accounting such as revenue, expenditure, or balance sheet.
  String accountTypeDescriptor;

  /// An unordered collection of chartOfAccountReportingTags. Optional tag for accountability reporting.
  List<EdFiChartOfAccountReportingTag> reportingTags;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiChartOfAccount &&
    other.id == id &&
    other.accountIdentifier == accountIdentifier &&
    other.fiscalYear == fiscalYear &&
    other.balanceSheetDimensionReference == balanceSheetDimensionReference &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.functionDimensionReference == functionDimensionReference &&
    other.fundDimensionReference == fundDimensionReference &&
    other.objectDimensionReference == objectDimensionReference &&
    other.operationalUnitDimensionReference == operationalUnitDimensionReference &&
    other.programDimensionReference == programDimensionReference &&
    other.projectDimensionReference == projectDimensionReference &&
    other.sourceDimensionReference == sourceDimensionReference &&
    other.accountName == accountName &&
    other.accountTypeDescriptor == accountTypeDescriptor &&
    _deepEquality.equals(other.reportingTags, reportingTags) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (accountIdentifier.hashCode) +
    (fiscalYear.hashCode) +
    (balanceSheetDimensionReference == null ? 0 : balanceSheetDimensionReference!.hashCode) +
    (educationOrganizationReference.hashCode) +
    (functionDimensionReference == null ? 0 : functionDimensionReference!.hashCode) +
    (fundDimensionReference == null ? 0 : fundDimensionReference!.hashCode) +
    (objectDimensionReference == null ? 0 : objectDimensionReference!.hashCode) +
    (operationalUnitDimensionReference == null ? 0 : operationalUnitDimensionReference!.hashCode) +
    (programDimensionReference == null ? 0 : programDimensionReference!.hashCode) +
    (projectDimensionReference == null ? 0 : projectDimensionReference!.hashCode) +
    (sourceDimensionReference == null ? 0 : sourceDimensionReference!.hashCode) +
    (accountName == null ? 0 : accountName!.hashCode) +
    (accountTypeDescriptor.hashCode) +
    (reportingTags.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiChartOfAccount[id=$id, accountIdentifier=$accountIdentifier, fiscalYear=$fiscalYear, balanceSheetDimensionReference=$balanceSheetDimensionReference, educationOrganizationReference=$educationOrganizationReference, functionDimensionReference=$functionDimensionReference, fundDimensionReference=$fundDimensionReference, objectDimensionReference=$objectDimensionReference, operationalUnitDimensionReference=$operationalUnitDimensionReference, programDimensionReference=$programDimensionReference, projectDimensionReference=$projectDimensionReference, sourceDimensionReference=$sourceDimensionReference, accountName=$accountName, accountTypeDescriptor=$accountTypeDescriptor, reportingTags=$reportingTags, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'accountIdentifier'] = this.accountIdentifier;
      json[r'fiscalYear'] = this.fiscalYear;
    if (this.balanceSheetDimensionReference != null) {
      json[r'balanceSheetDimensionReference'] = this.balanceSheetDimensionReference;
    } else {
      json[r'balanceSheetDimensionReference'] = null;
    }
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
    if (this.functionDimensionReference != null) {
      json[r'functionDimensionReference'] = this.functionDimensionReference;
    } else {
      json[r'functionDimensionReference'] = null;
    }
    if (this.fundDimensionReference != null) {
      json[r'fundDimensionReference'] = this.fundDimensionReference;
    } else {
      json[r'fundDimensionReference'] = null;
    }
    if (this.objectDimensionReference != null) {
      json[r'objectDimensionReference'] = this.objectDimensionReference;
    } else {
      json[r'objectDimensionReference'] = null;
    }
    if (this.operationalUnitDimensionReference != null) {
      json[r'operationalUnitDimensionReference'] = this.operationalUnitDimensionReference;
    } else {
      json[r'operationalUnitDimensionReference'] = null;
    }
    if (this.programDimensionReference != null) {
      json[r'programDimensionReference'] = this.programDimensionReference;
    } else {
      json[r'programDimensionReference'] = null;
    }
    if (this.projectDimensionReference != null) {
      json[r'projectDimensionReference'] = this.projectDimensionReference;
    } else {
      json[r'projectDimensionReference'] = null;
    }
    if (this.sourceDimensionReference != null) {
      json[r'sourceDimensionReference'] = this.sourceDimensionReference;
    } else {
      json[r'sourceDimensionReference'] = null;
    }
    if (this.accountName != null) {
      json[r'accountName'] = this.accountName;
    } else {
      json[r'accountName'] = null;
    }
      json[r'accountTypeDescriptor'] = this.accountTypeDescriptor;
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

  /// Returns a new [EdFiChartOfAccount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiChartOfAccount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiChartOfAccount[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiChartOfAccount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiChartOfAccount(
        id: mapValueOfType<String>(json, r'id'),
        accountIdentifier: mapValueOfType<String>(json, r'accountIdentifier')!,
        fiscalYear: mapValueOfType<int>(json, r'fiscalYear')!,
        balanceSheetDimensionReference: EdFiBalanceSheetDimensionReference.fromJson(json[r'balanceSheetDimensionReference']),
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        functionDimensionReference: EdFiFunctionDimensionReference.fromJson(json[r'functionDimensionReference']),
        fundDimensionReference: EdFiFundDimensionReference.fromJson(json[r'fundDimensionReference']),
        objectDimensionReference: EdFiObjectDimensionReference.fromJson(json[r'objectDimensionReference']),
        operationalUnitDimensionReference: EdFiOperationalUnitDimensionReference.fromJson(json[r'operationalUnitDimensionReference']),
        programDimensionReference: EdFiProgramDimensionReference.fromJson(json[r'programDimensionReference']),
        projectDimensionReference: EdFiProjectDimensionReference.fromJson(json[r'projectDimensionReference']),
        sourceDimensionReference: EdFiSourceDimensionReference.fromJson(json[r'sourceDimensionReference']),
        accountName: mapValueOfType<String>(json, r'accountName'),
        accountTypeDescriptor: mapValueOfType<String>(json, r'accountTypeDescriptor')!,
        reportingTags: EdFiChartOfAccountReportingTag.listFromJson(json[r'reportingTags']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiChartOfAccount> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiChartOfAccount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiChartOfAccount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiChartOfAccount> mapFromJson(dynamic json) {
    final map = <String, EdFiChartOfAccount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiChartOfAccount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiChartOfAccount-objects as value to a dart map
  static Map<String, List<EdFiChartOfAccount>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiChartOfAccount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiChartOfAccount.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'accountIdentifier',
    'fiscalYear',
    'educationOrganizationReference',
    'accountTypeDescriptor',
  };
}

