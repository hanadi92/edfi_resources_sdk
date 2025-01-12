//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAssessmentRegistrationBatteryPartAssociation {
  /// Returns a new [EdFiStudentAssessmentRegistrationBatteryPartAssociation] instance.
  EdFiStudentAssessmentRegistrationBatteryPartAssociation({
    this.id,
    required this.assessmentBatteryPartReference,
    required this.studentAssessmentRegistrationReference,
    this.accommodations = const [],
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

  EdFiAssessmentBatteryPartReference assessmentBatteryPartReference;

  EdFiStudentAssessmentRegistrationReference studentAssessmentRegistrationReference;

  /// An unordered collection of studentAssessmentRegistrationBatteryPartAssociationAccommodations. The special variation(s) to be used for the specific part of the assessment battery on how is presented, how it is administered, or how the test taker is allowed to respond.
  List<EdFiStudentAssessmentRegistrationBatteryPartAssociationAccommodation> accommodations;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAssessmentRegistrationBatteryPartAssociation &&
    other.id == id &&
    other.assessmentBatteryPartReference == assessmentBatteryPartReference &&
    other.studentAssessmentRegistrationReference == studentAssessmentRegistrationReference &&
    _deepEquality.equals(other.accommodations, accommodations) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (assessmentBatteryPartReference.hashCode) +
    (studentAssessmentRegistrationReference.hashCode) +
    (accommodations.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentAssessmentRegistrationBatteryPartAssociation[id=$id, assessmentBatteryPartReference=$assessmentBatteryPartReference, studentAssessmentRegistrationReference=$studentAssessmentRegistrationReference, accommodations=$accommodations, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'assessmentBatteryPartReference'] = this.assessmentBatteryPartReference;
      json[r'studentAssessmentRegistrationReference'] = this.studentAssessmentRegistrationReference;
      json[r'accommodations'] = this.accommodations;
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

  /// Returns a new [EdFiStudentAssessmentRegistrationBatteryPartAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAssessmentRegistrationBatteryPartAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAssessmentRegistrationBatteryPartAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAssessmentRegistrationBatteryPartAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAssessmentRegistrationBatteryPartAssociation(
        id: mapValueOfType<String>(json, r'id'),
        assessmentBatteryPartReference: EdFiAssessmentBatteryPartReference.fromJson(json[r'assessmentBatteryPartReference'])!,
        studentAssessmentRegistrationReference: EdFiStudentAssessmentRegistrationReference.fromJson(json[r'studentAssessmentRegistrationReference'])!,
        accommodations: EdFiStudentAssessmentRegistrationBatteryPartAssociationAccommodation.listFromJson(json[r'accommodations']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentAssessmentRegistrationBatteryPartAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAssessmentRegistrationBatteryPartAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAssessmentRegistrationBatteryPartAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAssessmentRegistrationBatteryPartAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAssessmentRegistrationBatteryPartAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAssessmentRegistrationBatteryPartAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAssessmentRegistrationBatteryPartAssociation-objects as value to a dart map
  static Map<String, List<EdFiStudentAssessmentRegistrationBatteryPartAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAssessmentRegistrationBatteryPartAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAssessmentRegistrationBatteryPartAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assessmentBatteryPartReference',
    'studentAssessmentRegistrationReference',
  };
}

