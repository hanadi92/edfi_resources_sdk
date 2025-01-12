//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiStudentSchoolAttendanceEventKey {
  /// Returns a new [TrackedChangesEdFiStudentSchoolAttendanceEventKey] instance.
  TrackedChangesEdFiStudentSchoolAttendanceEventKey({
    this.attendanceEventCategoryDescriptor,
    this.eventDate,
    this.schoolId,
    this.schoolYear,
    this.sessionName,
    this.studentUniqueId,
  });

  /// A code describing the attendance event, for example:         Present         Unexcused absence         Excused absence         Tardy.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? attendanceEventCategoryDescriptor;

  /// Date for this attendance event.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? eventDate;

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

  /// The identifier for the calendar for the academic session.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionName;

  /// A unique alphanumeric code assigned to a student.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studentUniqueId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiStudentSchoolAttendanceEventKey &&
    other.attendanceEventCategoryDescriptor == attendanceEventCategoryDescriptor &&
    other.eventDate == eventDate &&
    other.schoolId == schoolId &&
    other.schoolYear == schoolYear &&
    other.sessionName == sessionName &&
    other.studentUniqueId == studentUniqueId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attendanceEventCategoryDescriptor == null ? 0 : attendanceEventCategoryDescriptor!.hashCode) +
    (eventDate == null ? 0 : eventDate!.hashCode) +
    (schoolId == null ? 0 : schoolId!.hashCode) +
    (schoolYear == null ? 0 : schoolYear!.hashCode) +
    (sessionName == null ? 0 : sessionName!.hashCode) +
    (studentUniqueId == null ? 0 : studentUniqueId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiStudentSchoolAttendanceEventKey[attendanceEventCategoryDescriptor=$attendanceEventCategoryDescriptor, eventDate=$eventDate, schoolId=$schoolId, schoolYear=$schoolYear, sessionName=$sessionName, studentUniqueId=$studentUniqueId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.attendanceEventCategoryDescriptor != null) {
      json[r'attendanceEventCategoryDescriptor'] = this.attendanceEventCategoryDescriptor;
    } else {
      json[r'attendanceEventCategoryDescriptor'] = null;
    }
    if (this.eventDate != null) {
      json[r'eventDate'] = _dateFormatter.format(this.eventDate!.toUtc());
    } else {
      json[r'eventDate'] = null;
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
    if (this.sessionName != null) {
      json[r'sessionName'] = this.sessionName;
    } else {
      json[r'sessionName'] = null;
    }
    if (this.studentUniqueId != null) {
      json[r'studentUniqueId'] = this.studentUniqueId;
    } else {
      json[r'studentUniqueId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiStudentSchoolAttendanceEventKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiStudentSchoolAttendanceEventKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiStudentSchoolAttendanceEventKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiStudentSchoolAttendanceEventKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiStudentSchoolAttendanceEventKey(
        attendanceEventCategoryDescriptor: mapValueOfType<String>(json, r'attendanceEventCategoryDescriptor'),
        eventDate: mapDateTime(json, r'eventDate', r''),
        schoolId: mapValueOfType<int>(json, r'schoolId'),
        schoolYear: mapValueOfType<int>(json, r'schoolYear'),
        sessionName: mapValueOfType<String>(json, r'sessionName'),
        studentUniqueId: mapValueOfType<String>(json, r'studentUniqueId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiStudentSchoolAttendanceEventKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiStudentSchoolAttendanceEventKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiStudentSchoolAttendanceEventKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiStudentSchoolAttendanceEventKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiStudentSchoolAttendanceEventKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiStudentSchoolAttendanceEventKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiStudentSchoolAttendanceEventKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiStudentSchoolAttendanceEventKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiStudentSchoolAttendanceEventKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiStudentSchoolAttendanceEventKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

