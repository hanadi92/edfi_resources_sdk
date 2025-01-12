//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentEducationOrganizationAssociationTribalAffiliation {
  /// Returns a new [EdFiStudentEducationOrganizationAssociationTribalAffiliation] instance.
  EdFiStudentEducationOrganizationAssociationTribalAffiliation({
    required this.tribalAffiliationDescriptor,
  });

  /// An American Indian tribe with which the student is affiliated as last reported to the education organization.
  String tribalAffiliationDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentEducationOrganizationAssociationTribalAffiliation &&
    other.tribalAffiliationDescriptor == tribalAffiliationDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tribalAffiliationDescriptor.hashCode);

  @override
  String toString() => 'EdFiStudentEducationOrganizationAssociationTribalAffiliation[tribalAffiliationDescriptor=$tribalAffiliationDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tribalAffiliationDescriptor'] = this.tribalAffiliationDescriptor;
    return json;
  }

  /// Returns a new [EdFiStudentEducationOrganizationAssociationTribalAffiliation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentEducationOrganizationAssociationTribalAffiliation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentEducationOrganizationAssociationTribalAffiliation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentEducationOrganizationAssociationTribalAffiliation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentEducationOrganizationAssociationTribalAffiliation(
        tribalAffiliationDescriptor: mapValueOfType<String>(json, r'tribalAffiliationDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiStudentEducationOrganizationAssociationTribalAffiliation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentEducationOrganizationAssociationTribalAffiliation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentEducationOrganizationAssociationTribalAffiliation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentEducationOrganizationAssociationTribalAffiliation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentEducationOrganizationAssociationTribalAffiliation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentEducationOrganizationAssociationTribalAffiliation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentEducationOrganizationAssociationTribalAffiliation-objects as value to a dart map
  static Map<String, List<EdFiStudentEducationOrganizationAssociationTribalAffiliation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentEducationOrganizationAssociationTribalAffiliation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentEducationOrganizationAssociationTribalAffiliation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tribalAffiliationDescriptor',
  };
}

