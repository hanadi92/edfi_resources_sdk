//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentEducationOrganizationAssociationCohortYear {
  /// Returns a new [EdFiStudentEducationOrganizationAssociationCohortYear] instance.
  EdFiStudentEducationOrganizationAssociationCohortYear({
    required this.cohortYearTypeDescriptor,
    this.termDescriptor,
    required this.schoolYearTypeReference,
  });

  /// The type of cohort year (9th grade, graduation).
  String cohortYearTypeDescriptor;

  /// The term associated with the cohort year; for example, the intended term of graduation.
  String? termDescriptor;

  EdFiSchoolYearTypeReference schoolYearTypeReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentEducationOrganizationAssociationCohortYear &&
    other.cohortYearTypeDescriptor == cohortYearTypeDescriptor &&
    other.termDescriptor == termDescriptor &&
    other.schoolYearTypeReference == schoolYearTypeReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cohortYearTypeDescriptor.hashCode) +
    (termDescriptor == null ? 0 : termDescriptor!.hashCode) +
    (schoolYearTypeReference.hashCode);

  @override
  String toString() => 'EdFiStudentEducationOrganizationAssociationCohortYear[cohortYearTypeDescriptor=$cohortYearTypeDescriptor, termDescriptor=$termDescriptor, schoolYearTypeReference=$schoolYearTypeReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'cohortYearTypeDescriptor'] = this.cohortYearTypeDescriptor;
    if (this.termDescriptor != null) {
      json[r'termDescriptor'] = this.termDescriptor;
    } else {
      json[r'termDescriptor'] = null;
    }
      json[r'schoolYearTypeReference'] = this.schoolYearTypeReference;
    return json;
  }

  /// Returns a new [EdFiStudentEducationOrganizationAssociationCohortYear] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentEducationOrganizationAssociationCohortYear? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentEducationOrganizationAssociationCohortYear[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentEducationOrganizationAssociationCohortYear[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentEducationOrganizationAssociationCohortYear(
        cohortYearTypeDescriptor: mapValueOfType<String>(json, r'cohortYearTypeDescriptor')!,
        termDescriptor: mapValueOfType<String>(json, r'termDescriptor'),
        schoolYearTypeReference: EdFiSchoolYearTypeReference.fromJson(json[r'schoolYearTypeReference'])!,
      );
    }
    return null;
  }

  static List<EdFiStudentEducationOrganizationAssociationCohortYear> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentEducationOrganizationAssociationCohortYear>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentEducationOrganizationAssociationCohortYear.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentEducationOrganizationAssociationCohortYear> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentEducationOrganizationAssociationCohortYear>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentEducationOrganizationAssociationCohortYear.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentEducationOrganizationAssociationCohortYear-objects as value to a dart map
  static Map<String, List<EdFiStudentEducationOrganizationAssociationCohortYear>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentEducationOrganizationAssociationCohortYear>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentEducationOrganizationAssociationCohortYear.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'cohortYearTypeDescriptor',
    'schoolYearTypeReference',
  };
}

