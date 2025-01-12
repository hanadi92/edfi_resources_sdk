//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiObjectDimension {
  /// Returns a new [EdFiObjectDimension] instance.
  EdFiObjectDimension({
    this.id,
    required this.code,
    required this.fiscalYear,
    this.codeName,
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

  /// The code representation of the account object dimension.
  String code;

  /// The fiscal year for which the account object dimension is valid.
  ///
  /// Minimum value: 2020
  /// Maximum value: 2040
  int fiscalYear;

  /// A description of the account object dimension.
  String? codeName;

  /// An unordered collection of objectDimensionReportingTags. Optional tag for accountability reporting.
  List<EdFiObjectDimensionReportingTag> reportingTags;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiObjectDimension &&
    other.id == id &&
    other.code == code &&
    other.fiscalYear == fiscalYear &&
    other.codeName == codeName &&
    _deepEquality.equals(other.reportingTags, reportingTags) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (code.hashCode) +
    (fiscalYear.hashCode) +
    (codeName == null ? 0 : codeName!.hashCode) +
    (reportingTags.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiObjectDimension[id=$id, code=$code, fiscalYear=$fiscalYear, codeName=$codeName, reportingTags=$reportingTags, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'code'] = this.code;
      json[r'fiscalYear'] = this.fiscalYear;
    if (this.codeName != null) {
      json[r'codeName'] = this.codeName;
    } else {
      json[r'codeName'] = null;
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

  /// Returns a new [EdFiObjectDimension] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiObjectDimension? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiObjectDimension[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiObjectDimension[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiObjectDimension(
        id: mapValueOfType<String>(json, r'id'),
        code: mapValueOfType<String>(json, r'code')!,
        fiscalYear: mapValueOfType<int>(json, r'fiscalYear')!,
        codeName: mapValueOfType<String>(json, r'codeName'),
        reportingTags: EdFiObjectDimensionReportingTag.listFromJson(json[r'reportingTags']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiObjectDimension> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiObjectDimension>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiObjectDimension.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiObjectDimension> mapFromJson(dynamic json) {
    final map = <String, EdFiObjectDimension>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiObjectDimension.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiObjectDimension-objects as value to a dart map
  static Map<String, List<EdFiObjectDimension>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiObjectDimension>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiObjectDimension.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
    'fiscalYear',
  };
}

