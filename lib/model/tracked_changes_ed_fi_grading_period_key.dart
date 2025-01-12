//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiGradingPeriodKey {
  /// Returns a new [TrackedChangesEdFiGradingPeriodKey] instance.
  TrackedChangesEdFiGradingPeriodKey({
    this.gradingPeriodDescriptor,
    this.gradingPeriodName,
    this.schoolId,
    this.schoolYear,
  });

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
  int? schoolYear;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiGradingPeriodKey &&
    other.gradingPeriodDescriptor == gradingPeriodDescriptor &&
    other.gradingPeriodName == gradingPeriodName &&
    other.schoolId == schoolId &&
    other.schoolYear == schoolYear;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gradingPeriodDescriptor == null ? 0 : gradingPeriodDescriptor!.hashCode) +
    (gradingPeriodName == null ? 0 : gradingPeriodName!.hashCode) +
    (schoolId == null ? 0 : schoolId!.hashCode) +
    (schoolYear == null ? 0 : schoolYear!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiGradingPeriodKey[gradingPeriodDescriptor=$gradingPeriodDescriptor, gradingPeriodName=$gradingPeriodName, schoolId=$schoolId, schoolYear=$schoolYear]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.schoolYear != null) {
      json[r'schoolYear'] = this.schoolYear;
    } else {
      json[r'schoolYear'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiGradingPeriodKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiGradingPeriodKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiGradingPeriodKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiGradingPeriodKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiGradingPeriodKey(
        gradingPeriodDescriptor: mapValueOfType<String>(json, r'gradingPeriodDescriptor'),
        gradingPeriodName: mapValueOfType<String>(json, r'gradingPeriodName'),
        schoolId: mapValueOfType<int>(json, r'schoolId'),
        schoolYear: mapValueOfType<int>(json, r'schoolYear'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiGradingPeriodKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiGradingPeriodKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiGradingPeriodKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiGradingPeriodKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiGradingPeriodKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiGradingPeriodKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiGradingPeriodKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiGradingPeriodKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiGradingPeriodKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiGradingPeriodKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

