//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmEvaluationReference {
  /// Returns a new [TpdmEvaluationReference] instance.
  TpdmEvaluationReference({
    required this.educationOrganizationId,
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
  bool operator ==(Object other) => identical(this, other) || other is TpdmEvaluationReference &&
    other.educationOrganizationId == educationOrganizationId &&
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
    (evaluationPeriodDescriptor.hashCode) +
    (evaluationTitle.hashCode) +
    (performanceEvaluationTitle.hashCode) +
    (performanceEvaluationTypeDescriptor.hashCode) +
    (schoolYear.hashCode) +
    (termDescriptor.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'TpdmEvaluationReference[educationOrganizationId=$educationOrganizationId, evaluationPeriodDescriptor=$evaluationPeriodDescriptor, evaluationTitle=$evaluationTitle, performanceEvaluationTitle=$performanceEvaluationTitle, performanceEvaluationTypeDescriptor=$performanceEvaluationTypeDescriptor, schoolYear=$schoolYear, termDescriptor=$termDescriptor, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'educationOrganizationId'] = this.educationOrganizationId;
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

  /// Returns a new [TpdmEvaluationReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmEvaluationReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmEvaluationReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmEvaluationReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmEvaluationReference(
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId')!,
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

  static List<TpdmEvaluationReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmEvaluationReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmEvaluationReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmEvaluationReference> mapFromJson(dynamic json) {
    final map = <String, TpdmEvaluationReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmEvaluationReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmEvaluationReference-objects as value to a dart map
  static Map<String, List<TpdmEvaluationReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmEvaluationReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmEvaluationReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'educationOrganizationId',
    'evaluationPeriodDescriptor',
    'evaluationTitle',
    'performanceEvaluationTitle',
    'performanceEvaluationTypeDescriptor',
    'schoolYear',
    'termDescriptor',
  };
}

