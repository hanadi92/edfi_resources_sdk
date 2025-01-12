//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmEvaluation {
  /// Returns a new [TpdmEvaluation] instance.
  TpdmEvaluation({
    this.id,
    required this.evaluationTitle,
    required this.performanceEvaluationReference,
    this.evaluationDescription,
    this.evaluationTypeDescriptor,
    this.interRaterReliabilityScore,
    this.maxRating,
    this.minRating,
    this.ratingLevels = const [],
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

  /// The name or title of the evaluation.
  String evaluationTitle;

  TpdmPerformanceEvaluationReference performanceEvaluationReference;

  /// The long description of the Evaluation.
  String? evaluationDescription;

  /// The type of the evaluation (e.g., observation, principal, peer, student survey, student growth).
  String? evaluationTypeDescriptor;

  /// A score indicating how much homogeneity, or consensus, there is in the ratings given by judges. Most commonly a percentage scale (1-100)
  int? interRaterReliabilityScore;

  /// The maximum summary numerical rating or score for the evaluation.
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? maxRating;

  /// The minimum summary numerical rating or score for the evaluation. If omitted, assumed to be 0.0.
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? minRating;

  /// An unordered collection of evaluationRatingLevels. The descriptive level(s) of ratings (cut scores) for the evaluation.
  List<TpdmEvaluationRatingLevel> ratingLevels;

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
  bool operator ==(Object other) => identical(this, other) || other is TpdmEvaluation &&
    other.id == id &&
    other.evaluationTitle == evaluationTitle &&
    other.performanceEvaluationReference == performanceEvaluationReference &&
    other.evaluationDescription == evaluationDescription &&
    other.evaluationTypeDescriptor == evaluationTypeDescriptor &&
    other.interRaterReliabilityScore == interRaterReliabilityScore &&
    other.maxRating == maxRating &&
    other.minRating == minRating &&
    _deepEquality.equals(other.ratingLevels, ratingLevels) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (evaluationTitle.hashCode) +
    (performanceEvaluationReference.hashCode) +
    (evaluationDescription == null ? 0 : evaluationDescription!.hashCode) +
    (evaluationTypeDescriptor == null ? 0 : evaluationTypeDescriptor!.hashCode) +
    (interRaterReliabilityScore == null ? 0 : interRaterReliabilityScore!.hashCode) +
    (maxRating == null ? 0 : maxRating!.hashCode) +
    (minRating == null ? 0 : minRating!.hashCode) +
    (ratingLevels.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'TpdmEvaluation[id=$id, evaluationTitle=$evaluationTitle, performanceEvaluationReference=$performanceEvaluationReference, evaluationDescription=$evaluationDescription, evaluationTypeDescriptor=$evaluationTypeDescriptor, interRaterReliabilityScore=$interRaterReliabilityScore, maxRating=$maxRating, minRating=$minRating, ratingLevels=$ratingLevels, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'evaluationTitle'] = this.evaluationTitle;
      json[r'performanceEvaluationReference'] = this.performanceEvaluationReference;
    if (this.evaluationDescription != null) {
      json[r'evaluationDescription'] = this.evaluationDescription;
    } else {
      json[r'evaluationDescription'] = null;
    }
    if (this.evaluationTypeDescriptor != null) {
      json[r'evaluationTypeDescriptor'] = this.evaluationTypeDescriptor;
    } else {
      json[r'evaluationTypeDescriptor'] = null;
    }
    if (this.interRaterReliabilityScore != null) {
      json[r'interRaterReliabilityScore'] = this.interRaterReliabilityScore;
    } else {
      json[r'interRaterReliabilityScore'] = null;
    }
    if (this.maxRating != null) {
      json[r'maxRating'] = this.maxRating;
    } else {
      json[r'maxRating'] = null;
    }
    if (this.minRating != null) {
      json[r'minRating'] = this.minRating;
    } else {
      json[r'minRating'] = null;
    }
      json[r'ratingLevels'] = this.ratingLevels;
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

  /// Returns a new [TpdmEvaluation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmEvaluation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmEvaluation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmEvaluation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmEvaluation(
        id: mapValueOfType<String>(json, r'id'),
        evaluationTitle: mapValueOfType<String>(json, r'evaluationTitle')!,
        performanceEvaluationReference: TpdmPerformanceEvaluationReference.fromJson(json[r'performanceEvaluationReference'])!,
        evaluationDescription: mapValueOfType<String>(json, r'evaluationDescription'),
        evaluationTypeDescriptor: mapValueOfType<String>(json, r'evaluationTypeDescriptor'),
        interRaterReliabilityScore: mapValueOfType<int>(json, r'interRaterReliabilityScore'),
        maxRating: mapValueOfType<double>(json, r'maxRating'),
        minRating: mapValueOfType<double>(json, r'minRating'),
        ratingLevels: TpdmEvaluationRatingLevel.listFromJson(json[r'ratingLevels']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<TpdmEvaluation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmEvaluation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmEvaluation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmEvaluation> mapFromJson(dynamic json) {
    final map = <String, TpdmEvaluation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmEvaluation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmEvaluation-objects as value to a dart map
  static Map<String, List<TpdmEvaluation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmEvaluation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmEvaluation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'evaluationTitle',
    'performanceEvaluationReference',
  };
}

