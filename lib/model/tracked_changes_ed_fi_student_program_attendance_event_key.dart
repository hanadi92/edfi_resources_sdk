//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiStudentProgramAttendanceEventKey {
  /// Returns a new [TrackedChangesEdFiStudentProgramAttendanceEventKey] instance.
  TrackedChangesEdFiStudentProgramAttendanceEventKey({
    this.attendanceEventCategoryDescriptor,
    this.eventDate,
    this.educationOrganizationId,
    this.programEducationOrganizationId,
    this.programName,
    this.programTypeDescriptor,
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

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? programEducationOrganizationId;

  /// The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? programName;

  /// The type of program.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? programTypeDescriptor;

  /// A unique alphanumeric code assigned to a student.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studentUniqueId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiStudentProgramAttendanceEventKey &&
    other.attendanceEventCategoryDescriptor == attendanceEventCategoryDescriptor &&
    other.eventDate == eventDate &&
    other.educationOrganizationId == educationOrganizationId &&
    other.programEducationOrganizationId == programEducationOrganizationId &&
    other.programName == programName &&
    other.programTypeDescriptor == programTypeDescriptor &&
    other.studentUniqueId == studentUniqueId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attendanceEventCategoryDescriptor == null ? 0 : attendanceEventCategoryDescriptor!.hashCode) +
    (eventDate == null ? 0 : eventDate!.hashCode) +
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (programEducationOrganizationId == null ? 0 : programEducationOrganizationId!.hashCode) +
    (programName == null ? 0 : programName!.hashCode) +
    (programTypeDescriptor == null ? 0 : programTypeDescriptor!.hashCode) +
    (studentUniqueId == null ? 0 : studentUniqueId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiStudentProgramAttendanceEventKey[attendanceEventCategoryDescriptor=$attendanceEventCategoryDescriptor, eventDate=$eventDate, educationOrganizationId=$educationOrganizationId, programEducationOrganizationId=$programEducationOrganizationId, programName=$programName, programTypeDescriptor=$programTypeDescriptor, studentUniqueId=$studentUniqueId]';

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
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    if (this.programEducationOrganizationId != null) {
      json[r'programEducationOrganizationId'] = this.programEducationOrganizationId;
    } else {
      json[r'programEducationOrganizationId'] = null;
    }
    if (this.programName != null) {
      json[r'programName'] = this.programName;
    } else {
      json[r'programName'] = null;
    }
    if (this.programTypeDescriptor != null) {
      json[r'programTypeDescriptor'] = this.programTypeDescriptor;
    } else {
      json[r'programTypeDescriptor'] = null;
    }
    if (this.studentUniqueId != null) {
      json[r'studentUniqueId'] = this.studentUniqueId;
    } else {
      json[r'studentUniqueId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiStudentProgramAttendanceEventKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiStudentProgramAttendanceEventKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiStudentProgramAttendanceEventKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiStudentProgramAttendanceEventKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiStudentProgramAttendanceEventKey(
        attendanceEventCategoryDescriptor: mapValueOfType<String>(json, r'attendanceEventCategoryDescriptor'),
        eventDate: mapDateTime(json, r'eventDate', r''),
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        programEducationOrganizationId: mapValueOfType<int>(json, r'programEducationOrganizationId'),
        programName: mapValueOfType<String>(json, r'programName'),
        programTypeDescriptor: mapValueOfType<String>(json, r'programTypeDescriptor'),
        studentUniqueId: mapValueOfType<String>(json, r'studentUniqueId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiStudentProgramAttendanceEventKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiStudentProgramAttendanceEventKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiStudentProgramAttendanceEventKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiStudentProgramAttendanceEventKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiStudentProgramAttendanceEventKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiStudentProgramAttendanceEventKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiStudentProgramAttendanceEventKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiStudentProgramAttendanceEventKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiStudentProgramAttendanceEventKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiStudentProgramAttendanceEventKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

