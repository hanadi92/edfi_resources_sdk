//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmPerformanceEvaluationRating {
  /// Returns a new [TpdmPerformanceEvaluationRating] instance.
  TpdmPerformanceEvaluationRating({
    this.id,
    required this.performanceEvaluationReference,
    required this.personReference,
    required this.actualDate,
    this.actualDuration,
    this.actualTime,
    this.announced,
    this.comments,
    this.coteachingStyleObservedDescriptor,
    this.performanceEvaluationRatingLevelDescriptor,
    this.results = const [],
    this.reviewers = const [],
    this.scheduleDate,
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

  TpdmPerformanceEvaluationReference performanceEvaluationReference;

  EdFiPersonReference personReference;

  /// The month, day, and year on which the performance evaluation was conducted.
  DateTime actualDate;

  /// The actual or estimated number of clock minutes during which the performance evaluation was conducted.
  ///
  /// Minimum value: 1
  int? actualDuration;

  /// An indication of the the time at which the performance evaluation was conducted.
  String? actualTime;

  /// An indicator of whether the performance evaluation was announced or not.
  bool? announced;

  /// Any comments about the performance evaluation to be captured.
  String? comments;

  /// A type of co-teaching observed as part of the performance evaluation.
  String? coteachingStyleObservedDescriptor;

  /// The rating level achieved based upon the rating or score.
  String? performanceEvaluationRatingLevelDescriptor;

  /// An unordered collection of performanceEvaluationRatingResults. The numerical summary rating or score for the performance evaluation.
  List<TpdmPerformanceEvaluationRatingResult> results;

  /// An unordered collection of performanceEvaluationRatingReviewers. The person(s) that conducted the performance evaluation.
  List<TpdmPerformanceEvaluationRatingReviewer> reviewers;

  /// The month, day, and year on which the performance evaluation was scheduled.
  DateTime? scheduleDate;

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
  bool operator ==(Object other) => identical(this, other) || other is TpdmPerformanceEvaluationRating &&
    other.id == id &&
    other.performanceEvaluationReference == performanceEvaluationReference &&
    other.personReference == personReference &&
    other.actualDate == actualDate &&
    other.actualDuration == actualDuration &&
    other.actualTime == actualTime &&
    other.announced == announced &&
    other.comments == comments &&
    other.coteachingStyleObservedDescriptor == coteachingStyleObservedDescriptor &&
    other.performanceEvaluationRatingLevelDescriptor == performanceEvaluationRatingLevelDescriptor &&
    _deepEquality.equals(other.results, results) &&
    _deepEquality.equals(other.reviewers, reviewers) &&
    other.scheduleDate == scheduleDate &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (performanceEvaluationReference.hashCode) +
    (personReference.hashCode) +
    (actualDate.hashCode) +
    (actualDuration == null ? 0 : actualDuration!.hashCode) +
    (actualTime == null ? 0 : actualTime!.hashCode) +
    (announced == null ? 0 : announced!.hashCode) +
    (comments == null ? 0 : comments!.hashCode) +
    (coteachingStyleObservedDescriptor == null ? 0 : coteachingStyleObservedDescriptor!.hashCode) +
    (performanceEvaluationRatingLevelDescriptor == null ? 0 : performanceEvaluationRatingLevelDescriptor!.hashCode) +
    (results.hashCode) +
    (reviewers.hashCode) +
    (scheduleDate == null ? 0 : scheduleDate!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'TpdmPerformanceEvaluationRating[id=$id, performanceEvaluationReference=$performanceEvaluationReference, personReference=$personReference, actualDate=$actualDate, actualDuration=$actualDuration, actualTime=$actualTime, announced=$announced, comments=$comments, coteachingStyleObservedDescriptor=$coteachingStyleObservedDescriptor, performanceEvaluationRatingLevelDescriptor=$performanceEvaluationRatingLevelDescriptor, results=$results, reviewers=$reviewers, scheduleDate=$scheduleDate, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'performanceEvaluationReference'] = this.performanceEvaluationReference;
      json[r'personReference'] = this.personReference;
      json[r'actualDate'] = _dateFormatter.format(this.actualDate.toUtc());
    if (this.actualDuration != null) {
      json[r'actualDuration'] = this.actualDuration;
    } else {
      json[r'actualDuration'] = null;
    }
    if (this.actualTime != null) {
      json[r'actualTime'] = this.actualTime;
    } else {
      json[r'actualTime'] = null;
    }
    if (this.announced != null) {
      json[r'announced'] = this.announced;
    } else {
      json[r'announced'] = null;
    }
    if (this.comments != null) {
      json[r'comments'] = this.comments;
    } else {
      json[r'comments'] = null;
    }
    if (this.coteachingStyleObservedDescriptor != null) {
      json[r'coteachingStyleObservedDescriptor'] = this.coteachingStyleObservedDescriptor;
    } else {
      json[r'coteachingStyleObservedDescriptor'] = null;
    }
    if (this.performanceEvaluationRatingLevelDescriptor != null) {
      json[r'performanceEvaluationRatingLevelDescriptor'] = this.performanceEvaluationRatingLevelDescriptor;
    } else {
      json[r'performanceEvaluationRatingLevelDescriptor'] = null;
    }
      json[r'results'] = this.results;
      json[r'reviewers'] = this.reviewers;
    if (this.scheduleDate != null) {
      json[r'scheduleDate'] = _dateFormatter.format(this.scheduleDate!.toUtc());
    } else {
      json[r'scheduleDate'] = null;
    }
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

  /// Returns a new [TpdmPerformanceEvaluationRating] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmPerformanceEvaluationRating? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmPerformanceEvaluationRating[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmPerformanceEvaluationRating[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmPerformanceEvaluationRating(
        id: mapValueOfType<String>(json, r'id'),
        performanceEvaluationReference: TpdmPerformanceEvaluationReference.fromJson(json[r'performanceEvaluationReference'])!,
        personReference: EdFiPersonReference.fromJson(json[r'personReference'])!,
        actualDate: mapDateTime(json, r'actualDate', r'')!,
        actualDuration: mapValueOfType<int>(json, r'actualDuration'),
        actualTime: mapValueOfType<String>(json, r'actualTime'),
        announced: mapValueOfType<bool>(json, r'announced'),
        comments: mapValueOfType<String>(json, r'comments'),
        coteachingStyleObservedDescriptor: mapValueOfType<String>(json, r'coteachingStyleObservedDescriptor'),
        performanceEvaluationRatingLevelDescriptor: mapValueOfType<String>(json, r'performanceEvaluationRatingLevelDescriptor'),
        results: TpdmPerformanceEvaluationRatingResult.listFromJson(json[r'results']),
        reviewers: TpdmPerformanceEvaluationRatingReviewer.listFromJson(json[r'reviewers']),
        scheduleDate: mapDateTime(json, r'scheduleDate', r''),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<TpdmPerformanceEvaluationRating> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmPerformanceEvaluationRating>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmPerformanceEvaluationRating.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmPerformanceEvaluationRating> mapFromJson(dynamic json) {
    final map = <String, TpdmPerformanceEvaluationRating>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmPerformanceEvaluationRating.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmPerformanceEvaluationRating-objects as value to a dart map
  static Map<String, List<TpdmPerformanceEvaluationRating>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmPerformanceEvaluationRating>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmPerformanceEvaluationRating.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'performanceEvaluationReference',
    'personReference',
    'actualDate',
  };
}

