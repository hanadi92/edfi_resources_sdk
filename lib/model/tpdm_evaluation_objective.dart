//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmEvaluationObjective {
  /// Returns a new [TpdmEvaluationObjective] instance.
  TpdmEvaluationObjective({
    this.id,
    required this.evaluationObjectiveTitle,
    required this.evaluationReference,
    this.evaluationObjectiveDescription,
    this.evaluationTypeDescriptor,
    this.maxRating,
    this.minRating,
    this.ratingLevels = const [],
    this.sortOrder,
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

  /// The name or title of the evaluation Objective.
  String evaluationObjectiveTitle;

  TpdmEvaluationReference evaluationReference;

  /// The long description of the Evaluation Objective.
  String? evaluationObjectiveDescription;

  /// The type of the evaluation Objective (e.g., observation, principal, peer, student survey, student growth).
  String? evaluationTypeDescriptor;

  /// The maximum summary numerical rating or score for the evaluation Objective.
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? maxRating;

  /// The minimum summary numerical rating or score for the evaluation Objective. If omitted, assumed to be 0.0.
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? minRating;

  /// An unordered collection of evaluationObjectiveRatingLevels. The descriptive level(s) of ratings (cut scores) for evaluation Objective.
  List<TpdmEvaluationObjectiveRatingLevel> ratingLevels;

  /// The sort order of this Evaluation Objective.
  int? sortOrder;

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
  bool operator ==(Object other) => identical(this, other) || other is TpdmEvaluationObjective &&
    other.id == id &&
    other.evaluationObjectiveTitle == evaluationObjectiveTitle &&
    other.evaluationReference == evaluationReference &&
    other.evaluationObjectiveDescription == evaluationObjectiveDescription &&
    other.evaluationTypeDescriptor == evaluationTypeDescriptor &&
    other.maxRating == maxRating &&
    other.minRating == minRating &&
    _deepEquality.equals(other.ratingLevels, ratingLevels) &&
    other.sortOrder == sortOrder &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (evaluationObjectiveTitle.hashCode) +
    (evaluationReference.hashCode) +
    (evaluationObjectiveDescription == null ? 0 : evaluationObjectiveDescription!.hashCode) +
    (evaluationTypeDescriptor == null ? 0 : evaluationTypeDescriptor!.hashCode) +
    (maxRating == null ? 0 : maxRating!.hashCode) +
    (minRating == null ? 0 : minRating!.hashCode) +
    (ratingLevels.hashCode) +
    (sortOrder == null ? 0 : sortOrder!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'TpdmEvaluationObjective[id=$id, evaluationObjectiveTitle=$evaluationObjectiveTitle, evaluationReference=$evaluationReference, evaluationObjectiveDescription=$evaluationObjectiveDescription, evaluationTypeDescriptor=$evaluationTypeDescriptor, maxRating=$maxRating, minRating=$minRating, ratingLevels=$ratingLevels, sortOrder=$sortOrder, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'evaluationObjectiveTitle'] = this.evaluationObjectiveTitle;
      json[r'evaluationReference'] = this.evaluationReference;
    if (this.evaluationObjectiveDescription != null) {
      json[r'evaluationObjectiveDescription'] = this.evaluationObjectiveDescription;
    } else {
      json[r'evaluationObjectiveDescription'] = null;
    }
    if (this.evaluationTypeDescriptor != null) {
      json[r'evaluationTypeDescriptor'] = this.evaluationTypeDescriptor;
    } else {
      json[r'evaluationTypeDescriptor'] = null;
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
    if (this.sortOrder != null) {
      json[r'sortOrder'] = this.sortOrder;
    } else {
      json[r'sortOrder'] = null;
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

  /// Returns a new [TpdmEvaluationObjective] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmEvaluationObjective? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmEvaluationObjective[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmEvaluationObjective[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmEvaluationObjective(
        id: mapValueOfType<String>(json, r'id'),
        evaluationObjectiveTitle: mapValueOfType<String>(json, r'evaluationObjectiveTitle')!,
        evaluationReference: TpdmEvaluationReference.fromJson(json[r'evaluationReference'])!,
        evaluationObjectiveDescription: mapValueOfType<String>(json, r'evaluationObjectiveDescription'),
        evaluationTypeDescriptor: mapValueOfType<String>(json, r'evaluationTypeDescriptor'),
        maxRating: mapValueOfType<double>(json, r'maxRating'),
        minRating: mapValueOfType<double>(json, r'minRating'),
        ratingLevels: TpdmEvaluationObjectiveRatingLevel.listFromJson(json[r'ratingLevels']),
        sortOrder: mapValueOfType<int>(json, r'sortOrder'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<TpdmEvaluationObjective> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmEvaluationObjective>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmEvaluationObjective.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmEvaluationObjective> mapFromJson(dynamic json) {
    final map = <String, TpdmEvaluationObjective>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmEvaluationObjective.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmEvaluationObjective-objects as value to a dart map
  static Map<String, List<TpdmEvaluationObjective>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmEvaluationObjective>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmEvaluationObjective.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'evaluationObjectiveTitle',
    'evaluationReference',
  };
}

