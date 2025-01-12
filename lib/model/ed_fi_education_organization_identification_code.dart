//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiEducationOrganizationIdentificationCode {
  /// Returns a new [EdFiEducationOrganizationIdentificationCode] instance.
  EdFiEducationOrganizationIdentificationCode({
    required this.educationOrganizationIdentificationSystemDescriptor,
    required this.identificationCode,
  });

  /// The school system, state, or agency assigning the identification code.
  String educationOrganizationIdentificationSystemDescriptor;

  /// A unique number or alphanumeric code that is assigned to an education organization by a school, school system, state, or other agency or entity.
  String identificationCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiEducationOrganizationIdentificationCode &&
    other.educationOrganizationIdentificationSystemDescriptor == educationOrganizationIdentificationSystemDescriptor &&
    other.identificationCode == identificationCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (educationOrganizationIdentificationSystemDescriptor.hashCode) +
    (identificationCode.hashCode);

  @override
  String toString() => 'EdFiEducationOrganizationIdentificationCode[educationOrganizationIdentificationSystemDescriptor=$educationOrganizationIdentificationSystemDescriptor, identificationCode=$identificationCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'educationOrganizationIdentificationSystemDescriptor'] = this.educationOrganizationIdentificationSystemDescriptor;
      json[r'identificationCode'] = this.identificationCode;
    return json;
  }

  /// Returns a new [EdFiEducationOrganizationIdentificationCode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiEducationOrganizationIdentificationCode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiEducationOrganizationIdentificationCode[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiEducationOrganizationIdentificationCode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiEducationOrganizationIdentificationCode(
        educationOrganizationIdentificationSystemDescriptor: mapValueOfType<String>(json, r'educationOrganizationIdentificationSystemDescriptor')!,
        identificationCode: mapValueOfType<String>(json, r'identificationCode')!,
      );
    }
    return null;
  }

  static List<EdFiEducationOrganizationIdentificationCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiEducationOrganizationIdentificationCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiEducationOrganizationIdentificationCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiEducationOrganizationIdentificationCode> mapFromJson(dynamic json) {
    final map = <String, EdFiEducationOrganizationIdentificationCode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiEducationOrganizationIdentificationCode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiEducationOrganizationIdentificationCode-objects as value to a dart map
  static Map<String, List<EdFiEducationOrganizationIdentificationCode>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiEducationOrganizationIdentificationCode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiEducationOrganizationIdentificationCode.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'educationOrganizationIdentificationSystemDescriptor',
    'identificationCode',
  };
}

