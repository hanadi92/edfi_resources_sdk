//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentSpecialEducationProgramAssociation {
  /// Returns a new [EdFiStudentSpecialEducationProgramAssociation] instance.
  EdFiStudentSpecialEducationProgramAssociation({
    this.id,
    required this.beginDate,
    required this.educationOrganizationReference,
    required this.programReference,
    required this.studentReference,
    this.disabilities = const [],
    this.endDate,
    this.ideaEligibility,
    this.iepBeginDate,
    this.iepEndDate,
    this.iepReviewDate,
    this.lastEvaluationDate,
    this.medicallyFragile,
    this.multiplyDisabled,
    this.programParticipationStatuses = const [],
    this.reasonExitedDescriptor,
    this.reductionInHoursPerWeekComparedToPeers,
    this.schoolHoursPerWeek,
    this.servedOutsideOfRegularSession,
    this.serviceProviders = const [],
    this.shortenedSchoolDayIndicator,
    this.specialEducationExitDate,
    this.specialEducationExitExplained,
    this.specialEducationExitReasonDescriptor,
    this.specialEducationHoursPerWeek,
    this.specialEducationProgramServices = const [],
    this.specialEducationSettingDescriptor,
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

  /// The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime beginDate;

  EdFiEducationOrganizationReference educationOrganizationReference;

  EdFiProgramReference programReference;

  EdFiStudentReference studentReference;

  /// An unordered collection of studentSpecialEducationProgramAssociationDisabilities. The disability condition(s) that best describes an individual's impairment, as related to special education services received.
  List<EdFiStudentSpecialEducationProgramAssociationDisability> disabilities;

  /// The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  /// Indicator of the eligibility of the student to receive special education services according to the Individuals with Disabilities Education Act (IDEA).
  bool? ideaEligibility;

  /// The effective date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? iepBeginDate;

  /// The end date of the most recent IEP.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? iepEndDate;

  /// The date of the last IEP review.
  DateTime? iepReviewDate;

  /// The date of the last special education evaluation.
  DateTime? lastEvaluationDate;

  /// Indicates whether the student receiving special education and related services is: 1) in the age range of birth to 22 years, and 2) has a serious, ongoing illness or a chronic condition that has lasted or is anticipated to last at least 12 or more months or has required at least one month of hospitalization, and that requires daily, ongoing medical treatments and monitoring by appropriately trained personnel which may include parents or other family members, and 3) requires the routine use of medical device or of assistive technology to compensate for the loss of usefulness of a body function needed to participate in activities of daily living, and 4) lives with ongoing threat to his or her continued well-being. Aligns with federal requirements.
  bool? medicallyFragile;

  /// Indicates whether the student receiving special education and related services has been designated as multiply disabled by the admission, review, and dismissal committee as aligned with federal requirements.
  bool? multiplyDisabled;

  /// An unordered collection of generalStudentProgramAssociationProgramParticipationStatuses. The status of the student's program participation.
  List<EdFiGeneralStudentProgramAssociationProgramParticipationStatus> programParticipationStatuses;

  /// The reason the student left the program within a school or district.
  String? reasonExitedDescriptor;

  /// Records the number of hours reduced for the shortened school day for the IEP student as compared to peers in regular education.
  ///
  /// Minimum value: -999.99
  /// Maximum value: 999.99
  double? reductionInHoursPerWeekComparedToPeers;

  /// Indicate the total number of hours of instructional time per week for the school that the student attends.
  ///
  /// Minimum value: -999.99
  /// Maximum value: 999.99
  double? schoolHoursPerWeek;

  /// Indicates whether the student received services during the summer session or between sessions.
  bool? servedOutsideOfRegularSession;

  /// An unordered collection of studentSpecialEducationProgramAssociationServiceProviders. The staff providing special education services to the student.
  List<EdFiStudentSpecialEducationProgramAssociationServiceProvider> serviceProviders;

  /// Indicator that the student's IEP requires a shortened school day.
  bool? shortenedSchoolDayIndicator;

  /// The  month, day and year on which a person stops receiving special education services.
  DateTime? specialEducationExitDate;

  /// Explanation on why a person stops receiving special education services.
  String? specialEducationExitExplained;

  /// The reason why a person stops receiving special education services.
  String? specialEducationExitReasonDescriptor;

  /// The number of hours per week for special education instruction and therapy.
  ///
  /// Minimum value: -999.99
  /// Maximum value: 999.99
  double? specialEducationHoursPerWeek;

  /// An unordered collection of studentSpecialEducationProgramAssociationSpecialEducationProgramServices. Indicates the service(s) being provided to the student by the special education program.
  List<EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService> specialEducationProgramServices;

  /// The major instructional setting (more than 50 percent of a student's special education program).
  String? specialEducationSettingDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentSpecialEducationProgramAssociation &&
    other.id == id &&
    other.beginDate == beginDate &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.programReference == programReference &&
    other.studentReference == studentReference &&
    _deepEquality.equals(other.disabilities, disabilities) &&
    other.endDate == endDate &&
    other.ideaEligibility == ideaEligibility &&
    other.iepBeginDate == iepBeginDate &&
    other.iepEndDate == iepEndDate &&
    other.iepReviewDate == iepReviewDate &&
    other.lastEvaluationDate == lastEvaluationDate &&
    other.medicallyFragile == medicallyFragile &&
    other.multiplyDisabled == multiplyDisabled &&
    _deepEquality.equals(other.programParticipationStatuses, programParticipationStatuses) &&
    other.reasonExitedDescriptor == reasonExitedDescriptor &&
    other.reductionInHoursPerWeekComparedToPeers == reductionInHoursPerWeekComparedToPeers &&
    other.schoolHoursPerWeek == schoolHoursPerWeek &&
    other.servedOutsideOfRegularSession == servedOutsideOfRegularSession &&
    _deepEquality.equals(other.serviceProviders, serviceProviders) &&
    other.shortenedSchoolDayIndicator == shortenedSchoolDayIndicator &&
    other.specialEducationExitDate == specialEducationExitDate &&
    other.specialEducationExitExplained == specialEducationExitExplained &&
    other.specialEducationExitReasonDescriptor == specialEducationExitReasonDescriptor &&
    other.specialEducationHoursPerWeek == specialEducationHoursPerWeek &&
    _deepEquality.equals(other.specialEducationProgramServices, specialEducationProgramServices) &&
    other.specialEducationSettingDescriptor == specialEducationSettingDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (beginDate.hashCode) +
    (educationOrganizationReference.hashCode) +
    (programReference.hashCode) +
    (studentReference.hashCode) +
    (disabilities.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (ideaEligibility == null ? 0 : ideaEligibility!.hashCode) +
    (iepBeginDate == null ? 0 : iepBeginDate!.hashCode) +
    (iepEndDate == null ? 0 : iepEndDate!.hashCode) +
    (iepReviewDate == null ? 0 : iepReviewDate!.hashCode) +
    (lastEvaluationDate == null ? 0 : lastEvaluationDate!.hashCode) +
    (medicallyFragile == null ? 0 : medicallyFragile!.hashCode) +
    (multiplyDisabled == null ? 0 : multiplyDisabled!.hashCode) +
    (programParticipationStatuses.hashCode) +
    (reasonExitedDescriptor == null ? 0 : reasonExitedDescriptor!.hashCode) +
    (reductionInHoursPerWeekComparedToPeers == null ? 0 : reductionInHoursPerWeekComparedToPeers!.hashCode) +
    (schoolHoursPerWeek == null ? 0 : schoolHoursPerWeek!.hashCode) +
    (servedOutsideOfRegularSession == null ? 0 : servedOutsideOfRegularSession!.hashCode) +
    (serviceProviders.hashCode) +
    (shortenedSchoolDayIndicator == null ? 0 : shortenedSchoolDayIndicator!.hashCode) +
    (specialEducationExitDate == null ? 0 : specialEducationExitDate!.hashCode) +
    (specialEducationExitExplained == null ? 0 : specialEducationExitExplained!.hashCode) +
    (specialEducationExitReasonDescriptor == null ? 0 : specialEducationExitReasonDescriptor!.hashCode) +
    (specialEducationHoursPerWeek == null ? 0 : specialEducationHoursPerWeek!.hashCode) +
    (specialEducationProgramServices.hashCode) +
    (specialEducationSettingDescriptor == null ? 0 : specialEducationSettingDescriptor!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentSpecialEducationProgramAssociation[id=$id, beginDate=$beginDate, educationOrganizationReference=$educationOrganizationReference, programReference=$programReference, studentReference=$studentReference, disabilities=$disabilities, endDate=$endDate, ideaEligibility=$ideaEligibility, iepBeginDate=$iepBeginDate, iepEndDate=$iepEndDate, iepReviewDate=$iepReviewDate, lastEvaluationDate=$lastEvaluationDate, medicallyFragile=$medicallyFragile, multiplyDisabled=$multiplyDisabled, programParticipationStatuses=$programParticipationStatuses, reasonExitedDescriptor=$reasonExitedDescriptor, reductionInHoursPerWeekComparedToPeers=$reductionInHoursPerWeekComparedToPeers, schoolHoursPerWeek=$schoolHoursPerWeek, servedOutsideOfRegularSession=$servedOutsideOfRegularSession, serviceProviders=$serviceProviders, shortenedSchoolDayIndicator=$shortenedSchoolDayIndicator, specialEducationExitDate=$specialEducationExitDate, specialEducationExitExplained=$specialEducationExitExplained, specialEducationExitReasonDescriptor=$specialEducationExitReasonDescriptor, specialEducationHoursPerWeek=$specialEducationHoursPerWeek, specialEducationProgramServices=$specialEducationProgramServices, specialEducationSettingDescriptor=$specialEducationSettingDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'beginDate'] = _dateFormatter.format(this.beginDate.toUtc());
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'programReference'] = this.programReference;
      json[r'studentReference'] = this.studentReference;
      json[r'disabilities'] = this.disabilities;
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
    if (this.ideaEligibility != null) {
      json[r'ideaEligibility'] = this.ideaEligibility;
    } else {
      json[r'ideaEligibility'] = null;
    }
    if (this.iepBeginDate != null) {
      json[r'iepBeginDate'] = _dateFormatter.format(this.iepBeginDate!.toUtc());
    } else {
      json[r'iepBeginDate'] = null;
    }
    if (this.iepEndDate != null) {
      json[r'iepEndDate'] = _dateFormatter.format(this.iepEndDate!.toUtc());
    } else {
      json[r'iepEndDate'] = null;
    }
    if (this.iepReviewDate != null) {
      json[r'iepReviewDate'] = _dateFormatter.format(this.iepReviewDate!.toUtc());
    } else {
      json[r'iepReviewDate'] = null;
    }
    if (this.lastEvaluationDate != null) {
      json[r'lastEvaluationDate'] = _dateFormatter.format(this.lastEvaluationDate!.toUtc());
    } else {
      json[r'lastEvaluationDate'] = null;
    }
    if (this.medicallyFragile != null) {
      json[r'medicallyFragile'] = this.medicallyFragile;
    } else {
      json[r'medicallyFragile'] = null;
    }
    if (this.multiplyDisabled != null) {
      json[r'multiplyDisabled'] = this.multiplyDisabled;
    } else {
      json[r'multiplyDisabled'] = null;
    }
      json[r'programParticipationStatuses'] = this.programParticipationStatuses;
    if (this.reasonExitedDescriptor != null) {
      json[r'reasonExitedDescriptor'] = this.reasonExitedDescriptor;
    } else {
      json[r'reasonExitedDescriptor'] = null;
    }
    if (this.reductionInHoursPerWeekComparedToPeers != null) {
      json[r'reductionInHoursPerWeekComparedToPeers'] = this.reductionInHoursPerWeekComparedToPeers;
    } else {
      json[r'reductionInHoursPerWeekComparedToPeers'] = null;
    }
    if (this.schoolHoursPerWeek != null) {
      json[r'schoolHoursPerWeek'] = this.schoolHoursPerWeek;
    } else {
      json[r'schoolHoursPerWeek'] = null;
    }
    if (this.servedOutsideOfRegularSession != null) {
      json[r'servedOutsideOfRegularSession'] = this.servedOutsideOfRegularSession;
    } else {
      json[r'servedOutsideOfRegularSession'] = null;
    }
      json[r'serviceProviders'] = this.serviceProviders;
    if (this.shortenedSchoolDayIndicator != null) {
      json[r'shortenedSchoolDayIndicator'] = this.shortenedSchoolDayIndicator;
    } else {
      json[r'shortenedSchoolDayIndicator'] = null;
    }
    if (this.specialEducationExitDate != null) {
      json[r'specialEducationExitDate'] = _dateFormatter.format(this.specialEducationExitDate!.toUtc());
    } else {
      json[r'specialEducationExitDate'] = null;
    }
    if (this.specialEducationExitExplained != null) {
      json[r'specialEducationExitExplained'] = this.specialEducationExitExplained;
    } else {
      json[r'specialEducationExitExplained'] = null;
    }
    if (this.specialEducationExitReasonDescriptor != null) {
      json[r'specialEducationExitReasonDescriptor'] = this.specialEducationExitReasonDescriptor;
    } else {
      json[r'specialEducationExitReasonDescriptor'] = null;
    }
    if (this.specialEducationHoursPerWeek != null) {
      json[r'specialEducationHoursPerWeek'] = this.specialEducationHoursPerWeek;
    } else {
      json[r'specialEducationHoursPerWeek'] = null;
    }
      json[r'specialEducationProgramServices'] = this.specialEducationProgramServices;
    if (this.specialEducationSettingDescriptor != null) {
      json[r'specialEducationSettingDescriptor'] = this.specialEducationSettingDescriptor;
    } else {
      json[r'specialEducationSettingDescriptor'] = null;
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

  /// Returns a new [EdFiStudentSpecialEducationProgramAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentSpecialEducationProgramAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentSpecialEducationProgramAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentSpecialEducationProgramAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentSpecialEducationProgramAssociation(
        id: mapValueOfType<String>(json, r'id'),
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        programReference: EdFiProgramReference.fromJson(json[r'programReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        disabilities: EdFiStudentSpecialEducationProgramAssociationDisability.listFromJson(json[r'disabilities']),
        endDate: mapDateTime(json, r'endDate', r''),
        ideaEligibility: mapValueOfType<bool>(json, r'ideaEligibility'),
        iepBeginDate: mapDateTime(json, r'iepBeginDate', r''),
        iepEndDate: mapDateTime(json, r'iepEndDate', r''),
        iepReviewDate: mapDateTime(json, r'iepReviewDate', r''),
        lastEvaluationDate: mapDateTime(json, r'lastEvaluationDate', r''),
        medicallyFragile: mapValueOfType<bool>(json, r'medicallyFragile'),
        multiplyDisabled: mapValueOfType<bool>(json, r'multiplyDisabled'),
        programParticipationStatuses: EdFiGeneralStudentProgramAssociationProgramParticipationStatus.listFromJson(json[r'programParticipationStatuses']),
        reasonExitedDescriptor: mapValueOfType<String>(json, r'reasonExitedDescriptor'),
        reductionInHoursPerWeekComparedToPeers: mapValueOfType<double>(json, r'reductionInHoursPerWeekComparedToPeers'),
        schoolHoursPerWeek: mapValueOfType<double>(json, r'schoolHoursPerWeek'),
        servedOutsideOfRegularSession: mapValueOfType<bool>(json, r'servedOutsideOfRegularSession'),
        serviceProviders: EdFiStudentSpecialEducationProgramAssociationServiceProvider.listFromJson(json[r'serviceProviders']),
        shortenedSchoolDayIndicator: mapValueOfType<bool>(json, r'shortenedSchoolDayIndicator'),
        specialEducationExitDate: mapDateTime(json, r'specialEducationExitDate', r''),
        specialEducationExitExplained: mapValueOfType<String>(json, r'specialEducationExitExplained'),
        specialEducationExitReasonDescriptor: mapValueOfType<String>(json, r'specialEducationExitReasonDescriptor'),
        specialEducationHoursPerWeek: mapValueOfType<double>(json, r'specialEducationHoursPerWeek'),
        specialEducationProgramServices: EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService.listFromJson(json[r'specialEducationProgramServices']),
        specialEducationSettingDescriptor: mapValueOfType<String>(json, r'specialEducationSettingDescriptor'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentSpecialEducationProgramAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentSpecialEducationProgramAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentSpecialEducationProgramAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentSpecialEducationProgramAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentSpecialEducationProgramAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentSpecialEducationProgramAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentSpecialEducationProgramAssociation-objects as value to a dart map
  static Map<String, List<EdFiStudentSpecialEducationProgramAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentSpecialEducationProgramAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentSpecialEducationProgramAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'beginDate',
    'educationOrganizationReference',
    'programReference',
    'studentReference',
  };
}

