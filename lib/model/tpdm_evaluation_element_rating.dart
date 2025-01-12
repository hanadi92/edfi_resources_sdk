//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmEvaluationElementRating {
  /// Returns a new [TpdmEvaluationElementRating] instance.
  TpdmEvaluationElementRating({
    this.id,
    required this.evaluationElementReference,
    required this.evaluationObjectiveRatingReference,
    this.areaOfRefinement,
    this.areaOfReinforcement,
    this.comments,
    this.evaluationElementRatingLevelDescriptor,
    this.feedback,
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

  TpdmEvaluationElementReference evaluationElementReference;

  TpdmEvaluationObjectiveRatingReference evaluationObjectiveRatingReference;

  /// Area identified for person to refine or improve as part of the evaluation.
  String? areaOfRefinement;

  /// Area identified for reinforcement or positive feedback as part of the evaluation.
  String? areaOfReinforcement;

  /// Any comments about the performance evaluation to be captured.
  String? comments;

  /// The rating level achieved based upon the rating or score.
  String? evaluationElementRatingLevelDescriptor;

  /// Feedback provided to the evaluated person.
  String? feedback;

  /// An unordered collection of evaluationElementRatingResults. The numerical summary rating or score for the evaluation element.
  List<TpdmEvaluationElementRatingResult> results;

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
  bool operator ==(Object other) => identical(this, other) || other is TpdmEvaluationElementRating &&
    other.id == id &&
    other.evaluationElementReference == evaluationElementReference &&
    other.evaluationObjectiveRatingReference == evaluationObjectiveRatingReference &&
    other.areaOfRefinement == areaOfRefinement &&
    other.areaOfReinforcement == areaOfReinforcement &&
    other.comments == comments &&
    other.evaluationElementRatingLevelDescriptor == evaluationElementRatingLevelDescriptor &&
    other.feedback == feedback &&
    _deepEquality.equals(other.results, results) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (evaluationElementReference.hashCode) +
    (evaluationObjectiveRatingReference.hashCode) +
    (areaOfRefinement == null ? 0 : areaOfRefinement!.hashCode) +
    (areaOfReinforcement == null ? 0 : areaOfReinforcement!.hashCode) +
    (comments == null ? 0 : comments!.hashCode) +
    (evaluationElementRatingLevelDescriptor == null ? 0 : evaluationElementRatingLevelDescriptor!.hashCode) +
    (feedback == null ? 0 : feedback!.hashCode) +
    (results.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'TpdmEvaluationElementRating[id=$id, evaluationElementReference=$evaluationElementReference, evaluationObjectiveRatingReference=$evaluationObjectiveRatingReference, areaOfRefinement=$areaOfRefinement, areaOfReinforcement=$areaOfReinforcement, comments=$comments, evaluationElementRatingLevelDescriptor=$evaluationElementRatingLevelDescriptor, feedback=$feedback, results=$results, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'evaluationElementReference'] = this.evaluationElementReference;
      json[r'evaluationObjectiveRatingReference'] = this.evaluationObjectiveRatingReference;
    if (this.areaOfRefinement != null) {
      json[r'areaOfRefinement'] = this.areaOfRefinement;
    } else {
      json[r'areaOfRefinement'] = null;
    }
    if (this.areaOfReinforcement != null) {
      json[r'areaOfReinforcement'] = this.areaOfReinforcement;
    } else {
      json[r'areaOfReinforcement'] = null;
    }
    if (this.comments != null) {
      json[r'comments'] = this.comments;
    } else {
      json[r'comments'] = null;
    }
    if (this.evaluationElementRatingLevelDescriptor != null) {
      json[r'evaluationElementRatingLevelDescriptor'] = this.evaluationElementRatingLevelDescriptor;
    } else {
      json[r'evaluationElementRatingLevelDescriptor'] = null;
    }
    if (this.feedback != null) {
      json[r'feedback'] = this.feedback;
    } else {
      json[r'feedback'] = null;
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

  /// Returns a new [TpdmEvaluationElementRating] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmEvaluationElementRating? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmEvaluationElementRating[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmEvaluationElementRating[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmEvaluationElementRating(
        id: mapValueOfType<String>(json, r'id'),
        evaluationElementReference: TpdmEvaluationElementReference.fromJson(json[r'evaluationElementReference'])!,
        evaluationObjectiveRatingReference: TpdmEvaluationObjectiveRatingReference.fromJson(json[r'evaluationObjectiveRatingReference'])!,
        areaOfRefinement: mapValueOfType<String>(json, r'areaOfRefinement'),
        areaOfReinforcement: mapValueOfType<String>(json, r'areaOfReinforcement'),
        comments: mapValueOfType<String>(json, r'comments'),
        evaluationElementRatingLevelDescriptor: mapValueOfType<String>(json, r'evaluationElementRatingLevelDescriptor'),
        feedback: mapValueOfType<String>(json, r'feedback'),
        results: TpdmEvaluationElementRatingResult.listFromJson(json[r'results']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<TpdmEvaluationElementRating> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmEvaluationElementRating>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmEvaluationElementRating.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmEvaluationElementRating> mapFromJson(dynamic json) {
    final map = <String, TpdmEvaluationElementRating>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmEvaluationElementRating.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmEvaluationElementRating-objects as value to a dart map
  static Map<String, List<TpdmEvaluationElementRating>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmEvaluationElementRating>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmEvaluationElementRating.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'evaluationElementReference',
    'evaluationObjectiveRatingReference',
  };
}

