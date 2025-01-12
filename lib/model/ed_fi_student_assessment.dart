//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAssessment {
  /// Returns a new [EdFiStudentAssessment] instance.
  EdFiStudentAssessment({
    this.id,
    required this.studentAssessmentIdentifier,
    required this.assessmentReference,
    this.reportedSchoolReference,
    this.schoolYearTypeReference,
    required this.studentReference,
    this.accommodations = const [],
    this.administrationDate,
    this.administrationEndDate,
    this.administrationEnvironmentDescriptor,
    this.administrationLanguageDescriptor,
    this.assessedMinutes,
    this.eventCircumstanceDescriptor,
    this.eventDescription,
    this.items = const [],
    this.performanceLevels = const [],
    this.period,
    this.platformTypeDescriptor,
    this.reasonNotTestedDescriptor,
    this.reportedSchoolIdentifier,
    this.retestIndicatorDescriptor,
    this.scoreResults = const [],
    this.serialNumber,
    this.studentObjectiveAssessments = const [],
    this.whenAssessedGradeLevelDescriptor,
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

  /// A unique number or alphanumeric code assigned to an assessment administered to a student.
  String studentAssessmentIdentifier;

  EdFiAssessmentReference assessmentReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiSchoolReference? reportedSchoolReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiSchoolYearTypeReference? schoolYearTypeReference;

  EdFiStudentReference studentReference;

  /// An unordered collection of studentAssessmentAccommodations. The specific type of special variation used in how an examination is presented, how it is administered, or how the test taker is allowed to respond. This generally refers to changes that do not substantially alter what the examination measures. The proper use of accommodations does not substantially change academic level or performance criteria.
  List<EdFiStudentAssessmentAccommodation> accommodations;

  /// The date and time an assessment was completed by the student. The use of ISO-8601 formats with a timezone designator (UTC or time offset) is recommended in order to prevent ambiguity due to time zones.
  DateTime? administrationDate;

  /// The date and time an assessment administration ended.
  DateTime? administrationEndDate;

  /// The environment in which the test was administered.
  String? administrationEnvironmentDescriptor;

  /// The language in which an assessment is written and/or administered.
  String? administrationLanguageDescriptor;

  /// Reported time student was assessed in minutes.
  int? assessedMinutes;

  /// An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc.
  String? eventCircumstanceDescriptor;

  /// Describes special events that occur before during or after the assessment session that may impact use of results.
  String? eventDescription;

  /// An unordered collection of studentAssessmentItems. The student's response to an assessment item and the item-level scores such as correct, incorrect, or met standard.
  List<EdFiStudentAssessmentItem> items;

  /// An unordered collection of studentAssessmentPerformanceLevels. The performance level(s) achieved for the student assessment.
  List<EdFiStudentAssessmentPerformanceLevel> performanceLevels;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiStudentAssessmentPeriod? period;

  /// The platform with which the assessment was delivered to the student during the assessment session.
  String? platformTypeDescriptor;

  /// The primary reason student is not tested.
  String? reasonNotTestedDescriptor;

  /// A reported school identifier for the school the enrollment at the time of the assessment used when the assigned SchoolId is not known by the assessment vendor.
  String? reportedSchoolIdentifier;

  /// Indicator if the test was a retake.
  String? retestIndicatorDescriptor;

  /// An unordered collection of studentAssessmentScoreResults. A meaningful score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc.
  List<EdFiStudentAssessmentScoreResult> scoreResults;

  /// The unique number for the assessment form or answer document.
  String? serialNumber;

  /// An unordered collection of studentAssessmentStudentObjectiveAssessments. The student's score and/or performance levels earned for an objective assessment.
  List<EdFiStudentAssessmentStudentObjectiveAssessment> studentObjectiveAssessments;

  /// The grade level of a student when assessed.
  String? whenAssessedGradeLevelDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAssessment &&
    other.id == id &&
    other.studentAssessmentIdentifier == studentAssessmentIdentifier &&
    other.assessmentReference == assessmentReference &&
    other.reportedSchoolReference == reportedSchoolReference &&
    other.schoolYearTypeReference == schoolYearTypeReference &&
    other.studentReference == studentReference &&
    _deepEquality.equals(other.accommodations, accommodations) &&
    other.administrationDate == administrationDate &&
    other.administrationEndDate == administrationEndDate &&
    other.administrationEnvironmentDescriptor == administrationEnvironmentDescriptor &&
    other.administrationLanguageDescriptor == administrationLanguageDescriptor &&
    other.assessedMinutes == assessedMinutes &&
    other.eventCircumstanceDescriptor == eventCircumstanceDescriptor &&
    other.eventDescription == eventDescription &&
    _deepEquality.equals(other.items, items) &&
    _deepEquality.equals(other.performanceLevels, performanceLevels) &&
    other.period == period &&
    other.platformTypeDescriptor == platformTypeDescriptor &&
    other.reasonNotTestedDescriptor == reasonNotTestedDescriptor &&
    other.reportedSchoolIdentifier == reportedSchoolIdentifier &&
    other.retestIndicatorDescriptor == retestIndicatorDescriptor &&
    _deepEquality.equals(other.scoreResults, scoreResults) &&
    other.serialNumber == serialNumber &&
    _deepEquality.equals(other.studentObjectiveAssessments, studentObjectiveAssessments) &&
    other.whenAssessedGradeLevelDescriptor == whenAssessedGradeLevelDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (studentAssessmentIdentifier.hashCode) +
    (assessmentReference.hashCode) +
    (reportedSchoolReference == null ? 0 : reportedSchoolReference!.hashCode) +
    (schoolYearTypeReference == null ? 0 : schoolYearTypeReference!.hashCode) +
    (studentReference.hashCode) +
    (accommodations.hashCode) +
    (administrationDate == null ? 0 : administrationDate!.hashCode) +
    (administrationEndDate == null ? 0 : administrationEndDate!.hashCode) +
    (administrationEnvironmentDescriptor == null ? 0 : administrationEnvironmentDescriptor!.hashCode) +
    (administrationLanguageDescriptor == null ? 0 : administrationLanguageDescriptor!.hashCode) +
    (assessedMinutes == null ? 0 : assessedMinutes!.hashCode) +
    (eventCircumstanceDescriptor == null ? 0 : eventCircumstanceDescriptor!.hashCode) +
    (eventDescription == null ? 0 : eventDescription!.hashCode) +
    (items.hashCode) +
    (performanceLevels.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (platformTypeDescriptor == null ? 0 : platformTypeDescriptor!.hashCode) +
    (reasonNotTestedDescriptor == null ? 0 : reasonNotTestedDescriptor!.hashCode) +
    (reportedSchoolIdentifier == null ? 0 : reportedSchoolIdentifier!.hashCode) +
    (retestIndicatorDescriptor == null ? 0 : retestIndicatorDescriptor!.hashCode) +
    (scoreResults.hashCode) +
    (serialNumber == null ? 0 : serialNumber!.hashCode) +
    (studentObjectiveAssessments.hashCode) +
    (whenAssessedGradeLevelDescriptor == null ? 0 : whenAssessedGradeLevelDescriptor!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentAssessment[id=$id, studentAssessmentIdentifier=$studentAssessmentIdentifier, assessmentReference=$assessmentReference, reportedSchoolReference=$reportedSchoolReference, schoolYearTypeReference=$schoolYearTypeReference, studentReference=$studentReference, accommodations=$accommodations, administrationDate=$administrationDate, administrationEndDate=$administrationEndDate, administrationEnvironmentDescriptor=$administrationEnvironmentDescriptor, administrationLanguageDescriptor=$administrationLanguageDescriptor, assessedMinutes=$assessedMinutes, eventCircumstanceDescriptor=$eventCircumstanceDescriptor, eventDescription=$eventDescription, items=$items, performanceLevels=$performanceLevels, period=$period, platformTypeDescriptor=$platformTypeDescriptor, reasonNotTestedDescriptor=$reasonNotTestedDescriptor, reportedSchoolIdentifier=$reportedSchoolIdentifier, retestIndicatorDescriptor=$retestIndicatorDescriptor, scoreResults=$scoreResults, serialNumber=$serialNumber, studentObjectiveAssessments=$studentObjectiveAssessments, whenAssessedGradeLevelDescriptor=$whenAssessedGradeLevelDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'studentAssessmentIdentifier'] = this.studentAssessmentIdentifier;
      json[r'assessmentReference'] = this.assessmentReference;
    if (this.reportedSchoolReference != null) {
      json[r'reportedSchoolReference'] = this.reportedSchoolReference;
    } else {
      json[r'reportedSchoolReference'] = null;
    }
    if (this.schoolYearTypeReference != null) {
      json[r'schoolYearTypeReference'] = this.schoolYearTypeReference;
    } else {
      json[r'schoolYearTypeReference'] = null;
    }
      json[r'studentReference'] = this.studentReference;
      json[r'accommodations'] = this.accommodations;
    if (this.administrationDate != null) {
      json[r'administrationDate'] = this.administrationDate!.toUtc().toIso8601String();
    } else {
      json[r'administrationDate'] = null;
    }
    if (this.administrationEndDate != null) {
      json[r'administrationEndDate'] = this.administrationEndDate!.toUtc().toIso8601String();
    } else {
      json[r'administrationEndDate'] = null;
    }
    if (this.administrationEnvironmentDescriptor != null) {
      json[r'administrationEnvironmentDescriptor'] = this.administrationEnvironmentDescriptor;
    } else {
      json[r'administrationEnvironmentDescriptor'] = null;
    }
    if (this.administrationLanguageDescriptor != null) {
      json[r'administrationLanguageDescriptor'] = this.administrationLanguageDescriptor;
    } else {
      json[r'administrationLanguageDescriptor'] = null;
    }
    if (this.assessedMinutes != null) {
      json[r'assessedMinutes'] = this.assessedMinutes;
    } else {
      json[r'assessedMinutes'] = null;
    }
    if (this.eventCircumstanceDescriptor != null) {
      json[r'eventCircumstanceDescriptor'] = this.eventCircumstanceDescriptor;
    } else {
      json[r'eventCircumstanceDescriptor'] = null;
    }
    if (this.eventDescription != null) {
      json[r'eventDescription'] = this.eventDescription;
    } else {
      json[r'eventDescription'] = null;
    }
      json[r'items'] = this.items;
      json[r'performanceLevels'] = this.performanceLevels;
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.platformTypeDescriptor != null) {
      json[r'platformTypeDescriptor'] = this.platformTypeDescriptor;
    } else {
      json[r'platformTypeDescriptor'] = null;
    }
    if (this.reasonNotTestedDescriptor != null) {
      json[r'reasonNotTestedDescriptor'] = this.reasonNotTestedDescriptor;
    } else {
      json[r'reasonNotTestedDescriptor'] = null;
    }
    if (this.reportedSchoolIdentifier != null) {
      json[r'reportedSchoolIdentifier'] = this.reportedSchoolIdentifier;
    } else {
      json[r'reportedSchoolIdentifier'] = null;
    }
    if (this.retestIndicatorDescriptor != null) {
      json[r'retestIndicatorDescriptor'] = this.retestIndicatorDescriptor;
    } else {
      json[r'retestIndicatorDescriptor'] = null;
    }
      json[r'scoreResults'] = this.scoreResults;
    if (this.serialNumber != null) {
      json[r'serialNumber'] = this.serialNumber;
    } else {
      json[r'serialNumber'] = null;
    }
      json[r'studentObjectiveAssessments'] = this.studentObjectiveAssessments;
    if (this.whenAssessedGradeLevelDescriptor != null) {
      json[r'whenAssessedGradeLevelDescriptor'] = this.whenAssessedGradeLevelDescriptor;
    } else {
      json[r'whenAssessedGradeLevelDescriptor'] = null;
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

  /// Returns a new [EdFiStudentAssessment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAssessment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAssessment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAssessment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAssessment(
        id: mapValueOfType<String>(json, r'id'),
        studentAssessmentIdentifier: mapValueOfType<String>(json, r'studentAssessmentIdentifier')!,
        assessmentReference: EdFiAssessmentReference.fromJson(json[r'assessmentReference'])!,
        reportedSchoolReference: EdFiSchoolReference.fromJson(json[r'reportedSchoolReference']),
        schoolYearTypeReference: EdFiSchoolYearTypeReference.fromJson(json[r'schoolYearTypeReference']),
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        accommodations: EdFiStudentAssessmentAccommodation.listFromJson(json[r'accommodations']),
        administrationDate: mapDateTime(json, r'administrationDate', r''),
        administrationEndDate: mapDateTime(json, r'administrationEndDate', r''),
        administrationEnvironmentDescriptor: mapValueOfType<String>(json, r'administrationEnvironmentDescriptor'),
        administrationLanguageDescriptor: mapValueOfType<String>(json, r'administrationLanguageDescriptor'),
        assessedMinutes: mapValueOfType<int>(json, r'assessedMinutes'),
        eventCircumstanceDescriptor: mapValueOfType<String>(json, r'eventCircumstanceDescriptor'),
        eventDescription: mapValueOfType<String>(json, r'eventDescription'),
        items: EdFiStudentAssessmentItem.listFromJson(json[r'items']),
        performanceLevels: EdFiStudentAssessmentPerformanceLevel.listFromJson(json[r'performanceLevels']),
        period: EdFiStudentAssessmentPeriod.fromJson(json[r'period']),
        platformTypeDescriptor: mapValueOfType<String>(json, r'platformTypeDescriptor'),
        reasonNotTestedDescriptor: mapValueOfType<String>(json, r'reasonNotTestedDescriptor'),
        reportedSchoolIdentifier: mapValueOfType<String>(json, r'reportedSchoolIdentifier'),
        retestIndicatorDescriptor: mapValueOfType<String>(json, r'retestIndicatorDescriptor'),
        scoreResults: EdFiStudentAssessmentScoreResult.listFromJson(json[r'scoreResults']),
        serialNumber: mapValueOfType<String>(json, r'serialNumber'),
        studentObjectiveAssessments: EdFiStudentAssessmentStudentObjectiveAssessment.listFromJson(json[r'studentObjectiveAssessments']),
        whenAssessedGradeLevelDescriptor: mapValueOfType<String>(json, r'whenAssessedGradeLevelDescriptor'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentAssessment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAssessment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAssessment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAssessment> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAssessment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAssessment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAssessment-objects as value to a dart map
  static Map<String, List<EdFiStudentAssessment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAssessment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAssessment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'studentAssessmentIdentifier',
    'assessmentReference',
    'studentReference',
  };
}

