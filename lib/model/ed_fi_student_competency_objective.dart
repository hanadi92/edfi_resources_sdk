//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentCompetencyObjective {
  /// Returns a new [EdFiStudentCompetencyObjective] instance.
  EdFiStudentCompetencyObjective({
    this.id,
    required this.gradingPeriodReference,
    required this.objectiveCompetencyObjectiveReference,
    required this.studentReference,
    required this.competencyLevelDescriptor,
    this.diagnosticStatement,
    this.generalStudentProgramAssociations = const [],
    this.studentSectionAssociations = const [],
    this.etag,
    this.lastModifiedDate,
  });

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  EdFiGradingPeriodReference gradingPeriodReference;

  EdFiCompetencyObjectiveReference objectiveCompetencyObjectiveReference;

  EdFiStudentReference studentReference;

  /// The competency level assessed for the student for the referenced competency objective.
  String competencyLevelDescriptor;

  /// A statement provided by the teacher that provides information in addition to the grade or assessment score.
  String? diagnosticStatement;

  /// An unordered collection of studentCompetencyObjectiveGeneralStudentProgramAssociations. Relates the student and program associated with the competency objective.
  List<EdFiStudentCompetencyObjectiveGeneralStudentProgramAssociation> generalStudentProgramAssociations;

  /// An unordered collection of studentCompetencyObjectiveStudentSectionAssociations. Relates the student and section associated with the competency objective.
  List<EdFiStudentCompetencyObjectiveStudentSectionAssociation> studentSectionAssociations;

  /// A unique system-generated value that identifies the version of the resource.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? etag;

  /// The date and time the resource was last modified.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastModifiedDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentCompetencyObjective &&
    other.id == id &&
    other.gradingPeriodReference == gradingPeriodReference &&
    other.objectiveCompetencyObjectiveReference == objectiveCompetencyObjectiveReference &&
    other.studentReference == studentReference &&
    other.competencyLevelDescriptor == competencyLevelDescriptor &&
    other.diagnosticStatement == diagnosticStatement &&
    _deepEquality.equals(other.generalStudentProgramAssociations, generalStudentProgramAssociations) &&
    _deepEquality.equals(other.studentSectionAssociations, studentSectionAssociations) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (gradingPeriodReference.hashCode) +
    (objectiveCompetencyObjectiveReference.hashCode) +
    (studentReference.hashCode) +
    (competencyLevelDescriptor.hashCode) +
    (diagnosticStatement == null ? 0 : diagnosticStatement!.hashCode) +
    (generalStudentProgramAssociations.hashCode) +
    (studentSectionAssociations.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentCompetencyObjective[id=$id, gradingPeriodReference=$gradingPeriodReference, objectiveCompetencyObjectiveReference=$objectiveCompetencyObjectiveReference, studentReference=$studentReference, competencyLevelDescriptor=$competencyLevelDescriptor, diagnosticStatement=$diagnosticStatement, generalStudentProgramAssociations=$generalStudentProgramAssociations, studentSectionAssociations=$studentSectionAssociations, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'gradingPeriodReference'] = this.gradingPeriodReference;
      json[r'objectiveCompetencyObjectiveReference'] = this.objectiveCompetencyObjectiveReference;
      json[r'studentReference'] = this.studentReference;
      json[r'competencyLevelDescriptor'] = this.competencyLevelDescriptor;
    if (this.diagnosticStatement != null) {
      json[r'diagnosticStatement'] = this.diagnosticStatement;
    } else {
      json[r'diagnosticStatement'] = null;
    }
      json[r'generalStudentProgramAssociations'] = this.generalStudentProgramAssociations;
      json[r'studentSectionAssociations'] = this.studentSectionAssociations;
    if (this.etag != null) {
      json[r'_etag'] = this.etag;
    } else {
      json[r'_etag'] = null;
    }
    if (this.lastModifiedDate != null) {
      json[r'_lastModifiedDate'] = this.lastModifiedDate!.toUtc().toIso8601String();
    } else {
      json[r'_lastModifiedDate'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiStudentCompetencyObjective] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentCompetencyObjective? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentCompetencyObjective[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentCompetencyObjective[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentCompetencyObjective(
        id: mapValueOfType<String>(json, r'id'),
        gradingPeriodReference: EdFiGradingPeriodReference.fromJson(json[r'gradingPeriodReference'])!,
        objectiveCompetencyObjectiveReference: EdFiCompetencyObjectiveReference.fromJson(json[r'objectiveCompetencyObjectiveReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        competencyLevelDescriptor: mapValueOfType<String>(json, r'competencyLevelDescriptor')!,
        diagnosticStatement: mapValueOfType<String>(json, r'diagnosticStatement'),
        generalStudentProgramAssociations: EdFiStudentCompetencyObjectiveGeneralStudentProgramAssociation.listFromJson(json[r'generalStudentProgramAssociations']),
        studentSectionAssociations: EdFiStudentCompetencyObjectiveStudentSectionAssociation.listFromJson(json[r'studentSectionAssociations']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentCompetencyObjective> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentCompetencyObjective>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentCompetencyObjective.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentCompetencyObjective> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentCompetencyObjective>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentCompetencyObjective.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentCompetencyObjective-objects as value to a dart map
  static Map<String, List<EdFiStudentCompetencyObjective>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentCompetencyObjective>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentCompetencyObjective.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'gradingPeriodReference',
    'objectiveCompetencyObjectiveReference',
    'studentReference',
    'competencyLevelDescriptor',
  };
}

