//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentSpecialEducationProgramEligibilityAssociation {
  /// Returns a new [EdFiStudentSpecialEducationProgramEligibilityAssociation] instance.
  EdFiStudentSpecialEducationProgramEligibilityAssociation({
    this.id,
    required this.consentToEvaluationReceivedDate,
    required this.educationOrganizationReference,
    required this.programReference,
    required this.studentReference,
    this.consentToEvaluationDate,
    this.eligibilityConferenceDate,
    this.eligibilityDelayReasonDescriptor,
    this.eligibilityDeterminationDate,
    this.eligibilityEvaluationDate,
    this.eligibilityEvaluationTypeDescriptor,
    this.evaluationCompleteIndicator,
    this.evaluationDelayDays,
    this.evaluationDelayReasonDescriptor,
    this.evaluationLateReason,
    this.ideaIndicator,
    required this.ideaPartDescriptor,
    this.originalECIServicesDate,
    this.transitionConferenceDate,
    this.transitionNotificationDate,
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

  /// Indicates the date on which the local education agency received written consent for the evaluation from the student's parent or guardian. This is the first day of the evaluation timeframe.
  DateTime consentToEvaluationReceivedDate;

  EdFiEducationOrganizationReference educationOrganizationReference;

  EdFiProgramReference programReference;

  EdFiStudentReference studentReference;

  /// The date on which the student's parent gave a consent (Parent Consent Date).
  DateTime? consentToEvaluationDate;

  /// The month, day, and year when the eligibility conference is held between the parent(s)/guardian(s) and the educational organization responsible staff member(s) to review and make decision on special education related services eligibility.
  DateTime? eligibilityConferenceDate;

  /// The reason why the eligibility determination was completed beyond the required timeframe.
  String? eligibilityDelayReasonDescriptor;

  /// Indicates the month, day, and year the local education agency (LEA) held the admission, review, and dismissal committee meeting regarding the child's eligibility determination for special education and related services. An individualized education plan (IEP) would be developed and implemented for a child admitted into special education on this same date.
  DateTime? eligibilityDeterminationDate;

  /// Indicates the month, day, and year when the written individual evaluation report was completed.
  DateTime? eligibilityEvaluationDate;

  /// Indicates if this is an initial evaluation or a reevaluation.
  String? eligibilityEvaluationTypeDescriptor;

  /// Indicates the evaluation completed status.
  bool? evaluationCompleteIndicator;

  /// Indicates the number of student absences, if any, beginning the first instructional day following the date on which the local education agency (LEA) received written parental or guardian consent for the evaluation.
  int? evaluationDelayDays;

  /// Refers to the justification as to why the evaluation report was completed beyond the state-established timeframe. This descriptor field will have allowed reasons as descriptor values.
  String? evaluationDelayReasonDescriptor;

  /// Refers to additional information for delay in doing the evaluation.
  String? evaluationLateReason;

  /// Indicates whether or not the student was determined eligible as a result of an evaluation.
  bool? ideaIndicator;

  /// Indicates if the evaluation is done under Part B IDEA or Part C IDEA.
  String ideaPartDescriptor;

  /// The month, date, and year when an infant or toddler, from birth through age 2, began participating in the early childhood intervention (ECI) program.
  DateTime? originalECIServicesDate;

  /// Indicates the month, day, and year when the transition conference was held (for a child receiving early childhood intervention (ECI) services) among the lead agency, the family, and the local education agency (LEA) where the child resides to discuss the child's potential eligibility for early childhood special education (ECSE) services.
  DateTime? transitionConferenceDate;

  /// Indicates the month, day, and year the LEA Notification of Potentially Eligible for Special Education Services was sent by the early childhood intervention (ECI) contractor to the local education agency (LEA) to notify them that a child enrolled in ECI will shortly reach the age of eligibility for Part B services and the child is potentially eligible for services under Part B, early childhood special education (ECSE). The LEA Notification constitutes a referral to the LEA for an initial evaluation and eligibility determination of the child which the parent or guardian may opt out from the referral.
  DateTime? transitionNotificationDate;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentSpecialEducationProgramEligibilityAssociation &&
    other.id == id &&
    other.consentToEvaluationReceivedDate == consentToEvaluationReceivedDate &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.programReference == programReference &&
    other.studentReference == studentReference &&
    other.consentToEvaluationDate == consentToEvaluationDate &&
    other.eligibilityConferenceDate == eligibilityConferenceDate &&
    other.eligibilityDelayReasonDescriptor == eligibilityDelayReasonDescriptor &&
    other.eligibilityDeterminationDate == eligibilityDeterminationDate &&
    other.eligibilityEvaluationDate == eligibilityEvaluationDate &&
    other.eligibilityEvaluationTypeDescriptor == eligibilityEvaluationTypeDescriptor &&
    other.evaluationCompleteIndicator == evaluationCompleteIndicator &&
    other.evaluationDelayDays == evaluationDelayDays &&
    other.evaluationDelayReasonDescriptor == evaluationDelayReasonDescriptor &&
    other.evaluationLateReason == evaluationLateReason &&
    other.ideaIndicator == ideaIndicator &&
    other.ideaPartDescriptor == ideaPartDescriptor &&
    other.originalECIServicesDate == originalECIServicesDate &&
    other.transitionConferenceDate == transitionConferenceDate &&
    other.transitionNotificationDate == transitionNotificationDate &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (consentToEvaluationReceivedDate.hashCode) +
    (educationOrganizationReference.hashCode) +
    (programReference.hashCode) +
    (studentReference.hashCode) +
    (consentToEvaluationDate == null ? 0 : consentToEvaluationDate!.hashCode) +
    (eligibilityConferenceDate == null ? 0 : eligibilityConferenceDate!.hashCode) +
    (eligibilityDelayReasonDescriptor == null ? 0 : eligibilityDelayReasonDescriptor!.hashCode) +
    (eligibilityDeterminationDate == null ? 0 : eligibilityDeterminationDate!.hashCode) +
    (eligibilityEvaluationDate == null ? 0 : eligibilityEvaluationDate!.hashCode) +
    (eligibilityEvaluationTypeDescriptor == null ? 0 : eligibilityEvaluationTypeDescriptor!.hashCode) +
    (evaluationCompleteIndicator == null ? 0 : evaluationCompleteIndicator!.hashCode) +
    (evaluationDelayDays == null ? 0 : evaluationDelayDays!.hashCode) +
    (evaluationDelayReasonDescriptor == null ? 0 : evaluationDelayReasonDescriptor!.hashCode) +
    (evaluationLateReason == null ? 0 : evaluationLateReason!.hashCode) +
    (ideaIndicator == null ? 0 : ideaIndicator!.hashCode) +
    (ideaPartDescriptor.hashCode) +
    (originalECIServicesDate == null ? 0 : originalECIServicesDate!.hashCode) +
    (transitionConferenceDate == null ? 0 : transitionConferenceDate!.hashCode) +
    (transitionNotificationDate == null ? 0 : transitionNotificationDate!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentSpecialEducationProgramEligibilityAssociation[id=$id, consentToEvaluationReceivedDate=$consentToEvaluationReceivedDate, educationOrganizationReference=$educationOrganizationReference, programReference=$programReference, studentReference=$studentReference, consentToEvaluationDate=$consentToEvaluationDate, eligibilityConferenceDate=$eligibilityConferenceDate, eligibilityDelayReasonDescriptor=$eligibilityDelayReasonDescriptor, eligibilityDeterminationDate=$eligibilityDeterminationDate, eligibilityEvaluationDate=$eligibilityEvaluationDate, eligibilityEvaluationTypeDescriptor=$eligibilityEvaluationTypeDescriptor, evaluationCompleteIndicator=$evaluationCompleteIndicator, evaluationDelayDays=$evaluationDelayDays, evaluationDelayReasonDescriptor=$evaluationDelayReasonDescriptor, evaluationLateReason=$evaluationLateReason, ideaIndicator=$ideaIndicator, ideaPartDescriptor=$ideaPartDescriptor, originalECIServicesDate=$originalECIServicesDate, transitionConferenceDate=$transitionConferenceDate, transitionNotificationDate=$transitionNotificationDate, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'consentToEvaluationReceivedDate'] = _dateFormatter.format(this.consentToEvaluationReceivedDate.toUtc());
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'programReference'] = this.programReference;
      json[r'studentReference'] = this.studentReference;
    if (this.consentToEvaluationDate != null) {
      json[r'consentToEvaluationDate'] = _dateFormatter.format(this.consentToEvaluationDate!.toUtc());
    } else {
      json[r'consentToEvaluationDate'] = null;
    }
    if (this.eligibilityConferenceDate != null) {
      json[r'eligibilityConferenceDate'] = _dateFormatter.format(this.eligibilityConferenceDate!.toUtc());
    } else {
      json[r'eligibilityConferenceDate'] = null;
    }
    if (this.eligibilityDelayReasonDescriptor != null) {
      json[r'eligibilityDelayReasonDescriptor'] = this.eligibilityDelayReasonDescriptor;
    } else {
      json[r'eligibilityDelayReasonDescriptor'] = null;
    }
    if (this.eligibilityDeterminationDate != null) {
      json[r'eligibilityDeterminationDate'] = _dateFormatter.format(this.eligibilityDeterminationDate!.toUtc());
    } else {
      json[r'eligibilityDeterminationDate'] = null;
    }
    if (this.eligibilityEvaluationDate != null) {
      json[r'eligibilityEvaluationDate'] = _dateFormatter.format(this.eligibilityEvaluationDate!.toUtc());
    } else {
      json[r'eligibilityEvaluationDate'] = null;
    }
    if (this.eligibilityEvaluationTypeDescriptor != null) {
      json[r'eligibilityEvaluationTypeDescriptor'] = this.eligibilityEvaluationTypeDescriptor;
    } else {
      json[r'eligibilityEvaluationTypeDescriptor'] = null;
    }
    if (this.evaluationCompleteIndicator != null) {
      json[r'evaluationCompleteIndicator'] = this.evaluationCompleteIndicator;
    } else {
      json[r'evaluationCompleteIndicator'] = null;
    }
    if (this.evaluationDelayDays != null) {
      json[r'evaluationDelayDays'] = this.evaluationDelayDays;
    } else {
      json[r'evaluationDelayDays'] = null;
    }
    if (this.evaluationDelayReasonDescriptor != null) {
      json[r'evaluationDelayReasonDescriptor'] = this.evaluationDelayReasonDescriptor;
    } else {
      json[r'evaluationDelayReasonDescriptor'] = null;
    }
    if (this.evaluationLateReason != null) {
      json[r'evaluationLateReason'] = this.evaluationLateReason;
    } else {
      json[r'evaluationLateReason'] = null;
    }
    if (this.ideaIndicator != null) {
      json[r'ideaIndicator'] = this.ideaIndicator;
    } else {
      json[r'ideaIndicator'] = null;
    }
      json[r'ideaPartDescriptor'] = this.ideaPartDescriptor;
    if (this.originalECIServicesDate != null) {
      json[r'originalECIServicesDate'] = _dateFormatter.format(this.originalECIServicesDate!.toUtc());
    } else {
      json[r'originalECIServicesDate'] = null;
    }
    if (this.transitionConferenceDate != null) {
      json[r'transitionConferenceDate'] = _dateFormatter.format(this.transitionConferenceDate!.toUtc());
    } else {
      json[r'transitionConferenceDate'] = null;
    }
    if (this.transitionNotificationDate != null) {
      json[r'transitionNotificationDate'] = _dateFormatter.format(this.transitionNotificationDate!.toUtc());
    } else {
      json[r'transitionNotificationDate'] = null;
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

  /// Returns a new [EdFiStudentSpecialEducationProgramEligibilityAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentSpecialEducationProgramEligibilityAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentSpecialEducationProgramEligibilityAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentSpecialEducationProgramEligibilityAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentSpecialEducationProgramEligibilityAssociation(
        id: mapValueOfType<String>(json, r'id'),
        consentToEvaluationReceivedDate: mapDateTime(json, r'consentToEvaluationReceivedDate', r'')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        programReference: EdFiProgramReference.fromJson(json[r'programReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        consentToEvaluationDate: mapDateTime(json, r'consentToEvaluationDate', r''),
        eligibilityConferenceDate: mapDateTime(json, r'eligibilityConferenceDate', r''),
        eligibilityDelayReasonDescriptor: mapValueOfType<String>(json, r'eligibilityDelayReasonDescriptor'),
        eligibilityDeterminationDate: mapDateTime(json, r'eligibilityDeterminationDate', r''),
        eligibilityEvaluationDate: mapDateTime(json, r'eligibilityEvaluationDate', r''),
        eligibilityEvaluationTypeDescriptor: mapValueOfType<String>(json, r'eligibilityEvaluationTypeDescriptor'),
        evaluationCompleteIndicator: mapValueOfType<bool>(json, r'evaluationCompleteIndicator'),
        evaluationDelayDays: mapValueOfType<int>(json, r'evaluationDelayDays'),
        evaluationDelayReasonDescriptor: mapValueOfType<String>(json, r'evaluationDelayReasonDescriptor'),
        evaluationLateReason: mapValueOfType<String>(json, r'evaluationLateReason'),
        ideaIndicator: mapValueOfType<bool>(json, r'ideaIndicator'),
        ideaPartDescriptor: mapValueOfType<String>(json, r'ideaPartDescriptor')!,
        originalECIServicesDate: mapDateTime(json, r'originalECIServicesDate', r''),
        transitionConferenceDate: mapDateTime(json, r'transitionConferenceDate', r''),
        transitionNotificationDate: mapDateTime(json, r'transitionNotificationDate', r''),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentSpecialEducationProgramEligibilityAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentSpecialEducationProgramEligibilityAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentSpecialEducationProgramEligibilityAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentSpecialEducationProgramEligibilityAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentSpecialEducationProgramEligibilityAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentSpecialEducationProgramEligibilityAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentSpecialEducationProgramEligibilityAssociation-objects as value to a dart map
  static Map<String, List<EdFiStudentSpecialEducationProgramEligibilityAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentSpecialEducationProgramEligibilityAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentSpecialEducationProgramEligibilityAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'consentToEvaluationReceivedDate',
    'educationOrganizationReference',
    'programReference',
    'studentReference',
    'ideaPartDescriptor',
  };
}

