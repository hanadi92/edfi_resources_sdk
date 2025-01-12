//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentEducationOrganizationAssociationStudentIdentificationCode {
  /// Returns a new [EdFiStudentEducationOrganizationAssociationStudentIdentificationCode] instance.
  EdFiStudentEducationOrganizationAssociationStudentIdentificationCode({
    required this.studentIdentificationSystemDescriptor,
    required this.assigningOrganizationIdentificationCode,
    required this.identificationCode,
  });

  /// A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a student.
  String studentIdentificationSystemDescriptor;

  /// The organization code or name assigning the StudentIdentificationCode.
  String assigningOrganizationIdentificationCode;

  /// A unique number or alphanumeric code assigned to a student by a school, school system, a state, or other agency or entity.
  String identificationCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentEducationOrganizationAssociationStudentIdentificationCode &&
    other.studentIdentificationSystemDescriptor == studentIdentificationSystemDescriptor &&
    other.assigningOrganizationIdentificationCode == assigningOrganizationIdentificationCode &&
    other.identificationCode == identificationCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (studentIdentificationSystemDescriptor.hashCode) +
    (assigningOrganizationIdentificationCode.hashCode) +
    (identificationCode.hashCode);

  @override
  String toString() => 'EdFiStudentEducationOrganizationAssociationStudentIdentificationCode[studentIdentificationSystemDescriptor=$studentIdentificationSystemDescriptor, assigningOrganizationIdentificationCode=$assigningOrganizationIdentificationCode, identificationCode=$identificationCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'studentIdentificationSystemDescriptor'] = this.studentIdentificationSystemDescriptor;
      json[r'assigningOrganizationIdentificationCode'] = this.assigningOrganizationIdentificationCode;
      json[r'identificationCode'] = this.identificationCode;
    return json;
  }

  /// Returns a new [EdFiStudentEducationOrganizationAssociationStudentIdentificationCode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentEducationOrganizationAssociationStudentIdentificationCode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentEducationOrganizationAssociationStudentIdentificationCode[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentEducationOrganizationAssociationStudentIdentificationCode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentEducationOrganizationAssociationStudentIdentificationCode(
        studentIdentificationSystemDescriptor: mapValueOfType<String>(json, r'studentIdentificationSystemDescriptor')!,
        assigningOrganizationIdentificationCode: mapValueOfType<String>(json, r'assigningOrganizationIdentificationCode')!,
        identificationCode: mapValueOfType<String>(json, r'identificationCode')!,
      );
    }
    return null;
  }

  static List<EdFiStudentEducationOrganizationAssociationStudentIdentificationCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentEducationOrganizationAssociationStudentIdentificationCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentEducationOrganizationAssociationStudentIdentificationCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentEducationOrganizationAssociationStudentIdentificationCode> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentEducationOrganizationAssociationStudentIdentificationCode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentEducationOrganizationAssociationStudentIdentificationCode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentEducationOrganizationAssociationStudentIdentificationCode-objects as value to a dart map
  static Map<String, List<EdFiStudentEducationOrganizationAssociationStudentIdentificationCode>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentEducationOrganizationAssociationStudentIdentificationCode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentEducationOrganizationAssociationStudentIdentificationCode.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'studentIdentificationSystemDescriptor',
    'assigningOrganizationIdentificationCode',
    'identificationCode',
  };
}

