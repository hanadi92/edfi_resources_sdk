//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiGradeLearningStandardGrade {
  /// Returns a new [EdFiGradeLearningStandardGrade] instance.
  EdFiGradeLearningStandardGrade({
    this.performanceBaseConversionDescriptor,
    this.diagnosticStatement,
    this.letterGradeEarned,
    this.numericGradeEarned,
    required this.learningStandardReference,
  });

  /// A performance level that describes the student proficiency.
  String? performanceBaseConversionDescriptor;

  /// A statement provided by the teacher that provides information in addition to the grade or assessment score.
  String? diagnosticStatement;

  /// A final or interim (grading period) indicator of student performance for a learning standard as submitted by the instructor.
  String? letterGradeEarned;

  /// A final or interim (grading period) indicator of student performance for a learning standard as submitted by the instructor.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? numericGradeEarned;

  EdFiLearningStandardReference learningStandardReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiGradeLearningStandardGrade &&
    other.performanceBaseConversionDescriptor == performanceBaseConversionDescriptor &&
    other.diagnosticStatement == diagnosticStatement &&
    other.letterGradeEarned == letterGradeEarned &&
    other.numericGradeEarned == numericGradeEarned &&
    other.learningStandardReference == learningStandardReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (performanceBaseConversionDescriptor == null ? 0 : performanceBaseConversionDescriptor!.hashCode) +
    (diagnosticStatement == null ? 0 : diagnosticStatement!.hashCode) +
    (letterGradeEarned == null ? 0 : letterGradeEarned!.hashCode) +
    (numericGradeEarned == null ? 0 : numericGradeEarned!.hashCode) +
    (learningStandardReference.hashCode);

  @override
  String toString() => 'EdFiGradeLearningStandardGrade[performanceBaseConversionDescriptor=$performanceBaseConversionDescriptor, diagnosticStatement=$diagnosticStatement, letterGradeEarned=$letterGradeEarned, numericGradeEarned=$numericGradeEarned, learningStandardReference=$learningStandardReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.performanceBaseConversionDescriptor != null) {
      json[r'performanceBaseConversionDescriptor'] = this.performanceBaseConversionDescriptor;
    } else {
      json[r'performanceBaseConversionDescriptor'] = null;
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
      json[r'learningStandardReference'] = this.learningStandardReference;
    return json;
  }

  /// Returns a new [EdFiGradeLearningStandardGrade] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiGradeLearningStandardGrade? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiGradeLearningStandardGrade[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiGradeLearningStandardGrade[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiGradeLearningStandardGrade(
        performanceBaseConversionDescriptor: mapValueOfType<String>(json, r'performanceBaseConversionDescriptor'),
        diagnosticStatement: mapValueOfType<String>(json, r'diagnosticStatement'),
        letterGradeEarned: mapValueOfType<String>(json, r'letterGradeEarned'),
        numericGradeEarned: mapValueOfType<double>(json, r'numericGradeEarned'),
        learningStandardReference: EdFiLearningStandardReference.fromJson(json[r'learningStandardReference'])!,
      );
    }
    return null;
  }

  static List<EdFiGradeLearningStandardGrade> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiGradeLearningStandardGrade>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiGradeLearningStandardGrade.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiGradeLearningStandardGrade> mapFromJson(dynamic json) {
    final map = <String, EdFiGradeLearningStandardGrade>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiGradeLearningStandardGrade.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiGradeLearningStandardGrade-objects as value to a dart map
  static Map<String, List<EdFiGradeLearningStandardGrade>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiGradeLearningStandardGrade>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiGradeLearningStandardGrade.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'learningStandardReference',
  };
}

