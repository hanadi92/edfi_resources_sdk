//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaffEducationOrganizationContactAssociation {
  /// Returns a new [EdFiStaffEducationOrganizationContactAssociation] instance.
  EdFiStaffEducationOrganizationContactAssociation({
    this.id,
    required this.contactTitle,
    required this.educationOrganizationReference,
    required this.staffReference,
    this.address,
    this.contactTypeDescriptor,
    required this.electronicMailAddress,
    this.telephones = const [],
    this.etag,
    this.lastModifiedDate,
  });

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The title of the contact in the context of the education organization.
  String contactTitle;

  EdFiEducationOrganizationReference educationOrganizationReference;

  EdFiStaffReference staffReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiStaffEducationOrganizationContactAssociationAddress? address;

  /// Indicates the type for the contact information.
  String? contactTypeDescriptor;

  /// The email for the contact associated with the education organization.
  String electronicMailAddress;

  /// An unordered collection of staffEducationOrganizationContactAssociationTelephones. The optional telephone for the contact associated with the education organization.
  List<EdFiStaffEducationOrganizationContactAssociationTelephone> telephones;

  /// A unique system-generated value that identifies the version of the resource.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? etag;

  /// The date and time the resource was last modified.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastModifiedDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaffEducationOrganizationContactAssociation &&
    other.id == id &&
    other.contactTitle == contactTitle &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.staffReference == staffReference &&
    other.address == address &&
    other.contactTypeDescriptor == contactTypeDescriptor &&
    other.electronicMailAddress == electronicMailAddress &&
    _deepEquality.equals(other.telephones, telephones) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (contactTitle.hashCode) +
    (educationOrganizationReference.hashCode) +
    (staffReference.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (contactTypeDescriptor == null ? 0 : contactTypeDescriptor!.hashCode) +
    (electronicMailAddress.hashCode) +
    (telephones.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStaffEducationOrganizationContactAssociation[id=$id, contactTitle=$contactTitle, educationOrganizationReference=$educationOrganizationReference, staffReference=$staffReference, address=$address, contactTypeDescriptor=$contactTypeDescriptor, electronicMailAddress=$electronicMailAddress, telephones=$telephones, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'contactTitle'] = this.contactTitle;
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'staffReference'] = this.staffReference;
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.contactTypeDescriptor != null) {
      json[r'contactTypeDescriptor'] = this.contactTypeDescriptor;
    } else {
      json[r'contactTypeDescriptor'] = null;
    }
      json[r'electronicMailAddress'] = this.electronicMailAddress;
      json[r'telephones'] = this.telephones;
    if (this.etag != null) {
      json[r'_etag'] = this.etag;
    } else {
      json[r'_etag'] = null;
    }
    if (this.lastModifiedDate != null) {
      json[r'_lastModifiedDate'] = this.lastModifiedDate!.toUtc().toIso8601String();
    } else {
      json[r'_lastModifiedDate'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiStaffEducationOrganizationContactAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaffEducationOrganizationContactAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaffEducationOrganizationContactAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaffEducationOrganizationContactAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaffEducationOrganizationContactAssociation(
        id: mapValueOfType<String>(json, r'id'),
        contactTitle: mapValueOfType<String>(json, r'contactTitle')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        staffReference: EdFiStaffReference.fromJson(json[r'staffReference'])!,
        address: EdFiStaffEducationOrganizationContactAssociationAddress.fromJson(json[r'address']),
        contactTypeDescriptor: mapValueOfType<String>(json, r'contactTypeDescriptor'),
        electronicMailAddress: mapValueOfType<String>(json, r'electronicMailAddress')!,
        telephones: EdFiStaffEducationOrganizationContactAssociationTelephone.listFromJson(json[r'telephones']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStaffEducationOrganizationContactAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaffEducationOrganizationContactAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaffEducationOrganizationContactAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaffEducationOrganizationContactAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStaffEducationOrganizationContactAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaffEducationOrganizationContactAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaffEducationOrganizationContactAssociation-objects as value to a dart map
  static Map<String, List<EdFiStaffEducationOrganizationContactAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaffEducationOrganizationContactAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaffEducationOrganizationContactAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'contactTitle',
    'educationOrganizationReference',
    'staffReference',
    'electronicMailAddress',
  };
}

