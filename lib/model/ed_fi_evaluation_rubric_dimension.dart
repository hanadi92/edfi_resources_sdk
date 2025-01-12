//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiEvaluationRubricDimension {
  /// Returns a new [EdFiEvaluationRubricDimension] instance.
  EdFiEvaluationRubricDimension({
    this.id,
    required this.evaluationRubricRating,
    required this.programEvaluationElementReference,
    required this.evaluationCriterionDescription,
    this.evaluationRubricRatingLevelDescriptor,
    this.rubricDimensionSortOrder,
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

  /// The numeric rating associated with the evaluation rubric dimension.
  int evaluationRubricRating;

  EdFiProgramEvaluationElementReference programEvaluationElementReference;

  /// The evaluation criterion description for the evaluation rubric dimension.
  String evaluationCriterionDescription;

  /// The rating level achieved for the evaluation rubric dimension.
  String? evaluationRubricRatingLevelDescriptor;

  /// The sort order of the rubric dimension.
  int? rubricDimensionSortOrder;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiEvaluationRubricDimension &&
    other.id == id &&
    other.evaluationRubricRating == evaluationRubricRating &&
    other.programEvaluationElementReference == programEvaluationElementReference &&
    other.evaluationCriterionDescription == evaluationCriterionDescription &&
    other.evaluationRubricRatingLevelDescriptor == evaluationRubricRatingLevelDescriptor &&
    other.rubricDimensionSortOrder == rubricDimensionSortOrder &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (evaluationRubricRating.hashCode) +
    (programEvaluationElementReference.hashCode) +
    (evaluationCriterionDescription.hashCode) +
    (evaluationRubricRatingLevelDescriptor == null ? 0 : evaluationRubricRatingLevelDescriptor!.hashCode) +
    (rubricDimensionSortOrder == null ? 0 : rubricDimensionSortOrder!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiEvaluationRubricDimension[id=$id, evaluationRubricRating=$evaluationRubricRating, programEvaluationElementReference=$programEvaluationElementReference, evaluationCriterionDescription=$evaluationCriterionDescription, evaluationRubricRatingLevelDescriptor=$evaluationRubricRatingLevelDescriptor, rubricDimensionSortOrder=$rubricDimensionSortOrder, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'evaluationRubricRating'] = this.evaluationRubricRating;
      json[r'programEvaluationElementReference'] = this.programEvaluationElementReference;
      json[r'evaluationCriterionDescription'] = this.evaluationCriterionDescription;
    if (this.evaluationRubricRatingLevelDescriptor != null) {
      json[r'evaluationRubricRatingLevelDescriptor'] = this.evaluationRubricRatingLevelDescriptor;
    } else {
      json[r'evaluationRubricRatingLevelDescriptor'] = null;
    }
    if (this.rubricDimensionSortOrder != null) {
      json[r'rubricDimensionSortOrder'] = this.rubricDimensionSortOrder;
    } else {
      json[r'rubricDimensionSortOrder'] = null;
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

  /// Returns a new [EdFiEvaluationRubricDimension] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiEvaluationRubricDimension? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiEvaluationRubricDimension[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiEvaluationRubricDimension[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiEvaluationRubricDimension(
        id: mapValueOfType<String>(json, r'id'),
        evaluationRubricRating: mapValueOfType<int>(json, r'evaluationRubricRating')!,
        programEvaluationElementReference: EdFiProgramEvaluationElementReference.fromJson(json[r'programEvaluationElementReference'])!,
        evaluationCriterionDescription: mapValueOfType<String>(json, r'evaluationCriterionDescription')!,
        evaluationRubricRatingLevelDescriptor: mapValueOfType<String>(json, r'evaluationRubricRatingLevelDescriptor'),
        rubricDimensionSortOrder: mapValueOfType<int>(json, r'rubricDimensionSortOrder'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiEvaluationRubricDimension> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiEvaluationRubricDimension>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiEvaluationRubricDimension.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiEvaluationRubricDimension> mapFromJson(dynamic json) {
    final map = <String, EdFiEvaluationRubricDimension>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiEvaluationRubricDimension.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiEvaluationRubricDimension-objects as value to a dart map
  static Map<String, List<EdFiEvaluationRubricDimension>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiEvaluationRubricDimension>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiEvaluationRubricDimension.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'evaluationRubricRating',
    'programEvaluationElementReference',
    'evaluationCriterionDescription',
  };
}

