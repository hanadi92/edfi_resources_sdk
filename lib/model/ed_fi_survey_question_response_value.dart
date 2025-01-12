//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiSurveyQuestionResponseValue {
  /// Returns a new [EdFiSurveyQuestionResponseValue] instance.
  EdFiSurveyQuestionResponseValue({
    required this.surveyQuestionResponseValueIdentifier,
    this.numericResponse,
    this.textResponse,
  });

  /// Primary key for the response value; a unique, usually sequential numeric value for a collection of responses, or potentially the value of NumericResponse for a single response.
  int surveyQuestionResponseValueIdentifier;

  /// A numeric response to the question.
  ///
  /// Minimum value: 0
  /// Maximum value: 100
  int? numericResponse;

  /// A text response to the question.
  String? textResponse;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiSurveyQuestionResponseValue &&
    other.surveyQuestionResponseValueIdentifier == surveyQuestionResponseValueIdentifier &&
    other.numericResponse == numericResponse &&
    other.textResponse == textResponse;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (surveyQuestionResponseValueIdentifier.hashCode) +
    (numericResponse == null ? 0 : numericResponse!.hashCode) +
    (textResponse == null ? 0 : textResponse!.hashCode);

  @override
  String toString() => 'EdFiSurveyQuestionResponseValue[surveyQuestionResponseValueIdentifier=$surveyQuestionResponseValueIdentifier, numericResponse=$numericResponse, textResponse=$textResponse]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'surveyQuestionResponseValueIdentifier'] = this.surveyQuestionResponseValueIdentifier;
    if (this.numericResponse != null) {
      json[r'numericResponse'] = this.numericResponse;
    } else {
      json[r'numericResponse'] = null;
    }
    if (this.textResponse != null) {
      json[r'textResponse'] = this.textResponse;
    } else {
      json[r'textResponse'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiSurveyQuestionResponseValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiSurveyQuestionResponseValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiSurveyQuestionResponseValue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiSurveyQuestionResponseValue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiSurveyQuestionResponseValue(
        surveyQuestionResponseValueIdentifier: mapValueOfType<int>(json, r'surveyQuestionResponseValueIdentifier')!,
        numericResponse: mapValueOfType<int>(json, r'numericResponse'),
        textResponse: mapValueOfType<String>(json, r'textResponse'),
      );
    }
    return null;
  }

  static List<EdFiSurveyQuestionResponseValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiSurveyQuestionResponseValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiSurveyQuestionResponseValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiSurveyQuestionResponseValue> mapFromJson(dynamic json) {
    final map = <String, EdFiSurveyQuestionResponseValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiSurveyQuestionResponseValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiSurveyQuestionResponseValue-objects as value to a dart map
  static Map<String, List<EdFiSurveyQuestionResponseValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiSurveyQuestionResponseValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiSurveyQuestionResponseValue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'surveyQuestionResponseValueIdentifier',
  };
}

