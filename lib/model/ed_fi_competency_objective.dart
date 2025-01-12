//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCompetencyObjective {
  /// Returns a new [EdFiCompetencyObjective] instance.
  EdFiCompetencyObjective({
    this.id,
    required this.objective,
    required this.objectiveGradeLevelDescriptor,
    required this.educationOrganizationReference,
    this.competencyObjectiveId,
    this.description,
    this.successCriteria,
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

  /// The designated title of the competency objective.
  String objective;

  /// The grade level for which the competency objective is targeted.
  String objectiveGradeLevelDescriptor;

  EdFiEducationOrganizationReference educationOrganizationReference;

  /// The Identifier for the competency objective.
  String? competencyObjectiveId;

  /// The description of the student competency objective.
  String? description;

  /// One or more statements that describes the criteria used by teachers and students to check for attainment of a competency objective. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the competency objective.
  String? successCriteria;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiCompetencyObjective &&
    other.id == id &&
    other.objective == objective &&
    other.objectiveGradeLevelDescriptor == objectiveGradeLevelDescriptor &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.competencyObjectiveId == competencyObjectiveId &&
    other.description == description &&
    other.successCriteria == successCriteria &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (objective.hashCode) +
    (objectiveGradeLevelDescriptor.hashCode) +
    (educationOrganizationReference.hashCode) +
    (competencyObjectiveId == null ? 0 : competencyObjectiveId!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (successCriteria == null ? 0 : successCriteria!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiCompetencyObjective[id=$id, objective=$objective, objectiveGradeLevelDescriptor=$objectiveGradeLevelDescriptor, educationOrganizationReference=$educationOrganizationReference, competencyObjectiveId=$competencyObjectiveId, description=$description, successCriteria=$successCriteria, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'objective'] = this.objective;
      json[r'objectiveGradeLevelDescriptor'] = this.objectiveGradeLevelDescriptor;
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
    if (this.competencyObjectiveId != null) {
      json[r'competencyObjectiveId'] = this.competencyObjectiveId;
    } else {
      json[r'competencyObjectiveId'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.successCriteria != null) {
      json[r'successCriteria'] = this.successCriteria;
    } else {
      json[r'successCriteria'] = null;
    }
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

  /// Returns a new [EdFiCompetencyObjective] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCompetencyObjective? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCompetencyObjective[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCompetencyObjective[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCompetencyObjective(
        id: mapValueOfType<String>(json, r'id'),
        objective: mapValueOfType<String>(json, r'objective')!,
        objectiveGradeLevelDescriptor: mapValueOfType<String>(json, r'objectiveGradeLevelDescriptor')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        competencyObjectiveId: mapValueOfType<String>(json, r'competencyObjectiveId'),
        description: mapValueOfType<String>(json, r'description'),
        successCriteria: mapValueOfType<String>(json, r'successCriteria'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiCompetencyObjective> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCompetencyObjective>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCompetencyObjective.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCompetencyObjective> mapFromJson(dynamic json) {
    final map = <String, EdFiCompetencyObjective>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCompetencyObjective.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCompetencyObjective-objects as value to a dart map
  static Map<String, List<EdFiCompetencyObjective>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCompetencyObjective>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCompetencyObjective.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'objective',
    'objectiveGradeLevelDescriptor',
    'educationOrganizationReference',
  };
}

