//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiOpenStaffPositionAcademicSubject {
  /// Returns a new [EdFiOpenStaffPositionAcademicSubject] instance.
  EdFiOpenStaffPositionAcademicSubject({
    required this.academicSubjectDescriptor,
  });

  /// The teaching field required for the open staff position.
  String academicSubjectDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiOpenStaffPositionAcademicSubject &&
    other.academicSubjectDescriptor == academicSubjectDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (academicSubjectDescriptor.hashCode);

  @override
  String toString() => 'EdFiOpenStaffPositionAcademicSubject[academicSubjectDescriptor=$academicSubjectDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'academicSubjectDescriptor'] = this.academicSubjectDescriptor;
    return json;
  }

  /// Returns a new [EdFiOpenStaffPositionAcademicSubject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiOpenStaffPositionAcademicSubject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiOpenStaffPositionAcademicSubject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiOpenStaffPositionAcademicSubject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiOpenStaffPositionAcademicSubject(
        academicSubjectDescriptor: mapValueOfType<String>(json, r'academicSubjectDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiOpenStaffPositionAcademicSubject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiOpenStaffPositionAcademicSubject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiOpenStaffPositionAcademicSubject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiOpenStaffPositionAcademicSubject> mapFromJson(dynamic json) {
    final map = <String, EdFiOpenStaffPositionAcademicSubject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiOpenStaffPositionAcademicSubject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiOpenStaffPositionAcademicSubject-objects as value to a dart map
  static Map<String, List<EdFiOpenStaffPositionAcademicSubject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiOpenStaffPositionAcademicSubject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiOpenStaffPositionAcademicSubject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'academicSubjectDescriptor',
  };
}

