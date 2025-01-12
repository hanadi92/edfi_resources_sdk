//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiSurveyQuestionResponse {
  /// Returns a new [EdFiSurveyQuestionResponse] instance.
  EdFiSurveyQuestionResponse({
    this.id,
    required this.surveyQuestionReference,
    required this.surveyResponseReference,
    this.comment,
    this.noResponse,
    this.surveyQuestionMatrixElementResponses = const [],
    this.values = const [],
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

  EdFiSurveyQuestionReference surveyQuestionReference;

  EdFiSurveyResponseReference surveyResponseReference;

  /// Additional information provided by the responder about the question in the survey.
  String? comment;

  /// Indicates there was no response to the question.
  bool? noResponse;

  /// An unordered collection of surveyQuestionResponseSurveyQuestionMatrixElementResponses. For matrix questions, the response for each row of the matrix.
  List<EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse> surveyQuestionMatrixElementResponses;

  /// An unordered collection of surveyQuestionResponseValues. For free-form, single- or multiple-selection questions, one or more responses.
  List<EdFiSurveyQuestionResponseValue> values;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiSurveyQuestionResponse &&
    other.id == id &&
    other.surveyQuestionReference == surveyQuestionReference &&
    other.surveyResponseReference == surveyResponseReference &&
    other.comment == comment &&
    other.noResponse == noResponse &&
    _deepEquality.equals(other.surveyQuestionMatrixElementResponses, surveyQuestionMatrixElementResponses) &&
    _deepEquality.equals(other.values, values) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (surveyQuestionReference.hashCode) +
    (surveyResponseReference.hashCode) +
    (comment == null ? 0 : comment!.hashCode) +
    (noResponse == null ? 0 : noResponse!.hashCode) +
    (surveyQuestionMatrixElementResponses.hashCode) +
    (values.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiSurveyQuestionResponse[id=$id, surveyQuestionReference=$surveyQuestionReference, surveyResponseReference=$surveyResponseReference, comment=$comment, noResponse=$noResponse, surveyQuestionMatrixElementResponses=$surveyQuestionMatrixElementResponses, values=$values, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'surveyQuestionReference'] = this.surveyQuestionReference;
      json[r'surveyResponseReference'] = this.surveyResponseReference;
    if (this.comment != null) {
      json[r'comment'] = this.comment;
    } else {
      json[r'comment'] = null;
    }
    if (this.noResponse != null) {
      json[r'noResponse'] = this.noResponse;
    } else {
      json[r'noResponse'] = null;
    }
      json[r'surveyQuestionMatrixElementResponses'] = this.surveyQuestionMatrixElementResponses;
      json[r'values'] = this.values;
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

  /// Returns a new [EdFiSurveyQuestionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiSurveyQuestionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiSurveyQuestionResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiSurveyQuestionResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiSurveyQuestionResponse(
        id: mapValueOfType<String>(json, r'id'),
        surveyQuestionReference: EdFiSurveyQuestionReference.fromJson(json[r'surveyQuestionReference'])!,
        surveyResponseReference: EdFiSurveyResponseReference.fromJson(json[r'surveyResponseReference'])!,
        comment: mapValueOfType<String>(json, r'comment'),
        noResponse: mapValueOfType<bool>(json, r'noResponse'),
        surveyQuestionMatrixElementResponses: EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse.listFromJson(json[r'surveyQuestionMatrixElementResponses']),
        values: EdFiSurveyQuestionResponseValue.listFromJson(json[r'values']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiSurveyQuestionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiSurveyQuestionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiSurveyQuestionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiSurveyQuestionResponse> mapFromJson(dynamic json) {
    final map = <String, EdFiSurveyQuestionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiSurveyQuestionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiSurveyQuestionResponse-objects as value to a dart map
  static Map<String, List<EdFiSurveyQuestionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiSurveyQuestionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiSurveyQuestionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'surveyQuestionReference',
    'surveyResponseReference',
  };
}

