//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCourseReference {
  /// Returns a new [EdFiCourseReference] instance.
  EdFiCourseReference({
    required this.courseCode,
    required this.educationOrganizationId,
    this.link,
  });

  /// A unique alphanumeric code assigned to a course.
  String courseCode;

  /// The identifier assigned to an education organization.
  int educationOrganizationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiCourseReference &&
    other.courseCode == courseCode &&
    other.educationOrganizationId == educationOrganizationId &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (courseCode.hashCode) +
    (educationOrganizationId.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiCourseReference[courseCode=$courseCode, educationOrganizationId=$educationOrganizationId, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'courseCode'] = this.courseCode;
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiCourseReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCourseReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCourseReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCourseReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCourseReference(
        courseCode: mapValueOfType<String>(json, r'courseCode')!,
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiCourseReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCourseReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCourseReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCourseReference> mapFromJson(dynamic json) {
    final map = <String, EdFiCourseReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCourseReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCourseReference-objects as value to a dart map
  static Map<String, List<EdFiCourseReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCourseReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCourseReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'courseCode',
    'educationOrganizationId',
  };
}

