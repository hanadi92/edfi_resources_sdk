//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiObjectiveAssessment {
  /// Returns a new [EdFiObjectiveAssessment] instance.
  EdFiObjectiveAssessment({
    this.id,
    required this.identificationCode,
    required this.assessmentReference,
    this.parentObjectiveAssessmentReference,
    this.academicSubjectDescriptor,
    this.assessmentItems = const [],
    this.description,
    this.learningStandards = const [],
    this.maxRawScore,
    this.nomenclature,
    this.percentOfAssessment,
    this.performanceLevels = const [],
    this.scores = const [],
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

  /// A unique number or alphanumeric code assigned to an objective assessment by a school, school system, a state, or other agency or entity.
  String identificationCode;

  EdFiAssessmentReference assessmentReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiObjectiveAssessmentReference? parentObjectiveAssessmentReference;

  /// The subject area of the objective assessment.
  String? academicSubjectDescriptor;

  /// An unordered collection of objectiveAssessmentAssessmentItems. References individual test items, if appropriate.
  List<EdFiObjectiveAssessmentAssessmentItem> assessmentItems;

  /// The description of the objective assessment (e.g., vocabulary, measurement, or geometry).
  String? description;

  /// An unordered collection of objectiveAssessmentLearningStandards. Learning standard tested by this objective assessment.
  List<EdFiObjectiveAssessmentLearningStandard> learningStandards;

  /// The maximum raw score achievable across all assessment items that are correct and scored at the maximum.
  ///
  /// Minimum value: -9999999999.99999
  /// Maximum value: 9999999999.99999
  double? maxRawScore;

  /// Reflects the specific nomenclature used for this level of objective assessment.
  String? nomenclature;

  /// The percentage of the assessment that tests this objective.
  ///
  /// Minimum value: -9.9999
  /// Maximum value: 9.9999
  double? percentOfAssessment;

  /// An unordered collection of objectiveAssessmentPerformanceLevels. Definition of the performance levels and the associated cut scores. Three styles are supported: 1. Specification of performance level by minimum and maximum score, 2. Specification of performance level by cut score, using only minimum score, 3. Specification of performance level without any mapping to scores
  List<EdFiObjectiveAssessmentPerformanceLevel> performanceLevels;

  /// An unordered collection of objectiveAssessmentScores. Definition of the scores to be expected from this objective assessment.
  List<EdFiObjectiveAssessmentScore> scores;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiObjectiveAssessment &&
    other.id == id &&
    other.identificationCode == identificationCode &&
    other.assessmentReference == assessmentReference &&
    other.parentObjectiveAssessmentReference == parentObjectiveAssessmentReference &&
    other.academicSubjectDescriptor == academicSubjectDescriptor &&
    _deepEquality.equals(other.assessmentItems, assessmentItems) &&
    other.description == description &&
    _deepEquality.equals(other.learningStandards, learningStandards) &&
    other.maxRawScore == maxRawScore &&
    other.nomenclature == nomenclature &&
    other.percentOfAssessment == percentOfAssessment &&
    _deepEquality.equals(other.performanceLevels, performanceLevels) &&
    _deepEquality.equals(other.scores, scores) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (identificationCode.hashCode) +
    (assessmentReference.hashCode) +
    (parentObjectiveAssessmentReference == null ? 0 : parentObjectiveAssessmentReference!.hashCode) +
    (academicSubjectDescriptor == null ? 0 : academicSubjectDescriptor!.hashCode) +
    (assessmentItems.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (learningStandards.hashCode) +
    (maxRawScore == null ? 0 : maxRawScore!.hashCode) +
    (nomenclature == null ? 0 : nomenclature!.hashCode) +
    (percentOfAssessment == null ? 0 : percentOfAssessment!.hashCode) +
    (performanceLevels.hashCode) +
    (scores.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiObjectiveAssessment[id=$id, identificationCode=$identificationCode, assessmentReference=$assessmentReference, parentObjectiveAssessmentReference=$parentObjectiveAssessmentReference, academicSubjectDescriptor=$academicSubjectDescriptor, assessmentItems=$assessmentItems, description=$description, learningStandards=$learningStandards, maxRawScore=$maxRawScore, nomenclature=$nomenclature, percentOfAssessment=$percentOfAssessment, performanceLevels=$performanceLevels, scores=$scores, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'identificationCode'] = this.identificationCode;
      json[r'assessmentReference'] = this.assessmentReference;
    if (this.parentObjectiveAssessmentReference != null) {
      json[r'parentObjectiveAssessmentReference'] = this.parentObjectiveAssessmentReference;
    } else {
      json[r'parentObjectiveAssessmentReference'] = null;
    }
    if (this.academicSubjectDescriptor != null) {
      json[r'academicSubjectDescriptor'] = this.academicSubjectDescriptor;
    } else {
      json[r'academicSubjectDescriptor'] = null;
    }
      json[r'assessmentItems'] = this.assessmentItems;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'learningStandards'] = this.learningStandards;
    if (this.maxRawScore != null) {
      json[r'maxRawScore'] = this.maxRawScore;
    } else {
      json[r'maxRawScore'] = null;
    }
    if (this.nomenclature != null) {
      json[r'nomenclature'] = this.nomenclature;
    } else {
      json[r'nomenclature'] = null;
    }
    if (this.percentOfAssessment != null) {
      json[r'percentOfAssessment'] = this.percentOfAssessment;
    } else {
      json[r'percentOfAssessment'] = null;
    }
      json[r'performanceLevels'] = this.performanceLevels;
      json[r'scores'] = this.scores;
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

  /// Returns a new [EdFiObjectiveAssessment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiObjectiveAssessment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiObjectiveAssessment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiObjectiveAssessment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiObjectiveAssessment(
        id: mapValueOfType<String>(json, r'id'),
        identificationCode: mapValueOfType<String>(json, r'identificationCode')!,
        assessmentReference: EdFiAssessmentReference.fromJson(json[r'assessmentReference'])!,
        parentObjectiveAssessmentReference: EdFiObjectiveAssessmentReference.fromJson(json[r'parentObjectiveAssessmentReference']),
        academicSubjectDescriptor: mapValueOfType<String>(json, r'academicSubjectDescriptor'),
        assessmentItems: EdFiObjectiveAssessmentAssessmentItem.listFromJson(json[r'assessmentItems']),
        description: mapValueOfType<String>(json, r'description'),
        learningStandards: EdFiObjectiveAssessmentLearningStandard.listFromJson(json[r'learningStandards']),
        maxRawScore: mapValueOfType<double>(json, r'maxRawScore'),
        nomenclature: mapValueOfType<String>(json, r'nomenclature'),
        percentOfAssessment: mapValueOfType<double>(json, r'percentOfAssessment'),
        performanceLevels: EdFiObjectiveAssessmentPerformanceLevel.listFromJson(json[r'performanceLevels']),
        scores: EdFiObjectiveAssessmentScore.listFromJson(json[r'scores']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiObjectiveAssessment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiObjectiveAssessment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiObjectiveAssessment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiObjectiveAssessment> mapFromJson(dynamic json) {
    final map = <String, EdFiObjectiveAssessment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiObjectiveAssessment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiObjectiveAssessment-objects as value to a dart map
  static Map<String, List<EdFiObjectiveAssessment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiObjectiveAssessment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiObjectiveAssessment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'identificationCode',
    'assessmentReference',
  };
}

