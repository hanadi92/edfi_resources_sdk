//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmPerformanceEvaluationRatingReviewerReceivedTraining {
  /// Returns a new [TpdmPerformanceEvaluationRatingReviewerReceivedTraining] instance.
  TpdmPerformanceEvaluationRatingReviewerReceivedTraining({
    this.interRaterReliabilityScore,
    this.receivedTrainingDate,
  });

  /// A score indicating how much homogeneity, or consensus, there is in the ratings given by judges. Most commonly a percentage scale (1-100)
  int? interRaterReliabilityScore;

  /// The date on which the person administering the performance meausre received training on how to conduct performance measures.
  DateTime? receivedTrainingDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TpdmPerformanceEvaluationRatingReviewerReceivedTraining &&
    other.interRaterReliabilityScore == interRaterReliabilityScore &&
    other.receivedTrainingDate == receivedTrainingDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (interRaterReliabilityScore == null ? 0 : interRaterReliabilityScore!.hashCode) +
    (receivedTrainingDate == null ? 0 : receivedTrainingDate!.hashCode);

  @override
  String toString() => 'TpdmPerformanceEvaluationRatingReviewerReceivedTraining[interRaterReliabilityScore=$interRaterReliabilityScore, receivedTrainingDate=$receivedTrainingDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.interRaterReliabilityScore != null) {
      json[r'interRaterReliabilityScore'] = this.interRaterReliabilityScore;
    } else {
      json[r'interRaterReliabilityScore'] = null;
    }
    if (this.receivedTrainingDate != null) {
      json[r'receivedTrainingDate'] = _dateFormatter.format(this.receivedTrainingDate!.toUtc());
    } else {
      json[r'receivedTrainingDate'] = null;
    }
    return json;
  }

  /// Returns a new [TpdmPerformanceEvaluationRatingReviewerReceivedTraining] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmPerformanceEvaluationRatingReviewerReceivedTraining? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmPerformanceEvaluationRatingReviewerReceivedTraining[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmPerformanceEvaluationRatingReviewerReceivedTraining[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmPerformanceEvaluationRatingReviewerReceivedTraining(
        interRaterReliabilityScore: mapValueOfType<int>(json, r'interRaterReliabilityScore'),
        receivedTrainingDate: mapDateTime(json, r'receivedTrainingDate', r''),
      );
    }
    return null;
  }

  static List<TpdmPerformanceEvaluationRatingReviewerReceivedTraining> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmPerformanceEvaluationRatingReviewerReceivedTraining>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmPerformanceEvaluationRatingReviewerReceivedTraining.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmPerformanceEvaluationRatingReviewerReceivedTraining> mapFromJson(dynamic json) {
    final map = <String, TpdmPerformanceEvaluationRatingReviewerReceivedTraining>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmPerformanceEvaluationRatingReviewerReceivedTraining.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmPerformanceEvaluationRatingReviewerReceivedTraining-objects as value to a dart map
  static Map<String, List<TpdmPerformanceEvaluationRatingReviewerReceivedTraining>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmPerformanceEvaluationRatingReviewerReceivedTraining>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmPerformanceEvaluationRatingReviewerReceivedTraining.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

