//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiAssessment {
  /// Returns a new [EdFiAssessment] instance.
  EdFiAssessment({
    this.id,
    this.academicSubjects = const [],
    required this.assessmentIdentifier,
    required this.namespace,
    this.educationOrganizationReference,
    this.adaptiveAssessment,
    this.assessedGradeLevels = const [],
    this.assessmentCategoryDescriptor,
    this.assessmentFamily,
    this.assessmentForm,
    required this.assessmentTitle,
    this.assessmentVersion,
    this.contentStandard,
    this.identificationCodes = const [],
    this.languages = const [],
    this.maxRawScore,
    this.nomenclature,
    this.performanceLevels = const [],
    this.periods = const [],
    this.platformTypes = const [],
    this.programs = const [],
    this.revisionDate,
    this.scores = const [],
    this.sections = const [],
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

  /// An unordered collection of assessmentAcademicSubjects. The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.
  List<EdFiAssessmentAcademicSubject> academicSubjects;

  /// A unique number or alphanumeric code assigned to an assessment.
  String assessmentIdentifier;

  /// Namespace for the assessment.
  String namespace;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiEducationOrganizationReference? educationOrganizationReference;

  /// Indicates that the assessment is adaptive.
  bool? adaptiveAssessment;

  /// An unordered collection of assessmentAssessedGradeLevels. The grade level(s) for which an assessment is designed. The semantics of null is assumed to mean that the assessment is not associated with any grade level.
  List<EdFiAssessmentAssessedGradeLevel> assessedGradeLevels;

  /// The category of an assessment based on format and content.
  String? assessmentCategoryDescriptor;

  /// The assessment family this assessment is a member of.
  String? assessmentFamily;

  /// Identifies the form of the assessment, for example a regular versus makeup form, multiple choice versus constructed response, etc.
  String? assessmentForm;

  /// The title or name of the assessment.
  String assessmentTitle;

  /// The version identifier for the assessment.
  int? assessmentVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiAssessmentContentStandard? contentStandard;

  /// An unordered collection of assessmentIdentificationCodes. A unique number or alphanumeric code assigned to an assessment by a school, school system, a state, or other agency or entity.
  List<EdFiAssessmentIdentificationCode> identificationCodes;

  /// An unordered collection of assessmentLanguages. An indication of the languages in which the assessment is designed.
  List<EdFiAssessmentLanguage> languages;

  /// The maximum raw score achievable across all assessment items that are correct and scored at the maximum.
  ///
  /// Minimum value: -9999999999.99999
  /// Maximum value: 9999999999.99999
  double? maxRawScore;

  /// Reflects the specific nomenclature used for assessment.
  String? nomenclature;

  /// An unordered collection of assessmentPerformanceLevels. Definition of the performance levels and the associated cut scores. Three styles are supported: 1. Specification of performance level by minimum and maximum score, 2. Specification of performance level by cut score, using only minimum score, 3. Specification of performance level without any mapping to scores.
  List<EdFiAssessmentPerformanceLevel> performanceLevels;

  /// An unordered collection of assessmentPeriods. The period or window in which an assessment is supposed to be administered.
  List<EdFiAssessmentPeriod> periods;

  /// An unordered collection of assessmentPlatformTypes. The platforms with which the assessment may be delivered.
  List<EdFiAssessmentPlatformType> platformTypes;

  /// An unordered collection of assessmentPrograms. The programs associated with the assessment.
  List<EdFiAssessmentProgram> programs;

  /// The month, day, and year that the conceptual design for the assessment was most recently revised substantially.
  DateTime? revisionDate;

  /// An unordered collection of assessmentScores. Definition of the scores to be expected from this assessment.
  List<EdFiAssessmentScore> scores;

  /// An unordered collection of assessmentSections. The Section(s) to which the assessment is associated.
  List<EdFiAssessmentSection> sections;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiAssessment &&
    other.id == id &&
    _deepEquality.equals(other.academicSubjects, academicSubjects) &&
    other.assessmentIdentifier == assessmentIdentifier &&
    other.namespace == namespace &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.adaptiveAssessment == adaptiveAssessment &&
    _deepEquality.equals(other.assessedGradeLevels, assessedGradeLevels) &&
    other.assessmentCategoryDescriptor == assessmentCategoryDescriptor &&
    other.assessmentFamily == assessmentFamily &&
    other.assessmentForm == assessmentForm &&
    other.assessmentTitle == assessmentTitle &&
    other.assessmentVersion == assessmentVersion &&
    other.contentStandard == contentStandard &&
    _deepEquality.equals(other.identificationCodes, identificationCodes) &&
    _deepEquality.equals(other.languages, languages) &&
    other.maxRawScore == maxRawScore &&
    other.nomenclature == nomenclature &&
    _deepEquality.equals(other.performanceLevels, performanceLevels) &&
    _deepEquality.equals(other.periods, periods) &&
    _deepEquality.equals(other.platformTypes, platformTypes) &&
    _deepEquality.equals(other.programs, programs) &&
    other.revisionDate == revisionDate &&
    _deepEquality.equals(other.scores, scores) &&
    _deepEquality.equals(other.sections, sections) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (academicSubjects.hashCode) +
    (assessmentIdentifier.hashCode) +
    (namespace.hashCode) +
    (educationOrganizationReference == null ? 0 : educationOrganizationReference!.hashCode) +
    (adaptiveAssessment == null ? 0 : adaptiveAssessment!.hashCode) +
    (assessedGradeLevels.hashCode) +
    (assessmentCategoryDescriptor == null ? 0 : assessmentCategoryDescriptor!.hashCode) +
    (assessmentFamily == null ? 0 : assessmentFamily!.hashCode) +
    (assessmentForm == null ? 0 : assessmentForm!.hashCode) +
    (assessmentTitle.hashCode) +
    (assessmentVersion == null ? 0 : assessmentVersion!.hashCode) +
    (contentStandard == null ? 0 : contentStandard!.hashCode) +
    (identificationCodes.hashCode) +
    (languages.hashCode) +
    (maxRawScore == null ? 0 : maxRawScore!.hashCode) +
    (nomenclature == null ? 0 : nomenclature!.hashCode) +
    (performanceLevels.hashCode) +
    (periods.hashCode) +
    (platformTypes.hashCode) +
    (programs.hashCode) +
    (revisionDate == null ? 0 : revisionDate!.hashCode) +
    (scores.hashCode) +
    (sections.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiAssessment[id=$id, academicSubjects=$academicSubjects, assessmentIdentifier=$assessmentIdentifier, namespace=$namespace, educationOrganizationReference=$educationOrganizationReference, adaptiveAssessment=$adaptiveAssessment, assessedGradeLevels=$assessedGradeLevels, assessmentCategoryDescriptor=$assessmentCategoryDescriptor, assessmentFamily=$assessmentFamily, assessmentForm=$assessmentForm, assessmentTitle=$assessmentTitle, assessmentVersion=$assessmentVersion, contentStandard=$contentStandard, identificationCodes=$identificationCodes, languages=$languages, maxRawScore=$maxRawScore, nomenclature=$nomenclature, performanceLevels=$performanceLevels, periods=$periods, platformTypes=$platformTypes, programs=$programs, revisionDate=$revisionDate, scores=$scores, sections=$sections, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'academicSubjects'] = this.academicSubjects;
      json[r'assessmentIdentifier'] = this.assessmentIdentifier;
      json[r'namespace'] = this.namespace;
    if (this.educationOrganizationReference != null) {
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
    } else {
      json[r'educationOrganizationReference'] = null;
    }
    if (this.adaptiveAssessment != null) {
      json[r'adaptiveAssessment'] = this.adaptiveAssessment;
    } else {
      json[r'adaptiveAssessment'] = null;
    }
      json[r'assessedGradeLevels'] = this.assessedGradeLevels;
    if (this.assessmentCategoryDescriptor != null) {
      json[r'assessmentCategoryDescriptor'] = this.assessmentCategoryDescriptor;
    } else {
      json[r'assessmentCategoryDescriptor'] = null;
    }
    if (this.assessmentFamily != null) {
      json[r'assessmentFamily'] = this.assessmentFamily;
    } else {
      json[r'assessmentFamily'] = null;
    }
    if (this.assessmentForm != null) {
      json[r'assessmentForm'] = this.assessmentForm;
    } else {
      json[r'assessmentForm'] = null;
    }
      json[r'assessmentTitle'] = this.assessmentTitle;
    if (this.assessmentVersion != null) {
      json[r'assessmentVersion'] = this.assessmentVersion;
    } else {
      json[r'assessmentVersion'] = null;
    }
    if (this.contentStandard != null) {
      json[r'contentStandard'] = this.contentStandard;
    } else {
      json[r'contentStandard'] = null;
    }
      json[r'identificationCodes'] = this.identificationCodes;
      json[r'languages'] = this.languages;
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
      json[r'performanceLevels'] = this.performanceLevels;
      json[r'periods'] = this.periods;
      json[r'platformTypes'] = this.platformTypes;
      json[r'programs'] = this.programs;
    if (this.revisionDate != null) {
      json[r'revisionDate'] = _dateFormatter.format(this.revisionDate!.toUtc());
    } else {
      json[r'revisionDate'] = null;
    }
      json[r'scores'] = this.scores;
      json[r'sections'] = this.sections;
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

  /// Returns a new [EdFiAssessment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiAssessment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiAssessment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiAssessment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiAssessment(
        id: mapValueOfType<String>(json, r'id'),
        academicSubjects: EdFiAssessmentAcademicSubject.listFromJson(json[r'academicSubjects']),
        assessmentIdentifier: mapValueOfType<String>(json, r'assessmentIdentifier')!,
        namespace: mapValueOfType<String>(json, r'namespace')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference']),
        adaptiveAssessment: mapValueOfType<bool>(json, r'adaptiveAssessment'),
        assessedGradeLevels: EdFiAssessmentAssessedGradeLevel.listFromJson(json[r'assessedGradeLevels']),
        assessmentCategoryDescriptor: mapValueOfType<String>(json, r'assessmentCategoryDescriptor'),
        assessmentFamily: mapValueOfType<String>(json, r'assessmentFamily'),
        assessmentForm: mapValueOfType<String>(json, r'assessmentForm'),
        assessmentTitle: mapValueOfType<String>(json, r'assessmentTitle')!,
        assessmentVersion: mapValueOfType<int>(json, r'assessmentVersion'),
        contentStandard: EdFiAssessmentContentStandard.fromJson(json[r'contentStandard']),
        identificationCodes: EdFiAssessmentIdentificationCode.listFromJson(json[r'identificationCodes']),
        languages: EdFiAssessmentLanguage.listFromJson(json[r'languages']),
        maxRawScore: mapValueOfType<double>(json, r'maxRawScore'),
        nomenclature: mapValueOfType<String>(json, r'nomenclature'),
        performanceLevels: EdFiAssessmentPerformanceLevel.listFromJson(json[r'performanceLevels']),
        periods: EdFiAssessmentPeriod.listFromJson(json[r'periods']),
        platformTypes: EdFiAssessmentPlatformType.listFromJson(json[r'platformTypes']),
        programs: EdFiAssessmentProgram.listFromJson(json[r'programs']),
        revisionDate: mapDateTime(json, r'revisionDate', r''),
        scores: EdFiAssessmentScore.listFromJson(json[r'scores']),
        sections: EdFiAssessmentSection.listFromJson(json[r'sections']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiAssessment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiAssessment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiAssessment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiAssessment> mapFromJson(dynamic json) {
    final map = <String, EdFiAssessment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiAssessment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiAssessment-objects as value to a dart map
  static Map<String, List<EdFiAssessment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiAssessment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiAssessment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'academicSubjects',
    'assessmentIdentifier',
    'namespace',
    'assessmentTitle',
  };
}

