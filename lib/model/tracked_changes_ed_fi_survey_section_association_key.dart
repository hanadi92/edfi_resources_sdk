//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiSurveySectionAssociationKey {
  /// Returns a new [TrackedChangesEdFiSurveySectionAssociationKey] instance.
  TrackedChangesEdFiSurveySectionAssociationKey({
    this.localCourseCode,
    this.schoolId,
    this.schoolYear,
    this.sectionIdentifier,
    this.sessionName,
    this.namespace,
    this.surveyIdentifier,
  });

  /// The local code assigned by the School that identifies the course offering provided for the instruction of students.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? localCourseCode;

  /// The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? schoolId;

  /// The identifier for the school year.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? schoolYear;

  /// The local identifier assigned to a section.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sectionIdentifier;

  /// The identifier for the calendar for the academic session.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionName;

  /// Namespace for the survey.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namespace;

  /// The unique survey identifier from the survey tool.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? surveyIdentifier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiSurveySectionAssociationKey &&
    other.localCourseCode == localCourseCode &&
    other.schoolId == schoolId &&
    other.schoolYear == schoolYear &&
    other.sectionIdentifier == sectionIdentifier &&
    other.sessionName == sessionName &&
    other.namespace == namespace &&
    other.surveyIdentifier == surveyIdentifier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (localCourseCode == null ? 0 : localCourseCode!.hashCode) +
    (schoolId == null ? 0 : schoolId!.hashCode) +
    (schoolYear == null ? 0 : schoolYear!.hashCode) +
    (sectionIdentifier == null ? 0 : sectionIdentifier!.hashCode) +
    (sessionName == null ? 0 : sessionName!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (surveyIdentifier == null ? 0 : surveyIdentifier!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiSurveySectionAssociationKey[localCourseCode=$localCourseCode, schoolId=$schoolId, schoolYear=$schoolYear, sectionIdentifier=$sectionIdentifier, sessionName=$sessionName, namespace=$namespace, surveyIdentifier=$surveyIdentifier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.localCourseCode != null) {
      json[r'localCourseCode'] = this.localCourseCode;
    } else {
      json[r'localCourseCode'] = null;
    }
    if (this.schoolId != null) {
      json[r'schoolId'] = this.schoolId;
    } else {
      json[r'schoolId'] = null;
    }
    if (this.schoolYear != null) {
      json[r'schoolYear'] = this.schoolYear;
    } else {
      json[r'schoolYear'] = null;
    }
    if (this.sectionIdentifier != null) {
      json[r'sectionIdentifier'] = this.sectionIdentifier;
    } else {
      json[r'sectionIdentifier'] = null;
    }
    if (this.sessionName != null) {
      json[r'sessionName'] = this.sessionName;
    } else {
      json[r'sessionName'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    if (this.surveyIdentifier != null) {
      json[r'surveyIdentifier'] = this.surveyIdentifier;
    } else {
      json[r'surveyIdentifier'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiSurveySectionAssociationKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiSurveySectionAssociationKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiSurveySectionAssociationKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiSurveySectionAssociationKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiSurveySectionAssociationKey(
        localCourseCode: mapValueOfType<String>(json, r'localCourseCode'),
        schoolId: mapValueOfType<int>(json, r'schoolId'),
        schoolYear: mapValueOfType<int>(json, r'schoolYear'),
        sectionIdentifier: mapValueOfType<String>(json, r'sectionIdentifier'),
        sessionName: mapValueOfType<String>(json, r'sessionName'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        surveyIdentifier: mapValueOfType<String>(json, r'surveyIdentifier'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiSurveySectionAssociationKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiSurveySectionAssociationKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiSurveySectionAssociationKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiSurveySectionAssociationKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiSurveySectionAssociationKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiSurveySectionAssociationKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiSurveySectionAssociationKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiSurveySectionAssociationKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiSurveySectionAssociationKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiSurveySectionAssociationKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

