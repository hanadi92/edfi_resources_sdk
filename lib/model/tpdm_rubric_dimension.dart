//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmRubricDimension {
  /// Returns a new [TpdmRubricDimension] instance.
  TpdmRubricDimension({
    this.id,
    required this.rubricRating,
    required this.evaluationElementReference,
    required this.criterionDescription,
    this.dimensionOrder,
    this.rubricRatingLevelDescriptor,
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

  /// The rating achieved for the rubric dimension.
  int rubricRating;

  TpdmEvaluationElementReference evaluationElementReference;

  /// The criterion description for the rubric dimension.
  String criterionDescription;

  /// The order for the rubric dimension.
  int? dimensionOrder;

  /// The rating level achieved for the rubric dimension.
  String? rubricRatingLevelDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is TpdmRubricDimension &&
    other.id == id &&
    other.rubricRating == rubricRating &&
    other.evaluationElementReference == evaluationElementReference &&
    other.criterionDescription == criterionDescription &&
    other.dimensionOrder == dimensionOrder &&
    other.rubricRatingLevelDescriptor == rubricRatingLevelDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (rubricRating.hashCode) +
    (evaluationElementReference.hashCode) +
    (criterionDescription.hashCode) +
    (dimensionOrder == null ? 0 : dimensionOrder!.hashCode) +
    (rubricRatingLevelDescriptor == null ? 0 : rubricRatingLevelDescriptor!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'TpdmRubricDimension[id=$id, rubricRating=$rubricRating, evaluationElementReference=$evaluationElementReference, criterionDescription=$criterionDescription, dimensionOrder=$dimensionOrder, rubricRatingLevelDescriptor=$rubricRatingLevelDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'rubricRating'] = this.rubricRating;
      json[r'evaluationElementReference'] = this.evaluationElementReference;
      json[r'criterionDescription'] = this.criterionDescription;
    if (this.dimensionOrder != null) {
      json[r'dimensionOrder'] = this.dimensionOrder;
    } else {
      json[r'dimensionOrder'] = null;
    }
    if (this.rubricRatingLevelDescriptor != null) {
      json[r'rubricRatingLevelDescriptor'] = this.rubricRatingLevelDescriptor;
    } else {
      json[r'rubricRatingLevelDescriptor'] = null;
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

  /// Returns a new [TpdmRubricDimension] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmRubricDimension? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmRubricDimension[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmRubricDimension[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmRubricDimension(
        id: mapValueOfType<String>(json, r'id'),
        rubricRating: mapValueOfType<int>(json, r'rubricRating')!,
        evaluationElementReference: TpdmEvaluationElementReference.fromJson(json[r'evaluationElementReference'])!,
        criterionDescription: mapValueOfType<String>(json, r'criterionDescription')!,
        dimensionOrder: mapValueOfType<int>(json, r'dimensionOrder'),
        rubricRatingLevelDescriptor: mapValueOfType<String>(json, r'rubricRatingLevelDescriptor'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<TpdmRubricDimension> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmRubricDimension>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmRubricDimension.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmRubricDimension> mapFromJson(dynamic json) {
    final map = <String, TpdmRubricDimension>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmRubricDimension.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmRubricDimension-objects as value to a dart map
  static Map<String, List<TpdmRubricDimension>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmRubricDimension>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmRubricDimension.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rubricRating',
    'evaluationElementReference',
    'criterionDescription',
  };
}

