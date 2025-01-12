//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesTpdmPerformanceEvaluationKey {
  /// Returns a new [TrackedChangesTpdmPerformanceEvaluationKey] instance.
  TrackedChangesTpdmPerformanceEvaluationKey({
    this.evaluationPeriodDescriptor,
    this.performanceEvaluationTypeDescriptor,
    this.termDescriptor,
    this.performanceEvaluationTitle,
    this.educationOrganizationId,
    this.schoolYear,
  });

  /// The period for the evaluation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evaluationPeriodDescriptor;

  /// The type of performance evaluation conducted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? performanceEvaluationTypeDescriptor;

  /// The term for the session during the school year.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? termDescriptor;

  /// An assigned unique identifier for the performance evaluation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? performanceEvaluationTitle;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

  /// The identifier for the school year.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? schoolYear;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesTpdmPerformanceEvaluationKey &&
    other.evaluationPeriodDescriptor == evaluationPeriodDescriptor &&
    other.performanceEvaluationTypeDescriptor == performanceEvaluationTypeDescriptor &&
    other.termDescriptor == termDescriptor &&
    other.performanceEvaluationTitle == performanceEvaluationTitle &&
    other.educationOrganizationId == educationOrganizationId &&
    other.schoolYear == schoolYear;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (evaluationPeriodDescriptor == null ? 0 : evaluationPeriodDescriptor!.hashCode) +
    (performanceEvaluationTypeDescriptor == null ? 0 : performanceEvaluationTypeDescriptor!.hashCode) +
    (termDescriptor == null ? 0 : termDescriptor!.hashCode) +
    (performanceEvaluationTitle == null ? 0 : performanceEvaluationTitle!.hashCode) +
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (schoolYear == null ? 0 : schoolYear!.hashCode);

  @override
  String toString() => 'TrackedChangesTpdmPerformanceEvaluationKey[evaluationPeriodDescriptor=$evaluationPeriodDescriptor, performanceEvaluationTypeDescriptor=$performanceEvaluationTypeDescriptor, termDescriptor=$termDescriptor, performanceEvaluationTitle=$performanceEvaluationTitle, educationOrganizationId=$educationOrganizationId, schoolYear=$schoolYear]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.evaluationPeriodDescriptor != null) {
      json[r'evaluationPeriodDescriptor'] = this.evaluationPeriodDescriptor;
    } else {
      json[r'evaluationPeriodDescriptor'] = null;
    }
    if (this.performanceEvaluationTypeDescriptor != null) {
      json[r'performanceEvaluationTypeDescriptor'] = this.performanceEvaluationTypeDescriptor;
    } else {
      json[r'performanceEvaluationTypeDescriptor'] = null;
    }
    if (this.termDescriptor != null) {
      json[r'termDescriptor'] = this.termDescriptor;
    } else {
      json[r'termDescriptor'] = null;
    }
    if (this.performanceEvaluationTitle != null) {
      json[r'performanceEvaluationTitle'] = this.performanceEvaluationTitle;
    } else {
      json[r'performanceEvaluationTitle'] = null;
    }
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    if (this.schoolYear != null) {
      json[r'schoolYear'] = this.schoolYear;
    } else {
      json[r'schoolYear'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesTpdmPerformanceEvaluationKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesTpdmPerformanceEvaluationKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesTpdmPerformanceEvaluationKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesTpdmPerformanceEvaluationKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesTpdmPerformanceEvaluationKey(
        evaluationPeriodDescriptor: mapValueOfType<String>(json, r'evaluationPeriodDescriptor'),
        performanceEvaluationTypeDescriptor: mapValueOfType<String>(json, r'performanceEvaluationTypeDescriptor'),
        termDescriptor: mapValueOfType<String>(json, r'termDescriptor'),
        performanceEvaluationTitle: mapValueOfType<String>(json, r'performanceEvaluationTitle'),
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        schoolYear: mapValueOfType<int>(json, r'schoolYear'),
      );
    }
    return null;
  }

  static List<TrackedChangesTpdmPerformanceEvaluationKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesTpdmPerformanceEvaluationKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesTpdmPerformanceEvaluationKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesTpdmPerformanceEvaluationKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesTpdmPerformanceEvaluationKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesTpdmPerformanceEvaluationKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesTpdmPerformanceEvaluationKey-objects as value to a dart map
  static Map<String, List<TrackedChangesTpdmPerformanceEvaluationKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesTpdmPerformanceEvaluationKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesTpdmPerformanceEvaluationKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

