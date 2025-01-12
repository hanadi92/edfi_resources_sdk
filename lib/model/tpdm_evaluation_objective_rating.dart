//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmEvaluationObjectiveRating {
  /// Returns a new [TpdmEvaluationObjectiveRating] instance.
  TpdmEvaluationObjectiveRating({
    this.id,
    required this.evaluationObjectiveReference,
    required this.evaluationRatingReference,
    this.comments,
    this.objectiveRatingLevelDescriptor,
    this.results = const [],
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

  TpdmEvaluationObjectiveReference evaluationObjectiveReference;

  TpdmEvaluationRatingReference evaluationRatingReference;

  /// Any comments about the performance evaluation to be captured.
  String? comments;

  /// The rating level achieved based upon the rating or score.
  String? objectiveRatingLevelDescriptor;

  /// An unordered collection of evaluationObjectiveRatingResults. The numerical summary rating or score for the evaluation Objective.
  List<TpdmEvaluationObjectiveRatingResult> results;

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
  bool operator ==(Object other) => identical(this, other) || other is TpdmEvaluationObjectiveRating &&
    other.id == id &&
    other.evaluationObjectiveReference == evaluationObjectiveReference &&
    other.evaluationRatingReference == evaluationRatingReference &&
    other.comments == comments &&
    other.objectiveRatingLevelDescriptor == objectiveRatingLevelDescriptor &&
    _deepEquality.equals(other.results, results) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (evaluationObjectiveReference.hashCode) +
    (evaluationRatingReference.hashCode) +
    (comments == null ? 0 : comments!.hashCode) +
    (objectiveRatingLevelDescriptor == null ? 0 : objectiveRatingLevelDescriptor!.hashCode) +
    (results.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'TpdmEvaluationObjectiveRating[id=$id, evaluationObjectiveReference=$evaluationObjectiveReference, evaluationRatingReference=$evaluationRatingReference, comments=$comments, objectiveRatingLevelDescriptor=$objectiveRatingLevelDescriptor, results=$results, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'evaluationObjectiveReference'] = this.evaluationObjectiveReference;
      json[r'evaluationRatingReference'] = this.evaluationRatingReference;
    if (this.comments != null) {
      json[r'comments'] = this.comments;
    } else {
      json[r'comments'] = null;
    }
    if (this.objectiveRatingLevelDescriptor != null) {
      json[r'objectiveRatingLevelDescriptor'] = this.objectiveRatingLevelDescriptor;
    } else {
      json[r'objectiveRatingLevelDescriptor'] = null;
    }
      json[r'results'] = this.results;
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

  /// Returns a new [TpdmEvaluationObjectiveRating] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmEvaluationObjectiveRating? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmEvaluationObjectiveRating[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmEvaluationObjectiveRating[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmEvaluationObjectiveRating(
        id: mapValueOfType<String>(json, r'id'),
        evaluationObjectiveReference: TpdmEvaluationObjectiveReference.fromJson(json[r'evaluationObjectiveReference'])!,
        evaluationRatingReference: TpdmEvaluationRatingReference.fromJson(json[r'evaluationRatingReference'])!,
        comments: mapValueOfType<String>(json, r'comments'),
        objectiveRatingLevelDescriptor: mapValueOfType<String>(json, r'objectiveRatingLevelDescriptor'),
        results: TpdmEvaluationObjectiveRatingResult.listFromJson(json[r'results']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<TpdmEvaluationObjectiveRating> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmEvaluationObjectiveRating>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmEvaluationObjectiveRating.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmEvaluationObjectiveRating> mapFromJson(dynamic json) {
    final map = <String, TpdmEvaluationObjectiveRating>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmEvaluationObjectiveRating.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmEvaluationObjectiveRating-objects as value to a dart map
  static Map<String, List<TpdmEvaluationObjectiveRating>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmEvaluationObjectiveRating>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmEvaluationObjectiveRating.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'evaluationObjectiveReference',
    'evaluationRatingReference',
  };
}

