//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentGradebookEntry {
  /// Returns a new [EdFiStudentGradebookEntry] instance.
  EdFiStudentGradebookEntry({
    this.id,
    required this.gradebookEntryReference,
    required this.studentReference,
    this.assignmentLateStatusDescriptor,
    this.competencyLevelDescriptor,
    this.dateFulfilled,
    this.diagnosticStatement,
    this.letterGradeEarned,
    this.numericGradeEarned,
    this.pointsEarned,
    this.submissionStatusDescriptor,
    this.timeFulfilled,
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

  EdFiGradebookEntryReference gradebookEntryReference;

  EdFiStudentReference studentReference;

  /// Status of whether the assignment was submitted after the due date and/or marked as.
  String? assignmentLateStatusDescriptor;

  /// The competency level assessed for the student for the referenced learning objective.
  String? competencyLevelDescriptor;

  /// The date an assignment was turned in or the date of an assessment.
  DateTime? dateFulfilled;

  /// A statement provided by the teacher that provides information in addition to the grade or assessment score.
  String? diagnosticStatement;

  /// A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
  String? letterGradeEarned;

  /// A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? numericGradeEarned;

  /// The points earned for the submission. With extra credit, the points earned may exceed the max points.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? pointsEarned;

  /// The status of the student's submission.
  String? submissionStatusDescriptor;

  /// The time an assignment was turned in on the date fulfilled.
  String? timeFulfilled;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentGradebookEntry &&
    other.id == id &&
    other.gradebookEntryReference == gradebookEntryReference &&
    other.studentReference == studentReference &&
    other.assignmentLateStatusDescriptor == assignmentLateStatusDescriptor &&
    other.competencyLevelDescriptor == competencyLevelDescriptor &&
    other.dateFulfilled == dateFulfilled &&
    other.diagnosticStatement == diagnosticStatement &&
    other.letterGradeEarned == letterGradeEarned &&
    other.numericGradeEarned == numericGradeEarned &&
    other.pointsEarned == pointsEarned &&
    other.submissionStatusDescriptor == submissionStatusDescriptor &&
    other.timeFulfilled == timeFulfilled &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (gradebookEntryReference.hashCode) +
    (studentReference.hashCode) +
    (assignmentLateStatusDescriptor == null ? 0 : assignmentLateStatusDescriptor!.hashCode) +
    (competencyLevelDescriptor == null ? 0 : competencyLevelDescriptor!.hashCode) +
    (dateFulfilled == null ? 0 : dateFulfilled!.hashCode) +
    (diagnosticStatement == null ? 0 : diagnosticStatement!.hashCode) +
    (letterGradeEarned == null ? 0 : letterGradeEarned!.hashCode) +
    (numericGradeEarned == null ? 0 : numericGradeEarned!.hashCode) +
    (pointsEarned == null ? 0 : pointsEarned!.hashCode) +
    (submissionStatusDescriptor == null ? 0 : submissionStatusDescriptor!.hashCode) +
    (timeFulfilled == null ? 0 : timeFulfilled!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentGradebookEntry[id=$id, gradebookEntryReference=$gradebookEntryReference, studentReference=$studentReference, assignmentLateStatusDescriptor=$assignmentLateStatusDescriptor, competencyLevelDescriptor=$competencyLevelDescriptor, dateFulfilled=$dateFulfilled, diagnosticStatement=$diagnosticStatement, letterGradeEarned=$letterGradeEarned, numericGradeEarned=$numericGradeEarned, pointsEarned=$pointsEarned, submissionStatusDescriptor=$submissionStatusDescriptor, timeFulfilled=$timeFulfilled, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'gradebookEntryReference'] = this.gradebookEntryReference;
      json[r'studentReference'] = this.studentReference;
    if (this.assignmentLateStatusDescriptor != null) {
      json[r'assignmentLateStatusDescriptor'] = this.assignmentLateStatusDescriptor;
    } else {
      json[r'assignmentLateStatusDescriptor'] = null;
    }
    if (this.competencyLevelDescriptor != null) {
      json[r'competencyLevelDescriptor'] = this.competencyLevelDescriptor;
    } else {
      json[r'competencyLevelDescriptor'] = null;
    }
    if (this.dateFulfilled != null) {
      json[r'dateFulfilled'] = _dateFormatter.format(this.dateFulfilled!.toUtc());
    } else {
      json[r'dateFulfilled'] = null;
    }
    if (this.diagnosticStatement != null) {
      json[r'diagnosticStatement'] = this.diagnosticStatement;
    } else {
      json[r'diagnosticStatement'] = null;
    }
    if (this.letterGradeEarned != null) {
      json[r'letterGradeEarned'] = this.letterGradeEarned;
    } else {
      json[r'letterGradeEarned'] = null;
    }
    if (this.numericGradeEarned != null) {
      json[r'numericGradeEarned'] = this.numericGradeEarned;
    } else {
      json[r'numericGradeEarned'] = null;
    }
    if (this.pointsEarned != null) {
      json[r'pointsEarned'] = this.pointsEarned;
    } else {
      json[r'pointsEarned'] = null;
    }
    if (this.submissionStatusDescriptor != null) {
      json[r'submissionStatusDescriptor'] = this.submissionStatusDescriptor;
    } else {
      json[r'submissionStatusDescriptor'] = null;
    }
    if (this.timeFulfilled != null) {
      json[r'timeFulfilled'] = this.timeFulfilled;
    } else {
      json[r'timeFulfilled'] = null;
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

  /// Returns a new [EdFiStudentGradebookEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentGradebookEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentGradebookEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentGradebookEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentGradebookEntry(
        id: mapValueOfType<String>(json, r'id'),
        gradebookEntryReference: EdFiGradebookEntryReference.fromJson(json[r'gradebookEntryReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        assignmentLateStatusDescriptor: mapValueOfType<String>(json, r'assignmentLateStatusDescriptor'),
        competencyLevelDescriptor: mapValueOfType<String>(json, r'competencyLevelDescriptor'),
        dateFulfilled: mapDateTime(json, r'dateFulfilled', r''),
        diagnosticStatement: mapValueOfType<String>(json, r'diagnosticStatement'),
        letterGradeEarned: mapValueOfType<String>(json, r'letterGradeEarned'),
        numericGradeEarned: mapValueOfType<double>(json, r'numericGradeEarned'),
        pointsEarned: mapValueOfType<double>(json, r'pointsEarned'),
        submissionStatusDescriptor: mapValueOfType<String>(json, r'submissionStatusDescriptor'),
        timeFulfilled: mapValueOfType<String>(json, r'timeFulfilled'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentGradebookEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentGradebookEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentGradebookEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentGradebookEntry> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentGradebookEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentGradebookEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentGradebookEntry-objects as value to a dart map
  static Map<String, List<EdFiStudentGradebookEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentGradebookEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentGradebookEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'gradebookEntryReference',
    'studentReference',
  };
}

