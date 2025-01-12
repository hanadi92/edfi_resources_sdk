//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiCourseTranscriptKey {
  /// Returns a new [TrackedChangesEdFiCourseTranscriptKey] instance.
  TrackedChangesEdFiCourseTranscriptKey({
    this.courseAttemptResultDescriptor,
    this.courseCode,
    this.courseEducationOrganizationId,
    this.educationOrganizationId,
    this.schoolYear,
    this.studentUniqueId,
    this.termDescriptor,
  });

  /// The result from the student's attempt to take the course.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? courseAttemptResultDescriptor;

  /// A unique alphanumeric code assigned to a course.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? courseCode;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? courseEducationOrganizationId;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

  /// The identifier for the school year.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? schoolYear;

  /// A unique alphanumeric code assigned to a student.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studentUniqueId;

  /// The term for the session during the school year.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? termDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiCourseTranscriptKey &&
    other.courseAttemptResultDescriptor == courseAttemptResultDescriptor &&
    other.courseCode == courseCode &&
    other.courseEducationOrganizationId == courseEducationOrganizationId &&
    other.educationOrganizationId == educationOrganizationId &&
    other.schoolYear == schoolYear &&
    other.studentUniqueId == studentUniqueId &&
    other.termDescriptor == termDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (courseAttemptResultDescriptor == null ? 0 : courseAttemptResultDescriptor!.hashCode) +
    (courseCode == null ? 0 : courseCode!.hashCode) +
    (courseEducationOrganizationId == null ? 0 : courseEducationOrganizationId!.hashCode) +
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (schoolYear == null ? 0 : schoolYear!.hashCode) +
    (studentUniqueId == null ? 0 : studentUniqueId!.hashCode) +
    (termDescriptor == null ? 0 : termDescriptor!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiCourseTranscriptKey[courseAttemptResultDescriptor=$courseAttemptResultDescriptor, courseCode=$courseCode, courseEducationOrganizationId=$courseEducationOrganizationId, educationOrganizationId=$educationOrganizationId, schoolYear=$schoolYear, studentUniqueId=$studentUniqueId, termDescriptor=$termDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.courseAttemptResultDescriptor != null) {
      json[r'courseAttemptResultDescriptor'] = this.courseAttemptResultDescriptor;
    } else {
      json[r'courseAttemptResultDescriptor'] = null;
    }
    if (this.courseCode != null) {
      json[r'courseCode'] = this.courseCode;
    } else {
      json[r'courseCode'] = null;
    }
    if (this.courseEducationOrganizationId != null) {
      json[r'courseEducationOrganizationId'] = this.courseEducationOrganizationId;
    } else {
      json[r'courseEducationOrganizationId'] = null;
    }
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    if (this.schoolYear != null) {
      json[r'schoolYear'] = this.schoolYear;
    } else {
      json[r'schoolYear'] = null;
    }
    if (this.studentUniqueId != null) {
      json[r'studentUniqueId'] = this.studentUniqueId;
    } else {
      json[r'studentUniqueId'] = null;
    }
    if (this.termDescriptor != null) {
      json[r'termDescriptor'] = this.termDescriptor;
    } else {
      json[r'termDescriptor'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiCourseTranscriptKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiCourseTranscriptKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiCourseTranscriptKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiCourseTranscriptKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiCourseTranscriptKey(
        courseAttemptResultDescriptor: mapValueOfType<String>(json, r'courseAttemptResultDescriptor'),
        courseCode: mapValueOfType<String>(json, r'courseCode'),
        courseEducationOrganizationId: mapValueOfType<int>(json, r'courseEducationOrganizationId'),
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        schoolYear: mapValueOfType<int>(json, r'schoolYear'),
        studentUniqueId: mapValueOfType<String>(json, r'studentUniqueId'),
        termDescriptor: mapValueOfType<String>(json, r'termDescriptor'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiCourseTranscriptKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiCourseTranscriptKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiCourseTranscriptKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiCourseTranscriptKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiCourseTranscriptKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiCourseTranscriptKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiCourseTranscriptKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiCourseTranscriptKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiCourseTranscriptKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiCourseTranscriptKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

