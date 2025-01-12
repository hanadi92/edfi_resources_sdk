//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiLocationReference {
  /// Returns a new [EdFiLocationReference] instance.
  EdFiLocationReference({
    required this.classroomIdentificationCode,
    required this.schoolId,
    this.link,
  });

  /// A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.
  String classroomIdentificationCode;

  /// The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  int schoolId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiLocationReference &&
    other.classroomIdentificationCode == classroomIdentificationCode &&
    other.schoolId == schoolId &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (classroomIdentificationCode.hashCode) +
    (schoolId.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiLocationReference[classroomIdentificationCode=$classroomIdentificationCode, schoolId=$schoolId, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'classroomIdentificationCode'] = this.classroomIdentificationCode;
      json[r'schoolId'] = this.schoolId;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiLocationReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiLocationReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiLocationReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiLocationReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiLocationReference(
        classroomIdentificationCode: mapValueOfType<String>(json, r'classroomIdentificationCode')!,
        schoolId: mapValueOfType<int>(json, r'schoolId')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiLocationReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiLocationReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiLocationReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiLocationReference> mapFromJson(dynamic json) {
    final map = <String, EdFiLocationReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiLocationReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiLocationReference-objects as value to a dart map
  static Map<String, List<EdFiLocationReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiLocationReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiLocationReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'classroomIdentificationCode',
    'schoolId',
  };
}

