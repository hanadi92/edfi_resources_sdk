//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAssessmentStudentObjectiveAssessment {
  /// Returns a new [EdFiStudentAssessmentStudentObjectiveAssessment] instance.
  EdFiStudentAssessmentStudentObjectiveAssessment({
    this.administrationDate,
    this.administrationEndDate,
    this.assessedMinutes,
    required this.objectiveAssessmentReference,
    this.performanceLevels = const [],
    this.scoreResults = const [],
  });

  /// The date and time an assessment was completed by the student. The use of ISO-8601 formats with a timezone designator (UTC or time offset) is recommended in order to prevent ambiguity due to time zones.
  DateTime? administrationDate;

  /// The date and time an assessment administration ended.
  DateTime? administrationEndDate;

  /// Reported time student was assessed in minutes.
  int? assessedMinutes;

  EdFiObjectiveAssessmentReference objectiveAssessmentReference;

  /// An unordered collection of studentAssessmentStudentObjectiveAssessmentPerformanceLevels. The performance level(s) achieved for the objective assessment.
  List<EdFiStudentAssessmentStudentObjectiveAssessmentPerformanceLevel> performanceLevels;

  /// An unordered collection of studentAssessmentStudentObjectiveAssessmentScoreResults. A meaningful score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc.
  List<EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult> scoreResults;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAssessmentStudentObjectiveAssessment &&
    other.administrationDate == administrationDate &&
    other.administrationEndDate == administrationEndDate &&
    other.assessedMinutes == assessedMinutes &&
    other.objectiveAssessmentReference == objectiveAssessmentReference &&
    _deepEquality.equals(other.performanceLevels, performanceLevels) &&
    _deepEquality.equals(other.scoreResults, scoreResults);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (administrationDate == null ? 0 : administrationDate!.hashCode) +
    (administrationEndDate == null ? 0 : administrationEndDate!.hashCode) +
    (assessedMinutes == null ? 0 : assessedMinutes!.hashCode) +
    (objectiveAssessmentReference.hashCode) +
    (performanceLevels.hashCode) +
    (scoreResults.hashCode);

  @override
  String toString() => 'EdFiStudentAssessmentStudentObjectiveAssessment[administrationDate=$administrationDate, administrationEndDate=$administrationEndDate, assessedMinutes=$assessedMinutes, objectiveAssessmentReference=$objectiveAssessmentReference, performanceLevels=$performanceLevels, scoreResults=$scoreResults]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.administrationDate != null) {
      json[r'administrationDate'] = this.administrationDate!.toUtc().toIso8601String();
    } else {
      json[r'administrationDate'] = null;
    }
    if (this.administrationEndDate != null) {
      json[r'administrationEndDate'] = this.administrationEndDate!.toUtc().toIso8601String();
    } else {
      json[r'administrationEndDate'] = null;
    }
    if (this.assessedMinutes != null) {
      json[r'assessedMinutes'] = this.assessedMinutes;
    } else {
      json[r'assessedMinutes'] = null;
    }
      json[r'objectiveAssessmentReference'] = this.objectiveAssessmentReference;
      json[r'performanceLevels'] = this.performanceLevels;
      json[r'scoreResults'] = this.scoreResults;
    return json;
  }

  /// Returns a new [EdFiStudentAssessmentStudentObjectiveAssessment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAssessmentStudentObjectiveAssessment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAssessmentStudentObjectiveAssessment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAssessmentStudentObjectiveAssessment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAssessmentStudentObjectiveAssessment(
        administrationDate: mapDateTime(json, r'administrationDate', r''),
        administrationEndDate: mapDateTime(json, r'administrationEndDate', r''),
        assessedMinutes: mapValueOfType<int>(json, r'assessedMinutes'),
        objectiveAssessmentReference: EdFiObjectiveAssessmentReference.fromJson(json[r'objectiveAssessmentReference'])!,
        performanceLevels: EdFiStudentAssessmentStudentObjectiveAssessmentPerformanceLevel.listFromJson(json[r'performanceLevels']),
        scoreResults: EdFiStudentAssessmentStudentObjectiveAssessmentScoreResult.listFromJson(json[r'scoreResults']),
      );
    }
    return null;
  }

  static List<EdFiStudentAssessmentStudentObjectiveAssessment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAssessmentStudentObjectiveAssessment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAssessmentStudentObjectiveAssessment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAssessmentStudentObjectiveAssessment> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAssessmentStudentObjectiveAssessment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAssessmentStudentObjectiveAssessment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAssessmentStudentObjectiveAssessment-objects as value to a dart map
  static Map<String, List<EdFiStudentAssessmentStudentObjectiveAssessment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAssessmentStudentObjectiveAssessment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAssessmentStudentObjectiveAssessment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'objectiveAssessmentReference',
  };
}

