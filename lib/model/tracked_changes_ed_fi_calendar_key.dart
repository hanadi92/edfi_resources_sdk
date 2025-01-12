//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiCalendarKey {
  /// Returns a new [TrackedChangesEdFiCalendarKey] instance.
  TrackedChangesEdFiCalendarKey({
    this.calendarCode,
    this.schoolId,
    this.schoolYear,
  });

  /// The identifier for the calendar.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? calendarCode;

  /// The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? schoolId;

  /// The identifier for the school year associated with the calendar.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? schoolYear;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiCalendarKey &&
    other.calendarCode == calendarCode &&
    other.schoolId == schoolId &&
    other.schoolYear == schoolYear;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (calendarCode == null ? 0 : calendarCode!.hashCode) +
    (schoolId == null ? 0 : schoolId!.hashCode) +
    (schoolYear == null ? 0 : schoolYear!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiCalendarKey[calendarCode=$calendarCode, schoolId=$schoolId, schoolYear=$schoolYear]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.calendarCode != null) {
      json[r'calendarCode'] = this.calendarCode;
    } else {
      json[r'calendarCode'] = null;
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

  /// Returns a new [TrackedChangesEdFiCalendarKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiCalendarKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiCalendarKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiCalendarKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiCalendarKey(
        calendarCode: mapValueOfType<String>(json, r'calendarCode'),
        schoolId: mapValueOfType<int>(json, r'schoolId'),
        schoolYear: mapValueOfType<int>(json, r'schoolYear'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiCalendarKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiCalendarKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiCalendarKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiCalendarKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiCalendarKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiCalendarKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiCalendarKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiCalendarKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiCalendarKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiCalendarKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

