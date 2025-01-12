//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCourseIdentificationCode {
  /// Returns a new [EdFiCourseIdentificationCode] instance.
  EdFiCourseIdentificationCode({
    required this.courseIdentificationSystemDescriptor,
    this.assigningOrganizationIdentificationCode,
    this.courseCatalogURL,
    required this.identificationCode,
  });

  /// A system that is used to identify the organization of subject matter and related learning experiences provided for the instruction of students.
  String courseIdentificationSystemDescriptor;

  /// The organization code or name assigning the Identification Code.
  String? assigningOrganizationIdentificationCode;

  /// The URL for the course catalog that defines the course identification code.
  String? courseCatalogURL;

  /// A unique number or alphanumeric code assigned to a course by a school, school system, state, or other agency or entity. For multi-part course codes, concatenate the parts separated by a \"/\". For example, consider the following SCED code-    subject = 20 Math    course = 272 Geometry    level = G General    credits = 1.00   course sequence 1 of 1- would be entered as 20/272/G/1.00/1 of 1.
  String identificationCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiCourseIdentificationCode &&
    other.courseIdentificationSystemDescriptor == courseIdentificationSystemDescriptor &&
    other.assigningOrganizationIdentificationCode == assigningOrganizationIdentificationCode &&
    other.courseCatalogURL == courseCatalogURL &&
    other.identificationCode == identificationCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (courseIdentificationSystemDescriptor.hashCode) +
    (assigningOrganizationIdentificationCode == null ? 0 : assigningOrganizationIdentificationCode!.hashCode) +
    (courseCatalogURL == null ? 0 : courseCatalogURL!.hashCode) +
    (identificationCode.hashCode);

  @override
  String toString() => 'EdFiCourseIdentificationCode[courseIdentificationSystemDescriptor=$courseIdentificationSystemDescriptor, assigningOrganizationIdentificationCode=$assigningOrganizationIdentificationCode, courseCatalogURL=$courseCatalogURL, identificationCode=$identificationCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'courseIdentificationSystemDescriptor'] = this.courseIdentificationSystemDescriptor;
    if (this.assigningOrganizationIdentificationCode != null) {
      json[r'assigningOrganizationIdentificationCode'] = this.assigningOrganizationIdentificationCode;
    } else {
      json[r'assigningOrganizationIdentificationCode'] = null;
    }
    if (this.courseCatalogURL != null) {
      json[r'courseCatalogURL'] = this.courseCatalogURL;
    } else {
      json[r'courseCatalogURL'] = null;
    }
      json[r'identificationCode'] = this.identificationCode;
    return json;
  }

  /// Returns a new [EdFiCourseIdentificationCode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCourseIdentificationCode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCourseIdentificationCode[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCourseIdentificationCode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCourseIdentificationCode(
        courseIdentificationSystemDescriptor: mapValueOfType<String>(json, r'courseIdentificationSystemDescriptor')!,
        assigningOrganizationIdentificationCode: mapValueOfType<String>(json, r'assigningOrganizationIdentificationCode'),
        courseCatalogURL: mapValueOfType<String>(json, r'courseCatalogURL'),
        identificationCode: mapValueOfType<String>(json, r'identificationCode')!,
      );
    }
    return null;
  }

  static List<EdFiCourseIdentificationCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCourseIdentificationCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCourseIdentificationCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCourseIdentificationCode> mapFromJson(dynamic json) {
    final map = <String, EdFiCourseIdentificationCode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCourseIdentificationCode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCourseIdentificationCode-objects as value to a dart map
  static Map<String, List<EdFiCourseIdentificationCode>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCourseIdentificationCode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCourseIdentificationCode.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'courseIdentificationSystemDescriptor',
    'identificationCode',
  };
}

