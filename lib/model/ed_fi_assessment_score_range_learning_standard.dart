//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiAssessmentScoreRangeLearningStandard {
  /// Returns a new [EdFiAssessmentScoreRangeLearningStandard] instance.
  EdFiAssessmentScoreRangeLearningStandard({
    this.id,
    this.learningStandards = const [],
    required this.scoreRangeId,
    required this.assessmentReference,
    this.objectiveAssessmentReference,
    this.assessmentReportingMethodDescriptor,
    required this.maximumScore,
    required this.minimumScore,
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

  /// An unordered collection of assessmentScoreRangeLearningStandardLearningStandards. Learning standard associated with the score range.
  List<EdFiAssessmentScoreRangeLearningStandardLearningStandard> learningStandards;

  /// A unique number or alphanumeric code assigned to the score range associated with one or more learning standards.
  String scoreRangeId;

  EdFiAssessmentReference assessmentReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiObjectiveAssessmentReference? objectiveAssessmentReference;

  /// The assessment reporting method defined (e.g., scale score, RIT scale score) associated with the referenced learning standard(s).
  String? assessmentReportingMethodDescriptor;

  /// The maximum score in the score range.
  String maximumScore;

  /// The minimum score in the score range.
  String minimumScore;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiAssessmentScoreRangeLearningStandard &&
    other.id == id &&
    _deepEquality.equals(other.learningStandards, learningStandards) &&
    other.scoreRangeId == scoreRangeId &&
    other.assessmentReference == assessmentReference &&
    other.objectiveAssessmentReference == objectiveAssessmentReference &&
    other.assessmentReportingMethodDescriptor == assessmentReportingMethodDescriptor &&
    other.maximumScore == maximumScore &&
    other.minimumScore == minimumScore &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (learningStandards.hashCode) +
    (scoreRangeId.hashCode) +
    (assessmentReference.hashCode) +
    (objectiveAssessmentReference == null ? 0 : objectiveAssessmentReference!.hashCode) +
    (assessmentReportingMethodDescriptor == null ? 0 : assessmentReportingMethodDescriptor!.hashCode) +
    (maximumScore.hashCode) +
    (minimumScore.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiAssessmentScoreRangeLearningStandard[id=$id, learningStandards=$learningStandards, scoreRangeId=$scoreRangeId, assessmentReference=$assessmentReference, objectiveAssessmentReference=$objectiveAssessmentReference, assessmentReportingMethodDescriptor=$assessmentReportingMethodDescriptor, maximumScore=$maximumScore, minimumScore=$minimumScore, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'learningStandards'] = this.learningStandards;
      json[r'scoreRangeId'] = this.scoreRangeId;
      json[r'assessmentReference'] = this.assessmentReference;
    if (this.objectiveAssessmentReference != null) {
      json[r'objectiveAssessmentReference'] = this.objectiveAssessmentReference;
    } else {
      json[r'objectiveAssessmentReference'] = null;
    }
    if (this.assessmentReportingMethodDescriptor != null) {
      json[r'assessmentReportingMethodDescriptor'] = this.assessmentReportingMethodDescriptor;
    } else {
      json[r'assessmentReportingMethodDescriptor'] = null;
    }
      json[r'maximumScore'] = this.maximumScore;
      json[r'minimumScore'] = this.minimumScore;
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

  /// Returns a new [EdFiAssessmentScoreRangeLearningStandard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiAssessmentScoreRangeLearningStandard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiAssessmentScoreRangeLearningStandard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiAssessmentScoreRangeLearningStandard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiAssessmentScoreRangeLearningStandard(
        id: mapValueOfType<String>(json, r'id'),
        learningStandards: EdFiAssessmentScoreRangeLearningStandardLearningStandard.listFromJson(json[r'learningStandards']),
        scoreRangeId: mapValueOfType<String>(json, r'scoreRangeId')!,
        assessmentReference: EdFiAssessmentReference.fromJson(json[r'assessmentReference'])!,
        objectiveAssessmentReference: EdFiObjectiveAssessmentReference.fromJson(json[r'objectiveAssessmentReference']),
        assessmentReportingMethodDescriptor: mapValueOfType<String>(json, r'assessmentReportingMethodDescriptor'),
        maximumScore: mapValueOfType<String>(json, r'maximumScore')!,
        minimumScore: mapValueOfType<String>(json, r'minimumScore')!,
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiAssessmentScoreRangeLearningStandard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiAssessmentScoreRangeLearningStandard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiAssessmentScoreRangeLearningStandard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiAssessmentScoreRangeLearningStandard> mapFromJson(dynamic json) {
    final map = <String, EdFiAssessmentScoreRangeLearningStandard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiAssessmentScoreRangeLearningStandard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiAssessmentScoreRangeLearningStandard-objects as value to a dart map
  static Map<String, List<EdFiAssessmentScoreRangeLearningStandard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiAssessmentScoreRangeLearningStandard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiAssessmentScoreRangeLearningStandard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'learningStandards',
    'scoreRangeId',
    'assessmentReference',
    'maximumScore',
    'minimumScore',
  };
}

