//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaffIdentificationCode {
  /// Returns a new [EdFiStaffIdentificationCode] instance.
  EdFiStaffIdentificationCode({
    required this.staffIdentificationSystemDescriptor,
    this.assigningOrganizationIdentificationCode,
    required this.identificationCode,
  });

  /// A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a staff member.
  String staffIdentificationSystemDescriptor;

  /// The organization code or name assigning the staff Identification Code.
  String? assigningOrganizationIdentificationCode;

  /// A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity.
  String identificationCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaffIdentificationCode &&
    other.staffIdentificationSystemDescriptor == staffIdentificationSystemDescriptor &&
    other.assigningOrganizationIdentificationCode == assigningOrganizationIdentificationCode &&
    other.identificationCode == identificationCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (staffIdentificationSystemDescriptor.hashCode) +
    (assigningOrganizationIdentificationCode == null ? 0 : assigningOrganizationIdentificationCode!.hashCode) +
    (identificationCode.hashCode);

  @override
  String toString() => 'EdFiStaffIdentificationCode[staffIdentificationSystemDescriptor=$staffIdentificationSystemDescriptor, assigningOrganizationIdentificationCode=$assigningOrganizationIdentificationCode, identificationCode=$identificationCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'staffIdentificationSystemDescriptor'] = this.staffIdentificationSystemDescriptor;
    if (this.assigningOrganizationIdentificationCode != null) {
      json[r'assigningOrganizationIdentificationCode'] = this.assigningOrganizationIdentificationCode;
    } else {
      json[r'assigningOrganizationIdentificationCode'] = null;
    }
      json[r'identificationCode'] = this.identificationCode;
    return json;
  }

  /// Returns a new [EdFiStaffIdentificationCode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaffIdentificationCode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaffIdentificationCode[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaffIdentificationCode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaffIdentificationCode(
        staffIdentificationSystemDescriptor: mapValueOfType<String>(json, r'staffIdentificationSystemDescriptor')!,
        assigningOrganizationIdentificationCode: mapValueOfType<String>(json, r'assigningOrganizationIdentificationCode'),
        identificationCode: mapValueOfType<String>(json, r'identificationCode')!,
      );
    }
    return null;
  }

  static List<EdFiStaffIdentificationCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaffIdentificationCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaffIdentificationCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaffIdentificationCode> mapFromJson(dynamic json) {
    final map = <String, EdFiStaffIdentificationCode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaffIdentificationCode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaffIdentificationCode-objects as value to a dart map
  static Map<String, List<EdFiStaffIdentificationCode>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaffIdentificationCode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaffIdentificationCode.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'staffIdentificationSystemDescriptor',
    'identificationCode',
  };
}

