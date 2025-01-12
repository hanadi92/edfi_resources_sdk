//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCourseTranscript {
  /// Returns a new [EdFiCourseTranscript] instance.
  EdFiCourseTranscript({
    this.id,
    required this.courseAttemptResultDescriptor,
    required this.courseReference,
    this.externalEducationOrganizationReference,
    this.responsibleTeacherStaffReference,
    required this.studentAcademicRecordReference,
    this.academicSubjects = const [],
    this.alternativeCourseIdentificationCodes = const [],
    this.alternativeCourseTitle,
    this.assigningOrganizationIdentificationCode,
    this.attemptedCreditConversion,
    this.attemptedCredits,
    this.attemptedCreditTypeDescriptor,
    this.courseCatalogURL,
    this.coursePrograms = const [],
    this.courseRepeatCodeDescriptor,
    this.courseTitle,
    this.creditCategories = const [],
    this.earnedAdditionalCredits = const [],
    this.earnedCreditConversion,
    this.earnedCredits,
    this.earnedCreditTypeDescriptor,
    this.externalEducationOrganizationNameOfInstitution,
    this.finalLetterGradeEarned,
    this.finalNumericGradeEarned,
    this.methodCreditEarnedDescriptor,
    this.partialCourseTranscriptAwards = const [],
    this.sections = const [],
    this.whenTakenGradeLevelDescriptor,
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

  /// The result from the student's attempt to take the course.
  String courseAttemptResultDescriptor;

  EdFiCourseReference courseReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiEducationOrganizationReference? externalEducationOrganizationReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiStaffReference? responsibleTeacherStaffReference;

  EdFiStudentAcademicRecordReference studentAcademicRecordReference;

  /// An unordered collection of courseTranscriptAcademicSubjects. The subject area for the course transcript credits awarded in the course transcript.
  List<EdFiCourseTranscriptAcademicSubject> academicSubjects;

  /// An unordered collection of courseTranscriptAlternativeCourseIdentificationCodes. The code that identifies the course, course offering, the code from an external educational organization, or other alternate course code.
  List<EdFiCourseTranscriptAlternativeCourseIdentificationCode> alternativeCourseIdentificationCodes;

  /// The descriptive name given to a course of study offered in the school, if different from the CourseTitle.
  String? alternativeCourseTitle;

  /// The organization code or name assigning the course identification code.
  String? assigningOrganizationIdentificationCode;

  /// Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? attemptedCreditConversion;

  /// The value of credits or units of value awarded for the completion of a course.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 999999.999
  double? attemptedCredits;

  /// The type of credits or units of value awarded for the completion of a course.
  String? attemptedCreditTypeDescriptor;

  /// The URL for the course catalog that defines the course identification code.
  String? courseCatalogURL;

  /// An unordered collection of courseTranscriptCoursePrograms. The program(s) that the student participated in the context of the course.
  List<EdFiCourseTranscriptCourseProgram> coursePrograms;

  /// Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student's academic grade average.
  String? courseRepeatCodeDescriptor;

  /// The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, language arts).
  String? courseTitle;

  /// An unordered collection of courseTranscriptCreditCategories. A categorization for the course transcript credits awarded in the course transcript.
  List<EdFiCourseTranscriptCreditCategory> creditCategories;

  /// An unordered collection of courseTranscriptEarnedAdditionalCredits. The number of additional credits a student attempted and could earn for successfully completing a given course.
  List<EdFiCourseTranscriptEarnedAdditionalCredits> earnedAdditionalCredits;

  /// Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? earnedCreditConversion;

  /// The value of credits or units of value awarded for the completion of a course.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 999999.999
  double? earnedCredits;

  /// The type of credits or units of value awarded for the completion of a course.
  String? earnedCreditTypeDescriptor;

  /// Name of the external institution where the student completed the course; to be used only when the reference external education organization is not available.
  String? externalEducationOrganizationNameOfInstitution;

  /// The final indicator of student performance in a class as submitted by the instructor.
  String? finalLetterGradeEarned;

  /// The final indicator of student performance in a class as submitted by the instructor.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? finalNumericGradeEarned;

  /// The method the credits were earned.
  String? methodCreditEarnedDescriptor;

  /// An unordered collection of courseTranscriptPartialCourseTranscriptAwards. A collection of partial credits and/or grades a student earned against the course over the session, used when awards of credit are incremental.
  List<EdFiCourseTranscriptPartialCourseTranscriptAwards> partialCourseTranscriptAwards;

  /// An unordered collection of courseTranscriptSections. The section(s) associated with the course transcript.
  List<EdFiCourseTranscriptSection> sections;

  /// Student's grade level at time of course.
  String? whenTakenGradeLevelDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiCourseTranscript &&
    other.id == id &&
    other.courseAttemptResultDescriptor == courseAttemptResultDescriptor &&
    other.courseReference == courseReference &&
    other.externalEducationOrganizationReference == externalEducationOrganizationReference &&
    other.responsibleTeacherStaffReference == responsibleTeacherStaffReference &&
    other.studentAcademicRecordReference == studentAcademicRecordReference &&
    _deepEquality.equals(other.academicSubjects, academicSubjects) &&
    _deepEquality.equals(other.alternativeCourseIdentificationCodes, alternativeCourseIdentificationCodes) &&
    other.alternativeCourseTitle == alternativeCourseTitle &&
    other.assigningOrganizationIdentificationCode == assigningOrganizationIdentificationCode &&
    other.attemptedCreditConversion == attemptedCreditConversion &&
    other.attemptedCredits == attemptedCredits &&
    other.attemptedCreditTypeDescriptor == attemptedCreditTypeDescriptor &&
    other.courseCatalogURL == courseCatalogURL &&
    _deepEquality.equals(other.coursePrograms, coursePrograms) &&
    other.courseRepeatCodeDescriptor == courseRepeatCodeDescriptor &&
    other.courseTitle == courseTitle &&
    _deepEquality.equals(other.creditCategories, creditCategories) &&
    _deepEquality.equals(other.earnedAdditionalCredits, earnedAdditionalCredits) &&
    other.earnedCreditConversion == earnedCreditConversion &&
    other.earnedCredits == earnedCredits &&
    other.earnedCreditTypeDescriptor == earnedCreditTypeDescriptor &&
    other.externalEducationOrganizationNameOfInstitution == externalEducationOrganizationNameOfInstitution &&
    other.finalLetterGradeEarned == finalLetterGradeEarned &&
    other.finalNumericGradeEarned == finalNumericGradeEarned &&
    other.methodCreditEarnedDescriptor == methodCreditEarnedDescriptor &&
    _deepEquality.equals(other.partialCourseTranscriptAwards, partialCourseTranscriptAwards) &&
    _deepEquality.equals(other.sections, sections) &&
    other.whenTakenGradeLevelDescriptor == whenTakenGradeLevelDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (courseAttemptResultDescriptor.hashCode) +
    (courseReference.hashCode) +
    (externalEducationOrganizationReference == null ? 0 : externalEducationOrganizationReference!.hashCode) +
    (responsibleTeacherStaffReference == null ? 0 : responsibleTeacherStaffReference!.hashCode) +
    (studentAcademicRecordReference.hashCode) +
    (academicSubjects.hashCode) +
    (alternativeCourseIdentificationCodes.hashCode) +
    (alternativeCourseTitle == null ? 0 : alternativeCourseTitle!.hashCode) +
    (assigningOrganizationIdentificationCode == null ? 0 : assigningOrganizationIdentificationCode!.hashCode) +
    (attemptedCreditConversion == null ? 0 : attemptedCreditConversion!.hashCode) +
    (attemptedCredits == null ? 0 : attemptedCredits!.hashCode) +
    (attemptedCreditTypeDescriptor == null ? 0 : attemptedCreditTypeDescriptor!.hashCode) +
    (courseCatalogURL == null ? 0 : courseCatalogURL!.hashCode) +
    (coursePrograms.hashCode) +
    (courseRepeatCodeDescriptor == null ? 0 : courseRepeatCodeDescriptor!.hashCode) +
    (courseTitle == null ? 0 : courseTitle!.hashCode) +
    (creditCategories.hashCode) +
    (earnedAdditionalCredits.hashCode) +
    (earnedCreditConversion == null ? 0 : earnedCreditConversion!.hashCode) +
    (earnedCredits == null ? 0 : earnedCredits!.hashCode) +
    (earnedCreditTypeDescriptor == null ? 0 : earnedCreditTypeDescriptor!.hashCode) +
    (externalEducationOrganizationNameOfInstitution == null ? 0 : externalEducationOrganizationNameOfInstitution!.hashCode) +
    (finalLetterGradeEarned == null ? 0 : finalLetterGradeEarned!.hashCode) +
    (finalNumericGradeEarned == null ? 0 : finalNumericGradeEarned!.hashCode) +
    (methodCreditEarnedDescriptor == null ? 0 : methodCreditEarnedDescriptor!.hashCode) +
    (partialCourseTranscriptAwards.hashCode) +
    (sections.hashCode) +
    (whenTakenGradeLevelDescriptor == null ? 0 : whenTakenGradeLevelDescriptor!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiCourseTranscript[id=$id, courseAttemptResultDescriptor=$courseAttemptResultDescriptor, courseReference=$courseReference, externalEducationOrganizationReference=$externalEducationOrganizationReference, responsibleTeacherStaffReference=$responsibleTeacherStaffReference, studentAcademicRecordReference=$studentAcademicRecordReference, academicSubjects=$academicSubjects, alternativeCourseIdentificationCodes=$alternativeCourseIdentificationCodes, alternativeCourseTitle=$alternativeCourseTitle, assigningOrganizationIdentificationCode=$assigningOrganizationIdentificationCode, attemptedCreditConversion=$attemptedCreditConversion, attemptedCredits=$attemptedCredits, attemptedCreditTypeDescriptor=$attemptedCreditTypeDescriptor, courseCatalogURL=$courseCatalogURL, coursePrograms=$coursePrograms, courseRepeatCodeDescriptor=$courseRepeatCodeDescriptor, courseTitle=$courseTitle, creditCategories=$creditCategories, earnedAdditionalCredits=$earnedAdditionalCredits, earnedCreditConversion=$earnedCreditConversion, earnedCredits=$earnedCredits, earnedCreditTypeDescriptor=$earnedCreditTypeDescriptor, externalEducationOrganizationNameOfInstitution=$externalEducationOrganizationNameOfInstitution, finalLetterGradeEarned=$finalLetterGradeEarned, finalNumericGradeEarned=$finalNumericGradeEarned, methodCreditEarnedDescriptor=$methodCreditEarnedDescriptor, partialCourseTranscriptAwards=$partialCourseTranscriptAwards, sections=$sections, whenTakenGradeLevelDescriptor=$whenTakenGradeLevelDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'courseAttemptResultDescriptor'] = this.courseAttemptResultDescriptor;
      json[r'courseReference'] = this.courseReference;
    if (this.externalEducationOrganizationReference != null) {
      json[r'externalEducationOrganizationReference'] = this.externalEducationOrganizationReference;
    } else {
      json[r'externalEducationOrganizationReference'] = null;
    }
    if (this.responsibleTeacherStaffReference != null) {
      json[r'responsibleTeacherStaffReference'] = this.responsibleTeacherStaffReference;
    } else {
      json[r'responsibleTeacherStaffReference'] = null;
    }
      json[r'studentAcademicRecordReference'] = this.studentAcademicRecordReference;
      json[r'academicSubjects'] = this.academicSubjects;
      json[r'alternativeCourseIdentificationCodes'] = this.alternativeCourseIdentificationCodes;
    if (this.alternativeCourseTitle != null) {
      json[r'alternativeCourseTitle'] = this.alternativeCourseTitle;
    } else {
      json[r'alternativeCourseTitle'] = null;
    }
    if (this.assigningOrganizationIdentificationCode != null) {
      json[r'assigningOrganizationIdentificationCode'] = this.assigningOrganizationIdentificationCode;
    } else {
      json[r'assigningOrganizationIdentificationCode'] = null;
    }
    if (this.attemptedCreditConversion != null) {
      json[r'attemptedCreditConversion'] = this.attemptedCreditConversion;
    } else {
      json[r'attemptedCreditConversion'] = null;
    }
    if (this.attemptedCredits != null) {
      json[r'attemptedCredits'] = this.attemptedCredits;
    } else {
      json[r'attemptedCredits'] = null;
    }
    if (this.attemptedCreditTypeDescriptor != null) {
      json[r'attemptedCreditTypeDescriptor'] = this.attemptedCreditTypeDescriptor;
    } else {
      json[r'attemptedCreditTypeDescriptor'] = null;
    }
    if (this.courseCatalogURL != null) {
      json[r'courseCatalogURL'] = this.courseCatalogURL;
    } else {
      json[r'courseCatalogURL'] = null;
    }
      json[r'coursePrograms'] = this.coursePrograms;
    if (this.courseRepeatCodeDescriptor != null) {
      json[r'courseRepeatCodeDescriptor'] = this.courseRepeatCodeDescriptor;
    } else {
      json[r'courseRepeatCodeDescriptor'] = null;
    }
    if (this.courseTitle != null) {
      json[r'courseTitle'] = this.courseTitle;
    } else {
      json[r'courseTitle'] = null;
    }
      json[r'creditCategories'] = this.creditCategories;
      json[r'earnedAdditionalCredits'] = this.earnedAdditionalCredits;
    if (this.earnedCreditConversion != null) {
      json[r'earnedCreditConversion'] = this.earnedCreditConversion;
    } else {
      json[r'earnedCreditConversion'] = null;
    }
    if (this.earnedCredits != null) {
      json[r'earnedCredits'] = this.earnedCredits;
    } else {
      json[r'earnedCredits'] = null;
    }
    if (this.earnedCreditTypeDescriptor != null) {
      json[r'earnedCreditTypeDescriptor'] = this.earnedCreditTypeDescriptor;
    } else {
      json[r'earnedCreditTypeDescriptor'] = null;
    }
    if (this.externalEducationOrganizationNameOfInstitution != null) {
      json[r'externalEducationOrganizationNameOfInstitution'] = this.externalEducationOrganizationNameOfInstitution;
    } else {
      json[r'externalEducationOrganizationNameOfInstitution'] = null;
    }
    if (this.finalLetterGradeEarned != null) {
      json[r'finalLetterGradeEarned'] = this.finalLetterGradeEarned;
    } else {
      json[r'finalLetterGradeEarned'] = null;
    }
    if (this.finalNumericGradeEarned != null) {
      json[r'finalNumericGradeEarned'] = this.finalNumericGradeEarned;
    } else {
      json[r'finalNumericGradeEarned'] = null;
    }
    if (this.methodCreditEarnedDescriptor != null) {
      json[r'methodCreditEarnedDescriptor'] = this.methodCreditEarnedDescriptor;
    } else {
      json[r'methodCreditEarnedDescriptor'] = null;
    }
      json[r'partialCourseTranscriptAwards'] = this.partialCourseTranscriptAwards;
      json[r'sections'] = this.sections;
    if (this.whenTakenGradeLevelDescriptor != null) {
      json[r'whenTakenGradeLevelDescriptor'] = this.whenTakenGradeLevelDescriptor;
    } else {
      json[r'whenTakenGradeLevelDescriptor'] = null;
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

  /// Returns a new [EdFiCourseTranscript] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCourseTranscript? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCourseTranscript[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCourseTranscript[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCourseTranscript(
        id: mapValueOfType<String>(json, r'id'),
        courseAttemptResultDescriptor: mapValueOfType<String>(json, r'courseAttemptResultDescriptor')!,
        courseReference: EdFiCourseReference.fromJson(json[r'courseReference'])!,
        externalEducationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'externalEducationOrganizationReference']),
        responsibleTeacherStaffReference: EdFiStaffReference.fromJson(json[r'responsibleTeacherStaffReference']),
        studentAcademicRecordReference: EdFiStudentAcademicRecordReference.fromJson(json[r'studentAcademicRecordReference'])!,
        academicSubjects: EdFiCourseTranscriptAcademicSubject.listFromJson(json[r'academicSubjects']),
        alternativeCourseIdentificationCodes: EdFiCourseTranscriptAlternativeCourseIdentificationCode.listFromJson(json[r'alternativeCourseIdentificationCodes']),
        alternativeCourseTitle: mapValueOfType<String>(json, r'alternativeCourseTitle'),
        assigningOrganizationIdentificationCode: mapValueOfType<String>(json, r'assigningOrganizationIdentificationCode'),
        attemptedCreditConversion: mapValueOfType<double>(json, r'attemptedCreditConversion'),
        attemptedCredits: mapValueOfType<double>(json, r'attemptedCredits'),
        attemptedCreditTypeDescriptor: mapValueOfType<String>(json, r'attemptedCreditTypeDescriptor'),
        courseCatalogURL: mapValueOfType<String>(json, r'courseCatalogURL'),
        coursePrograms: EdFiCourseTranscriptCourseProgram.listFromJson(json[r'coursePrograms']),
        courseRepeatCodeDescriptor: mapValueOfType<String>(json, r'courseRepeatCodeDescriptor'),
        courseTitle: mapValueOfType<String>(json, r'courseTitle'),
        creditCategories: EdFiCourseTranscriptCreditCategory.listFromJson(json[r'creditCategories']),
        earnedAdditionalCredits: EdFiCourseTranscriptEarnedAdditionalCredits.listFromJson(json[r'earnedAdditionalCredits']),
        earnedCreditConversion: mapValueOfType<double>(json, r'earnedCreditConversion'),
        earnedCredits: mapValueOfType<double>(json, r'earnedCredits'),
        earnedCreditTypeDescriptor: mapValueOfType<String>(json, r'earnedCreditTypeDescriptor'),
        externalEducationOrganizationNameOfInstitution: mapValueOfType<String>(json, r'externalEducationOrganizationNameOfInstitution'),
        finalLetterGradeEarned: mapValueOfType<String>(json, r'finalLetterGradeEarned'),
        finalNumericGradeEarned: mapValueOfType<double>(json, r'finalNumericGradeEarned'),
        methodCreditEarnedDescriptor: mapValueOfType<String>(json, r'methodCreditEarnedDescriptor'),
        partialCourseTranscriptAwards: EdFiCourseTranscriptPartialCourseTranscriptAwards.listFromJson(json[r'partialCourseTranscriptAwards']),
        sections: EdFiCourseTranscriptSection.listFromJson(json[r'sections']),
        whenTakenGradeLevelDescriptor: mapValueOfType<String>(json, r'whenTakenGradeLevelDescriptor'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiCourseTranscript> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCourseTranscript>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCourseTranscript.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCourseTranscript> mapFromJson(dynamic json) {
    final map = <String, EdFiCourseTranscript>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCourseTranscript.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCourseTranscript-objects as value to a dart map
  static Map<String, List<EdFiCourseTranscript>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCourseTranscript>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCourseTranscript.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'courseAttemptResultDescriptor',
    'courseReference',
    'studentAcademicRecordReference',
  };
}

