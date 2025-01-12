//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentProgramEvaluationStudentEvaluationElement {
  /// Returns a new [EdFiStudentProgramEvaluationStudentEvaluationElement] instance.
  EdFiStudentProgramEvaluationStudentEvaluationElement({
    this.evaluationElementRatingLevelDescriptor,
    this.evaluationElementNumericRating,
    required this.programEvaluationElementReference,
  });

  /// The rating level achieved based upon the rating or score for the evaluation element.
  String? evaluationElementRatingLevelDescriptor;

  /// The numerical rating or score for the evaluation element.
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? evaluationElementNumericRating;

  EdFiProgramEvaluationElementReference programEvaluationElementReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentProgramEvaluationStudentEvaluationElement &&
    other.evaluationElementRatingLevelDescriptor == evaluationElementRatingLevelDescriptor &&
    other.evaluationElementNumericRating == evaluationElementNumericRating &&
    other.programEvaluationElementReference == programEvaluationElementReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (evaluationElementRatingLevelDescriptor == null ? 0 : evaluationElementRatingLevelDescriptor!.hashCode) +
    (evaluationElementNumericRating == null ? 0 : evaluationElementNumericRating!.hashCode) +
    (programEvaluationElementReference.hashCode);

  @override
  String toString() => 'EdFiStudentProgramEvaluationStudentEvaluationElement[evaluationElementRatingLevelDescriptor=$evaluationElementRatingLevelDescriptor, evaluationElementNumericRating=$evaluationElementNumericRating, programEvaluationElementReference=$programEvaluationElementReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.evaluationElementRatingLevelDescriptor != null) {
      json[r'evaluationElementRatingLevelDescriptor'] = this.evaluationElementRatingLevelDescriptor;
    } else {
      json[r'evaluationElementRatingLevelDescriptor'] = null;
    }
    if (this.evaluationElementNumericRating != null) {
      json[r'evaluationElementNumericRating'] = this.evaluationElementNumericRating;
    } else {
      json[r'evaluationElementNumericRating'] = null;
    }
      json[r'programEvaluationElementReference'] = this.programEvaluationElementReference;
    return json;
  }

  /// Returns a new [EdFiStudentProgramEvaluationStudentEvaluationElement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentProgramEvaluationStudentEvaluationElement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentProgramEvaluationStudentEvaluationElement[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentProgramEvaluationStudentEvaluationElement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentProgramEvaluationStudentEvaluationElement(
        evaluationElementRatingLevelDescriptor: mapValueOfType<String>(json, r'evaluationElementRatingLevelDescriptor'),
        evaluationElementNumericRating: mapValueOfType<double>(json, r'evaluationElementNumericRating'),
        programEvaluationElementReference: EdFiProgramEvaluationElementReference.fromJson(json[r'programEvaluationElementReference'])!,
      );
    }
    return null;
  }

  static List<EdFiStudentProgramEvaluationStudentEvaluationElement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentProgramEvaluationStudentEvaluationElement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentProgramEvaluationStudentEvaluationElement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentProgramEvaluationStudentEvaluationElement> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentProgramEvaluationStudentEvaluationElement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentProgramEvaluationStudentEvaluationElement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentProgramEvaluationStudentEvaluationElement-objects as value to a dart map
  static Map<String, List<EdFiStudentProgramEvaluationStudentEvaluationElement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentProgramEvaluationStudentEvaluationElement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentProgramEvaluationStudentEvaluationElement.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'programEvaluationElementReference',
  };
}

