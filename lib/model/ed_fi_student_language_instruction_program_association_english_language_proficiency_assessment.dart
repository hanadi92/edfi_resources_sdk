//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment {
  /// Returns a new [EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment] instance.
  EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment({
    this.monitoredDescriptor,
    this.participationDescriptor,
    this.proficiencyDescriptor,
    this.progressDescriptor,
    required this.schoolYearTypeReference,
  });

  /// Student is monitored on content achievement who are no longer receiving services.
  String? monitoredDescriptor;

  /// Field indicating the participation in the yearly English language assessment.
  String? participationDescriptor;

  /// The proficiency level for the yearly English language assessment.
  String? proficiencyDescriptor;

  /// The yearly progress or growth from last year's assessment.
  String? progressDescriptor;

  EdFiSchoolYearTypeReference schoolYearTypeReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment &&
    other.monitoredDescriptor == monitoredDescriptor &&
    other.participationDescriptor == participationDescriptor &&
    other.proficiencyDescriptor == proficiencyDescriptor &&
    other.progressDescriptor == progressDescriptor &&
    other.schoolYearTypeReference == schoolYearTypeReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (monitoredDescriptor == null ? 0 : monitoredDescriptor!.hashCode) +
    (participationDescriptor == null ? 0 : participationDescriptor!.hashCode) +
    (proficiencyDescriptor == null ? 0 : proficiencyDescriptor!.hashCode) +
    (progressDescriptor == null ? 0 : progressDescriptor!.hashCode) +
    (schoolYearTypeReference.hashCode);

  @override
  String toString() => 'EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment[monitoredDescriptor=$monitoredDescriptor, participationDescriptor=$participationDescriptor, proficiencyDescriptor=$proficiencyDescriptor, progressDescriptor=$progressDescriptor, schoolYearTypeReference=$schoolYearTypeReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.monitoredDescriptor != null) {
      json[r'monitoredDescriptor'] = this.monitoredDescriptor;
    } else {
      json[r'monitoredDescriptor'] = null;
    }
    if (this.participationDescriptor != null) {
      json[r'participationDescriptor'] = this.participationDescriptor;
    } else {
      json[r'participationDescriptor'] = null;
    }
    if (this.proficiencyDescriptor != null) {
      json[r'proficiencyDescriptor'] = this.proficiencyDescriptor;
    } else {
      json[r'proficiencyDescriptor'] = null;
    }
    if (this.progressDescriptor != null) {
      json[r'progressDescriptor'] = this.progressDescriptor;
    } else {
      json[r'progressDescriptor'] = null;
    }
      json[r'schoolYearTypeReference'] = this.schoolYearTypeReference;
    return json;
  }

  /// Returns a new [EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment(
        monitoredDescriptor: mapValueOfType<String>(json, r'monitoredDescriptor'),
        participationDescriptor: mapValueOfType<String>(json, r'participationDescriptor'),
        proficiencyDescriptor: mapValueOfType<String>(json, r'proficiencyDescriptor'),
        progressDescriptor: mapValueOfType<String>(json, r'progressDescriptor'),
        schoolYearTypeReference: EdFiSchoolYearTypeReference.fromJson(json[r'schoolYearTypeReference'])!,
      );
    }
    return null;
  }

  static List<EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment-objects as value to a dart map
  static Map<String, List<EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'schoolYearTypeReference',
  };
}

