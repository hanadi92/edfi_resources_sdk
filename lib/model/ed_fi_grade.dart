//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiGrade {
  /// Returns a new [EdFiGrade] instance.
  EdFiGrade({
    this.id,
    required this.gradeTypeDescriptor,
    required this.gradingPeriodReference,
    required this.studentSectionAssociationReference,
    this.currentGradeAsOfDate,
    this.currentGradeIndicator,
    this.diagnosticStatement,
    this.gradeEarnedDescription,
    this.learningStandardGrades = const [],
    this.letterGradeEarned,
    this.numericGradeEarned,
    this.performanceBaseConversionDescriptor,
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

  /// The type of grade reported (e.g., exam, final, grading period).
  String gradeTypeDescriptor;

  EdFiGradingPeriodReference gradingPeriodReference;

  EdFiStudentSectionAssociationReference studentSectionAssociationReference;

  /// As-Of date for a grade posted as the current grade.
  DateTime? currentGradeAsOfDate;

  /// An indicator that the posted grade is an interim grade for the grading period and not the final grade.
  bool? currentGradeIndicator;

  /// A statement provided by the teacher that provides information in addition to the grade or assessment score.
  String? diagnosticStatement;

  /// A description of the grade earned by the learner.
  String? gradeEarnedDescription;

  /// An unordered collection of gradeLearningStandardGrades. A collection of learning standards associated with the grade.
  List<EdFiGradeLearningStandardGrade> learningStandardGrades;

  /// A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
  String? letterGradeEarned;

  /// A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? numericGradeEarned;

  /// A conversion of the level to a standard set of performance levels.
  String? performanceBaseConversionDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiGrade &&
    other.id == id &&
    other.gradeTypeDescriptor == gradeTypeDescriptor &&
    other.gradingPeriodReference == gradingPeriodReference &&
    other.studentSectionAssociationReference == studentSectionAssociationReference &&
    other.currentGradeAsOfDate == currentGradeAsOfDate &&
    other.currentGradeIndicator == currentGradeIndicator &&
    other.diagnosticStatement == diagnosticStatement &&
    other.gradeEarnedDescription == gradeEarnedDescription &&
    _deepEquality.equals(other.learningStandardGrades, learningStandardGrades) &&
    other.letterGradeEarned == letterGradeEarned &&
    other.numericGradeEarned == numericGradeEarned &&
    other.performanceBaseConversionDescriptor == performanceBaseConversionDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (gradeTypeDescriptor.hashCode) +
    (gradingPeriodReference.hashCode) +
    (studentSectionAssociationReference.hashCode) +
    (currentGradeAsOfDate == null ? 0 : currentGradeAsOfDate!.hashCode) +
    (currentGradeIndicator == null ? 0 : currentGradeIndicator!.hashCode) +
    (diagnosticStatement == null ? 0 : diagnosticStatement!.hashCode) +
    (gradeEarnedDescription == null ? 0 : gradeEarnedDescription!.hashCode) +
    (learningStandardGrades.hashCode) +
    (letterGradeEarned == null ? 0 : letterGradeEarned!.hashCode) +
    (numericGradeEarned == null ? 0 : numericGradeEarned!.hashCode) +
    (performanceBaseConversionDescriptor == null ? 0 : performanceBaseConversionDescriptor!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiGrade[id=$id, gradeTypeDescriptor=$gradeTypeDescriptor, gradingPeriodReference=$gradingPeriodReference, studentSectionAssociationReference=$studentSectionAssociationReference, currentGradeAsOfDate=$currentGradeAsOfDate, currentGradeIndicator=$currentGradeIndicator, diagnosticStatement=$diagnosticStatement, gradeEarnedDescription=$gradeEarnedDescription, learningStandardGrades=$learningStandardGrades, letterGradeEarned=$letterGradeEarned, numericGradeEarned=$numericGradeEarned, performanceBaseConversionDescriptor=$performanceBaseConversionDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'gradeTypeDescriptor'] = this.gradeTypeDescriptor;
      json[r'gradingPeriodReference'] = this.gradingPeriodReference;
      json[r'studentSectionAssociationReference'] = this.studentSectionAssociationReference;
    if (this.currentGradeAsOfDate != null) {
      json[r'currentGradeAsOfDate'] = _dateFormatter.format(this.currentGradeAsOfDate!.toUtc());
    } else {
      json[r'currentGradeAsOfDate'] = null;
    }
    if (this.currentGradeIndicator != null) {
      json[r'currentGradeIndicator'] = this.currentGradeIndicator;
    } else {
      json[r'currentGradeIndicator'] = null;
    }
    if (this.diagnosticStatement != null) {
      json[r'diagnosticStatement'] = this.diagnosticStatement;
    } else {
      json[r'diagnosticStatement'] = null;
    }
    if (this.gradeEarnedDescription != null) {
      json[r'gradeEarnedDescription'] = this.gradeEarnedDescription;
    } else {
      json[r'gradeEarnedDescription'] = null;
    }
      json[r'learningStandardGrades'] = this.learningStandardGrades;
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
    if (this.performanceBaseConversionDescriptor != null) {
      json[r'performanceBaseConversionDescriptor'] = this.performanceBaseConversionDescriptor;
    } else {
      json[r'performanceBaseConversionDescriptor'] = null;
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

  /// Returns a new [EdFiGrade] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiGrade? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiGrade[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiGrade[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiGrade(
        id: mapValueOfType<String>(json, r'id'),
        gradeTypeDescriptor: mapValueOfType<String>(json, r'gradeTypeDescriptor')!,
        gradingPeriodReference: EdFiGradingPeriodReference.fromJson(json[r'gradingPeriodReference'])!,
        studentSectionAssociationReference: EdFiStudentSectionAssociationReference.fromJson(json[r'studentSectionAssociationReference'])!,
        currentGradeAsOfDate: mapDateTime(json, r'currentGradeAsOfDate', r''),
        currentGradeIndicator: mapValueOfType<bool>(json, r'currentGradeIndicator'),
        diagnosticStatement: mapValueOfType<String>(json, r'diagnosticStatement'),
        gradeEarnedDescription: mapValueOfType<String>(json, r'gradeEarnedDescription'),
        learningStandardGrades: EdFiGradeLearningStandardGrade.listFromJson(json[r'learningStandardGrades']),
        letterGradeEarned: mapValueOfType<String>(json, r'letterGradeEarned'),
        numericGradeEarned: mapValueOfType<double>(json, r'numericGradeEarned'),
        performanceBaseConversionDescriptor: mapValueOfType<String>(json, r'performanceBaseConversionDescriptor'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiGrade> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiGrade>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiGrade.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiGrade> mapFromJson(dynamic json) {
    final map = <String, EdFiGrade>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiGrade.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiGrade-objects as value to a dart map
  static Map<String, List<EdFiGrade>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiGrade>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiGrade.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'gradeTypeDescriptor',
    'gradingPeriodReference',
    'studentSectionAssociationReference',
  };
}

