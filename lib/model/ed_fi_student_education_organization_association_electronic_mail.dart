//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentEducationOrganizationAssociationElectronicMail {
  /// Returns a new [EdFiStudentEducationOrganizationAssociationElectronicMail] instance.
  EdFiStudentEducationOrganizationAssociationElectronicMail({
    required this.electronicMailTypeDescriptor,
    required this.electronicMailAddress,
    this.doNotPublishIndicator,
    this.primaryEmailAddressIndicator,
  });

  /// The type of email listed for an individual or organization. For example: Home/Personal, Work, etc.)
  String electronicMailTypeDescriptor;

  /// The electronic mail (e-mail) address listed for an individual or organization.
  String electronicMailAddress;

  /// An indication that the electronic email address should not be published.
  bool? doNotPublishIndicator;

  /// An indication that the electronic mail address should be used as the principal electronic mail address for an individual or organization.
  bool? primaryEmailAddressIndicator;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentEducationOrganizationAssociationElectronicMail &&
    other.electronicMailTypeDescriptor == electronicMailTypeDescriptor &&
    other.electronicMailAddress == electronicMailAddress &&
    other.doNotPublishIndicator == doNotPublishIndicator &&
    other.primaryEmailAddressIndicator == primaryEmailAddressIndicator;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (electronicMailTypeDescriptor.hashCode) +
    (electronicMailAddress.hashCode) +
    (doNotPublishIndicator == null ? 0 : doNotPublishIndicator!.hashCode) +
    (primaryEmailAddressIndicator == null ? 0 : primaryEmailAddressIndicator!.hashCode);

  @override
  String toString() => 'EdFiStudentEducationOrganizationAssociationElectronicMail[electronicMailTypeDescriptor=$electronicMailTypeDescriptor, electronicMailAddress=$electronicMailAddress, doNotPublishIndicator=$doNotPublishIndicator, primaryEmailAddressIndicator=$primaryEmailAddressIndicator]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'electronicMailTypeDescriptor'] = this.electronicMailTypeDescriptor;
      json[r'electronicMailAddress'] = this.electronicMailAddress;
    if (this.doNotPublishIndicator != null) {
      json[r'doNotPublishIndicator'] = this.doNotPublishIndicator;
    } else {
      json[r'doNotPublishIndicator'] = null;
    }
    if (this.primaryEmailAddressIndicator != null) {
      json[r'primaryEmailAddressIndicator'] = this.primaryEmailAddressIndicator;
    } else {
      json[r'primaryEmailAddressIndicator'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiStudentEducationOrganizationAssociationElectronicMail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentEducationOrganizationAssociationElectronicMail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentEducationOrganizationAssociationElectronicMail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentEducationOrganizationAssociationElectronicMail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentEducationOrganizationAssociationElectronicMail(
        electronicMailTypeDescriptor: mapValueOfType<String>(json, r'electronicMailTypeDescriptor')!,
        electronicMailAddress: mapValueOfType<String>(json, r'electronicMailAddress')!,
        doNotPublishIndicator: mapValueOfType<bool>(json, r'doNotPublishIndicator'),
        primaryEmailAddressIndicator: mapValueOfType<bool>(json, r'primaryEmailAddressIndicator'),
      );
    }
    return null;
  }

  static List<EdFiStudentEducationOrganizationAssociationElectronicMail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentEducationOrganizationAssociationElectronicMail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentEducationOrganizationAssociationElectronicMail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentEducationOrganizationAssociationElectronicMail> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentEducationOrganizationAssociationElectronicMail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentEducationOrganizationAssociationElectronicMail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentEducationOrganizationAssociationElectronicMail-objects as value to a dart map
  static Map<String, List<EdFiStudentEducationOrganizationAssociationElectronicMail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentEducationOrganizationAssociationElectronicMail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentEducationOrganizationAssociationElectronicMail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'electronicMailTypeDescriptor',
    'electronicMailAddress',
  };
}

