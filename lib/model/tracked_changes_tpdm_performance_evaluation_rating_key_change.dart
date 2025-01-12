//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesTpdmPerformanceEvaluationRatingKeyChange {
  /// Returns a new [TrackedChangesTpdmPerformanceEvaluationRatingKeyChange] instance.
  TrackedChangesTpdmPerformanceEvaluationRatingKeyChange({
    this.id,
    this.changeVersion,
    this.oldKeyValues,
    this.newKeyValues,
  });

  /// Resource identifier
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Change version
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? changeVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TrackedChangesTpdmPerformanceEvaluationRatingKey? oldKeyValues;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TrackedChangesTpdmPerformanceEvaluationRatingKey? newKeyValues;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesTpdmPerformanceEvaluationRatingKeyChange &&
    other.id == id &&
    other.changeVersion == changeVersion &&
    other.oldKeyValues == oldKeyValues &&
    other.newKeyValues == newKeyValues;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (changeVersion == null ? 0 : changeVersion!.hashCode) +
    (oldKeyValues == null ? 0 : oldKeyValues!.hashCode) +
    (newKeyValues == null ? 0 : newKeyValues!.hashCode);

  @override
  String toString() => 'TrackedChangesTpdmPerformanceEvaluationRatingKeyChange[id=$id, changeVersion=$changeVersion, oldKeyValues=$oldKeyValues, newKeyValues=$newKeyValues]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.changeVersion != null) {
      json[r'changeVersion'] = this.changeVersion;
    } else {
      json[r'changeVersion'] = null;
    }
    if (this.oldKeyValues != null) {
      json[r'oldKeyValues'] = this.oldKeyValues;
    } else {
      json[r'oldKeyValues'] = null;
    }
    if (this.newKeyValues != null) {
      json[r'newKeyValues'] = this.newKeyValues;
    } else {
      json[r'newKeyValues'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesTpdmPerformanceEvaluationRatingKeyChange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesTpdmPerformanceEvaluationRatingKeyChange? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesTpdmPerformanceEvaluationRatingKeyChange[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesTpdmPerformanceEvaluationRatingKeyChange[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesTpdmPerformanceEvaluationRatingKeyChange(
        id: mapValueOfType<String>(json, r'id'),
        changeVersion: num.parse('${json[r'changeVersion']}'),
        oldKeyValues: TrackedChangesTpdmPerformanceEvaluationRatingKey.fromJson(json[r'oldKeyValues']),
        newKeyValues: TrackedChangesTpdmPerformanceEvaluationRatingKey.fromJson(json[r'newKeyValues']),
      );
    }
    return null;
  }

  static List<TrackedChangesTpdmPerformanceEvaluationRatingKeyChange> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesTpdmPerformanceEvaluationRatingKeyChange>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesTpdmPerformanceEvaluationRatingKeyChange.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesTpdmPerformanceEvaluationRatingKeyChange> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesTpdmPerformanceEvaluationRatingKeyChange>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesTpdmPerformanceEvaluationRatingKeyChange.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesTpdmPerformanceEvaluationRatingKeyChange-objects as value to a dart map
  static Map<String, List<TrackedChangesTpdmPerformanceEvaluationRatingKeyChange>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesTpdmPerformanceEvaluationRatingKeyChange>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesTpdmPerformanceEvaluationRatingKeyChange.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

