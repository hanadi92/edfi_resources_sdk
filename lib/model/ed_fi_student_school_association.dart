//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentSchoolAssociation {
  /// Returns a new [EdFiStudentSchoolAssociation] instance.
  EdFiStudentSchoolAssociation({
    this.id,
    required this.entryDate,
    this.calendarReference,
    this.classOfSchoolYearTypeReference,
    this.graduationPlanReference,
    this.nextYearSchoolReference,
    required this.schoolReference,
    this.schoolYearTypeReference,
    required this.studentReference,
    this.alternativeGraduationPlans = const [],
    this.educationPlans = const [],
    this.employedWhileEnrolled,
    this.enrollmentTypeDescriptor,
    required this.entryGradeLevelDescriptor,
    this.entryGradeLevelReasonDescriptor,
    this.entryTypeDescriptor,
    this.exitWithdrawDate,
    this.exitWithdrawTypeDescriptor,
    this.fullTimeEquivalency,
    this.nextYearGradeLevelDescriptor,
    this.primarySchool,
    this.repeatGradeIndicator,
    this.residencyStatusDescriptor,
    this.schoolChoice,
    this.schoolChoiceBasisDescriptor,
    this.schoolChoiceTransfer,
    this.termCompletionIndicator,
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

  /// The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student's enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime entryDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiCalendarReference? calendarReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiSchoolYearTypeReference? classOfSchoolYearTypeReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiGraduationPlanReference? graduationPlanReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiSchoolReference? nextYearSchoolReference;

  EdFiSchoolReference schoolReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiSchoolYearTypeReference? schoolYearTypeReference;

  EdFiStudentReference studentReference;

  /// An unordered collection of studentSchoolAssociationAlternativeGraduationPlans. The secondary graduation plan or plans associated with the student enrolled in the school.
  List<EdFiStudentSchoolAssociationAlternativeGraduationPlan> alternativeGraduationPlans;

  /// An unordered collection of studentSchoolAssociationEducationPlans. The type of education plan(s) the student is following, if appropriate.
  List<EdFiStudentSchoolAssociationEducationPlan> educationPlans;

  /// An individual who is a paid employee or works in his or her own business, profession, or farm and at the same time is enrolled in secondary, postsecondary, or adult education.
  bool? employedWhileEnrolled;

  /// The type of enrollment reflected by the StudentSchoolAssociation.
  String? enrollmentTypeDescriptor;

  /// The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session.
  String entryGradeLevelDescriptor;

  /// The primary reason as to why a staff member determined that a student should be promoted or not (or be demoted) at the end of a given school term.
  String? entryGradeLevelReasonDescriptor;

  /// The process by which a student enters a school during a given academic session.
  String? entryTypeDescriptor;

  /// The recorded exit or withdraw date for the student.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? exitWithdrawDate;

  /// The circumstances under which the student exited from membership in an educational institution.
  String? exitWithdrawTypeDescriptor;

  /// The full-time equivalent ratio for the student s assignment to a school for services or instruction. For example, a full-time student would have an FTE value of 1 while a half-time student would have an FTE value of 0.5.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 9.9999
  double? fullTimeEquivalency;

  /// The anticipated grade level for the student for the next school year.
  String? nextYearGradeLevelDescriptor;

  /// Indicates if a given enrollment record should be considered the primary record for a student.
  bool? primarySchool;

  /// An indicator of whether the student is enrolling to repeat a grade level, either by failure or an agreement to hold the student back.
  bool? repeatGradeIndicator;

  /// An indication of the location of a persons legal residence relative to (within or outside of) the boundaries of the public school attended and its administrative unit.
  String? residencyStatusDescriptor;

  /// An indication of whether the student enrolled in this school under the provisions for public school choice
  bool? schoolChoice;

  /// The legal basis for the school choice enrollment according to local, state or federal policy or regulation. (The descriptor provides the list of available bases specific to the state
  String? schoolChoiceBasisDescriptor;

  /// An indication of whether students transferred in or out of the school did so during the school year under the provisions for public school choice in accordance with Title I, Part A, Section 1116.
  bool? schoolChoiceTransfer;

  /// Idicates whether or not a student completed the most recent school term.
  bool? termCompletionIndicator;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentSchoolAssociation &&
    other.id == id &&
    other.entryDate == entryDate &&
    other.calendarReference == calendarReference &&
    other.classOfSchoolYearTypeReference == classOfSchoolYearTypeReference &&
    other.graduationPlanReference == graduationPlanReference &&
    other.nextYearSchoolReference == nextYearSchoolReference &&
    other.schoolReference == schoolReference &&
    other.schoolYearTypeReference == schoolYearTypeReference &&
    other.studentReference == studentReference &&
    _deepEquality.equals(other.alternativeGraduationPlans, alternativeGraduationPlans) &&
    _deepEquality.equals(other.educationPlans, educationPlans) &&
    other.employedWhileEnrolled == employedWhileEnrolled &&
    other.enrollmentTypeDescriptor == enrollmentTypeDescriptor &&
    other.entryGradeLevelDescriptor == entryGradeLevelDescriptor &&
    other.entryGradeLevelReasonDescriptor == entryGradeLevelReasonDescriptor &&
    other.entryTypeDescriptor == entryTypeDescriptor &&
    other.exitWithdrawDate == exitWithdrawDate &&
    other.exitWithdrawTypeDescriptor == exitWithdrawTypeDescriptor &&
    other.fullTimeEquivalency == fullTimeEquivalency &&
    other.nextYearGradeLevelDescriptor == nextYearGradeLevelDescriptor &&
    other.primarySchool == primarySchool &&
    other.repeatGradeIndicator == repeatGradeIndicator &&
    other.residencyStatusDescriptor == residencyStatusDescriptor &&
    other.schoolChoice == schoolChoice &&
    other.schoolChoiceBasisDescriptor == schoolChoiceBasisDescriptor &&
    other.schoolChoiceTransfer == schoolChoiceTransfer &&
    other.termCompletionIndicator == termCompletionIndicator &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (entryDate.hashCode) +
    (calendarReference == null ? 0 : calendarReference!.hashCode) +
    (classOfSchoolYearTypeReference == null ? 0 : classOfSchoolYearTypeReference!.hashCode) +
    (graduationPlanReference == null ? 0 : graduationPlanReference!.hashCode) +
    (nextYearSchoolReference == null ? 0 : nextYearSchoolReference!.hashCode) +
    (schoolReference.hashCode) +
    (schoolYearTypeReference == null ? 0 : schoolYearTypeReference!.hashCode) +
    (studentReference.hashCode) +
    (alternativeGraduationPlans.hashCode) +
    (educationPlans.hashCode) +
    (employedWhileEnrolled == null ? 0 : employedWhileEnrolled!.hashCode) +
    (enrollmentTypeDescriptor == null ? 0 : enrollmentTypeDescriptor!.hashCode) +
    (entryGradeLevelDescriptor.hashCode) +
    (entryGradeLevelReasonDescriptor == null ? 0 : entryGradeLevelReasonDescriptor!.hashCode) +
    (entryTypeDescriptor == null ? 0 : entryTypeDescriptor!.hashCode) +
    (exitWithdrawDate == null ? 0 : exitWithdrawDate!.hashCode) +
    (exitWithdrawTypeDescriptor == null ? 0 : exitWithdrawTypeDescriptor!.hashCode) +
    (fullTimeEquivalency == null ? 0 : fullTimeEquivalency!.hashCode) +
    (nextYearGradeLevelDescriptor == null ? 0 : nextYearGradeLevelDescriptor!.hashCode) +
    (primarySchool == null ? 0 : primarySchool!.hashCode) +
    (repeatGradeIndicator == null ? 0 : repeatGradeIndicator!.hashCode) +
    (residencyStatusDescriptor == null ? 0 : residencyStatusDescriptor!.hashCode) +
    (schoolChoice == null ? 0 : schoolChoice!.hashCode) +
    (schoolChoiceBasisDescriptor == null ? 0 : schoolChoiceBasisDescriptor!.hashCode) +
    (schoolChoiceTransfer == null ? 0 : schoolChoiceTransfer!.hashCode) +
    (termCompletionIndicator == null ? 0 : termCompletionIndicator!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentSchoolAssociation[id=$id, entryDate=$entryDate, calendarReference=$calendarReference, classOfSchoolYearTypeReference=$classOfSchoolYearTypeReference, graduationPlanReference=$graduationPlanReference, nextYearSchoolReference=$nextYearSchoolReference, schoolReference=$schoolReference, schoolYearTypeReference=$schoolYearTypeReference, studentReference=$studentReference, alternativeGraduationPlans=$alternativeGraduationPlans, educationPlans=$educationPlans, employedWhileEnrolled=$employedWhileEnrolled, enrollmentTypeDescriptor=$enrollmentTypeDescriptor, entryGradeLevelDescriptor=$entryGradeLevelDescriptor, entryGradeLevelReasonDescriptor=$entryGradeLevelReasonDescriptor, entryTypeDescriptor=$entryTypeDescriptor, exitWithdrawDate=$exitWithdrawDate, exitWithdrawTypeDescriptor=$exitWithdrawTypeDescriptor, fullTimeEquivalency=$fullTimeEquivalency, nextYearGradeLevelDescriptor=$nextYearGradeLevelDescriptor, primarySchool=$primarySchool, repeatGradeIndicator=$repeatGradeIndicator, residencyStatusDescriptor=$residencyStatusDescriptor, schoolChoice=$schoolChoice, schoolChoiceBasisDescriptor=$schoolChoiceBasisDescriptor, schoolChoiceTransfer=$schoolChoiceTransfer, termCompletionIndicator=$termCompletionIndicator, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'entryDate'] = _dateFormatter.format(this.entryDate.toUtc());
    if (this.calendarReference != null) {
      json[r'calendarReference'] = this.calendarReference;
    } else {
      json[r'calendarReference'] = null;
    }
    if (this.classOfSchoolYearTypeReference != null) {
      json[r'classOfSchoolYearTypeReference'] = this.classOfSchoolYearTypeReference;
    } else {
      json[r'classOfSchoolYearTypeReference'] = null;
    }
    if (this.graduationPlanReference != null) {
      json[r'graduationPlanReference'] = this.graduationPlanReference;
    } else {
      json[r'graduationPlanReference'] = null;
    }
    if (this.nextYearSchoolReference != null) {
      json[r'nextYearSchoolReference'] = this.nextYearSchoolReference;
    } else {
      json[r'nextYearSchoolReference'] = null;
    }
      json[r'schoolReference'] = this.schoolReference;
    if (this.schoolYearTypeReference != null) {
      json[r'schoolYearTypeReference'] = this.schoolYearTypeReference;
    } else {
      json[r'schoolYearTypeReference'] = null;
    }
      json[r'studentReference'] = this.studentReference;
      json[r'alternativeGraduationPlans'] = this.alternativeGraduationPlans;
      json[r'educationPlans'] = this.educationPlans;
    if (this.employedWhileEnrolled != null) {
      json[r'employedWhileEnrolled'] = this.employedWhileEnrolled;
    } else {
      json[r'employedWhileEnrolled'] = null;
    }
    if (this.enrollmentTypeDescriptor != null) {
      json[r'enrollmentTypeDescriptor'] = this.enrollmentTypeDescriptor;
    } else {
      json[r'enrollmentTypeDescriptor'] = null;
    }
      json[r'entryGradeLevelDescriptor'] = this.entryGradeLevelDescriptor;
    if (this.entryGradeLevelReasonDescriptor != null) {
      json[r'entryGradeLevelReasonDescriptor'] = this.entryGradeLevelReasonDescriptor;
    } else {
      json[r'entryGradeLevelReasonDescriptor'] = null;
    }
    if (this.entryTypeDescriptor != null) {
      json[r'entryTypeDescriptor'] = this.entryTypeDescriptor;
    } else {
      json[r'entryTypeDescriptor'] = null;
    }
    if (this.exitWithdrawDate != null) {
      json[r'exitWithdrawDate'] = _dateFormatter.format(this.exitWithdrawDate!.toUtc());
    } else {
      json[r'exitWithdrawDate'] = null;
    }
    if (this.exitWithdrawTypeDescriptor != null) {
      json[r'exitWithdrawTypeDescriptor'] = this.exitWithdrawTypeDescriptor;
    } else {
      json[r'exitWithdrawTypeDescriptor'] = null;
    }
    if (this.fullTimeEquivalency != null) {
      json[r'fullTimeEquivalency'] = this.fullTimeEquivalency;
    } else {
      json[r'fullTimeEquivalency'] = null;
    }
    if (this.nextYearGradeLevelDescriptor != null) {
      json[r'nextYearGradeLevelDescriptor'] = this.nextYearGradeLevelDescriptor;
    } else {
      json[r'nextYearGradeLevelDescriptor'] = null;
    }
    if (this.primarySchool != null) {
      json[r'primarySchool'] = this.primarySchool;
    } else {
      json[r'primarySchool'] = null;
    }
    if (this.repeatGradeIndicator != null) {
      json[r'repeatGradeIndicator'] = this.repeatGradeIndicator;
    } else {
      json[r'repeatGradeIndicator'] = null;
    }
    if (this.residencyStatusDescriptor != null) {
      json[r'residencyStatusDescriptor'] = this.residencyStatusDescriptor;
    } else {
      json[r'residencyStatusDescriptor'] = null;
    }
    if (this.schoolChoice != null) {
      json[r'schoolChoice'] = this.schoolChoice;
    } else {
      json[r'schoolChoice'] = null;
    }
    if (this.schoolChoiceBasisDescriptor != null) {
      json[r'schoolChoiceBasisDescriptor'] = this.schoolChoiceBasisDescriptor;
    } else {
      json[r'schoolChoiceBasisDescriptor'] = null;
    }
    if (this.schoolChoiceTransfer != null) {
      json[r'schoolChoiceTransfer'] = this.schoolChoiceTransfer;
    } else {
      json[r'schoolChoiceTransfer'] = null;
    }
    if (this.termCompletionIndicator != null) {
      json[r'termCompletionIndicator'] = this.termCompletionIndicator;
    } else {
      json[r'termCompletionIndicator'] = null;
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

  /// Returns a new [EdFiStudentSchoolAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentSchoolAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentSchoolAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentSchoolAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentSchoolAssociation(
        id: mapValueOfType<String>(json, r'id'),
        entryDate: mapDateTime(json, r'entryDate', r'')!,
        calendarReference: EdFiCalendarReference.fromJson(json[r'calendarReference']),
        classOfSchoolYearTypeReference: EdFiSchoolYearTypeReference.fromJson(json[r'classOfSchoolYearTypeReference']),
        graduationPlanReference: EdFiGraduationPlanReference.fromJson(json[r'graduationPlanReference']),
        nextYearSchoolReference: EdFiSchoolReference.fromJson(json[r'nextYearSchoolReference']),
        schoolReference: EdFiSchoolReference.fromJson(json[r'schoolReference'])!,
        schoolYearTypeReference: EdFiSchoolYearTypeReference.fromJson(json[r'schoolYearTypeReference']),
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        alternativeGraduationPlans: EdFiStudentSchoolAssociationAlternativeGraduationPlan.listFromJson(json[r'alternativeGraduationPlans']),
        educationPlans: EdFiStudentSchoolAssociationEducationPlan.listFromJson(json[r'educationPlans']),
        employedWhileEnrolled: mapValueOfType<bool>(json, r'employedWhileEnrolled'),
        enrollmentTypeDescriptor: mapValueOfType<String>(json, r'enrollmentTypeDescriptor'),
        entryGradeLevelDescriptor: mapValueOfType<String>(json, r'entryGradeLevelDescriptor')!,
        entryGradeLevelReasonDescriptor: mapValueOfType<String>(json, r'entryGradeLevelReasonDescriptor'),
        entryTypeDescriptor: mapValueOfType<String>(json, r'entryTypeDescriptor'),
        exitWithdrawDate: mapDateTime(json, r'exitWithdrawDate', r''),
        exitWithdrawTypeDescriptor: mapValueOfType<String>(json, r'exitWithdrawTypeDescriptor'),
        fullTimeEquivalency: mapValueOfType<double>(json, r'fullTimeEquivalency'),
        nextYearGradeLevelDescriptor: mapValueOfType<String>(json, r'nextYearGradeLevelDescriptor'),
        primarySchool: mapValueOfType<bool>(json, r'primarySchool'),
        repeatGradeIndicator: mapValueOfType<bool>(json, r'repeatGradeIndicator'),
        residencyStatusDescriptor: mapValueOfType<String>(json, r'residencyStatusDescriptor'),
        schoolChoice: mapValueOfType<bool>(json, r'schoolChoice'),
        schoolChoiceBasisDescriptor: mapValueOfType<String>(json, r'schoolChoiceBasisDescriptor'),
        schoolChoiceTransfer: mapValueOfType<bool>(json, r'schoolChoiceTransfer'),
        termCompletionIndicator: mapValueOfType<bool>(json, r'termCompletionIndicator'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentSchoolAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentSchoolAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentSchoolAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentSchoolAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentSchoolAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentSchoolAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentSchoolAssociation-objects as value to a dart map
  static Map<String, List<EdFiStudentSchoolAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentSchoolAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentSchoolAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'entryDate',
    'schoolReference',
    'studentReference',
    'entryGradeLevelDescriptor',
  };
}

