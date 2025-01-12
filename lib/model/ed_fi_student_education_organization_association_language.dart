//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentEducationOrganizationAssociationLanguage {
  /// Returns a new [EdFiStudentEducationOrganizationAssociationLanguage] instance.
  EdFiStudentEducationOrganizationAssociationLanguage({
    required this.languageDescriptor,
    this.uses = const [],
  });

  /// A specification of which written or spoken communication is being used.
  String languageDescriptor;

  /// An unordered collection of studentEducationOrganizationAssociationLanguageUses. A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).
  List<EdFiStudentEducationOrganizationAssociationLanguageUse> uses;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentEducationOrganizationAssociationLanguage &&
    other.languageDescriptor == languageDescriptor &&
    _deepEquality.equals(other.uses, uses);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (languageDescriptor.hashCode) +
    (uses.hashCode);

  @override
  String toString() => 'EdFiStudentEducationOrganizationAssociationLanguage[languageDescriptor=$languageDescriptor, uses=$uses]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'languageDescriptor'] = this.languageDescriptor;
      json[r'uses'] = this.uses;
    return json;
  }

  /// Returns a new [EdFiStudentEducationOrganizationAssociationLanguage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentEducationOrganizationAssociationLanguage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentEducationOrganizationAssociationLanguage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentEducationOrganizationAssociationLanguage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentEducationOrganizationAssociationLanguage(
        languageDescriptor: mapValueOfType<String>(json, r'languageDescriptor')!,
        uses: EdFiStudentEducationOrganizationAssociationLanguageUse.listFromJson(json[r'uses']),
      );
    }
    return null;
  }

  static List<EdFiStudentEducationOrganizationAssociationLanguage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentEducationOrganizationAssociationLanguage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentEducationOrganizationAssociationLanguage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentEducationOrganizationAssociationLanguage> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentEducationOrganizationAssociationLanguage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentEducationOrganizationAssociationLanguage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentEducationOrganizationAssociationLanguage-objects as value to a dart map
  static Map<String, List<EdFiStudentEducationOrganizationAssociationLanguage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentEducationOrganizationAssociationLanguage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentEducationOrganizationAssociationLanguage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'languageDescriptor',
  };
}

