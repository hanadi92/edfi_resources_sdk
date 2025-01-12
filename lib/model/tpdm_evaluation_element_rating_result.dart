//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmEvaluationElementRatingResult {
  /// Returns a new [TpdmEvaluationElementRatingResult] instance.
  TpdmEvaluationElementRatingResult({
    required this.rating,
    required this.ratingResultTitle,
    required this.resultDatatypeTypeDescriptor,
  });

  /// The numerical summary rating or score for the evaluation.
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double rating;

  /// The title of Rating Result.
  String ratingResultTitle;

  /// The datatype of the result.
  String resultDatatypeTypeDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TpdmEvaluationElementRatingResult &&
    other.rating == rating &&
    other.ratingResultTitle == ratingResultTitle &&
    other.resultDatatypeTypeDescriptor == resultDatatypeTypeDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rating.hashCode) +
    (ratingResultTitle.hashCode) +
    (resultDatatypeTypeDescriptor.hashCode);

  @override
  String toString() => 'TpdmEvaluationElementRatingResult[rating=$rating, ratingResultTitle=$ratingResultTitle, resultDatatypeTypeDescriptor=$resultDatatypeTypeDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rating'] = this.rating;
      json[r'ratingResultTitle'] = this.ratingResultTitle;
      json[r'resultDatatypeTypeDescriptor'] = this.resultDatatypeTypeDescriptor;
    return json;
  }

  /// Returns a new [TpdmEvaluationElementRatingResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmEvaluationElementRatingResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmEvaluationElementRatingResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmEvaluationElementRatingResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmEvaluationElementRatingResult(
        rating: mapValueOfType<double>(json, r'rating')!,
        ratingResultTitle: mapValueOfType<String>(json, r'ratingResultTitle')!,
        resultDatatypeTypeDescriptor: mapValueOfType<String>(json, r'resultDatatypeTypeDescriptor')!,
      );
    }
    return null;
  }

  static List<TpdmEvaluationElementRatingResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmEvaluationElementRatingResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmEvaluationElementRatingResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmEvaluationElementRatingResult> mapFromJson(dynamic json) {
    final map = <String, TpdmEvaluationElementRatingResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmEvaluationElementRatingResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmEvaluationElementRatingResult-objects as value to a dart map
  static Map<String, List<TpdmEvaluationElementRatingResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmEvaluationElementRatingResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmEvaluationElementRatingResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rating',
    'ratingResultTitle',
    'resultDatatypeTypeDescriptor',
  };
}

