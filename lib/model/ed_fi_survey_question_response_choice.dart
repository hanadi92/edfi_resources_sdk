//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiSurveyQuestionResponseChoice {
  /// Returns a new [EdFiSurveyQuestionResponseChoice] instance.
  EdFiSurveyQuestionResponseChoice({
    required this.sortOrder,
    this.numericValue,
    this.textValue,
  });

  /// Sort order of this ResponseChoice within the complete list of choices attached to a SurveyQuestion. If sort order doesn't apply, the value of NumericValue or a unique, possibly sequential numeric value.
  int sortOrder;

  /// A valid numeric response. If paired with a TextValue, the numeric equivalent of the TextValue.
  ///
  /// Minimum value: 0
  /// Maximum value: 100
  int? numericValue;

  /// A valid text response. If paired with a NumericValue, the text equivalent of the NumericValue.
  String? textValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiSurveyQuestionResponseChoice &&
    other.sortOrder == sortOrder &&
    other.numericValue == numericValue &&
    other.textValue == textValue;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortOrder.hashCode) +
    (numericValue == null ? 0 : numericValue!.hashCode) +
    (textValue == null ? 0 : textValue!.hashCode);

  @override
  String toString() => 'EdFiSurveyQuestionResponseChoice[sortOrder=$sortOrder, numericValue=$numericValue, textValue=$textValue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sortOrder'] = this.sortOrder;
    if (this.numericValue != null) {
      json[r'numericValue'] = this.numericValue;
    } else {
      json[r'numericValue'] = null;
    }
    if (this.textValue != null) {
      json[r'textValue'] = this.textValue;
    } else {
      json[r'textValue'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiSurveyQuestionResponseChoice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiSurveyQuestionResponseChoice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiSurveyQuestionResponseChoice[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiSurveyQuestionResponseChoice[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiSurveyQuestionResponseChoice(
        sortOrder: mapValueOfType<int>(json, r'sortOrder')!,
        numericValue: mapValueOfType<int>(json, r'numericValue'),
        textValue: mapValueOfType<String>(json, r'textValue'),
      );
    }
    return null;
  }

  static List<EdFiSurveyQuestionResponseChoice> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiSurveyQuestionResponseChoice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiSurveyQuestionResponseChoice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiSurveyQuestionResponseChoice> mapFromJson(dynamic json) {
    final map = <String, EdFiSurveyQuestionResponseChoice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiSurveyQuestionResponseChoice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiSurveyQuestionResponseChoice-objects as value to a dart map
  static Map<String, List<EdFiSurveyQuestionResponseChoice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiSurveyQuestionResponseChoice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiSurveyQuestionResponseChoice.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sortOrder',
  };
}

