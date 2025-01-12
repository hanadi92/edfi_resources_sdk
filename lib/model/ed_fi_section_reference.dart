//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiSectionReference {
  /// Returns a new [EdFiSectionReference] instance.
  EdFiSectionReference({
    required this.localCourseCode,
    required this.schoolId,
    required this.schoolYear,
    required this.sectionIdentifier,
    required this.sessionName,
    this.link,
  });

  /// The local code assigned by the School that identifies the course offering provided for the instruction of students.
  String localCourseCode;

  /// The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  int schoolId;

  /// The identifier for the school year.
  int schoolYear;

  /// The local identifier assigned to a section.
  String sectionIdentifier;

  /// The identifier for the calendar for the academic session.
  String sessionName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiSectionReference &&
    other.localCourseCode == localCourseCode &&
    other.schoolId == schoolId &&
    other.schoolYear == schoolYear &&
    other.sectionIdentifier == sectionIdentifier &&
    other.sessionName == sessionName &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (localCourseCode.hashCode) +
    (schoolId.hashCode) +
    (schoolYear.hashCode) +
    (sectionIdentifier.hashCode) +
    (sessionName.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiSectionReference[localCourseCode=$localCourseCode, schoolId=$schoolId, schoolYear=$schoolYear, sectionIdentifier=$sectionIdentifier, sessionName=$sessionName, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'localCourseCode'] = this.localCourseCode;
      json[r'schoolId'] = this.schoolId;
      json[r'schoolYear'] = this.schoolYear;
      json[r'sectionIdentifier'] = this.sectionIdentifier;
      json[r'sessionName'] = this.sessionName;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiSectionReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiSectionReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiSectionReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiSectionReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiSectionReference(
        localCourseCode: mapValueOfType<String>(json, r'localCourseCode')!,
        schoolId: mapValueOfType<int>(json, r'schoolId')!,
        schoolYear: mapValueOfType<int>(json, r'schoolYear')!,
        sectionIdentifier: mapValueOfType<String>(json, r'sectionIdentifier')!,
        sessionName: mapValueOfType<String>(json, r'sessionName')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiSectionReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiSectionReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiSectionReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiSectionReference> mapFromJson(dynamic json) {
    final map = <String, EdFiSectionReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiSectionReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiSectionReference-objects as value to a dart map
  static Map<String, List<EdFiSectionReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiSectionReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiSectionReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'localCourseCode',
    'schoolId',
    'schoolYear',
    'sectionIdentifier',
    'sessionName',
  };
}

