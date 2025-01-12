//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesTpdmPerformanceEvaluationRatingKey {
  /// Returns a new [TrackedChangesTpdmPerformanceEvaluationRatingKey] instance.
  TrackedChangesTpdmPerformanceEvaluationRatingKey({
    this.educationOrganizationId,
    this.evaluationPeriodDescriptor,
    this.performanceEvaluationTitle,
    this.performanceEvaluationTypeDescriptor,
    this.schoolYear,
    this.termDescriptor,
    this.personId,
    this.sourceSystemDescriptor,
  });

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

  /// The period for the evaluation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evaluationPeriodDescriptor;

  /// An assigned unique identifier for the performance evaluation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? performanceEvaluationTitle;

  /// The type of performance evaluation conducted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? performanceEvaluationTypeDescriptor;

  /// The identifier for the school year.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? schoolYear;

  /// The term for the session during the school year.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? termDescriptor;

  /// A unique alphanumeric code assigned to a person.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? personId;

  /// This descriptor defines the originating record source system for the person.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceSystemDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesTpdmPerformanceEvaluationRatingKey &&
    other.educationOrganizationId == educationOrganizationId &&
    other.evaluationPeriodDescriptor == evaluationPeriodDescriptor &&
    other.performanceEvaluationTitle == performanceEvaluationTitle &&
    other.performanceEvaluationTypeDescriptor == performanceEvaluationTypeDescriptor &&
    other.schoolYear == schoolYear &&
    other.termDescriptor == termDescriptor &&
    other.personId == personId &&
    other.sourceSystemDescriptor == sourceSystemDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (evaluationPeriodDescriptor == null ? 0 : evaluationPeriodDescriptor!.hashCode) +
    (performanceEvaluationTitle == null ? 0 : performanceEvaluationTitle!.hashCode) +
    (performanceEvaluationTypeDescriptor == null ? 0 : performanceEvaluationTypeDescriptor!.hashCode) +
    (schoolYear == null ? 0 : schoolYear!.hashCode) +
    (termDescriptor == null ? 0 : termDescriptor!.hashCode) +
    (personId == null ? 0 : personId!.hashCode) +
    (sourceSystemDescriptor == null ? 0 : sourceSystemDescriptor!.hashCode);

  @override
  String toString() => 'TrackedChangesTpdmPerformanceEvaluationRatingKey[educationOrganizationId=$educationOrganizationId, evaluationPeriodDescriptor=$evaluationPeriodDescriptor, performanceEvaluationTitle=$performanceEvaluationTitle, performanceEvaluationTypeDescriptor=$performanceEvaluationTypeDescriptor, schoolYear=$schoolYear, termDescriptor=$termDescriptor, personId=$personId, sourceSystemDescriptor=$sourceSystemDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    if (this.evaluationPeriodDescriptor != null) {
      json[r'evaluationPeriodDescriptor'] = this.evaluationPeriodDescriptor;
    } else {
      json[r'evaluationPeriodDescriptor'] = null;
    }
    if (this.performanceEvaluationTitle != null) {
      json[r'performanceEvaluationTitle'] = this.performanceEvaluationTitle;
    } else {
      json[r'performanceEvaluationTitle'] = null;
    }
    if (this.performanceEvaluationTypeDescriptor != null) {
      json[r'performanceEvaluationTypeDescriptor'] = this.performanceEvaluationTypeDescriptor;
    } else {
      json[r'performanceEvaluationTypeDescriptor'] = null;
    }
    if (this.schoolYear != null) {
      json[r'schoolYear'] = this.schoolYear;
    } else {
      json[r'schoolYear'] = null;
    }
    if (this.termDescriptor != null) {
      json[r'termDescriptor'] = this.termDescriptor;
    } else {
      json[r'termDescriptor'] = null;
    }
    if (this.personId != null) {
      json[r'personId'] = this.personId;
    } else {
      json[r'personId'] = null;
    }
    if (this.sourceSystemDescriptor != null) {
      json[r'sourceSystemDescriptor'] = this.sourceSystemDescriptor;
    } else {
      json[r'sourceSystemDescriptor'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesTpdmPerformanceEvaluationRatingKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesTpdmPerformanceEvaluationRatingKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesTpdmPerformanceEvaluationRatingKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesTpdmPerformanceEvaluationRatingKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesTpdmPerformanceEvaluationRatingKey(
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        evaluationPeriodDescriptor: mapValueOfType<String>(json, r'evaluationPeriodDescriptor'),
        performanceEvaluationTitle: mapValueOfType<String>(json, r'performanceEvaluationTitle'),
        performanceEvaluationTypeDescriptor: mapValueOfType<String>(json, r'performanceEvaluationTypeDescriptor'),
        schoolYear: mapValueOfType<int>(json, r'schoolYear'),
        termDescriptor: mapValueOfType<String>(json, r'termDescriptor'),
        personId: mapValueOfType<String>(json, r'personId'),
        sourceSystemDescriptor: mapValueOfType<String>(json, r'sourceSystemDescriptor'),
      );
    }
    return null;
  }

  static List<TrackedChangesTpdmPerformanceEvaluationRatingKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesTpdmPerformanceEvaluationRatingKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesTpdmPerformanceEvaluationRatingKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesTpdmPerformanceEvaluationRatingKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesTpdmPerformanceEvaluationRatingKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesTpdmPerformanceEvaluationRatingKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesTpdmPerformanceEvaluationRatingKey-objects as value to a dart map
  static Map<String, List<TrackedChangesTpdmPerformanceEvaluationRatingKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesTpdmPerformanceEvaluationRatingKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesTpdmPerformanceEvaluationRatingKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

