//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiSectionAttendanceTakenEventKey {
  /// Returns a new [TrackedChangesEdFiSectionAttendanceTakenEventKey] instance.
  TrackedChangesEdFiSectionAttendanceTakenEventKey({
    this.calendarCode,
    this.date,
    this.schoolId,
    this.schoolYear,
    this.localCourseCode,
    this.sectionIdentifier,
    this.sessionName,
  });

  /// The identifier for the calendar.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? calendarCode;

  /// The month, day, and year of the calendar event.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? date;

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

  /// The local code assigned by the School that identifies the course offering provided for the instruction of students.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? localCourseCode;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiSectionAttendanceTakenEventKey &&
    other.calendarCode == calendarCode &&
    other.date == date &&
    other.schoolId == schoolId &&
    other.schoolYear == schoolYear &&
    other.localCourseCode == localCourseCode &&
    other.sectionIdentifier == sectionIdentifier &&
    other.sessionName == sessionName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (calendarCode == null ? 0 : calendarCode!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (schoolId == null ? 0 : schoolId!.hashCode) +
    (schoolYear == null ? 0 : schoolYear!.hashCode) +
    (localCourseCode == null ? 0 : localCourseCode!.hashCode) +
    (sectionIdentifier == null ? 0 : sectionIdentifier!.hashCode) +
    (sessionName == null ? 0 : sessionName!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiSectionAttendanceTakenEventKey[calendarCode=$calendarCode, date=$date, schoolId=$schoolId, schoolYear=$schoolYear, localCourseCode=$localCourseCode, sectionIdentifier=$sectionIdentifier, sessionName=$sessionName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.calendarCode != null) {
      json[r'calendarCode'] = this.calendarCode;
    } else {
      json[r'calendarCode'] = null;
    }
    if (this.date != null) {
      json[r'date'] = _dateFormatter.format(this.date!.toUtc());
    } else {
      json[r'date'] = null;
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
    if (this.localCourseCode != null) {
      json[r'localCourseCode'] = this.localCourseCode;
    } else {
      json[r'localCourseCode'] = null;
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
    return json;
  }

  /// Returns a new [TrackedChangesEdFiSectionAttendanceTakenEventKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiSectionAttendanceTakenEventKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiSectionAttendanceTakenEventKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiSectionAttendanceTakenEventKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiSectionAttendanceTakenEventKey(
        calendarCode: mapValueOfType<String>(json, r'calendarCode'),
        date: mapDateTime(json, r'date', r''),
        schoolId: mapValueOfType<int>(json, r'schoolId'),
        schoolYear: mapValueOfType<int>(json, r'schoolYear'),
        localCourseCode: mapValueOfType<String>(json, r'localCourseCode'),
        sectionIdentifier: mapValueOfType<String>(json, r'sectionIdentifier'),
        sessionName: mapValueOfType<String>(json, r'sessionName'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiSectionAttendanceTakenEventKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiSectionAttendanceTakenEventKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiSectionAttendanceTakenEventKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiSectionAttendanceTakenEventKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiSectionAttendanceTakenEventKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiSectionAttendanceTakenEventKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiSectionAttendanceTakenEventKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiSectionAttendanceTakenEventKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiSectionAttendanceTakenEventKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiSectionAttendanceTakenEventKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

