//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiSection {
  /// Returns a new [EdFiSection] instance.
  EdFiSection({
    this.id,
    required this.sectionIdentifier,
    required this.courseOfferingReference,
    this.locationReference,
    this.locationSchoolReference,
    this.availableCreditConversion,
    this.availableCredits,
    this.availableCreditTypeDescriptor,
    this.characteristics = const [],
    this.classPeriods = const [],
    this.courseLevelCharacteristics = const [],
    this.educationalEnvironmentDescriptor,
    this.instructionLanguageDescriptor,
    this.mediumOfInstructionDescriptor,
    this.offeredGradeLevels = const [],
    this.officialAttendancePeriod,
    this.populationServedDescriptor,
    this.programs = const [],
    this.sectionName,
    this.sectionTypeDescriptor,
    this.sequenceOfCourse,
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

  /// The local identifier assigned to a section.
  String sectionIdentifier;

  EdFiCourseOfferingReference courseOfferingReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiLocationReference? locationReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiSchoolReference? locationSchoolReference;

  /// Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? availableCreditConversion;

  /// The value of credits or units of value awarded for the completion of a course.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 999999.999
  double? availableCredits;

  /// The type of credits or units of value awarded for the completion of a course.
  String? availableCreditTypeDescriptor;

  /// An unordered collection of sectionCharacteristics. Reflects important characteristics of the section, such as whether or not attendance is taken and the section is graded.
  List<EdFiSectionCharacteristic> characteristics;

  /// An unordered collection of sectionClassPeriods. The class period during which the section meets.
  List<EdFiSectionClassPeriod> classPeriods;

  /// An unordered collection of sectionCourseLevelCharacteristics. The type of specific program or designation with which the section is associated. This collection should only be populated if it differs from the course level characteristics identified at the course offering level.
  List<EdFiSectionCourseLevelCharacteristic> courseLevelCharacteristics;

  /// The setting in which a student receives education and related services.
  String? educationalEnvironmentDescriptor;

  /// The primary language of instruction. If omitted, English is assumed.
  String? instructionLanguageDescriptor;

  /// The media through which teachers provide instruction to students and students and teachers communicate about instructional matters.
  String? mediumOfInstructionDescriptor;

  /// An unordered collection of sectionOfferedGradeLevels. The grade levels in which the section is offered. This collection should only be populated if it differs from the Offered Grade Levels identified at the course offering level.
  List<EdFiSectionOfferedGradeLevel> offeredGradeLevels;

  /// Indicator of whether this section is used for official daily attendance. Alternatively, official daily attendance may be tied to a class period.
  bool? officialAttendancePeriod;

  /// The type of students the section is offered and tailored to.
  String? populationServedDescriptor;

  /// An unordered collection of sectionPrograms. Optional reference to program to which the section is associated.
  List<EdFiSectionProgram> programs;

  /// A locally-defined name for the section, generally created to make the section more recognizable in informal contexts and generally distinct from the section identifier.
  String? sectionName;

  /// Specifies whether the section is for attendance only, credit only, or both.
  String? sectionTypeDescriptor;

  /// When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.
  ///
  /// Minimum value: 1
  /// Maximum value: 8
  int? sequenceOfCourse;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiSection &&
    other.id == id &&
    other.sectionIdentifier == sectionIdentifier &&
    other.courseOfferingReference == courseOfferingReference &&
    other.locationReference == locationReference &&
    other.locationSchoolReference == locationSchoolReference &&
    other.availableCreditConversion == availableCreditConversion &&
    other.availableCredits == availableCredits &&
    other.availableCreditTypeDescriptor == availableCreditTypeDescriptor &&
    _deepEquality.equals(other.characteristics, characteristics) &&
    _deepEquality.equals(other.classPeriods, classPeriods) &&
    _deepEquality.equals(other.courseLevelCharacteristics, courseLevelCharacteristics) &&
    other.educationalEnvironmentDescriptor == educationalEnvironmentDescriptor &&
    other.instructionLanguageDescriptor == instructionLanguageDescriptor &&
    other.mediumOfInstructionDescriptor == mediumOfInstructionDescriptor &&
    _deepEquality.equals(other.offeredGradeLevels, offeredGradeLevels) &&
    other.officialAttendancePeriod == officialAttendancePeriod &&
    other.populationServedDescriptor == populationServedDescriptor &&
    _deepEquality.equals(other.programs, programs) &&
    other.sectionName == sectionName &&
    other.sectionTypeDescriptor == sectionTypeDescriptor &&
    other.sequenceOfCourse == sequenceOfCourse &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (sectionIdentifier.hashCode) +
    (courseOfferingReference.hashCode) +
    (locationReference == null ? 0 : locationReference!.hashCode) +
    (locationSchoolReference == null ? 0 : locationSchoolReference!.hashCode) +
    (availableCreditConversion == null ? 0 : availableCreditConversion!.hashCode) +
    (availableCredits == null ? 0 : availableCredits!.hashCode) +
    (availableCreditTypeDescriptor == null ? 0 : availableCreditTypeDescriptor!.hashCode) +
    (characteristics.hashCode) +
    (classPeriods.hashCode) +
    (courseLevelCharacteristics.hashCode) +
    (educationalEnvironmentDescriptor == null ? 0 : educationalEnvironmentDescriptor!.hashCode) +
    (instructionLanguageDescriptor == null ? 0 : instructionLanguageDescriptor!.hashCode) +
    (mediumOfInstructionDescriptor == null ? 0 : mediumOfInstructionDescriptor!.hashCode) +
    (offeredGradeLevels.hashCode) +
    (officialAttendancePeriod == null ? 0 : officialAttendancePeriod!.hashCode) +
    (populationServedDescriptor == null ? 0 : populationServedDescriptor!.hashCode) +
    (programs.hashCode) +
    (sectionName == null ? 0 : sectionName!.hashCode) +
    (sectionTypeDescriptor == null ? 0 : sectionTypeDescriptor!.hashCode) +
    (sequenceOfCourse == null ? 0 : sequenceOfCourse!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiSection[id=$id, sectionIdentifier=$sectionIdentifier, courseOfferingReference=$courseOfferingReference, locationReference=$locationReference, locationSchoolReference=$locationSchoolReference, availableCreditConversion=$availableCreditConversion, availableCredits=$availableCredits, availableCreditTypeDescriptor=$availableCreditTypeDescriptor, characteristics=$characteristics, classPeriods=$classPeriods, courseLevelCharacteristics=$courseLevelCharacteristics, educationalEnvironmentDescriptor=$educationalEnvironmentDescriptor, instructionLanguageDescriptor=$instructionLanguageDescriptor, mediumOfInstructionDescriptor=$mediumOfInstructionDescriptor, offeredGradeLevels=$offeredGradeLevels, officialAttendancePeriod=$officialAttendancePeriod, populationServedDescriptor=$populationServedDescriptor, programs=$programs, sectionName=$sectionName, sectionTypeDescriptor=$sectionTypeDescriptor, sequenceOfCourse=$sequenceOfCourse, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'sectionIdentifier'] = this.sectionIdentifier;
      json[r'courseOfferingReference'] = this.courseOfferingReference;
    if (this.locationReference != null) {
      json[r'locationReference'] = this.locationReference;
    } else {
      json[r'locationReference'] = null;
    }
    if (this.locationSchoolReference != null) {
      json[r'locationSchoolReference'] = this.locationSchoolReference;
    } else {
      json[r'locationSchoolReference'] = null;
    }
    if (this.availableCreditConversion != null) {
      json[r'availableCreditConversion'] = this.availableCreditConversion;
    } else {
      json[r'availableCreditConversion'] = null;
    }
    if (this.availableCredits != null) {
      json[r'availableCredits'] = this.availableCredits;
    } else {
      json[r'availableCredits'] = null;
    }
    if (this.availableCreditTypeDescriptor != null) {
      json[r'availableCreditTypeDescriptor'] = this.availableCreditTypeDescriptor;
    } else {
      json[r'availableCreditTypeDescriptor'] = null;
    }
      json[r'characteristics'] = this.characteristics;
      json[r'classPeriods'] = this.classPeriods;
      json[r'courseLevelCharacteristics'] = this.courseLevelCharacteristics;
    if (this.educationalEnvironmentDescriptor != null) {
      json[r'educationalEnvironmentDescriptor'] = this.educationalEnvironmentDescriptor;
    } else {
      json[r'educationalEnvironmentDescriptor'] = null;
    }
    if (this.instructionLanguageDescriptor != null) {
      json[r'instructionLanguageDescriptor'] = this.instructionLanguageDescriptor;
    } else {
      json[r'instructionLanguageDescriptor'] = null;
    }
    if (this.mediumOfInstructionDescriptor != null) {
      json[r'mediumOfInstructionDescriptor'] = this.mediumOfInstructionDescriptor;
    } else {
      json[r'mediumOfInstructionDescriptor'] = null;
    }
      json[r'offeredGradeLevels'] = this.offeredGradeLevels;
    if (this.officialAttendancePeriod != null) {
      json[r'officialAttendancePeriod'] = this.officialAttendancePeriod;
    } else {
      json[r'officialAttendancePeriod'] = null;
    }
    if (this.populationServedDescriptor != null) {
      json[r'populationServedDescriptor'] = this.populationServedDescriptor;
    } else {
      json[r'populationServedDescriptor'] = null;
    }
      json[r'programs'] = this.programs;
    if (this.sectionName != null) {
      json[r'sectionName'] = this.sectionName;
    } else {
      json[r'sectionName'] = null;
    }
    if (this.sectionTypeDescriptor != null) {
      json[r'sectionTypeDescriptor'] = this.sectionTypeDescriptor;
    } else {
      json[r'sectionTypeDescriptor'] = null;
    }
    if (this.sequenceOfCourse != null) {
      json[r'sequenceOfCourse'] = this.sequenceOfCourse;
    } else {
      json[r'sequenceOfCourse'] = null;
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

  /// Returns a new [EdFiSection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiSection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiSection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiSection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiSection(
        id: mapValueOfType<String>(json, r'id'),
        sectionIdentifier: mapValueOfType<String>(json, r'sectionIdentifier')!,
        courseOfferingReference: EdFiCourseOfferingReference.fromJson(json[r'courseOfferingReference'])!,
        locationReference: EdFiLocationReference.fromJson(json[r'locationReference']),
        locationSchoolReference: EdFiSchoolReference.fromJson(json[r'locationSchoolReference']),
        availableCreditConversion: mapValueOfType<double>(json, r'availableCreditConversion'),
        availableCredits: mapValueOfType<double>(json, r'availableCredits'),
        availableCreditTypeDescriptor: mapValueOfType<String>(json, r'availableCreditTypeDescriptor'),
        characteristics: EdFiSectionCharacteristic.listFromJson(json[r'characteristics']),
        classPeriods: EdFiSectionClassPeriod.listFromJson(json[r'classPeriods']),
        courseLevelCharacteristics: EdFiSectionCourseLevelCharacteristic.listFromJson(json[r'courseLevelCharacteristics']),
        educationalEnvironmentDescriptor: mapValueOfType<String>(json, r'educationalEnvironmentDescriptor'),
        instructionLanguageDescriptor: mapValueOfType<String>(json, r'instructionLanguageDescriptor'),
        mediumOfInstructionDescriptor: mapValueOfType<String>(json, r'mediumOfInstructionDescriptor'),
        offeredGradeLevels: EdFiSectionOfferedGradeLevel.listFromJson(json[r'offeredGradeLevels']),
        officialAttendancePeriod: mapValueOfType<bool>(json, r'officialAttendancePeriod'),
        populationServedDescriptor: mapValueOfType<String>(json, r'populationServedDescriptor'),
        programs: EdFiSectionProgram.listFromJson(json[r'programs']),
        sectionName: mapValueOfType<String>(json, r'sectionName'),
        sectionTypeDescriptor: mapValueOfType<String>(json, r'sectionTypeDescriptor'),
        sequenceOfCourse: mapValueOfType<int>(json, r'sequenceOfCourse'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiSection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiSection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiSection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiSection> mapFromJson(dynamic json) {
    final map = <String, EdFiSection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiSection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiSection-objects as value to a dart map
  static Map<String, List<EdFiSection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiSection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiSection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sectionIdentifier',
    'courseOfferingReference',
  };
}

