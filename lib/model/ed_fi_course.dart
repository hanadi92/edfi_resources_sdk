//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCourse {
  /// Returns a new [EdFiCourse] instance.
  EdFiCourse({
    this.id,
    required this.courseCode,
    this.identificationCodes = const [],
    required this.educationOrganizationReference,
    this.academicSubjects = const [],
    this.careerPathwayDescriptor,
    this.competencyLevels = const [],
    this.courseDefinedByDescriptor,
    this.courseDescription,
    this.courseGPAApplicabilityDescriptor,
    required this.courseTitle,
    this.dateCourseAdopted,
    this.highSchoolCourseRequirement,
    this.learningStandards = const [],
    this.levelCharacteristics = const [],
    this.maxCompletionsForCredit,
    this.maximumAvailableCreditConversion,
    this.maximumAvailableCredits,
    this.maximumAvailableCreditTypeDescriptor,
    this.minimumAvailableCreditConversion,
    this.minimumAvailableCredits,
    this.minimumAvailableCreditTypeDescriptor,
    required this.numberOfParts,
    this.offeredGradeLevels = const [],
    this.timeRequiredForCompletion,
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

  /// A unique alphanumeric code assigned to a course.
  String courseCode;

  /// An unordered collection of courseIdentificationCodes. The code that identifies the organization of subject matter and related learning experiences provided for the instruction of students.
  List<EdFiCourseIdentificationCode> identificationCodes;

  EdFiEducationOrganizationReference educationOrganizationReference;

  /// An unordered collection of courseAcademicSubjects. The intended major subject/s area of the course.
  List<EdFiCourseAcademicSubject> academicSubjects;

  /// Indicates the career cluster or pathway the course is associated with as part of a CTE curriculum.
  String? careerPathwayDescriptor;

  /// An unordered collection of courseCompetencyLevels. The competency levels defined to rate the student for the course.
  List<EdFiCourseCompetencyLevel> competencyLevels;

  /// Specifies whether the course was defined by the SEA, LEA, School, or national organization.
  String? courseDefinedByDescriptor;

  /// A description of the content standards and goals covered in the course. Reference may be made to state or national content standards.
  String? courseDescription;

  /// An indicator of whether or not the course being described is included in the computation of the student's grade point average, and if so, if it is weighted differently from regular courses.
  String? courseGPAApplicabilityDescriptor;

  /// The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, and language arts).
  String courseTitle;

  /// Date the course was adopted by the education agency.
  DateTime? dateCourseAdopted;

  /// An indication that this course may satisfy high school graduation requirements in the course's subject area.
  bool? highSchoolCourseRequirement;

  /// An unordered collection of courseLearningStandards. Learning standard(s) to be taught by the course.
  List<EdFiCourseLearningStandard> learningStandards;

  /// An unordered collection of courseLevelCharacteristics. The type of specific program or designation with which the course is associated (e.g., AP, IB, Dual Credit, CTE).
  List<EdFiCourseLevelCharacteristic> levelCharacteristics;

  /// Designates how many times the course may be taken with credit received by the student.
  ///
  /// Minimum value: 1
  int? maxCompletionsForCredit;

  /// Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? maximumAvailableCreditConversion;

  /// The value of credits or units of value awarded for the completion of a course.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 999999.999
  double? maximumAvailableCredits;

  /// The type of credits or units of value awarded for the completion of a course.
  String? maximumAvailableCreditTypeDescriptor;

  /// Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? minimumAvailableCreditConversion;

  /// The value of credits or units of value awarded for the completion of a course.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 999999.999
  double? minimumAvailableCredits;

  /// The type of credits or units of value awarded for the completion of a course.
  String? minimumAvailableCreditTypeDescriptor;

  /// The number of parts identified for a course.
  ///
  /// Minimum value: 1
  /// Maximum value: 8
  int numberOfParts;

  /// An unordered collection of courseOfferedGradeLevels. The grade levels in which the course is offered.
  List<EdFiCourseOfferedGradeLevel> offeredGradeLevels;

  /// The actual or estimated number of clock minutes required for class completion. This number is especially important for career and technical education classes and may represent (in minutes) the clock hour requirement of the class.
  ///
  /// Minimum value: 1
  int? timeRequiredForCompletion;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiCourse &&
    other.id == id &&
    other.courseCode == courseCode &&
    _deepEquality.equals(other.identificationCodes, identificationCodes) &&
    other.educationOrganizationReference == educationOrganizationReference &&
    _deepEquality.equals(other.academicSubjects, academicSubjects) &&
    other.careerPathwayDescriptor == careerPathwayDescriptor &&
    _deepEquality.equals(other.competencyLevels, competencyLevels) &&
    other.courseDefinedByDescriptor == courseDefinedByDescriptor &&
    other.courseDescription == courseDescription &&
    other.courseGPAApplicabilityDescriptor == courseGPAApplicabilityDescriptor &&
    other.courseTitle == courseTitle &&
    other.dateCourseAdopted == dateCourseAdopted &&
    other.highSchoolCourseRequirement == highSchoolCourseRequirement &&
    _deepEquality.equals(other.learningStandards, learningStandards) &&
    _deepEquality.equals(other.levelCharacteristics, levelCharacteristics) &&
    other.maxCompletionsForCredit == maxCompletionsForCredit &&
    other.maximumAvailableCreditConversion == maximumAvailableCreditConversion &&
    other.maximumAvailableCredits == maximumAvailableCredits &&
    other.maximumAvailableCreditTypeDescriptor == maximumAvailableCreditTypeDescriptor &&
    other.minimumAvailableCreditConversion == minimumAvailableCreditConversion &&
    other.minimumAvailableCredits == minimumAvailableCredits &&
    other.minimumAvailableCreditTypeDescriptor == minimumAvailableCreditTypeDescriptor &&
    other.numberOfParts == numberOfParts &&
    _deepEquality.equals(other.offeredGradeLevels, offeredGradeLevels) &&
    other.timeRequiredForCompletion == timeRequiredForCompletion &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (courseCode.hashCode) +
    (identificationCodes.hashCode) +
    (educationOrganizationReference.hashCode) +
    (academicSubjects.hashCode) +
    (careerPathwayDescriptor == null ? 0 : careerPathwayDescriptor!.hashCode) +
    (competencyLevels.hashCode) +
    (courseDefinedByDescriptor == null ? 0 : courseDefinedByDescriptor!.hashCode) +
    (courseDescription == null ? 0 : courseDescription!.hashCode) +
    (courseGPAApplicabilityDescriptor == null ? 0 : courseGPAApplicabilityDescriptor!.hashCode) +
    (courseTitle.hashCode) +
    (dateCourseAdopted == null ? 0 : dateCourseAdopted!.hashCode) +
    (highSchoolCourseRequirement == null ? 0 : highSchoolCourseRequirement!.hashCode) +
    (learningStandards.hashCode) +
    (levelCharacteristics.hashCode) +
    (maxCompletionsForCredit == null ? 0 : maxCompletionsForCredit!.hashCode) +
    (maximumAvailableCreditConversion == null ? 0 : maximumAvailableCreditConversion!.hashCode) +
    (maximumAvailableCredits == null ? 0 : maximumAvailableCredits!.hashCode) +
    (maximumAvailableCreditTypeDescriptor == null ? 0 : maximumAvailableCreditTypeDescriptor!.hashCode) +
    (minimumAvailableCreditConversion == null ? 0 : minimumAvailableCreditConversion!.hashCode) +
    (minimumAvailableCredits == null ? 0 : minimumAvailableCredits!.hashCode) +
    (minimumAvailableCreditTypeDescriptor == null ? 0 : minimumAvailableCreditTypeDescriptor!.hashCode) +
    (numberOfParts.hashCode) +
    (offeredGradeLevels.hashCode) +
    (timeRequiredForCompletion == null ? 0 : timeRequiredForCompletion!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiCourse[id=$id, courseCode=$courseCode, identificationCodes=$identificationCodes, educationOrganizationReference=$educationOrganizationReference, academicSubjects=$academicSubjects, careerPathwayDescriptor=$careerPathwayDescriptor, competencyLevels=$competencyLevels, courseDefinedByDescriptor=$courseDefinedByDescriptor, courseDescription=$courseDescription, courseGPAApplicabilityDescriptor=$courseGPAApplicabilityDescriptor, courseTitle=$courseTitle, dateCourseAdopted=$dateCourseAdopted, highSchoolCourseRequirement=$highSchoolCourseRequirement, learningStandards=$learningStandards, levelCharacteristics=$levelCharacteristics, maxCompletionsForCredit=$maxCompletionsForCredit, maximumAvailableCreditConversion=$maximumAvailableCreditConversion, maximumAvailableCredits=$maximumAvailableCredits, maximumAvailableCreditTypeDescriptor=$maximumAvailableCreditTypeDescriptor, minimumAvailableCreditConversion=$minimumAvailableCreditConversion, minimumAvailableCredits=$minimumAvailableCredits, minimumAvailableCreditTypeDescriptor=$minimumAvailableCreditTypeDescriptor, numberOfParts=$numberOfParts, offeredGradeLevels=$offeredGradeLevels, timeRequiredForCompletion=$timeRequiredForCompletion, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'courseCode'] = this.courseCode;
      json[r'identificationCodes'] = this.identificationCodes;
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'academicSubjects'] = this.academicSubjects;
    if (this.careerPathwayDescriptor != null) {
      json[r'careerPathwayDescriptor'] = this.careerPathwayDescriptor;
    } else {
      json[r'careerPathwayDescriptor'] = null;
    }
      json[r'competencyLevels'] = this.competencyLevels;
    if (this.courseDefinedByDescriptor != null) {
      json[r'courseDefinedByDescriptor'] = this.courseDefinedByDescriptor;
    } else {
      json[r'courseDefinedByDescriptor'] = null;
    }
    if (this.courseDescription != null) {
      json[r'courseDescription'] = this.courseDescription;
    } else {
      json[r'courseDescription'] = null;
    }
    if (this.courseGPAApplicabilityDescriptor != null) {
      json[r'courseGPAApplicabilityDescriptor'] = this.courseGPAApplicabilityDescriptor;
    } else {
      json[r'courseGPAApplicabilityDescriptor'] = null;
    }
      json[r'courseTitle'] = this.courseTitle;
    if (this.dateCourseAdopted != null) {
      json[r'dateCourseAdopted'] = _dateFormatter.format(this.dateCourseAdopted!.toUtc());
    } else {
      json[r'dateCourseAdopted'] = null;
    }
    if (this.highSchoolCourseRequirement != null) {
      json[r'highSchoolCourseRequirement'] = this.highSchoolCourseRequirement;
    } else {
      json[r'highSchoolCourseRequirement'] = null;
    }
      json[r'learningStandards'] = this.learningStandards;
      json[r'levelCharacteristics'] = this.levelCharacteristics;
    if (this.maxCompletionsForCredit != null) {
      json[r'maxCompletionsForCredit'] = this.maxCompletionsForCredit;
    } else {
      json[r'maxCompletionsForCredit'] = null;
    }
    if (this.maximumAvailableCreditConversion != null) {
      json[r'maximumAvailableCreditConversion'] = this.maximumAvailableCreditConversion;
    } else {
      json[r'maximumAvailableCreditConversion'] = null;
    }
    if (this.maximumAvailableCredits != null) {
      json[r'maximumAvailableCredits'] = this.maximumAvailableCredits;
    } else {
      json[r'maximumAvailableCredits'] = null;
    }
    if (this.maximumAvailableCreditTypeDescriptor != null) {
      json[r'maximumAvailableCreditTypeDescriptor'] = this.maximumAvailableCreditTypeDescriptor;
    } else {
      json[r'maximumAvailableCreditTypeDescriptor'] = null;
    }
    if (this.minimumAvailableCreditConversion != null) {
      json[r'minimumAvailableCreditConversion'] = this.minimumAvailableCreditConversion;
    } else {
      json[r'minimumAvailableCreditConversion'] = null;
    }
    if (this.minimumAvailableCredits != null) {
      json[r'minimumAvailableCredits'] = this.minimumAvailableCredits;
    } else {
      json[r'minimumAvailableCredits'] = null;
    }
    if (this.minimumAvailableCreditTypeDescriptor != null) {
      json[r'minimumAvailableCreditTypeDescriptor'] = this.minimumAvailableCreditTypeDescriptor;
    } else {
      json[r'minimumAvailableCreditTypeDescriptor'] = null;
    }
      json[r'numberOfParts'] = this.numberOfParts;
      json[r'offeredGradeLevels'] = this.offeredGradeLevels;
    if (this.timeRequiredForCompletion != null) {
      json[r'timeRequiredForCompletion'] = this.timeRequiredForCompletion;
    } else {
      json[r'timeRequiredForCompletion'] = null;
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

  /// Returns a new [EdFiCourse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCourse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCourse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCourse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCourse(
        id: mapValueOfType<String>(json, r'id'),
        courseCode: mapValueOfType<String>(json, r'courseCode')!,
        identificationCodes: EdFiCourseIdentificationCode.listFromJson(json[r'identificationCodes']),
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        academicSubjects: EdFiCourseAcademicSubject.listFromJson(json[r'academicSubjects']),
        careerPathwayDescriptor: mapValueOfType<String>(json, r'careerPathwayDescriptor'),
        competencyLevels: EdFiCourseCompetencyLevel.listFromJson(json[r'competencyLevels']),
        courseDefinedByDescriptor: mapValueOfType<String>(json, r'courseDefinedByDescriptor'),
        courseDescription: mapValueOfType<String>(json, r'courseDescription'),
        courseGPAApplicabilityDescriptor: mapValueOfType<String>(json, r'courseGPAApplicabilityDescriptor'),
        courseTitle: mapValueOfType<String>(json, r'courseTitle')!,
        dateCourseAdopted: mapDateTime(json, r'dateCourseAdopted', r''),
        highSchoolCourseRequirement: mapValueOfType<bool>(json, r'highSchoolCourseRequirement'),
        learningStandards: EdFiCourseLearningStandard.listFromJson(json[r'learningStandards']),
        levelCharacteristics: EdFiCourseLevelCharacteristic.listFromJson(json[r'levelCharacteristics']),
        maxCompletionsForCredit: mapValueOfType<int>(json, r'maxCompletionsForCredit'),
        maximumAvailableCreditConversion: mapValueOfType<double>(json, r'maximumAvailableCreditConversion'),
        maximumAvailableCredits: mapValueOfType<double>(json, r'maximumAvailableCredits'),
        maximumAvailableCreditTypeDescriptor: mapValueOfType<String>(json, r'maximumAvailableCreditTypeDescriptor'),
        minimumAvailableCreditConversion: mapValueOfType<double>(json, r'minimumAvailableCreditConversion'),
        minimumAvailableCredits: mapValueOfType<double>(json, r'minimumAvailableCredits'),
        minimumAvailableCreditTypeDescriptor: mapValueOfType<String>(json, r'minimumAvailableCreditTypeDescriptor'),
        numberOfParts: mapValueOfType<int>(json, r'numberOfParts')!,
        offeredGradeLevels: EdFiCourseOfferedGradeLevel.listFromJson(json[r'offeredGradeLevels']),
        timeRequiredForCompletion: mapValueOfType<int>(json, r'timeRequiredForCompletion'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiCourse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCourse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCourse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCourse> mapFromJson(dynamic json) {
    final map = <String, EdFiCourse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCourse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCourse-objects as value to a dart map
  static Map<String, List<EdFiCourse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCourse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCourse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'courseCode',
    'identificationCodes',
    'educationOrganizationReference',
    'courseTitle',
    'numberOfParts',
  };
}

