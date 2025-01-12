//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiStudentAcademicRecordKey {
  /// Returns a new [TrackedChangesEdFiStudentAcademicRecordKey] instance.
  TrackedChangesEdFiStudentAcademicRecordKey({
    this.termDescriptor,
    this.educationOrganizationId,
    this.schoolYear,
    this.studentUniqueId,
  });

  /// The term for the session during the school year.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? termDescriptor;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiStudentAcademicRecordKey &&
    other.termDescriptor == termDescriptor &&
    other.educationOrganizationId == educationOrganizationId &&
    other.schoolYear == schoolYear &&
    other.studentUniqueId == studentUniqueId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (termDescriptor == null ? 0 : termDescriptor!.hashCode) +
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (schoolYear == null ? 0 : schoolYear!.hashCode) +
    (studentUniqueId == null ? 0 : studentUniqueId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiStudentAcademicRecordKey[termDescriptor=$termDescriptor, educationOrganizationId=$educationOrganizationId, schoolYear=$schoolYear, studentUniqueId=$studentUniqueId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.termDescriptor != null) {
      json[r'termDescriptor'] = this.termDescriptor;
    } else {
      json[r'termDescriptor'] = null;
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
    return json;
  }

  /// Returns a new [TrackedChangesEdFiStudentAcademicRecordKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiStudentAcademicRecordKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiStudentAcademicRecordKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiStudentAcademicRecordKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiStudentAcademicRecordKey(
        termDescriptor: mapValueOfType<String>(json, r'termDescriptor'),
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        schoolYear: mapValueOfType<int>(json, r'schoolYear'),
        studentUniqueId: mapValueOfType<String>(json, r'studentUniqueId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiStudentAcademicRecordKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiStudentAcademicRecordKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiStudentAcademicRecordKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiStudentAcademicRecordKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiStudentAcademicRecordKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiStudentAcademicRecordKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiStudentAcademicRecordKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiStudentAcademicRecordKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiStudentAcademicRecordKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiStudentAcademicRecordKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

