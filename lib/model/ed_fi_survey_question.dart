//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiSurveyQuestion {
  /// Returns a new [EdFiSurveyQuestion] instance.
  EdFiSurveyQuestion({
    this.id,
    required this.questionCode,
    required this.surveyReference,
    this.surveySectionReference,
    this.matrices = const [],
    required this.questionFormDescriptor,
    required this.questionText,
    this.responseChoices = const [],
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

  /// The identifying code for the question, unique for the survey.
  String questionCode;

  EdFiSurveyReference surveyReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiSurveySectionReference? surveySectionReference;

  /// An unordered collection of surveyQuestionMatrices. Information about the matrix element in the survey.
  List<EdFiSurveyQuestionMatrix> matrices;

  /// The form or type of question.
  String questionFormDescriptor;

  /// The text of the question.
  String questionText;

  /// An unordered collection of surveyQuestionResponseChoices. The optional list of possible responses to a survey question.
  List<EdFiSurveyQuestionResponseChoice> responseChoices;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiSurveyQuestion &&
    other.id == id &&
    other.questionCode == questionCode &&
    other.surveyReference == surveyReference &&
    other.surveySectionReference == surveySectionReference &&
    _deepEquality.equals(other.matrices, matrices) &&
    other.questionFormDescriptor == questionFormDescriptor &&
    other.questionText == questionText &&
    _deepEquality.equals(other.responseChoices, responseChoices) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (questionCode.hashCode) +
    (surveyReference.hashCode) +
    (surveySectionReference == null ? 0 : surveySectionReference!.hashCode) +
    (matrices.hashCode) +
    (questionFormDescriptor.hashCode) +
    (questionText.hashCode) +
    (responseChoices.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiSurveyQuestion[id=$id, questionCode=$questionCode, surveyReference=$surveyReference, surveySectionReference=$surveySectionReference, matrices=$matrices, questionFormDescriptor=$questionFormDescriptor, questionText=$questionText, responseChoices=$responseChoices, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'questionCode'] = this.questionCode;
      json[r'surveyReference'] = this.surveyReference;
    if (this.surveySectionReference != null) {
      json[r'surveySectionReference'] = this.surveySectionReference;
    } else {
      json[r'surveySectionReference'] = null;
    }
      json[r'matrices'] = this.matrices;
      json[r'questionFormDescriptor'] = this.questionFormDescriptor;
      json[r'questionText'] = this.questionText;
      json[r'responseChoices'] = this.responseChoices;
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

  /// Returns a new [EdFiSurveyQuestion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiSurveyQuestion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiSurveyQuestion[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiSurveyQuestion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiSurveyQuestion(
        id: mapValueOfType<String>(json, r'id'),
        questionCode: mapValueOfType<String>(json, r'questionCode')!,
        surveyReference: EdFiSurveyReference.fromJson(json[r'surveyReference'])!,
        surveySectionReference: EdFiSurveySectionReference.fromJson(json[r'surveySectionReference']),
        matrices: EdFiSurveyQuestionMatrix.listFromJson(json[r'matrices']),
        questionFormDescriptor: mapValueOfType<String>(json, r'questionFormDescriptor')!,
        questionText: mapValueOfType<String>(json, r'questionText')!,
        responseChoices: EdFiSurveyQuestionResponseChoice.listFromJson(json[r'responseChoices']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiSurveyQuestion> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiSurveyQuestion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiSurveyQuestion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiSurveyQuestion> mapFromJson(dynamic json) {
    final map = <String, EdFiSurveyQuestion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiSurveyQuestion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiSurveyQuestion-objects as value to a dart map
  static Map<String, List<EdFiSurveyQuestion>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiSurveyQuestion>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiSurveyQuestion.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'questionCode',
    'surveyReference',
    'questionFormDescriptor',
    'questionText',
  };
}

