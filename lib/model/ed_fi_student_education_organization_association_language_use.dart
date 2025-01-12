//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentEducationOrganizationAssociationLanguageUse {
  /// Returns a new [EdFiStudentEducationOrganizationAssociationLanguageUse] instance.
  EdFiStudentEducationOrganizationAssociationLanguageUse({
    required this.languageUseDescriptor,
  });

  /// A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).
  String languageUseDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentEducationOrganizationAssociationLanguageUse &&
    other.languageUseDescriptor == languageUseDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (languageUseDescriptor.hashCode);

  @override
  String toString() => 'EdFiStudentEducationOrganizationAssociationLanguageUse[languageUseDescriptor=$languageUseDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'languageUseDescriptor'] = this.languageUseDescriptor;
    return json;
  }

  /// Returns a new [EdFiStudentEducationOrganizationAssociationLanguageUse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentEducationOrganizationAssociationLanguageUse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentEducationOrganizationAssociationLanguageUse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentEducationOrganizationAssociationLanguageUse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentEducationOrganizationAssociationLanguageUse(
        languageUseDescriptor: mapValueOfType<String>(json, r'languageUseDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiStudentEducationOrganizationAssociationLanguageUse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentEducationOrganizationAssociationLanguageUse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentEducationOrganizationAssociationLanguageUse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentEducationOrganizationAssociationLanguageUse> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentEducationOrganizationAssociationLanguageUse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentEducationOrganizationAssociationLanguageUse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentEducationOrganizationAssociationLanguageUse-objects as value to a dart map
  static Map<String, List<EdFiStudentEducationOrganizationAssociationLanguageUse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentEducationOrganizationAssociationLanguageUse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentEducationOrganizationAssociationLanguageUse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'languageUseDescriptor',
  };
}

