//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentCompetencyObjectiveReference {
  /// Returns a new [EdFiStudentCompetencyObjectiveReference] instance.
  EdFiStudentCompetencyObjectiveReference({
    required this.gradingPeriodDescriptor,
    required this.gradingPeriodName,
    required this.gradingPeriodSchoolId,
    required this.gradingPeriodSchoolYear,
    required this.objective,
    required this.objectiveEducationOrganizationId,
    required this.objectiveGradeLevelDescriptor,
    required this.studentUniqueId,
    this.link,
  });

  /// The state's name of the period for which grades are reported.
  String gradingPeriodDescriptor;

  /// The school's descriptive name of the grading period.
  String gradingPeriodName;

  /// The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  int gradingPeriodSchoolId;

  /// The identifier for the grading period school year.
  int gradingPeriodSchoolYear;

  /// The designated title of the competency objective.
  String objective;

  /// The identifier assigned to an education organization.
  int objectiveEducationOrganizationId;

  /// The grade level for which the competency objective is targeted.
  String objectiveGradeLevelDescriptor;

  /// A unique alphanumeric code assigned to a student.
  String studentUniqueId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentCompetencyObjectiveReference &&
    other.gradingPeriodDescriptor == gradingPeriodDescriptor &&
    other.gradingPeriodName == gradingPeriodName &&
    other.gradingPeriodSchoolId == gradingPeriodSchoolId &&
    other.gradingPeriodSchoolYear == gradingPeriodSchoolYear &&
    other.objective == objective &&
    other.objectiveEducationOrganizationId == objectiveEducationOrganizationId &&
    other.objectiveGradeLevelDescriptor == objectiveGradeLevelDescriptor &&
    other.studentUniqueId == studentUniqueId &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gradingPeriodDescriptor.hashCode) +
    (gradingPeriodName.hashCode) +
    (gradingPeriodSchoolId.hashCode) +
    (gradingPeriodSchoolYear.hashCode) +
    (objective.hashCode) +
    (objectiveEducationOrganizationId.hashCode) +
    (objectiveGradeLevelDescriptor.hashCode) +
    (studentUniqueId.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiStudentCompetencyObjectiveReference[gradingPeriodDescriptor=$gradingPeriodDescriptor, gradingPeriodName=$gradingPeriodName, gradingPeriodSchoolId=$gradingPeriodSchoolId, gradingPeriodSchoolYear=$gradingPeriodSchoolYear, objective=$objective, objectiveEducationOrganizationId=$objectiveEducationOrganizationId, objectiveGradeLevelDescriptor=$objectiveGradeLevelDescriptor, studentUniqueId=$studentUniqueId, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'gradingPeriodDescriptor'] = this.gradingPeriodDescriptor;
      json[r'gradingPeriodName'] = this.gradingPeriodName;
      json[r'gradingPeriodSchoolId'] = this.gradingPeriodSchoolId;
      json[r'gradingPeriodSchoolYear'] = this.gradingPeriodSchoolYear;
      json[r'objective'] = this.objective;
      json[r'objectiveEducationOrganizationId'] = this.objectiveEducationOrganizationId;
      json[r'objectiveGradeLevelDescriptor'] = this.objectiveGradeLevelDescriptor;
      json[r'studentUniqueId'] = this.studentUniqueId;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiStudentCompetencyObjectiveReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentCompetencyObjectiveReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentCompetencyObjectiveReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentCompetencyObjectiveReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentCompetencyObjectiveReference(
        gradingPeriodDescriptor: mapValueOfType<String>(json, r'gradingPeriodDescriptor')!,
        gradingPeriodName: mapValueOfType<String>(json, r'gradingPeriodName')!,
        gradingPeriodSchoolId: mapValueOfType<int>(json, r'gradingPeriodSchoolId')!,
        gradingPeriodSchoolYear: mapValueOfType<int>(json, r'gradingPeriodSchoolYear')!,
        objective: mapValueOfType<String>(json, r'objective')!,
        objectiveEducationOrganizationId: mapValueOfType<int>(json, r'objectiveEducationOrganizationId')!,
        objectiveGradeLevelDescriptor: mapValueOfType<String>(json, r'objectiveGradeLevelDescriptor')!,
        studentUniqueId: mapValueOfType<String>(json, r'studentUniqueId')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiStudentCompetencyObjectiveReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentCompetencyObjectiveReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentCompetencyObjectiveReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentCompetencyObjectiveReference> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentCompetencyObjectiveReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentCompetencyObjectiveReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentCompetencyObjectiveReference-objects as value to a dart map
  static Map<String, List<EdFiStudentCompetencyObjectiveReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentCompetencyObjectiveReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentCompetencyObjectiveReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'gradingPeriodDescriptor',
    'gradingPeriodName',
    'gradingPeriodSchoolId',
    'gradingPeriodSchoolYear',
    'objective',
    'objectiveEducationOrganizationId',
    'objectiveGradeLevelDescriptor',
    'studentUniqueId',
  };
}

