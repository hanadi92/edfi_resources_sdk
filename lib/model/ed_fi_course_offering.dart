//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCourseOffering {
  /// Returns a new [EdFiCourseOffering] instance.
  EdFiCourseOffering({
    this.id,
    required this.localCourseCode,
    required this.courseReference,
    required this.schoolReference,
    required this.sessionReference,
    this.courseLevelCharacteristics = const [],
    this.curriculumUseds = const [],
    this.instructionalTimePlanned,
    this.localCourseTitle,
    this.offeredGradeLevels = const [],
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

  /// The local code assigned by the School that identifies the course offering provided for the instruction of students.
  String localCourseCode;

  EdFiCourseReference courseReference;

  EdFiSchoolReference schoolReference;

  EdFiSessionReference sessionReference;

  /// An unordered collection of courseOfferingCourseLevelCharacteristics. The type of specific program or designation with which the course offering is associated (e.g., AP, IB, Dual Credit, CTE). This collection should only be populated if it differs from the course level characteristics identified at the course level.
  List<EdFiCourseOfferingCourseLevelCharacteristic> courseLevelCharacteristics;

  /// An unordered collection of courseOfferingCurriculumUseds. The type of curriculum used in an early learning classroom or group.
  List<EdFiCourseOfferingCurriculumUsed> curriculumUseds;

  /// The planned total number of clock minutes of instruction for this course offering. Generally, this should be at least as many minutes as is required for completion by the related state- or district-defined course.
  ///
  /// Minimum value: 1
  int? instructionalTimePlanned;

  /// The descriptive name given to a course of study offered in the school, if different from the course title.
  String? localCourseTitle;

  /// An unordered collection of courseOfferingOfferedGradeLevels. The grade levels in which the course is offered. This collection should only be populated if it differs from the offered grade levels identified at the course level.
  List<EdFiCourseOfferingOfferedGradeLevel> offeredGradeLevels;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiCourseOffering &&
    other.id == id &&
    other.localCourseCode == localCourseCode &&
    other.courseReference == courseReference &&
    other.schoolReference == schoolReference &&
    other.sessionReference == sessionReference &&
    _deepEquality.equals(other.courseLevelCharacteristics, courseLevelCharacteristics) &&
    _deepEquality.equals(other.curriculumUseds, curriculumUseds) &&
    other.instructionalTimePlanned == instructionalTimePlanned &&
    other.localCourseTitle == localCourseTitle &&
    _deepEquality.equals(other.offeredGradeLevels, offeredGradeLevels) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (localCourseCode.hashCode) +
    (courseReference.hashCode) +
    (schoolReference.hashCode) +
    (sessionReference.hashCode) +
    (courseLevelCharacteristics.hashCode) +
    (curriculumUseds.hashCode) +
    (instructionalTimePlanned == null ? 0 : instructionalTimePlanned!.hashCode) +
    (localCourseTitle == null ? 0 : localCourseTitle!.hashCode) +
    (offeredGradeLevels.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiCourseOffering[id=$id, localCourseCode=$localCourseCode, courseReference=$courseReference, schoolReference=$schoolReference, sessionReference=$sessionReference, courseLevelCharacteristics=$courseLevelCharacteristics, curriculumUseds=$curriculumUseds, instructionalTimePlanned=$instructionalTimePlanned, localCourseTitle=$localCourseTitle, offeredGradeLevels=$offeredGradeLevels, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'localCourseCode'] = this.localCourseCode;
      json[r'courseReference'] = this.courseReference;
      json[r'schoolReference'] = this.schoolReference;
      json[r'sessionReference'] = this.sessionReference;
      json[r'courseLevelCharacteristics'] = this.courseLevelCharacteristics;
      json[r'curriculumUseds'] = this.curriculumUseds;
    if (this.instructionalTimePlanned != null) {
      json[r'instructionalTimePlanned'] = this.instructionalTimePlanned;
    } else {
      json[r'instructionalTimePlanned'] = null;
    }
    if (this.localCourseTitle != null) {
      json[r'localCourseTitle'] = this.localCourseTitle;
    } else {
      json[r'localCourseTitle'] = null;
    }
      json[r'offeredGradeLevels'] = this.offeredGradeLevels;
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

  /// Returns a new [EdFiCourseOffering] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCourseOffering? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCourseOffering[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCourseOffering[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCourseOffering(
        id: mapValueOfType<String>(json, r'id'),
        localCourseCode: mapValueOfType<String>(json, r'localCourseCode')!,
        courseReference: EdFiCourseReference.fromJson(json[r'courseReference'])!,
        schoolReference: EdFiSchoolReference.fromJson(json[r'schoolReference'])!,
        sessionReference: EdFiSessionReference.fromJson(json[r'sessionReference'])!,
        courseLevelCharacteristics: EdFiCourseOfferingCourseLevelCharacteristic.listFromJson(json[r'courseLevelCharacteristics']),
        curriculumUseds: EdFiCourseOfferingCurriculumUsed.listFromJson(json[r'curriculumUseds']),
        instructionalTimePlanned: mapValueOfType<int>(json, r'instructionalTimePlanned'),
        localCourseTitle: mapValueOfType<String>(json, r'localCourseTitle'),
        offeredGradeLevels: EdFiCourseOfferingOfferedGradeLevel.listFromJson(json[r'offeredGradeLevels']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiCourseOffering> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCourseOffering>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCourseOffering.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCourseOffering> mapFromJson(dynamic json) {
    final map = <String, EdFiCourseOffering>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCourseOffering.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCourseOffering-objects as value to a dart map
  static Map<String, List<EdFiCourseOffering>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCourseOffering>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCourseOffering.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'localCourseCode',
    'courseReference',
    'schoolReference',
    'sessionReference',
  };
}

