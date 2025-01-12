//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin {
  /// Returns a new [EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin] instance.
  EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin({
    required this.ancestryEthnicOriginDescriptor,
  });

  /// The original peoples or cultures with which the individual identifies.
  String ancestryEthnicOriginDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin &&
    other.ancestryEthnicOriginDescriptor == ancestryEthnicOriginDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ancestryEthnicOriginDescriptor.hashCode);

  @override
  String toString() => 'EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin[ancestryEthnicOriginDescriptor=$ancestryEthnicOriginDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ancestryEthnicOriginDescriptor'] = this.ancestryEthnicOriginDescriptor;
    return json;
  }

  /// Returns a new [EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin(
        ancestryEthnicOriginDescriptor: mapValueOfType<String>(json, r'ancestryEthnicOriginDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin-objects as value to a dart map
  static Map<String, List<EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ancestryEthnicOriginDescriptor',
  };
}

