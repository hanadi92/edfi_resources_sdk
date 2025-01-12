//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentCohortAssociationSection {
  /// Returns a new [EdFiStudentCohortAssociationSection] instance.
  EdFiStudentCohortAssociationSection({
    required this.sectionReference,
  });

  EdFiSectionReference sectionReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentCohortAssociationSection &&
    other.sectionReference == sectionReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sectionReference.hashCode);

  @override
  String toString() => 'EdFiStudentCohortAssociationSection[sectionReference=$sectionReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sectionReference'] = this.sectionReference;
    return json;
  }

  /// Returns a new [EdFiStudentCohortAssociationSection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentCohortAssociationSection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentCohortAssociationSection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentCohortAssociationSection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentCohortAssociationSection(
        sectionReference: EdFiSectionReference.fromJson(json[r'sectionReference'])!,
      );
    }
    return null;
  }

  static List<EdFiStudentCohortAssociationSection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentCohortAssociationSection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentCohortAssociationSection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentCohortAssociationSection> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentCohortAssociationSection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentCohortAssociationSection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentCohortAssociationSection-objects as value to a dart map
  static Map<String, List<EdFiStudentCohortAssociationSection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentCohortAssociationSection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentCohortAssociationSection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sectionReference',
  };
}

