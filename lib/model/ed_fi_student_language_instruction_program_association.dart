//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentLanguageInstructionProgramAssociation {
  /// Returns a new [EdFiStudentLanguageInstructionProgramAssociation] instance.
  EdFiStudentLanguageInstructionProgramAssociation({
    this.id,
    required this.beginDate,
    required this.educationOrganizationReference,
    required this.programReference,
    required this.studentReference,
    this.dosage,
    this.endDate,
    this.englishLanguageProficiencyAssessments = const [],
    this.englishLearnerParticipation,
    this.languageInstructionProgramServices = const [],
    this.programParticipationStatuses = const [],
    this.reasonExitedDescriptor,
    this.servedOutsideOfRegularSession,
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

  /// The duration of time in minutes for which the student was assigned to participate in the program.
  int? dosage;

  /// The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  /// An unordered collection of studentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessments. Results of yearly English language assessment.
  List<EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment> englishLanguageProficiencyAssessments;

  /// An indication that an English learner student is served by an English language instruction educational program supported with Title III of ESEA funds.
  bool? englishLearnerParticipation;

  /// An unordered collection of studentLanguageInstructionProgramAssociationLanguageInstructionProgramServices. Indicates the service(s) being provided to the student by the language instruction program.
  List<EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService> languageInstructionProgramServices;

  /// An unordered collection of generalStudentProgramAssociationProgramParticipationStatuses. The status of the student's program participation.
  List<EdFiGeneralStudentProgramAssociationProgramParticipationStatus> programParticipationStatuses;

  /// The reason the student left the program within a school or district.
  String? reasonExitedDescriptor;

  /// Indicates whether the student received services during the summer session or between sessions.
  bool? servedOutsideOfRegularSession;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentLanguageInstructionProgramAssociation &&
    other.id == id &&
    other.beginDate == beginDate &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.programReference == programReference &&
    other.studentReference == studentReference &&
    other.dosage == dosage &&
    other.endDate == endDate &&
    _deepEquality.equals(other.englishLanguageProficiencyAssessments, englishLanguageProficiencyAssessments) &&
    other.englishLearnerParticipation == englishLearnerParticipation &&
    _deepEquality.equals(other.languageInstructionProgramServices, languageInstructionProgramServices) &&
    _deepEquality.equals(other.programParticipationStatuses, programParticipationStatuses) &&
    other.reasonExitedDescriptor == reasonExitedDescriptor &&
    other.servedOutsideOfRegularSession == servedOutsideOfRegularSession &&
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
    (dosage == null ? 0 : dosage!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (englishLanguageProficiencyAssessments.hashCode) +
    (englishLearnerParticipation == null ? 0 : englishLearnerParticipation!.hashCode) +
    (languageInstructionProgramServices.hashCode) +
    (programParticipationStatuses.hashCode) +
    (reasonExitedDescriptor == null ? 0 : reasonExitedDescriptor!.hashCode) +
    (servedOutsideOfRegularSession == null ? 0 : servedOutsideOfRegularSession!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentLanguageInstructionProgramAssociation[id=$id, beginDate=$beginDate, educationOrganizationReference=$educationOrganizationReference, programReference=$programReference, studentReference=$studentReference, dosage=$dosage, endDate=$endDate, englishLanguageProficiencyAssessments=$englishLanguageProficiencyAssessments, englishLearnerParticipation=$englishLearnerParticipation, languageInstructionProgramServices=$languageInstructionProgramServices, programParticipationStatuses=$programParticipationStatuses, reasonExitedDescriptor=$reasonExitedDescriptor, servedOutsideOfRegularSession=$servedOutsideOfRegularSession, etag=$etag, lastModifiedDate=$lastModifiedDate]';

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
    if (this.dosage != null) {
      json[r'dosage'] = this.dosage;
    } else {
      json[r'dosage'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
      json[r'englishLanguageProficiencyAssessments'] = this.englishLanguageProficiencyAssessments;
    if (this.englishLearnerParticipation != null) {
      json[r'englishLearnerParticipation'] = this.englishLearnerParticipation;
    } else {
      json[r'englishLearnerParticipation'] = null;
    }
      json[r'languageInstructionProgramServices'] = this.languageInstructionProgramServices;
      json[r'programParticipationStatuses'] = this.programParticipationStatuses;
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

  /// Returns a new [EdFiStudentLanguageInstructionProgramAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentLanguageInstructionProgramAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentLanguageInstructionProgramAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentLanguageInstructionProgramAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentLanguageInstructionProgramAssociation(
        id: mapValueOfType<String>(json, r'id'),
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        programReference: EdFiProgramReference.fromJson(json[r'programReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        dosage: mapValueOfType<int>(json, r'dosage'),
        endDate: mapDateTime(json, r'endDate', r''),
        englishLanguageProficiencyAssessments: EdFiStudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment.listFromJson(json[r'englishLanguageProficiencyAssessments']),
        englishLearnerParticipation: mapValueOfType<bool>(json, r'englishLearnerParticipation'),
        languageInstructionProgramServices: EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService.listFromJson(json[r'languageInstructionProgramServices']),
        programParticipationStatuses: EdFiGeneralStudentProgramAssociationProgramParticipationStatus.listFromJson(json[r'programParticipationStatuses']),
        reasonExitedDescriptor: mapValueOfType<String>(json, r'reasonExitedDescriptor'),
        servedOutsideOfRegularSession: mapValueOfType<bool>(json, r'servedOutsideOfRegularSession'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentLanguageInstructionProgramAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentLanguageInstructionProgramAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentLanguageInstructionProgramAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentLanguageInstructionProgramAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentLanguageInstructionProgramAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentLanguageInstructionProgramAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentLanguageInstructionProgramAssociation-objects as value to a dart map
  static Map<String, List<EdFiStudentLanguageInstructionProgramAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentLanguageInstructionProgramAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentLanguageInstructionProgramAssociation.listFromJson(entry.value, growable: growable,);
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

