//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiReportCard {
  /// Returns a new [EdFiReportCard] instance.
  EdFiReportCard({
    this.id,
    required this.educationOrganizationReference,
    required this.gradingPeriodReference,
    required this.studentReference,
    this.gradePointAverages = const [],
    this.grades = const [],
    this.numberOfDaysAbsent,
    this.numberOfDaysInAttendance,
    this.numberOfDaysTardy,
    this.studentCompetencyObjectives = const [],
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

  EdFiEducationOrganizationReference educationOrganizationReference;

  EdFiGradingPeriodReference gradingPeriodReference;

  EdFiStudentReference studentReference;

  /// An unordered collection of reportCardGradePointAverages. A measure of average performance for courses taken by an individual.
  List<EdFiReportCardGradePointAverage> gradePointAverages;

  /// An unordered collection of reportCardGrades. Grades for the classes attended by the student for this grading period.
  List<EdFiReportCardGrade> grades;

  /// The number of days an individual is absent when school is in session during a given reporting period.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 1.0E+14
  double? numberOfDaysAbsent;

  /// The number of days an individual is present when school is in session during a given reporting period.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 1.0E+14
  double? numberOfDaysInAttendance;

  /// The number of days an individual is tardy during a given reporting period.
  ///
  /// Minimum value: 0
  int? numberOfDaysTardy;

  /// An unordered collection of reportCardStudentCompetencyObjectives. The student competency evaluations associated for this grading period.
  List<EdFiReportCardStudentCompetencyObjective> studentCompetencyObjectives;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiReportCard &&
    other.id == id &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.gradingPeriodReference == gradingPeriodReference &&
    other.studentReference == studentReference &&
    _deepEquality.equals(other.gradePointAverages, gradePointAverages) &&
    _deepEquality.equals(other.grades, grades) &&
    other.numberOfDaysAbsent == numberOfDaysAbsent &&
    other.numberOfDaysInAttendance == numberOfDaysInAttendance &&
    other.numberOfDaysTardy == numberOfDaysTardy &&
    _deepEquality.equals(other.studentCompetencyObjectives, studentCompetencyObjectives) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (educationOrganizationReference.hashCode) +
    (gradingPeriodReference.hashCode) +
    (studentReference.hashCode) +
    (gradePointAverages.hashCode) +
    (grades.hashCode) +
    (numberOfDaysAbsent == null ? 0 : numberOfDaysAbsent!.hashCode) +
    (numberOfDaysInAttendance == null ? 0 : numberOfDaysInAttendance!.hashCode) +
    (numberOfDaysTardy == null ? 0 : numberOfDaysTardy!.hashCode) +
    (studentCompetencyObjectives.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiReportCard[id=$id, educationOrganizationReference=$educationOrganizationReference, gradingPeriodReference=$gradingPeriodReference, studentReference=$studentReference, gradePointAverages=$gradePointAverages, grades=$grades, numberOfDaysAbsent=$numberOfDaysAbsent, numberOfDaysInAttendance=$numberOfDaysInAttendance, numberOfDaysTardy=$numberOfDaysTardy, studentCompetencyObjectives=$studentCompetencyObjectives, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'gradingPeriodReference'] = this.gradingPeriodReference;
      json[r'studentReference'] = this.studentReference;
      json[r'gradePointAverages'] = this.gradePointAverages;
      json[r'grades'] = this.grades;
    if (this.numberOfDaysAbsent != null) {
      json[r'numberOfDaysAbsent'] = this.numberOfDaysAbsent;
    } else {
      json[r'numberOfDaysAbsent'] = null;
    }
    if (this.numberOfDaysInAttendance != null) {
      json[r'numberOfDaysInAttendance'] = this.numberOfDaysInAttendance;
    } else {
      json[r'numberOfDaysInAttendance'] = null;
    }
    if (this.numberOfDaysTardy != null) {
      json[r'numberOfDaysTardy'] = this.numberOfDaysTardy;
    } else {
      json[r'numberOfDaysTardy'] = null;
    }
      json[r'studentCompetencyObjectives'] = this.studentCompetencyObjectives;
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

  /// Returns a new [EdFiReportCard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiReportCard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiReportCard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiReportCard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiReportCard(
        id: mapValueOfType<String>(json, r'id'),
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        gradingPeriodReference: EdFiGradingPeriodReference.fromJson(json[r'gradingPeriodReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        gradePointAverages: EdFiReportCardGradePointAverage.listFromJson(json[r'gradePointAverages']),
        grades: EdFiReportCardGrade.listFromJson(json[r'grades']),
        numberOfDaysAbsent: mapValueOfType<double>(json, r'numberOfDaysAbsent'),
        numberOfDaysInAttendance: mapValueOfType<double>(json, r'numberOfDaysInAttendance'),
        numberOfDaysTardy: mapValueOfType<int>(json, r'numberOfDaysTardy'),
        studentCompetencyObjectives: EdFiReportCardStudentCompetencyObjective.listFromJson(json[r'studentCompetencyObjectives']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiReportCard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiReportCard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiReportCard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiReportCard> mapFromJson(dynamic json) {
    final map = <String, EdFiReportCard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiReportCard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiReportCard-objects as value to a dart map
  static Map<String, List<EdFiReportCard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiReportCard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiReportCard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'educationOrganizationReference',
    'gradingPeriodReference',
    'studentReference',
  };
}

