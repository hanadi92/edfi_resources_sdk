//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiSurveyQuestionMatrix {
  /// Returns a new [EdFiSurveyQuestionMatrix] instance.
  EdFiSurveyQuestionMatrix({
    required this.matrixElement,
    this.maxRawScore,
    this.minRawScore,
  });

  /// For matrix questions, the text identifying each row of the matrix.
  String matrixElement;

  /// The maximum score possible on a survey.
  int? maxRawScore;

  /// The minimum score possible on a survey.
  int? minRawScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiSurveyQuestionMatrix &&
    other.matrixElement == matrixElement &&
    other.maxRawScore == maxRawScore &&
    other.minRawScore == minRawScore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (matrixElement.hashCode) +
    (maxRawScore == null ? 0 : maxRawScore!.hashCode) +
    (minRawScore == null ? 0 : minRawScore!.hashCode);

  @override
  String toString() => 'EdFiSurveyQuestionMatrix[matrixElement=$matrixElement, maxRawScore=$maxRawScore, minRawScore=$minRawScore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'matrixElement'] = this.matrixElement;
    if (this.maxRawScore != null) {
      json[r'maxRawScore'] = this.maxRawScore;
    } else {
      json[r'maxRawScore'] = null;
    }
    if (this.minRawScore != null) {
      json[r'minRawScore'] = this.minRawScore;
    } else {
      json[r'minRawScore'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiSurveyQuestionMatrix] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiSurveyQuestionMatrix? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiSurveyQuestionMatrix[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiSurveyQuestionMatrix[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiSurveyQuestionMatrix(
        matrixElement: mapValueOfType<String>(json, r'matrixElement')!,
        maxRawScore: mapValueOfType<int>(json, r'maxRawScore'),
        minRawScore: mapValueOfType<int>(json, r'minRawScore'),
      );
    }
    return null;
  }

  static List<EdFiSurveyQuestionMatrix> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiSurveyQuestionMatrix>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiSurveyQuestionMatrix.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiSurveyQuestionMatrix> mapFromJson(dynamic json) {
    final map = <String, EdFiSurveyQuestionMatrix>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiSurveyQuestionMatrix.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiSurveyQuestionMatrix-objects as value to a dart map
  static Map<String, List<EdFiSurveyQuestionMatrix>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiSurveyQuestionMatrix>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiSurveyQuestionMatrix.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'matrixElement',
  };
}

