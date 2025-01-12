//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentMigrantEducationProgramAssociation {
  /// Returns a new [EdFiStudentMigrantEducationProgramAssociation] instance.
  EdFiStudentMigrantEducationProgramAssociation({
    this.id,
    required this.beginDate,
    required this.educationOrganizationReference,
    required this.programReference,
    required this.studentReference,
    this.continuationOfServicesReasonDescriptor,
    this.eligibilityExpirationDate,
    this.endDate,
    required this.lastQualifyingMove,
    this.migrantEducationProgramServices = const [],
    required this.priorityForServices,
    this.programParticipationStatuses = const [],
    this.qualifyingArrivalDate,
    this.reasonExitedDescriptor,
    this.servedOutsideOfRegularSession,
    this.stateResidencyDate,
    this.usInitialEntry,
    this.usInitialSchoolEntry,
    this.usMostRecentEntry,
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

  /// The \"continuation of services\" provision found in Section 1304(e) of the statute provides that (1) a child who ceases to be a migratory child during a school term shall be eligible for services until the end of such term; (2) a child who is no longer a migratory child may continue to receive services for one additional school year, but only if comparable services are not available through other programs; and (3) secondary school students who were eligible for services in secondary school may continue to be served through credit accrual programs until graduation. Only students who received services at any time during their 36 month eligibility period may continue to receive services (not necessarily the same service).
  String? continuationOfServicesReasonDescriptor;

  /// The eligibility expiration date is used to determine end of eligibility and to account for a child's eligibility expiring earlier than 36 months from the child's QAD. A child's eligibility would end earlier than 36 months from the child's QAD, if the child is no longer entitled to a free public education (e.g., graduated with a high school diploma, obtained a high school equivalency diploma (HSED), or for other reasons as determined by states' requirements), or if the child passes away.
  DateTime? eligibilityExpirationDate;

  /// The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  /// Date the last qualifying move occurred; used to compute MEP status.
  DateTime lastQualifyingMove;

  /// An unordered collection of studentMigrantEducationProgramAssociationMigrantEducationProgramServices. Indicates the service(s) being provided to the student by the migrant education program.
  List<EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService> migrantEducationProgramServices;

  /// Report migratory children who are classified as having \"priority for services\" because they are failing, or most at risk of failing to meet the state's challenging state academic content standards and challenging state student academic achievement standards, and their education has been interrupted during the regular school year.
  bool priorityForServices;

  /// An unordered collection of generalStudentProgramAssociationProgramParticipationStatuses. The status of the student's program participation.
  List<EdFiGeneralStudentProgramAssociationProgramParticipationStatus> programParticipationStatuses;

  /// The qualifying arrival date (QAD) is the date the child joins the worker who has already moved, or the date when the worker joins the child who has already moved. The QAD is the date that the child's eligibility for the MEP begins. The QAD is not affected by subsequent non-qualifying moves.
  DateTime? qualifyingArrivalDate;

  /// The reason the student left the program within a school or district.
  String? reasonExitedDescriptor;

  /// Indicates whether the student received services during the summer session or between sessions.
  bool? servedOutsideOfRegularSession;

  /// The verified state residency for the student.
  DateTime? stateResidencyDate;

  /// The month, day, and year on which the student first entered the U.S.
  DateTime? usInitialEntry;

  /// The month, day, and year on which the student first entered a U.S. school.
  DateTime? usInitialSchoolEntry;

  /// The month, day, and year of the student's most recent entry into the U.S.
  DateTime? usMostRecentEntry;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentMigrantEducationProgramAssociation &&
    other.id == id &&
    other.beginDate == beginDate &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.programReference == programReference &&
    other.studentReference == studentReference &&
    other.continuationOfServicesReasonDescriptor == continuationOfServicesReasonDescriptor &&
    other.eligibilityExpirationDate == eligibilityExpirationDate &&
    other.endDate == endDate &&
    other.lastQualifyingMove == lastQualifyingMove &&
    _deepEquality.equals(other.migrantEducationProgramServices, migrantEducationProgramServices) &&
    other.priorityForServices == priorityForServices &&
    _deepEquality.equals(other.programParticipationStatuses, programParticipationStatuses) &&
    other.qualifyingArrivalDate == qualifyingArrivalDate &&
    other.reasonExitedDescriptor == reasonExitedDescriptor &&
    other.servedOutsideOfRegularSession == servedOutsideOfRegularSession &&
    other.stateResidencyDate == stateResidencyDate &&
    other.usInitialEntry == usInitialEntry &&
    other.usInitialSchoolEntry == usInitialSchoolEntry &&
    other.usMostRecentEntry == usMostRecentEntry &&
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
    (continuationOfServicesReasonDescriptor == null ? 0 : continuationOfServicesReasonDescriptor!.hashCode) +
    (eligibilityExpirationDate == null ? 0 : eligibilityExpirationDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (lastQualifyingMove.hashCode) +
    (migrantEducationProgramServices.hashCode) +
    (priorityForServices.hashCode) +
    (programParticipationStatuses.hashCode) +
    (qualifyingArrivalDate == null ? 0 : qualifyingArrivalDate!.hashCode) +
    (reasonExitedDescriptor == null ? 0 : reasonExitedDescriptor!.hashCode) +
    (servedOutsideOfRegularSession == null ? 0 : servedOutsideOfRegularSession!.hashCode) +
    (stateResidencyDate == null ? 0 : stateResidencyDate!.hashCode) +
    (usInitialEntry == null ? 0 : usInitialEntry!.hashCode) +
    (usInitialSchoolEntry == null ? 0 : usInitialSchoolEntry!.hashCode) +
    (usMostRecentEntry == null ? 0 : usMostRecentEntry!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentMigrantEducationProgramAssociation[id=$id, beginDate=$beginDate, educationOrganizationReference=$educationOrganizationReference, programReference=$programReference, studentReference=$studentReference, continuationOfServicesReasonDescriptor=$continuationOfServicesReasonDescriptor, eligibilityExpirationDate=$eligibilityExpirationDate, endDate=$endDate, lastQualifyingMove=$lastQualifyingMove, migrantEducationProgramServices=$migrantEducationProgramServices, priorityForServices=$priorityForServices, programParticipationStatuses=$programParticipationStatuses, qualifyingArrivalDate=$qualifyingArrivalDate, reasonExitedDescriptor=$reasonExitedDescriptor, servedOutsideOfRegularSession=$servedOutsideOfRegularSession, stateResidencyDate=$stateResidencyDate, usInitialEntry=$usInitialEntry, usInitialSchoolEntry=$usInitialSchoolEntry, usMostRecentEntry=$usMostRecentEntry, etag=$etag, lastModifiedDate=$lastModifiedDate]';

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
    if (this.continuationOfServicesReasonDescriptor != null) {
      json[r'continuationOfServicesReasonDescriptor'] = this.continuationOfServicesReasonDescriptor;
    } else {
      json[r'continuationOfServicesReasonDescriptor'] = null;
    }
    if (this.eligibilityExpirationDate != null) {
      json[r'eligibilityExpirationDate'] = _dateFormatter.format(this.eligibilityExpirationDate!.toUtc());
    } else {
      json[r'eligibilityExpirationDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
      json[r'lastQualifyingMove'] = _dateFormatter.format(this.lastQualifyingMove.toUtc());
      json[r'migrantEducationProgramServices'] = this.migrantEducationProgramServices;
      json[r'priorityForServices'] = this.priorityForServices;
      json[r'programParticipationStatuses'] = this.programParticipationStatuses;
    if (this.qualifyingArrivalDate != null) {
      json[r'qualifyingArrivalDate'] = _dateFormatter.format(this.qualifyingArrivalDate!.toUtc());
    } else {
      json[r'qualifyingArrivalDate'] = null;
    }
    if (this.reasonExitedDescriptor != null) {
      json[r'reasonExitedDescriptor'] = this.reasonExitedDescriptor;
    } else {
      json[r'reasonExitedDescriptor'] = null;
    }
    if (this.servedOutsideOfRegularSession != null) {
      json[r'servedOutsideOfRegularSession'] = this.servedOutsideOfRegularSession;
    } else {
      json[r'servedOutsideOfRegularSession'] = null;
    }
    if (this.stateResidencyDate != null) {
      json[r'stateResidencyDate'] = _dateFormatter.format(this.stateResidencyDate!.toUtc());
    } else {
      json[r'stateResidencyDate'] = null;
    }
    if (this.usInitialEntry != null) {
      json[r'usInitialEntry'] = _dateFormatter.format(this.usInitialEntry!.toUtc());
    } else {
      json[r'usInitialEntry'] = null;
    }
    if (this.usInitialSchoolEntry != null) {
      json[r'usInitialSchoolEntry'] = _dateFormatter.format(this.usInitialSchoolEntry!.toUtc());
    } else {
      json[r'usInitialSchoolEntry'] = null;
    }
    if (this.usMostRecentEntry != null) {
      json[r'usMostRecentEntry'] = _dateFormatter.format(this.usMostRecentEntry!.toUtc());
    } else {
      json[r'usMostRecentEntry'] = null;
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

  /// Returns a new [EdFiStudentMigrantEducationProgramAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentMigrantEducationProgramAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentMigrantEducationProgramAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentMigrantEducationProgramAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentMigrantEducationProgramAssociation(
        id: mapValueOfType<String>(json, r'id'),
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        programReference: EdFiProgramReference.fromJson(json[r'programReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        continuationOfServicesReasonDescriptor: mapValueOfType<String>(json, r'continuationOfServicesReasonDescriptor'),
        eligibilityExpirationDate: mapDateTime(json, r'eligibilityExpirationDate', r''),
        endDate: mapDateTime(json, r'endDate', r''),
        lastQualifyingMove: mapDateTime(json, r'lastQualifyingMove', r'')!,
        migrantEducationProgramServices: EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService.listFromJson(json[r'migrantEducationProgramServices']),
        priorityForServices: mapValueOfType<bool>(json, r'priorityForServices')!,
        programParticipationStatuses: EdFiGeneralStudentProgramAssociationProgramParticipationStatus.listFromJson(json[r'programParticipationStatuses']),
        qualifyingArrivalDate: mapDateTime(json, r'qualifyingArrivalDate', r''),
        reasonExitedDescriptor: mapValueOfType<String>(json, r'reasonExitedDescriptor'),
        servedOutsideOfRegularSession: mapValueOfType<bool>(json, r'servedOutsideOfRegularSession'),
        stateResidencyDate: mapDateTime(json, r'stateResidencyDate', r''),
        usInitialEntry: mapDateTime(json, r'usInitialEntry', r''),
        usInitialSchoolEntry: mapDateTime(json, r'usInitialSchoolEntry', r''),
        usMostRecentEntry: mapDateTime(json, r'usMostRecentEntry', r''),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentMigrantEducationProgramAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentMigrantEducationProgramAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentMigrantEducationProgramAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentMigrantEducationProgramAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentMigrantEducationProgramAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentMigrantEducationProgramAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentMigrantEducationProgramAssociation-objects as value to a dart map
  static Map<String, List<EdFiStudentMigrantEducationProgramAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentMigrantEducationProgramAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentMigrantEducationProgramAssociation.listFromJson(entry.value, growable: growable,);
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
    'lastQualifyingMove',
    'priorityForServices',
  };
}

