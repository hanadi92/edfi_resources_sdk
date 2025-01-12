//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmEvaluationRating {
  /// Returns a new [TpdmEvaluationRating] instance.
  TpdmEvaluationRating({
    this.id,
    required this.evaluationDate,
    required this.evaluationReference,
    required this.performanceEvaluationRatingReference,
    this.sectionReference,
    this.actualDuration,
    this.comments,
    this.evaluationRatingLevelDescriptor,
    this.evaluationRatingStatusDescriptor,
    this.results = const [],
    this.reviewers = const [],
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

  /// The date for the person's evaluation.
  DateTime evaluationDate;

  TpdmEvaluationReference evaluationReference;

  TpdmPerformanceEvaluationRatingReference performanceEvaluationRatingReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiSectionReference? sectionReference;

  /// The actual or estimated number of clock minutes during which the evaluation was conducted.
  ///
  /// Minimum value: 1
  int? actualDuration;

  /// Any comments about the evaluation to be captured.
  String? comments;

  /// The rating level achieved based upon the rating or score.
  String? evaluationRatingLevelDescriptor;

  /// The Status of the poerformance evaluation.
  String? evaluationRatingStatusDescriptor;

  /// An unordered collection of evaluationRatingResults. The numerical summary rating or score for the evaluation.
  List<TpdmEvaluationRatingResult> results;

  /// An unordered collection of evaluationRatingReviewers. The person(s) that conducted the performance evaluation.
  List<TpdmEvaluationRatingReviewer> reviewers;

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
  bool operator ==(Object other) => identical(this, other) || other is TpdmEvaluationRating &&
    other.id == id &&
    other.evaluationDate == evaluationDate &&
    other.evaluationReference == evaluationReference &&
    other.performanceEvaluationRatingReference == performanceEvaluationRatingReference &&
    other.sectionReference == sectionReference &&
    other.actualDuration == actualDuration &&
    other.comments == comments &&
    other.evaluationRatingLevelDescriptor == evaluationRatingLevelDescriptor &&
    other.evaluationRatingStatusDescriptor == evaluationRatingStatusDescriptor &&
    _deepEquality.equals(other.results, results) &&
    _deepEquality.equals(other.reviewers, reviewers) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (evaluationDate.hashCode) +
    (evaluationReference.hashCode) +
    (performanceEvaluationRatingReference.hashCode) +
    (sectionReference == null ? 0 : sectionReference!.hashCode) +
    (actualDuration == null ? 0 : actualDuration!.hashCode) +
    (comments == null ? 0 : comments!.hashCode) +
    (evaluationRatingLevelDescriptor == null ? 0 : evaluationRatingLevelDescriptor!.hashCode) +
    (evaluationRatingStatusDescriptor == null ? 0 : evaluationRatingStatusDescriptor!.hashCode) +
    (results.hashCode) +
    (reviewers.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'TpdmEvaluationRating[id=$id, evaluationDate=$evaluationDate, evaluationReference=$evaluationReference, performanceEvaluationRatingReference=$performanceEvaluationRatingReference, sectionReference=$sectionReference, actualDuration=$actualDuration, comments=$comments, evaluationRatingLevelDescriptor=$evaluationRatingLevelDescriptor, evaluationRatingStatusDescriptor=$evaluationRatingStatusDescriptor, results=$results, reviewers=$reviewers, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'evaluationDate'] = this.evaluationDate.toUtc().toIso8601String();
      json[r'evaluationReference'] = this.evaluationReference;
      json[r'performanceEvaluationRatingReference'] = this.performanceEvaluationRatingReference;
    if (this.sectionReference != null) {
      json[r'sectionReference'] = this.sectionReference;
    } else {
      json[r'sectionReference'] = null;
    }
    if (this.actualDuration != null) {
      json[r'actualDuration'] = this.actualDuration;
    } else {
      json[r'actualDuration'] = null;
    }
    if (this.comments != null) {
      json[r'comments'] = this.comments;
    } else {
      json[r'comments'] = null;
    }
    if (this.evaluationRatingLevelDescriptor != null) {
      json[r'evaluationRatingLevelDescriptor'] = this.evaluationRatingLevelDescriptor;
    } else {
      json[r'evaluationRatingLevelDescriptor'] = null;
    }
    if (this.evaluationRatingStatusDescriptor != null) {
      json[r'evaluationRatingStatusDescriptor'] = this.evaluationRatingStatusDescriptor;
    } else {
      json[r'evaluationRatingStatusDescriptor'] = null;
    }
      json[r'results'] = this.results;
      json[r'reviewers'] = this.reviewers;
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

  /// Returns a new [TpdmEvaluationRating] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmEvaluationRating? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmEvaluationRating[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmEvaluationRating[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmEvaluationRating(
        id: mapValueOfType<String>(json, r'id'),
        evaluationDate: mapDateTime(json, r'evaluationDate', r'')!,
        evaluationReference: TpdmEvaluationReference.fromJson(json[r'evaluationReference'])!,
        performanceEvaluationRatingReference: TpdmPerformanceEvaluationRatingReference.fromJson(json[r'performanceEvaluationRatingReference'])!,
        sectionReference: EdFiSectionReference.fromJson(json[r'sectionReference']),
        actualDuration: mapValueOfType<int>(json, r'actualDuration'),
        comments: mapValueOfType<String>(json, r'comments'),
        evaluationRatingLevelDescriptor: mapValueOfType<String>(json, r'evaluationRatingLevelDescriptor'),
        evaluationRatingStatusDescriptor: mapValueOfType<String>(json, r'evaluationRatingStatusDescriptor'),
        results: TpdmEvaluationRatingResult.listFromJson(json[r'results']),
        reviewers: TpdmEvaluationRatingReviewer.listFromJson(json[r'reviewers']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<TpdmEvaluationRating> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmEvaluationRating>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmEvaluationRating.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmEvaluationRating> mapFromJson(dynamic json) {
    final map = <String, TpdmEvaluationRating>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmEvaluationRating.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmEvaluationRating-objects as value to a dart map
  static Map<String, List<TpdmEvaluationRating>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmEvaluationRating>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmEvaluationRating.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'evaluationDate',
    'evaluationReference',
    'performanceEvaluationRatingReference',
  };
}

