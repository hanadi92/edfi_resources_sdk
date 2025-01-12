//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiAssessmentAdministrationParticipationAdministrationPointOfContact {
  /// Returns a new [EdFiAssessmentAdministrationParticipationAdministrationPointOfContact] instance.
  EdFiAssessmentAdministrationParticipationAdministrationPointOfContact({
    required this.electronicMailAddress,
    required this.firstName,
    required this.lastSurname,
    this.loginId,
    required this.educationOrganizationReference,
  });

  /// The email address for the contact.
  String electronicMailAddress;

  /// The contact's first name.
  String firstName;

  /// The contact's last name.
  String lastSurname;

  /// The login ID for the user; used for security access control interface.
  String? loginId;

  EdFiEducationOrganizationReference educationOrganizationReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiAssessmentAdministrationParticipationAdministrationPointOfContact &&
    other.electronicMailAddress == electronicMailAddress &&
    other.firstName == firstName &&
    other.lastSurname == lastSurname &&
    other.loginId == loginId &&
    other.educationOrganizationReference == educationOrganizationReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (electronicMailAddress.hashCode) +
    (firstName.hashCode) +
    (lastSurname.hashCode) +
    (loginId == null ? 0 : loginId!.hashCode) +
    (educationOrganizationReference.hashCode);

  @override
  String toString() => 'EdFiAssessmentAdministrationParticipationAdministrationPointOfContact[electronicMailAddress=$electronicMailAddress, firstName=$firstName, lastSurname=$lastSurname, loginId=$loginId, educationOrganizationReference=$educationOrganizationReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'electronicMailAddress'] = this.electronicMailAddress;
      json[r'firstName'] = this.firstName;
      json[r'lastSurname'] = this.lastSurname;
    if (this.loginId != null) {
      json[r'loginId'] = this.loginId;
    } else {
      json[r'loginId'] = null;
    }
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
    return json;
  }

  /// Returns a new [EdFiAssessmentAdministrationParticipationAdministrationPointOfContact] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiAssessmentAdministrationParticipationAdministrationPointOfContact? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiAssessmentAdministrationParticipationAdministrationPointOfContact[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiAssessmentAdministrationParticipationAdministrationPointOfContact[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiAssessmentAdministrationParticipationAdministrationPointOfContact(
        electronicMailAddress: mapValueOfType<String>(json, r'electronicMailAddress')!,
        firstName: mapValueOfType<String>(json, r'firstName')!,
        lastSurname: mapValueOfType<String>(json, r'lastSurname')!,
        loginId: mapValueOfType<String>(json, r'loginId'),
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
      );
    }
    return null;
  }

  static List<EdFiAssessmentAdministrationParticipationAdministrationPointOfContact> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiAssessmentAdministrationParticipationAdministrationPointOfContact>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiAssessmentAdministrationParticipationAdministrationPointOfContact.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiAssessmentAdministrationParticipationAdministrationPointOfContact> mapFromJson(dynamic json) {
    final map = <String, EdFiAssessmentAdministrationParticipationAdministrationPointOfContact>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiAssessmentAdministrationParticipationAdministrationPointOfContact.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiAssessmentAdministrationParticipationAdministrationPointOfContact-objects as value to a dart map
  static Map<String, List<EdFiAssessmentAdministrationParticipationAdministrationPointOfContact>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiAssessmentAdministrationParticipationAdministrationPointOfContact>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiAssessmentAdministrationParticipationAdministrationPointOfContact.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'electronicMailAddress',
    'firstName',
    'lastSurname',
    'educationOrganizationReference',
  };
}

