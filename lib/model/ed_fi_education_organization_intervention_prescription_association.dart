//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiEducationOrganizationInterventionPrescriptionAssociation {
  /// Returns a new [EdFiEducationOrganizationInterventionPrescriptionAssociation] instance.
  EdFiEducationOrganizationInterventionPrescriptionAssociation({
    this.id,
    required this.educationOrganizationReference,
    required this.interventionPrescriptionReference,
    this.beginDate,
    this.endDate,
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

  EdFiEducationOrganizationReference educationOrganizationReference;

  EdFiInterventionPrescriptionReference interventionPrescriptionReference;

  /// The begin date of the period during which the intervention prescription is available.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? beginDate;

  /// The end date of the period during which the intervention prescription is available.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiEducationOrganizationInterventionPrescriptionAssociation &&
    other.id == id &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.interventionPrescriptionReference == interventionPrescriptionReference &&
    other.beginDate == beginDate &&
    other.endDate == endDate &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (educationOrganizationReference.hashCode) +
    (interventionPrescriptionReference.hashCode) +
    (beginDate == null ? 0 : beginDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiEducationOrganizationInterventionPrescriptionAssociation[id=$id, educationOrganizationReference=$educationOrganizationReference, interventionPrescriptionReference=$interventionPrescriptionReference, beginDate=$beginDate, endDate=$endDate, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'interventionPrescriptionReference'] = this.interventionPrescriptionReference;
    if (this.beginDate != null) {
      json[r'beginDate'] = _dateFormatter.format(this.beginDate!.toUtc());
    } else {
      json[r'beginDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
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

  /// Returns a new [EdFiEducationOrganizationInterventionPrescriptionAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiEducationOrganizationInterventionPrescriptionAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiEducationOrganizationInterventionPrescriptionAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiEducationOrganizationInterventionPrescriptionAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiEducationOrganizationInterventionPrescriptionAssociation(
        id: mapValueOfType<String>(json, r'id'),
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        interventionPrescriptionReference: EdFiInterventionPrescriptionReference.fromJson(json[r'interventionPrescriptionReference'])!,
        beginDate: mapDateTime(json, r'beginDate', r''),
        endDate: mapDateTime(json, r'endDate', r''),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiEducationOrganizationInterventionPrescriptionAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiEducationOrganizationInterventionPrescriptionAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiEducationOrganizationInterventionPrescriptionAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiEducationOrganizationInterventionPrescriptionAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiEducationOrganizationInterventionPrescriptionAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiEducationOrganizationInterventionPrescriptionAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiEducationOrganizationInterventionPrescriptionAssociation-objects as value to a dart map
  static Map<String, List<EdFiEducationOrganizationInterventionPrescriptionAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiEducationOrganizationInterventionPrescriptionAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiEducationOrganizationInterventionPrescriptionAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'educationOrganizationReference',
    'interventionPrescriptionReference',
  };
}

