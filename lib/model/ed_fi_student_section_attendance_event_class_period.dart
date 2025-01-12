//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentSectionAttendanceEventClassPeriod {
  /// Returns a new [EdFiStudentSectionAttendanceEventClassPeriod] instance.
  EdFiStudentSectionAttendanceEventClassPeriod({
    required this.classPeriodReference,
  });

  EdFiClassPeriodReference classPeriodReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentSectionAttendanceEventClassPeriod &&
    other.classPeriodReference == classPeriodReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (classPeriodReference.hashCode);

  @override
  String toString() => 'EdFiStudentSectionAttendanceEventClassPeriod[classPeriodReference=$classPeriodReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'classPeriodReference'] = this.classPeriodReference;
    return json;
  }

  /// Returns a new [EdFiStudentSectionAttendanceEventClassPeriod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentSectionAttendanceEventClassPeriod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentSectionAttendanceEventClassPeriod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentSectionAttendanceEventClassPeriod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentSectionAttendanceEventClassPeriod(
        classPeriodReference: EdFiClassPeriodReference.fromJson(json[r'classPeriodReference'])!,
      );
    }
    return null;
  }

  static List<EdFiStudentSectionAttendanceEventClassPeriod> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentSectionAttendanceEventClassPeriod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentSectionAttendanceEventClassPeriod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentSectionAttendanceEventClassPeriod> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentSectionAttendanceEventClassPeriod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentSectionAttendanceEventClassPeriod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentSectionAttendanceEventClassPeriod-objects as value to a dart map
  static Map<String, List<EdFiStudentSectionAttendanceEventClassPeriod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentSectionAttendanceEventClassPeriod>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentSectionAttendanceEventClassPeriod.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'classPeriodReference',
  };
}

