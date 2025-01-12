//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse {
  /// Returns a new [EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse] instance.
  EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse({
    required this.matrixElement,
    this.maxNumericResponse,
    this.minNumericResponse,
    this.noResponse,
    this.numericResponse,
    this.textResponse,
  });

  /// For matrix questions, the text identifying each row of the matrix.
  String matrixElement;

  /// The maximum score response to the question.
  int? maxNumericResponse;

  /// The minimum score response to the question.
  int? minNumericResponse;

  /// Indicates there was no response to the question.
  bool? noResponse;

  /// The numeric response to the question.
  ///
  /// Minimum value: 0
  /// Maximum value: 100
  int? numericResponse;

  /// The text response(s) for the question.
  String? textResponse;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse &&
    other.matrixElement == matrixElement &&
    other.maxNumericResponse == maxNumericResponse &&
    other.minNumericResponse == minNumericResponse &&
    other.noResponse == noResponse &&
    other.numericResponse == numericResponse &&
    other.textResponse == textResponse;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (matrixElement.hashCode) +
    (maxNumericResponse == null ? 0 : maxNumericResponse!.hashCode) +
    (minNumericResponse == null ? 0 : minNumericResponse!.hashCode) +
    (noResponse == null ? 0 : noResponse!.hashCode) +
    (numericResponse == null ? 0 : numericResponse!.hashCode) +
    (textResponse == null ? 0 : textResponse!.hashCode);

  @override
  String toString() => 'EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse[matrixElement=$matrixElement, maxNumericResponse=$maxNumericResponse, minNumericResponse=$minNumericResponse, noResponse=$noResponse, numericResponse=$numericResponse, textResponse=$textResponse]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'matrixElement'] = this.matrixElement;
    if (this.maxNumericResponse != null) {
      json[r'maxNumericResponse'] = this.maxNumericResponse;
    } else {
      json[r'maxNumericResponse'] = null;
    }
    if (this.minNumericResponse != null) {
      json[r'minNumericResponse'] = this.minNumericResponse;
    } else {
      json[r'minNumericResponse'] = null;
    }
    if (this.noResponse != null) {
      json[r'noResponse'] = this.noResponse;
    } else {
      json[r'noResponse'] = null;
    }
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

  /// Returns a new [EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse(
        matrixElement: mapValueOfType<String>(json, r'matrixElement')!,
        maxNumericResponse: mapValueOfType<int>(json, r'maxNumericResponse'),
        minNumericResponse: mapValueOfType<int>(json, r'minNumericResponse'),
        noResponse: mapValueOfType<bool>(json, r'noResponse'),
        numericResponse: mapValueOfType<int>(json, r'numericResponse'),
        textResponse: mapValueOfType<String>(json, r'textResponse'),
      );
    }
    return null;
  }

  static List<EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse> mapFromJson(dynamic json) {
    final map = <String, EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse-objects as value to a dart map
  static Map<String, List<EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'matrixElement',
  };
}

