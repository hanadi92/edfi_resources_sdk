//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiEducationOrganizationInstitutionTelephone {
  /// Returns a new [EdFiEducationOrganizationInstitutionTelephone] instance.
  EdFiEducationOrganizationInstitutionTelephone({
    required this.institutionTelephoneNumberTypeDescriptor,
    required this.telephoneNumber,
  });

  /// The type of communication number listed for an individual or organization.
  String institutionTelephoneNumberTypeDescriptor;

  /// The telephone number including the area code, and extension, if applicable.
  String telephoneNumber;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiEducationOrganizationInstitutionTelephone &&
    other.institutionTelephoneNumberTypeDescriptor == institutionTelephoneNumberTypeDescriptor &&
    other.telephoneNumber == telephoneNumber;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (institutionTelephoneNumberTypeDescriptor.hashCode) +
    (telephoneNumber.hashCode);

  @override
  String toString() => 'EdFiEducationOrganizationInstitutionTelephone[institutionTelephoneNumberTypeDescriptor=$institutionTelephoneNumberTypeDescriptor, telephoneNumber=$telephoneNumber]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'institutionTelephoneNumberTypeDescriptor'] = this.institutionTelephoneNumberTypeDescriptor;
      json[r'telephoneNumber'] = this.telephoneNumber;
    return json;
  }

  /// Returns a new [EdFiEducationOrganizationInstitutionTelephone] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiEducationOrganizationInstitutionTelephone? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiEducationOrganizationInstitutionTelephone[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiEducationOrganizationInstitutionTelephone[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiEducationOrganizationInstitutionTelephone(
        institutionTelephoneNumberTypeDescriptor: mapValueOfType<String>(json, r'institutionTelephoneNumberTypeDescriptor')!,
        telephoneNumber: mapValueOfType<String>(json, r'telephoneNumber')!,
      );
    }
    return null;
  }

  static List<EdFiEducationOrganizationInstitutionTelephone> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiEducationOrganizationInstitutionTelephone>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiEducationOrganizationInstitutionTelephone.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiEducationOrganizationInstitutionTelephone> mapFromJson(dynamic json) {
    final map = <String, EdFiEducationOrganizationInstitutionTelephone>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiEducationOrganizationInstitutionTelephone.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiEducationOrganizationInstitutionTelephone-objects as value to a dart map
  static Map<String, List<EdFiEducationOrganizationInstitutionTelephone>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiEducationOrganizationInstitutionTelephone>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiEducationOrganizationInstitutionTelephone.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'institutionTelephoneNumberTypeDescriptor',
    'telephoneNumber',
  };
}

