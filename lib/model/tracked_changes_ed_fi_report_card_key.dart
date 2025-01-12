//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiReportCardKey {
  /// Returns a new [TrackedChangesEdFiReportCardKey] instance.
  TrackedChangesEdFiReportCardKey({
    this.educationOrganizationId,
    this.gradingPeriodDescriptor,
    this.gradingPeriodName,
    this.gradingPeriodSchoolId,
    this.gradingPeriodSchoolYear,
    this.studentUniqueId,
  });

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

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
  int? gradingPeriodSchoolId;

  /// The identifier for the grading period school year.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? gradingPeriodSchoolYear;

  /// A unique alphanumeric code assigned to a student.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studentUniqueId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiReportCardKey &&
    other.educationOrganizationId == educationOrganizationId &&
    other.gradingPeriodDescriptor == gradingPeriodDescriptor &&
    other.gradingPeriodName == gradingPeriodName &&
    other.gradingPeriodSchoolId == gradingPeriodSchoolId &&
    other.gradingPeriodSchoolYear == gradingPeriodSchoolYear &&
    other.studentUniqueId == studentUniqueId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (gradingPeriodDescriptor == null ? 0 : gradingPeriodDescriptor!.hashCode) +
    (gradingPeriodName == null ? 0 : gradingPeriodName!.hashCode) +
    (gradingPeriodSchoolId == null ? 0 : gradingPeriodSchoolId!.hashCode) +
    (gradingPeriodSchoolYear == null ? 0 : gradingPeriodSchoolYear!.hashCode) +
    (studentUniqueId == null ? 0 : studentUniqueId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiReportCardKey[educationOrganizationId=$educationOrganizationId, gradingPeriodDescriptor=$gradingPeriodDescriptor, gradingPeriodName=$gradingPeriodName, gradingPeriodSchoolId=$gradingPeriodSchoolId, gradingPeriodSchoolYear=$gradingPeriodSchoolYear, studentUniqueId=$studentUniqueId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
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
    if (this.gradingPeriodSchoolId != null) {
      json[r'gradingPeriodSchoolId'] = this.gradingPeriodSchoolId;
    } else {
      json[r'gradingPeriodSchoolId'] = null;
    }
    if (this.gradingPeriodSchoolYear != null) {
      json[r'gradingPeriodSchoolYear'] = this.gradingPeriodSchoolYear;
    } else {
      json[r'gradingPeriodSchoolYear'] = null;
    }
    if (this.studentUniqueId != null) {
      json[r'studentUniqueId'] = this.studentUniqueId;
    } else {
      json[r'studentUniqueId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiReportCardKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiReportCardKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiReportCardKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiReportCardKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiReportCardKey(
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        gradingPeriodDescriptor: mapValueOfType<String>(json, r'gradingPeriodDescriptor'),
        gradingPeriodName: mapValueOfType<String>(json, r'gradingPeriodName'),
        gradingPeriodSchoolId: mapValueOfType<int>(json, r'gradingPeriodSchoolId'),
        gradingPeriodSchoolYear: mapValueOfType<int>(json, r'gradingPeriodSchoolYear'),
        studentUniqueId: mapValueOfType<String>(json, r'studentUniqueId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiReportCardKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiReportCardKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiReportCardKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiReportCardKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiReportCardKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiReportCardKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiReportCardKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiReportCardKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiReportCardKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiReportCardKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

