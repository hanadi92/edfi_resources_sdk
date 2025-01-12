//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCredentialAcademicSubject {
  /// Returns a new [EdFiCredentialAcademicSubject] instance.
  EdFiCredentialAcademicSubject({
    required this.academicSubjectDescriptor,
  });

  /// The academic subjects to which the credential pertains.
  String academicSubjectDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiCredentialAcademicSubject &&
    other.academicSubjectDescriptor == academicSubjectDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (academicSubjectDescriptor.hashCode);

  @override
  String toString() => 'EdFiCredentialAcademicSubject[academicSubjectDescriptor=$academicSubjectDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'academicSubjectDescriptor'] = this.academicSubjectDescriptor;
    return json;
  }

  /// Returns a new [EdFiCredentialAcademicSubject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCredentialAcademicSubject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCredentialAcademicSubject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCredentialAcademicSubject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCredentialAcademicSubject(
        academicSubjectDescriptor: mapValueOfType<String>(json, r'academicSubjectDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiCredentialAcademicSubject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCredentialAcademicSubject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCredentialAcademicSubject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCredentialAcademicSubject> mapFromJson(dynamic json) {
    final map = <String, EdFiCredentialAcademicSubject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCredentialAcademicSubject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCredentialAcademicSubject-objects as value to a dart map
  static Map<String, List<EdFiCredentialAcademicSubject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCredentialAcademicSubject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCredentialAcademicSubject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'academicSubjectDescriptor',
  };
}

