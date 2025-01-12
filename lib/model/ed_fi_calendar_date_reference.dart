//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCalendarDateReference {
  /// Returns a new [EdFiCalendarDateReference] instance.
  EdFiCalendarDateReference({
    required this.calendarCode,
    required this.date,
    required this.schoolId,
    required this.schoolYear,
    this.link,
  });

  /// The identifier for the calendar.
  String calendarCode;

  /// The month, day, and year of the calendar event.
  DateTime date;

  /// The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  int schoolId;

  /// The identifier for the school year associated with the calendar.
  int schoolYear;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiCalendarDateReference &&
    other.calendarCode == calendarCode &&
    other.date == date &&
    other.schoolId == schoolId &&
    other.schoolYear == schoolYear &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (calendarCode.hashCode) +
    (date.hashCode) +
    (schoolId.hashCode) +
    (schoolYear.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiCalendarDateReference[calendarCode=$calendarCode, date=$date, schoolId=$schoolId, schoolYear=$schoolYear, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'calendarCode'] = this.calendarCode;
      json[r'date'] = _dateFormatter.format(this.date.toUtc());
      json[r'schoolId'] = this.schoolId;
      json[r'schoolYear'] = this.schoolYear;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiCalendarDateReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCalendarDateReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCalendarDateReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCalendarDateReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCalendarDateReference(
        calendarCode: mapValueOfType<String>(json, r'calendarCode')!,
        date: mapDateTime(json, r'date', r'')!,
        schoolId: mapValueOfType<int>(json, r'schoolId')!,
        schoolYear: mapValueOfType<int>(json, r'schoolYear')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiCalendarDateReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCalendarDateReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCalendarDateReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCalendarDateReference> mapFromJson(dynamic json) {
    final map = <String, EdFiCalendarDateReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCalendarDateReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCalendarDateReference-objects as value to a dart map
  static Map<String, List<EdFiCalendarDateReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCalendarDateReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCalendarDateReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'calendarCode',
    'date',
    'schoolId',
    'schoolYear',
  };
}

