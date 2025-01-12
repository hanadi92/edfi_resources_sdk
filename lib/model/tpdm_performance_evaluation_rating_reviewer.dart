//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmPerformanceEvaluationRatingReviewer {
  /// Returns a new [TpdmPerformanceEvaluationRatingReviewer] instance.
  TpdmPerformanceEvaluationRatingReviewer({
    required this.firstName,
    required this.lastSurname,
    this.reviewerPersonReference,
    this.receivedTraining,
  });

  /// A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  String firstName;

  /// The name borne in common by members of a family.
  String lastSurname;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiPersonReference? reviewerPersonReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TpdmPerformanceEvaluationRatingReviewerReceivedTraining? receivedTraining;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TpdmPerformanceEvaluationRatingReviewer &&
    other.firstName == firstName &&
    other.lastSurname == lastSurname &&
    other.reviewerPersonReference == reviewerPersonReference &&
    other.receivedTraining == receivedTraining;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (firstName.hashCode) +
    (lastSurname.hashCode) +
    (reviewerPersonReference == null ? 0 : reviewerPersonReference!.hashCode) +
    (receivedTraining == null ? 0 : receivedTraining!.hashCode);

  @override
  String toString() => 'TpdmPerformanceEvaluationRatingReviewer[firstName=$firstName, lastSurname=$lastSurname, reviewerPersonReference=$reviewerPersonReference, receivedTraining=$receivedTraining]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'firstName'] = this.firstName;
      json[r'lastSurname'] = this.lastSurname;
    if (this.reviewerPersonReference != null) {
      json[r'reviewerPersonReference'] = this.reviewerPersonReference;
    } else {
      json[r'reviewerPersonReference'] = null;
    }
    if (this.receivedTraining != null) {
      json[r'receivedTraining'] = this.receivedTraining;
    } else {
      json[r'receivedTraining'] = null;
    }
    return json;
  }

  /// Returns a new [TpdmPerformanceEvaluationRatingReviewer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmPerformanceEvaluationRatingReviewer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmPerformanceEvaluationRatingReviewer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmPerformanceEvaluationRatingReviewer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmPerformanceEvaluationRatingReviewer(
        firstName: mapValueOfType<String>(json, r'firstName')!,
        lastSurname: mapValueOfType<String>(json, r'lastSurname')!,
        reviewerPersonReference: EdFiPersonReference.fromJson(json[r'reviewerPersonReference']),
        receivedTraining: TpdmPerformanceEvaluationRatingReviewerReceivedTraining.fromJson(json[r'receivedTraining']),
      );
    }
    return null;
  }

  static List<TpdmPerformanceEvaluationRatingReviewer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmPerformanceEvaluationRatingReviewer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmPerformanceEvaluationRatingReviewer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmPerformanceEvaluationRatingReviewer> mapFromJson(dynamic json) {
    final map = <String, TpdmPerformanceEvaluationRatingReviewer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmPerformanceEvaluationRatingReviewer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmPerformanceEvaluationRatingReviewer-objects as value to a dart map
  static Map<String, List<TpdmPerformanceEvaluationRatingReviewer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmPerformanceEvaluationRatingReviewer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmPerformanceEvaluationRatingReviewer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'firstName',
    'lastSurname',
  };
}

