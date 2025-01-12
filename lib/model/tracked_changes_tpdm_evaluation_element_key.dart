//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesTpdmEvaluationElementKey {
  /// Returns a new [TrackedChangesTpdmEvaluationElementKey] instance.
  TrackedChangesTpdmEvaluationElementKey({
    this.evaluationElementTitle,
    this.educationOrganizationId,
    this.evaluationObjectiveTitle,
    this.evaluationPeriodDescriptor,
    this.evaluationTitle,
    this.performanceEvaluationTitle,
    this.performanceEvaluationTypeDescriptor,
    this.schoolYear,
    this.termDescriptor,
  });

  /// The name or title of the evaluation element.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evaluationElementTitle;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

  /// The name or title of the evaluation Objective.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evaluationObjectiveTitle;

  /// The period for the evaluation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evaluationPeriodDescriptor;

  /// The name or title of the evaluation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? evaluationTitle;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesTpdmEvaluationElementKey &&
    other.evaluationElementTitle == evaluationElementTitle &&
    other.educationOrganizationId == educationOrganizationId &&
    other.evaluationObjectiveTitle == evaluationObjectiveTitle &&
    other.evaluationPeriodDescriptor == evaluationPeriodDescriptor &&
    other.evaluationTitle == evaluationTitle &&
    other.performanceEvaluationTitle == performanceEvaluationTitle &&
    other.performanceEvaluationTypeDescriptor == performanceEvaluationTypeDescriptor &&
    other.schoolYear == schoolYear &&
    other.termDescriptor == termDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (evaluationElementTitle == null ? 0 : evaluationElementTitle!.hashCode) +
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (evaluationObjectiveTitle == null ? 0 : evaluationObjectiveTitle!.hashCode) +
    (evaluationPeriodDescriptor == null ? 0 : evaluationPeriodDescriptor!.hashCode) +
    (evaluationTitle == null ? 0 : evaluationTitle!.hashCode) +
    (performanceEvaluationTitle == null ? 0 : performanceEvaluationTitle!.hashCode) +
    (performanceEvaluationTypeDescriptor == null ? 0 : performanceEvaluationTypeDescriptor!.hashCode) +
    (schoolYear == null ? 0 : schoolYear!.hashCode) +
    (termDescriptor == null ? 0 : termDescriptor!.hashCode);

  @override
  String toString() => 'TrackedChangesTpdmEvaluationElementKey[evaluationElementTitle=$evaluationElementTitle, educationOrganizationId=$educationOrganizationId, evaluationObjectiveTitle=$evaluationObjectiveTitle, evaluationPeriodDescriptor=$evaluationPeriodDescriptor, evaluationTitle=$evaluationTitle, performanceEvaluationTitle=$performanceEvaluationTitle, performanceEvaluationTypeDescriptor=$performanceEvaluationTypeDescriptor, schoolYear=$schoolYear, termDescriptor=$termDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.evaluationElementTitle != null) {
      json[r'evaluationElementTitle'] = this.evaluationElementTitle;
    } else {
      json[r'evaluationElementTitle'] = null;
    }
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    if (this.evaluationObjectiveTitle != null) {
      json[r'evaluationObjectiveTitle'] = this.evaluationObjectiveTitle;
    } else {
      json[r'evaluationObjectiveTitle'] = null;
    }
    if (this.evaluationPeriodDescriptor != null) {
      json[r'evaluationPeriodDescriptor'] = this.evaluationPeriodDescriptor;
    } else {
      json[r'evaluationPeriodDescriptor'] = null;
    }
    if (this.evaluationTitle != null) {
      json[r'evaluationTitle'] = this.evaluationTitle;
    } else {
      json[r'evaluationTitle'] = null;
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
    return json;
  }

  /// Returns a new [TrackedChangesTpdmEvaluationElementKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesTpdmEvaluationElementKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesTpdmEvaluationElementKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesTpdmEvaluationElementKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesTpdmEvaluationElementKey(
        evaluationElementTitle: mapValueOfType<String>(json, r'evaluationElementTitle'),
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        evaluationObjectiveTitle: mapValueOfType<String>(json, r'evaluationObjectiveTitle'),
        evaluationPeriodDescriptor: mapValueOfType<String>(json, r'evaluationPeriodDescriptor'),
        evaluationTitle: mapValueOfType<String>(json, r'evaluationTitle'),
        performanceEvaluationTitle: mapValueOfType<String>(json, r'performanceEvaluationTitle'),
        performanceEvaluationTypeDescriptor: mapValueOfType<String>(json, r'performanceEvaluationTypeDescriptor'),
        schoolYear: mapValueOfType<int>(json, r'schoolYear'),
        termDescriptor: mapValueOfType<String>(json, r'termDescriptor'),
      );
    }
    return null;
  }

  static List<TrackedChangesTpdmEvaluationElementKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesTpdmEvaluationElementKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesTpdmEvaluationElementKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesTpdmEvaluationElementKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesTpdmEvaluationElementKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesTpdmEvaluationElementKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesTpdmEvaluationElementKey-objects as value to a dart map
  static Map<String, List<TrackedChangesTpdmEvaluationElementKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesTpdmEvaluationElementKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesTpdmEvaluationElementKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

