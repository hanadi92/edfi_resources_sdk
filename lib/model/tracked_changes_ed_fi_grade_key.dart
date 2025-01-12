//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiGradeKey {
  /// Returns a new [TrackedChangesEdFiGradeKey] instance.
  TrackedChangesEdFiGradeKey({
    this.gradeTypeDescriptor,
    this.gradingPeriodDescriptor,
    this.gradingPeriodName,
    this.schoolId,
    this.gradingPeriodSchoolYear,
    this.beginDate,
    this.localCourseCode,
    this.schoolYear,
    this.sectionIdentifier,
    this.sessionName,
    this.studentUniqueId,
  });

  /// The type of grade reported (e.g., exam, final, grading period).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gradeTypeDescriptor;

  /// The state's name of the period for which grades are reported.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gradingPeriodDescriptor;

  /// The school's descriptive name of the grading period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gradingPeriodName;

  /// The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? schoolId;

  /// The identifier for the grading period school year.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? gradingPeriodSchoolYear;

  /// Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? beginDate;

  /// The local code assigned by the School that identifies the course offering provided for the instruction of students.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? localCourseCode;

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

  /// A unique alphanumeric code assigned to a student.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studentUniqueId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiGradeKey &&
    other.gradeTypeDescriptor == gradeTypeDescriptor &&
    other.gradingPeriodDescriptor == gradingPeriodDescriptor &&
    other.gradingPeriodName == gradingPeriodName &&
    other.schoolId == schoolId &&
    other.gradingPeriodSchoolYear == gradingPeriodSchoolYear &&
    other.beginDate == beginDate &&
    other.localCourseCode == localCourseCode &&
    other.schoolYear == schoolYear &&
    other.sectionIdentifier == sectionIdentifier &&
    other.sessionName == sessionName &&
    other.studentUniqueId == studentUniqueId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gradeTypeDescriptor == null ? 0 : gradeTypeDescriptor!.hashCode) +
    (gradingPeriodDescriptor == null ? 0 : gradingPeriodDescriptor!.hashCode) +
    (gradingPeriodName == null ? 0 : gradingPeriodName!.hashCode) +
    (schoolId == null ? 0 : schoolId!.hashCode) +
    (gradingPeriodSchoolYear == null ? 0 : gradingPeriodSchoolYear!.hashCode) +
    (beginDate == null ? 0 : beginDate!.hashCode) +
    (localCourseCode == null ? 0 : localCourseCode!.hashCode) +
    (schoolYear == null ? 0 : schoolYear!.hashCode) +
    (sectionIdentifier == null ? 0 : sectionIdentifier!.hashCode) +
    (sessionName == null ? 0 : sessionName!.hashCode) +
    (studentUniqueId == null ? 0 : studentUniqueId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiGradeKey[gradeTypeDescriptor=$gradeTypeDescriptor, gradingPeriodDescriptor=$gradingPeriodDescriptor, gradingPeriodName=$gradingPeriodName, schoolId=$schoolId, gradingPeriodSchoolYear=$gradingPeriodSchoolYear, beginDate=$beginDate, localCourseCode=$localCourseCode, schoolYear=$schoolYear, sectionIdentifier=$sectionIdentifier, sessionName=$sessionName, studentUniqueId=$studentUniqueId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.gradeTypeDescriptor != null) {
      json[r'gradeTypeDescriptor'] = this.gradeTypeDescriptor;
    } else {
      json[r'gradeTypeDescriptor'] = null;
    }
    if (this.gradingPeriodDescriptor != null) {
      json[r'gradingPeriodDescriptor'] = this.gradingPeriodDescriptor;
    } else {
      json[r'gradingPeriodDescriptor'] = null;
    }
    if (this.gradingPeriodName != null) {
      json[r'gradingPeriodName'] = this.gradingPeriodName;
    } else {
      json[r'gradingPeriodName'] = null;
    }
    if (this.schoolId != null) {
      json[r'schoolId'] = this.schoolId;
    } else {
      json[r'schoolId'] = null;
    }
    if (this.gradingPeriodSchoolYear != null) {
      json[r'gradingPeriodSchoolYear'] = this.gradingPeriodSchoolYear;
    } else {
      json[r'gradingPeriodSchoolYear'] = null;
    }
    if (this.beginDate != null) {
      json[r'beginDate'] = _dateFormatter.format(this.beginDate!.toUtc());
    } else {
      json[r'beginDate'] = null;
    }
    if (this.localCourseCode != null) {
      json[r'localCourseCode'] = this.localCourseCode;
    } else {
      json[r'localCourseCode'] = null;
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
    if (this.studentUniqueId != null) {
      json[r'studentUniqueId'] = this.studentUniqueId;
    } else {
      json[r'studentUniqueId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiGradeKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiGradeKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiGradeKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiGradeKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiGradeKey(
        gradeTypeDescriptor: mapValueOfType<String>(json, r'gradeTypeDescriptor'),
        gradingPeriodDescriptor: mapValueOfType<String>(json, r'gradingPeriodDescriptor'),
        gradingPeriodName: mapValueOfType<String>(json, r'gradingPeriodName'),
        schoolId: mapValueOfType<int>(json, r'schoolId'),
        gradingPeriodSchoolYear: mapValueOfType<int>(json, r'gradingPeriodSchoolYear'),
        beginDate: mapDateTime(json, r'beginDate', r''),
        localCourseCode: mapValueOfType<String>(json, r'localCourseCode'),
        schoolYear: mapValueOfType<int>(json, r'schoolYear'),
        sectionIdentifier: mapValueOfType<String>(json, r'sectionIdentifier'),
        sessionName: mapValueOfType<String>(json, r'sessionName'),
        studentUniqueId: mapValueOfType<String>(json, r'studentUniqueId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiGradeKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiGradeKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiGradeKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiGradeKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiGradeKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiGradeKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiGradeKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiGradeKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiGradeKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiGradeKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

