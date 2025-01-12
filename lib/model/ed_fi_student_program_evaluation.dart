//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentProgramEvaluation {
  /// Returns a new [EdFiStudentProgramEvaluation] instance.
  EdFiStudentProgramEvaluation({
    this.id,
    required this.evaluationDate,
    this.educationOrganizationReference,
    required this.programEvaluationReference,
    this.staffEvaluatorStaffReference,
    required this.studentReference,
    this.evaluationDuration,
    this.externalEvaluators = const [],
    this.studentEvaluationElements = const [],
    this.studentEvaluationObjectives = const [],
    this.summaryEvaluationComment,
    this.summaryEvaluationNumericRating,
    this.summaryEvaluationRatingLevelDescriptor,
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

  /// The month, day, and year on which the evaluation was conducted.
  DateTime evaluationDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiEducationOrganizationReference? educationOrganizationReference;

  EdFiProgramEvaluationReference programEvaluationReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiStaffReference? staffEvaluatorStaffReference;

  EdFiStudentReference studentReference;

  /// The actual number of minutes to conduct the evaluation.
  ///
  /// Minimum value: 1
  int? evaluationDuration;

  /// An unordered collection of studentProgramEvaluationExternalEvaluators. The external person(s) - not staff - that conducted the evaluation.
  List<EdFiStudentProgramEvaluationExternalEvaluator> externalEvaluators;

  /// An unordered collection of studentProgramEvaluationStudentEvaluationElements. The student's rating and/or rating levels earned for a program evaluation element.
  List<EdFiStudentProgramEvaluationStudentEvaluationElement> studentEvaluationElements;

  /// An unordered collection of studentProgramEvaluationStudentEvaluationObjectives. The student's rating and/or rating levels earned for a program evaluation objective.
  List<EdFiStudentProgramEvaluationStudentEvaluationObjective> studentEvaluationObjectives;

  /// Any comments about the summary evaluation to be captured.
  String? summaryEvaluationComment;

  /// The numerical summary rating or score for the evaluation.
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? summaryEvaluationNumericRating;

  /// The summary rating level achieved based upon the rating or score.
  String? summaryEvaluationRatingLevelDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentProgramEvaluation &&
    other.id == id &&
    other.evaluationDate == evaluationDate &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.programEvaluationReference == programEvaluationReference &&
    other.staffEvaluatorStaffReference == staffEvaluatorStaffReference &&
    other.studentReference == studentReference &&
    other.evaluationDuration == evaluationDuration &&
    _deepEquality.equals(other.externalEvaluators, externalEvaluators) &&
    _deepEquality.equals(other.studentEvaluationElements, studentEvaluationElements) &&
    _deepEquality.equals(other.studentEvaluationObjectives, studentEvaluationObjectives) &&
    other.summaryEvaluationComment == summaryEvaluationComment &&
    other.summaryEvaluationNumericRating == summaryEvaluationNumericRating &&
    other.summaryEvaluationRatingLevelDescriptor == summaryEvaluationRatingLevelDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (evaluationDate.hashCode) +
    (educationOrganizationReference == null ? 0 : educationOrganizationReference!.hashCode) +
    (programEvaluationReference.hashCode) +
    (staffEvaluatorStaffReference == null ? 0 : staffEvaluatorStaffReference!.hashCode) +
    (studentReference.hashCode) +
    (evaluationDuration == null ? 0 : evaluationDuration!.hashCode) +
    (externalEvaluators.hashCode) +
    (studentEvaluationElements.hashCode) +
    (studentEvaluationObjectives.hashCode) +
    (summaryEvaluationComment == null ? 0 : summaryEvaluationComment!.hashCode) +
    (summaryEvaluationNumericRating == null ? 0 : summaryEvaluationNumericRating!.hashCode) +
    (summaryEvaluationRatingLevelDescriptor == null ? 0 : summaryEvaluationRatingLevelDescriptor!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentProgramEvaluation[id=$id, evaluationDate=$evaluationDate, educationOrganizationReference=$educationOrganizationReference, programEvaluationReference=$programEvaluationReference, staffEvaluatorStaffReference=$staffEvaluatorStaffReference, studentReference=$studentReference, evaluationDuration=$evaluationDuration, externalEvaluators=$externalEvaluators, studentEvaluationElements=$studentEvaluationElements, studentEvaluationObjectives=$studentEvaluationObjectives, summaryEvaluationComment=$summaryEvaluationComment, summaryEvaluationNumericRating=$summaryEvaluationNumericRating, summaryEvaluationRatingLevelDescriptor=$summaryEvaluationRatingLevelDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'evaluationDate'] = _dateFormatter.format(this.evaluationDate.toUtc());
    if (this.educationOrganizationReference != null) {
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
    } else {
      json[r'educationOrganizationReference'] = null;
    }
      json[r'programEvaluationReference'] = this.programEvaluationReference;
    if (this.staffEvaluatorStaffReference != null) {
      json[r'staffEvaluatorStaffReference'] = this.staffEvaluatorStaffReference;
    } else {
      json[r'staffEvaluatorStaffReference'] = null;
    }
      json[r'studentReference'] = this.studentReference;
    if (this.evaluationDuration != null) {
      json[r'evaluationDuration'] = this.evaluationDuration;
    } else {
      json[r'evaluationDuration'] = null;
    }
      json[r'externalEvaluators'] = this.externalEvaluators;
      json[r'studentEvaluationElements'] = this.studentEvaluationElements;
      json[r'studentEvaluationObjectives'] = this.studentEvaluationObjectives;
    if (this.summaryEvaluationComment != null) {
      json[r'summaryEvaluationComment'] = this.summaryEvaluationComment;
    } else {
      json[r'summaryEvaluationComment'] = null;
    }
    if (this.summaryEvaluationNumericRating != null) {
      json[r'summaryEvaluationNumericRating'] = this.summaryEvaluationNumericRating;
    } else {
      json[r'summaryEvaluationNumericRating'] = null;
    }
    if (this.summaryEvaluationRatingLevelDescriptor != null) {
      json[r'summaryEvaluationRatingLevelDescriptor'] = this.summaryEvaluationRatingLevelDescriptor;
    } else {
      json[r'summaryEvaluationRatingLevelDescriptor'] = null;
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

  /// Returns a new [EdFiStudentProgramEvaluation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentProgramEvaluation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentProgramEvaluation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentProgramEvaluation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentProgramEvaluation(
        id: mapValueOfType<String>(json, r'id'),
        evaluationDate: mapDateTime(json, r'evaluationDate', r'')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference']),
        programEvaluationReference: EdFiProgramEvaluationReference.fromJson(json[r'programEvaluationReference'])!,
        staffEvaluatorStaffReference: EdFiStaffReference.fromJson(json[r'staffEvaluatorStaffReference']),
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        evaluationDuration: mapValueOfType<int>(json, r'evaluationDuration'),
        externalEvaluators: EdFiStudentProgramEvaluationExternalEvaluator.listFromJson(json[r'externalEvaluators']),
        studentEvaluationElements: EdFiStudentProgramEvaluationStudentEvaluationElement.listFromJson(json[r'studentEvaluationElements']),
        studentEvaluationObjectives: EdFiStudentProgramEvaluationStudentEvaluationObjective.listFromJson(json[r'studentEvaluationObjectives']),
        summaryEvaluationComment: mapValueOfType<String>(json, r'summaryEvaluationComment'),
        summaryEvaluationNumericRating: mapValueOfType<double>(json, r'summaryEvaluationNumericRating'),
        summaryEvaluationRatingLevelDescriptor: mapValueOfType<String>(json, r'summaryEvaluationRatingLevelDescriptor'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentProgramEvaluation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentProgramEvaluation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentProgramEvaluation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentProgramEvaluation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentProgramEvaluation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentProgramEvaluation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentProgramEvaluation-objects as value to a dart map
  static Map<String, List<EdFiStudentProgramEvaluation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentProgramEvaluation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentProgramEvaluation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'evaluationDate',
    'programEvaluationReference',
    'studentReference',
  };
}

