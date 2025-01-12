//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaffEducationOrganizationEmploymentAssociationReference {
  /// Returns a new [EdFiStaffEducationOrganizationEmploymentAssociationReference] instance.
  EdFiStaffEducationOrganizationEmploymentAssociationReference({
    required this.educationOrganizationId,
    required this.employmentStatusDescriptor,
    required this.hireDate,
    required this.staffUniqueId,
    this.link,
  });

  /// The identifier assigned to an education organization.
  int educationOrganizationId;

  /// Reflects the type of employment or contract.
  String employmentStatusDescriptor;

  /// The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime hireDate;

  /// A unique alphanumeric code assigned to a staff.
  String staffUniqueId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaffEducationOrganizationEmploymentAssociationReference &&
    other.educationOrganizationId == educationOrganizationId &&
    other.employmentStatusDescriptor == employmentStatusDescriptor &&
    other.hireDate == hireDate &&
    other.staffUniqueId == staffUniqueId &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (educationOrganizationId.hashCode) +
    (employmentStatusDescriptor.hashCode) +
    (hireDate.hashCode) +
    (staffUniqueId.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiStaffEducationOrganizationEmploymentAssociationReference[educationOrganizationId=$educationOrganizationId, employmentStatusDescriptor=$employmentStatusDescriptor, hireDate=$hireDate, staffUniqueId=$staffUniqueId, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'educationOrganizationId'] = this.educationOrganizationId;
      json[r'employmentStatusDescriptor'] = this.employmentStatusDescriptor;
      json[r'hireDate'] = _dateFormatter.format(this.hireDate.toUtc());
      json[r'staffUniqueId'] = this.staffUniqueId;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiStaffEducationOrganizationEmploymentAssociationReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaffEducationOrganizationEmploymentAssociationReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaffEducationOrganizationEmploymentAssociationReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaffEducationOrganizationEmploymentAssociationReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaffEducationOrganizationEmploymentAssociationReference(
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId')!,
        employmentStatusDescriptor: mapValueOfType<String>(json, r'employmentStatusDescriptor')!,
        hireDate: mapDateTime(json, r'hireDate', r'')!,
        staffUniqueId: mapValueOfType<String>(json, r'staffUniqueId')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiStaffEducationOrganizationEmploymentAssociationReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaffEducationOrganizationEmploymentAssociationReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaffEducationOrganizationEmploymentAssociationReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaffEducationOrganizationEmploymentAssociationReference> mapFromJson(dynamic json) {
    final map = <String, EdFiStaffEducationOrganizationEmploymentAssociationReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaffEducationOrganizationEmploymentAssociationReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaffEducationOrganizationEmploymentAssociationReference-objects as value to a dart map
  static Map<String, List<EdFiStaffEducationOrganizationEmploymentAssociationReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaffEducationOrganizationEmploymentAssociationReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaffEducationOrganizationEmploymentAssociationReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'educationOrganizationId',
    'employmentStatusDescriptor',
    'hireDate',
    'staffUniqueId',
  };
}

