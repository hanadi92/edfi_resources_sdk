//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiAssessmentAdministration {
  /// Returns a new [EdFiAssessmentAdministration] instance.
  EdFiAssessmentAdministration({
    this.id,
    required this.administrationIdentifier,
    required this.assessmentReference,
    required this.assigningEducationOrganizationReference,
    this.assessmentBatteryParts = const [],
    this.periods = const [],
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

  /// The title or name of the assessment in the context of its administration.
  String administrationIdentifier;

  EdFiAssessmentReference assessmentReference;

  EdFiEducationOrganizationReference assigningEducationOrganizationReference;

  /// An unordered collection of assessmentAdministrationAssessmentBatteryParts. A reference to the parts of the assessment battery that are offered in this administration of the assessment.
  List<EdFiAssessmentAdministrationAssessmentBatteryPart> assessmentBatteryParts;

  /// An unordered collection of assessmentAdministrationPeriods. The anticipated dates for the assessment or administration window.
  List<EdFiAssessmentAdministrationPeriod> periods;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiAssessmentAdministration &&
    other.id == id &&
    other.administrationIdentifier == administrationIdentifier &&
    other.assessmentReference == assessmentReference &&
    other.assigningEducationOrganizationReference == assigningEducationOrganizationReference &&
    _deepEquality.equals(other.assessmentBatteryParts, assessmentBatteryParts) &&
    _deepEquality.equals(other.periods, periods) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (administrationIdentifier.hashCode) +
    (assessmentReference.hashCode) +
    (assigningEducationOrganizationReference.hashCode) +
    (assessmentBatteryParts.hashCode) +
    (periods.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiAssessmentAdministration[id=$id, administrationIdentifier=$administrationIdentifier, assessmentReference=$assessmentReference, assigningEducationOrganizationReference=$assigningEducationOrganizationReference, assessmentBatteryParts=$assessmentBatteryParts, periods=$periods, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'administrationIdentifier'] = this.administrationIdentifier;
      json[r'assessmentReference'] = this.assessmentReference;
      json[r'assigningEducationOrganizationReference'] = this.assigningEducationOrganizationReference;
      json[r'assessmentBatteryParts'] = this.assessmentBatteryParts;
      json[r'periods'] = this.periods;
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

  /// Returns a new [EdFiAssessmentAdministration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiAssessmentAdministration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiAssessmentAdministration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiAssessmentAdministration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiAssessmentAdministration(
        id: mapValueOfType<String>(json, r'id'),
        administrationIdentifier: mapValueOfType<String>(json, r'administrationIdentifier')!,
        assessmentReference: EdFiAssessmentReference.fromJson(json[r'assessmentReference'])!,
        assigningEducationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'assigningEducationOrganizationReference'])!,
        assessmentBatteryParts: EdFiAssessmentAdministrationAssessmentBatteryPart.listFromJson(json[r'assessmentBatteryParts']),
        periods: EdFiAssessmentAdministrationPeriod.listFromJson(json[r'periods']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiAssessmentAdministration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiAssessmentAdministration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiAssessmentAdministration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiAssessmentAdministration> mapFromJson(dynamic json) {
    final map = <String, EdFiAssessmentAdministration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiAssessmentAdministration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiAssessmentAdministration-objects as value to a dart map
  static Map<String, List<EdFiAssessmentAdministration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiAssessmentAdministration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiAssessmentAdministration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'administrationIdentifier',
    'assessmentReference',
    'assigningEducationOrganizationReference',
  };
}

