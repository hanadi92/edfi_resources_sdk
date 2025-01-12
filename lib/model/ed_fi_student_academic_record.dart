//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAcademicRecord {
  /// Returns a new [EdFiStudentAcademicRecord] instance.
  EdFiStudentAcademicRecord({
    this.id,
    required this.termDescriptor,
    required this.educationOrganizationReference,
    required this.schoolYearTypeReference,
    required this.studentReference,
    this.academicHonors = const [],
    this.classRanking,
    this.cumulativeAttemptedCreditConversion,
    this.cumulativeAttemptedCredits,
    this.cumulativeAttemptedCreditTypeDescriptor,
    this.cumulativeEarnedCreditConversion,
    this.cumulativeEarnedCredits,
    this.cumulativeEarnedCreditTypeDescriptor,
    this.diplomas = const [],
    this.gradePointAverages = const [],
    this.projectedGraduationDate,
    this.recognitions = const [],
    this.reportCards = const [],
    this.sessionAttemptedCreditConversion,
    this.sessionAttemptedCredits,
    this.sessionAttemptedCreditTypeDescriptor,
    this.sessionEarnedCreditConversion,
    this.sessionEarnedCredits,
    this.sessionEarnedCreditTypeDescriptor,
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

  /// The term for the session during the school year.
  String termDescriptor;

  EdFiEducationOrganizationReference educationOrganizationReference;

  EdFiSchoolYearTypeReference schoolYearTypeReference;

  EdFiStudentReference studentReference;

  /// An unordered collection of studentAcademicRecordAcademicHonors. Academic distinctions earned by or awarded to the student.
  List<EdFiStudentAcademicRecordAcademicHonor> academicHonors;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiStudentAcademicRecordClassRanking? classRanking;

  /// Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? cumulativeAttemptedCreditConversion;

  /// The value of credits or units of value awarded for the completion of a course.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 999999.999
  double? cumulativeAttemptedCredits;

  /// The type of credits or units of value awarded for the completion of a course.
  String? cumulativeAttemptedCreditTypeDescriptor;

  /// Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? cumulativeEarnedCreditConversion;

  /// The value of credits or units of value awarded for the completion of a course.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 999999.999
  double? cumulativeEarnedCredits;

  /// The type of credits or units of value awarded for the completion of a course.
  String? cumulativeEarnedCreditTypeDescriptor;

  /// An unordered collection of studentAcademicRecordDiplomas. Diploma(s) earned by the student.
  List<EdFiStudentAcademicRecordDiploma> diplomas;

  /// An unordered collection of studentAcademicRecordGradePointAverages. The grade point average for an individual computed as the grade points earned divided by the number of credits attempted.
  List<EdFiStudentAcademicRecordGradePointAverage> gradePointAverages;

  /// The month and year the student is projected to graduate.
  DateTime? projectedGraduationDate;

  /// An unordered collection of studentAcademicRecordRecognitions. Recognitions given to the student for accomplishments in a co-curricular or extracurricular activity.
  List<EdFiStudentAcademicRecordRecognition> recognitions;

  /// An unordered collection of studentAcademicRecordReportCards. Report cards for the student.
  List<EdFiStudentAcademicRecordReportCard> reportCards;

  /// Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? sessionAttemptedCreditConversion;

  /// The value of credits or units of value awarded for the completion of a course.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 999999.999
  double? sessionAttemptedCredits;

  /// The type of credits or units of value awarded for the completion of a course.
  String? sessionAttemptedCreditTypeDescriptor;

  /// Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? sessionEarnedCreditConversion;

  /// The value of credits or units of value awarded for the completion of a course.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 999999.999
  double? sessionEarnedCredits;

  /// The type of credits or units of value awarded for the completion of a course.
  String? sessionEarnedCreditTypeDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAcademicRecord &&
    other.id == id &&
    other.termDescriptor == termDescriptor &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.schoolYearTypeReference == schoolYearTypeReference &&
    other.studentReference == studentReference &&
    _deepEquality.equals(other.academicHonors, academicHonors) &&
    other.classRanking == classRanking &&
    other.cumulativeAttemptedCreditConversion == cumulativeAttemptedCreditConversion &&
    other.cumulativeAttemptedCredits == cumulativeAttemptedCredits &&
    other.cumulativeAttemptedCreditTypeDescriptor == cumulativeAttemptedCreditTypeDescriptor &&
    other.cumulativeEarnedCreditConversion == cumulativeEarnedCreditConversion &&
    other.cumulativeEarnedCredits == cumulativeEarnedCredits &&
    other.cumulativeEarnedCreditTypeDescriptor == cumulativeEarnedCreditTypeDescriptor &&
    _deepEquality.equals(other.diplomas, diplomas) &&
    _deepEquality.equals(other.gradePointAverages, gradePointAverages) &&
    other.projectedGraduationDate == projectedGraduationDate &&
    _deepEquality.equals(other.recognitions, recognitions) &&
    _deepEquality.equals(other.reportCards, reportCards) &&
    other.sessionAttemptedCreditConversion == sessionAttemptedCreditConversion &&
    other.sessionAttemptedCredits == sessionAttemptedCredits &&
    other.sessionAttemptedCreditTypeDescriptor == sessionAttemptedCreditTypeDescriptor &&
    other.sessionEarnedCreditConversion == sessionEarnedCreditConversion &&
    other.sessionEarnedCredits == sessionEarnedCredits &&
    other.sessionEarnedCreditTypeDescriptor == sessionEarnedCreditTypeDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (termDescriptor.hashCode) +
    (educationOrganizationReference.hashCode) +
    (schoolYearTypeReference.hashCode) +
    (studentReference.hashCode) +
    (academicHonors.hashCode) +
    (classRanking == null ? 0 : classRanking!.hashCode) +
    (cumulativeAttemptedCreditConversion == null ? 0 : cumulativeAttemptedCreditConversion!.hashCode) +
    (cumulativeAttemptedCredits == null ? 0 : cumulativeAttemptedCredits!.hashCode) +
    (cumulativeAttemptedCreditTypeDescriptor == null ? 0 : cumulativeAttemptedCreditTypeDescriptor!.hashCode) +
    (cumulativeEarnedCreditConversion == null ? 0 : cumulativeEarnedCreditConversion!.hashCode) +
    (cumulativeEarnedCredits == null ? 0 : cumulativeEarnedCredits!.hashCode) +
    (cumulativeEarnedCreditTypeDescriptor == null ? 0 : cumulativeEarnedCreditTypeDescriptor!.hashCode) +
    (diplomas.hashCode) +
    (gradePointAverages.hashCode) +
    (projectedGraduationDate == null ? 0 : projectedGraduationDate!.hashCode) +
    (recognitions.hashCode) +
    (reportCards.hashCode) +
    (sessionAttemptedCreditConversion == null ? 0 : sessionAttemptedCreditConversion!.hashCode) +
    (sessionAttemptedCredits == null ? 0 : sessionAttemptedCredits!.hashCode) +
    (sessionAttemptedCreditTypeDescriptor == null ? 0 : sessionAttemptedCreditTypeDescriptor!.hashCode) +
    (sessionEarnedCreditConversion == null ? 0 : sessionEarnedCreditConversion!.hashCode) +
    (sessionEarnedCredits == null ? 0 : sessionEarnedCredits!.hashCode) +
    (sessionEarnedCreditTypeDescriptor == null ? 0 : sessionEarnedCreditTypeDescriptor!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentAcademicRecord[id=$id, termDescriptor=$termDescriptor, educationOrganizationReference=$educationOrganizationReference, schoolYearTypeReference=$schoolYearTypeReference, studentReference=$studentReference, academicHonors=$academicHonors, classRanking=$classRanking, cumulativeAttemptedCreditConversion=$cumulativeAttemptedCreditConversion, cumulativeAttemptedCredits=$cumulativeAttemptedCredits, cumulativeAttemptedCreditTypeDescriptor=$cumulativeAttemptedCreditTypeDescriptor, cumulativeEarnedCreditConversion=$cumulativeEarnedCreditConversion, cumulativeEarnedCredits=$cumulativeEarnedCredits, cumulativeEarnedCreditTypeDescriptor=$cumulativeEarnedCreditTypeDescriptor, diplomas=$diplomas, gradePointAverages=$gradePointAverages, projectedGraduationDate=$projectedGraduationDate, recognitions=$recognitions, reportCards=$reportCards, sessionAttemptedCreditConversion=$sessionAttemptedCreditConversion, sessionAttemptedCredits=$sessionAttemptedCredits, sessionAttemptedCreditTypeDescriptor=$sessionAttemptedCreditTypeDescriptor, sessionEarnedCreditConversion=$sessionEarnedCreditConversion, sessionEarnedCredits=$sessionEarnedCredits, sessionEarnedCreditTypeDescriptor=$sessionEarnedCreditTypeDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'termDescriptor'] = this.termDescriptor;
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'schoolYearTypeReference'] = this.schoolYearTypeReference;
      json[r'studentReference'] = this.studentReference;
      json[r'academicHonors'] = this.academicHonors;
    if (this.classRanking != null) {
      json[r'classRanking'] = this.classRanking;
    } else {
      json[r'classRanking'] = null;
    }
    if (this.cumulativeAttemptedCreditConversion != null) {
      json[r'cumulativeAttemptedCreditConversion'] = this.cumulativeAttemptedCreditConversion;
    } else {
      json[r'cumulativeAttemptedCreditConversion'] = null;
    }
    if (this.cumulativeAttemptedCredits != null) {
      json[r'cumulativeAttemptedCredits'] = this.cumulativeAttemptedCredits;
    } else {
      json[r'cumulativeAttemptedCredits'] = null;
    }
    if (this.cumulativeAttemptedCreditTypeDescriptor != null) {
      json[r'cumulativeAttemptedCreditTypeDescriptor'] = this.cumulativeAttemptedCreditTypeDescriptor;
    } else {
      json[r'cumulativeAttemptedCreditTypeDescriptor'] = null;
    }
    if (this.cumulativeEarnedCreditConversion != null) {
      json[r'cumulativeEarnedCreditConversion'] = this.cumulativeEarnedCreditConversion;
    } else {
      json[r'cumulativeEarnedCreditConversion'] = null;
    }
    if (this.cumulativeEarnedCredits != null) {
      json[r'cumulativeEarnedCredits'] = this.cumulativeEarnedCredits;
    } else {
      json[r'cumulativeEarnedCredits'] = null;
    }
    if (this.cumulativeEarnedCreditTypeDescriptor != null) {
      json[r'cumulativeEarnedCreditTypeDescriptor'] = this.cumulativeEarnedCreditTypeDescriptor;
    } else {
      json[r'cumulativeEarnedCreditTypeDescriptor'] = null;
    }
      json[r'diplomas'] = this.diplomas;
      json[r'gradePointAverages'] = this.gradePointAverages;
    if (this.projectedGraduationDate != null) {
      json[r'projectedGraduationDate'] = _dateFormatter.format(this.projectedGraduationDate!.toUtc());
    } else {
      json[r'projectedGraduationDate'] = null;
    }
      json[r'recognitions'] = this.recognitions;
      json[r'reportCards'] = this.reportCards;
    if (this.sessionAttemptedCreditConversion != null) {
      json[r'sessionAttemptedCreditConversion'] = this.sessionAttemptedCreditConversion;
    } else {
      json[r'sessionAttemptedCreditConversion'] = null;
    }
    if (this.sessionAttemptedCredits != null) {
      json[r'sessionAttemptedCredits'] = this.sessionAttemptedCredits;
    } else {
      json[r'sessionAttemptedCredits'] = null;
    }
    if (this.sessionAttemptedCreditTypeDescriptor != null) {
      json[r'sessionAttemptedCreditTypeDescriptor'] = this.sessionAttemptedCreditTypeDescriptor;
    } else {
      json[r'sessionAttemptedCreditTypeDescriptor'] = null;
    }
    if (this.sessionEarnedCreditConversion != null) {
      json[r'sessionEarnedCreditConversion'] = this.sessionEarnedCreditConversion;
    } else {
      json[r'sessionEarnedCreditConversion'] = null;
    }
    if (this.sessionEarnedCredits != null) {
      json[r'sessionEarnedCredits'] = this.sessionEarnedCredits;
    } else {
      json[r'sessionEarnedCredits'] = null;
    }
    if (this.sessionEarnedCreditTypeDescriptor != null) {
      json[r'sessionEarnedCreditTypeDescriptor'] = this.sessionEarnedCreditTypeDescriptor;
    } else {
      json[r'sessionEarnedCreditTypeDescriptor'] = null;
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

  /// Returns a new [EdFiStudentAcademicRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAcademicRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAcademicRecord[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAcademicRecord[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAcademicRecord(
        id: mapValueOfType<String>(json, r'id'),
        termDescriptor: mapValueOfType<String>(json, r'termDescriptor')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        schoolYearTypeReference: EdFiSchoolYearTypeReference.fromJson(json[r'schoolYearTypeReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        academicHonors: EdFiStudentAcademicRecordAcademicHonor.listFromJson(json[r'academicHonors']),
        classRanking: EdFiStudentAcademicRecordClassRanking.fromJson(json[r'classRanking']),
        cumulativeAttemptedCreditConversion: mapValueOfType<double>(json, r'cumulativeAttemptedCreditConversion'),
        cumulativeAttemptedCredits: mapValueOfType<double>(json, r'cumulativeAttemptedCredits'),
        cumulativeAttemptedCreditTypeDescriptor: mapValueOfType<String>(json, r'cumulativeAttemptedCreditTypeDescriptor'),
        cumulativeEarnedCreditConversion: mapValueOfType<double>(json, r'cumulativeEarnedCreditConversion'),
        cumulativeEarnedCredits: mapValueOfType<double>(json, r'cumulativeEarnedCredits'),
        cumulativeEarnedCreditTypeDescriptor: mapValueOfType<String>(json, r'cumulativeEarnedCreditTypeDescriptor'),
        diplomas: EdFiStudentAcademicRecordDiploma.listFromJson(json[r'diplomas']),
        gradePointAverages: EdFiStudentAcademicRecordGradePointAverage.listFromJson(json[r'gradePointAverages']),
        projectedGraduationDate: mapDateTime(json, r'projectedGraduationDate', r''),
        recognitions: EdFiStudentAcademicRecordRecognition.listFromJson(json[r'recognitions']),
        reportCards: EdFiStudentAcademicRecordReportCard.listFromJson(json[r'reportCards']),
        sessionAttemptedCreditConversion: mapValueOfType<double>(json, r'sessionAttemptedCreditConversion'),
        sessionAttemptedCredits: mapValueOfType<double>(json, r'sessionAttemptedCredits'),
        sessionAttemptedCreditTypeDescriptor: mapValueOfType<String>(json, r'sessionAttemptedCreditTypeDescriptor'),
        sessionEarnedCreditConversion: mapValueOfType<double>(json, r'sessionEarnedCreditConversion'),
        sessionEarnedCredits: mapValueOfType<double>(json, r'sessionEarnedCredits'),
        sessionEarnedCreditTypeDescriptor: mapValueOfType<String>(json, r'sessionEarnedCreditTypeDescriptor'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentAcademicRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAcademicRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAcademicRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAcademicRecord> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAcademicRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAcademicRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAcademicRecord-objects as value to a dart map
  static Map<String, List<EdFiStudentAcademicRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAcademicRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAcademicRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'termDescriptor',
    'educationOrganizationReference',
    'schoolYearTypeReference',
    'studentReference',
  };
}

