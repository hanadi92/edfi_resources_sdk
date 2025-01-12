//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentOtherName {
  /// Returns a new [EdFiStudentOtherName] instance.
  EdFiStudentOtherName({
    required this.otherNameTypeDescriptor,
    required this.firstName,
    this.generationCodeSuffix,
    required this.lastSurname,
    this.middleName,
    this.personalTitlePrefix,
  });

  /// The types of alternate names for an individual.
  String otherNameTypeDescriptor;

  /// A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  String firstName;

  /// An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  String? generationCodeSuffix;

  /// The name borne in common by members of a family.
  String lastSurname;

  /// A secondary name given to an individual at birth, baptism, or during another naming ceremony.
  String? middleName;

  /// A prefix used to denote the title, degree, position, or seniority of the individual.
  String? personalTitlePrefix;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentOtherName &&
    other.otherNameTypeDescriptor == otherNameTypeDescriptor &&
    other.firstName == firstName &&
    other.generationCodeSuffix == generationCodeSuffix &&
    other.lastSurname == lastSurname &&
    other.middleName == middleName &&
    other.personalTitlePrefix == personalTitlePrefix;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (otherNameTypeDescriptor.hashCode) +
    (firstName.hashCode) +
    (generationCodeSuffix == null ? 0 : generationCodeSuffix!.hashCode) +
    (lastSurname.hashCode) +
    (middleName == null ? 0 : middleName!.hashCode) +
    (personalTitlePrefix == null ? 0 : personalTitlePrefix!.hashCode);

  @override
  String toString() => 'EdFiStudentOtherName[otherNameTypeDescriptor=$otherNameTypeDescriptor, firstName=$firstName, generationCodeSuffix=$generationCodeSuffix, lastSurname=$lastSurname, middleName=$middleName, personalTitlePrefix=$personalTitlePrefix]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'otherNameTypeDescriptor'] = this.otherNameTypeDescriptor;
      json[r'firstName'] = this.firstName;
    if (this.generationCodeSuffix != null) {
      json[r'generationCodeSuffix'] = this.generationCodeSuffix;
    } else {
      json[r'generationCodeSuffix'] = null;
    }
      json[r'lastSurname'] = this.lastSurname;
    if (this.middleName != null) {
      json[r'middleName'] = this.middleName;
    } else {
      json[r'middleName'] = null;
    }
    if (this.personalTitlePrefix != null) {
      json[r'personalTitlePrefix'] = this.personalTitlePrefix;
    } else {
      json[r'personalTitlePrefix'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiStudentOtherName] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentOtherName? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentOtherName[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentOtherName[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentOtherName(
        otherNameTypeDescriptor: mapValueOfType<String>(json, r'otherNameTypeDescriptor')!,
        firstName: mapValueOfType<String>(json, r'firstName')!,
        generationCodeSuffix: mapValueOfType<String>(json, r'generationCodeSuffix'),
        lastSurname: mapValueOfType<String>(json, r'lastSurname')!,
        middleName: mapValueOfType<String>(json, r'middleName'),
        personalTitlePrefix: mapValueOfType<String>(json, r'personalTitlePrefix'),
      );
    }
    return null;
  }

  static List<EdFiStudentOtherName> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentOtherName>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentOtherName.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentOtherName> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentOtherName>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentOtherName.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentOtherName-objects as value to a dart map
  static Map<String, List<EdFiStudentOtherName>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentOtherName>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentOtherName.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'otherNameTypeDescriptor',
    'firstName',
    'lastSurname',
  };
}

