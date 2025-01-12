//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmEvaluationObjectiveReference {
  /// Returns a new [TpdmEvaluationObjectiveReference] instance.
  TpdmEvaluationObjectiveReference({
    required this.educationOrganizationId,
    required this.evaluationObjectiveTitle,
    required this.evaluationPeriodDescriptor,
    required this.evaluationTitle,
    required this.performanceEvaluationTitle,
    required this.performanceEvaluationTypeDescriptor,
    required this.schoolYear,
    required this.termDescriptor,
    this.link,
  });

  /// The identifier assigned to an education organization.
  int educationOrganizationId;

  /// The name or title of the evaluation Objective.
  String evaluationObjectiveTitle;

  /// The period for the evaluation.
  String evaluationPeriodDescriptor;

  /// The name or title of the evaluation.
  String evaluationTitle;

  /// An assigned unique identifier for the performance evaluation.
  String performanceEvaluationTitle;

  /// The type of performance evaluation conducted.
  String performanceEvaluationTypeDescriptor;

  /// The identifier for the school year.
  int schoolYear;

  /// The term for the session during the school year.
  String termDescriptor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TpdmEvaluationObjectiveReference &&
    other.educationOrganizationId == educationOrganizationId &&
    other.evaluationObjectiveTitle == evaluationObjectiveTitle &&
    other.evaluationPeriodDescriptor == evaluationPeriodDescriptor &&
    other.evaluationTitle == evaluationTitle &&
    other.performanceEvaluationTitle == performanceEvaluationTitle &&
    other.performanceEvaluationTypeDescriptor == performanceEvaluationTypeDescriptor &&
    other.schoolYear == schoolYear &&
    other.termDescriptor == termDescriptor &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (educationOrganizationId.hashCode) +
    (evaluationObjectiveTitle.hashCode) +
    (evaluationPeriodDescriptor.hashCode) +
    (evaluationTitle.hashCode) +
    (performanceEvaluationTitle.hashCode) +
    (performanceEvaluationTypeDescriptor.hashCode) +
    (schoolYear.hashCode) +
    (termDescriptor.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'TpdmEvaluationObjectiveReference[educationOrganizationId=$educationOrganizationId, evaluationObjectiveTitle=$evaluationObjectiveTitle, evaluationPeriodDescriptor=$evaluationPeriodDescriptor, evaluationTitle=$evaluationTitle, performanceEvaluationTitle=$performanceEvaluationTitle, performanceEvaluationTypeDescriptor=$performanceEvaluationTypeDescriptor, schoolYear=$schoolYear, termDescriptor=$termDescriptor, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'educationOrganizationId'] = this.educationOrganizationId;
      json[r'evaluationObjectiveTitle'] = this.evaluationObjectiveTitle;
      json[r'evaluationPeriodDescriptor'] = this.evaluationPeriodDescriptor;
      json[r'evaluationTitle'] = this.evaluationTitle;
      json[r'performanceEvaluationTitle'] = this.performanceEvaluationTitle;
      json[r'performanceEvaluationTypeDescriptor'] = this.performanceEvaluationTypeDescriptor;
      json[r'schoolYear'] = this.schoolYear;
      json[r'termDescriptor'] = this.termDescriptor;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [TpdmEvaluationObjectiveReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmEvaluationObjectiveReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmEvaluationObjectiveReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmEvaluationObjectiveReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmEvaluationObjectiveReference(
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId')!,
        evaluationObjectiveTitle: mapValueOfType<String>(json, r'evaluationObjectiveTitle')!,
        evaluationPeriodDescriptor: mapValueOfType<String>(json, r'evaluationPeriodDescriptor')!,
        evaluationTitle: mapValueOfType<String>(json, r'evaluationTitle')!,
        performanceEvaluationTitle: mapValueOfType<String>(json, r'performanceEvaluationTitle')!,
        performanceEvaluationTypeDescriptor: mapValueOfType<String>(json, r'performanceEvaluationTypeDescriptor')!,
        schoolYear: mapValueOfType<int>(json, r'schoolYear')!,
        termDescriptor: mapValueOfType<String>(json, r'termDescriptor')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<TpdmEvaluationObjectiveReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmEvaluationObjectiveReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmEvaluationObjectiveReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmEvaluationObjectiveReference> mapFromJson(dynamic json) {
    final map = <String, TpdmEvaluationObjectiveReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmEvaluationObjectiveReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmEvaluationObjectiveReference-objects as value to a dart map
  static Map<String, List<TpdmEvaluationObjectiveReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmEvaluationObjectiveReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmEvaluationObjectiveReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'educationOrganizationId',
    'evaluationObjectiveTitle',
    'evaluationPeriodDescriptor',
    'evaluationTitle',
    'performanceEvaluationTitle',
    'performanceEvaluationTypeDescriptor',
    'schoolYear',
    'termDescriptor',
  };
}

