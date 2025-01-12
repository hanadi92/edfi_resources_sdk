//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiSurveySectionResponseReference {
  /// Returns a new [EdFiSurveySectionResponseReference] instance.
  EdFiSurveySectionResponseReference({
    required this.namespace,
    required this.surveyIdentifier,
    required this.surveyResponseIdentifier,
    required this.surveySectionTitle,
    this.link,
  });

  /// Namespace for the survey.
  String namespace;

  /// The unique survey identifier from the survey tool.
  String surveyIdentifier;

  /// The identifier of the survey typically from the survey application.
  String surveyResponseIdentifier;

  /// The title or label for the survey section.
  String surveySectionTitle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiSurveySectionResponseReference &&
    other.namespace == namespace &&
    other.surveyIdentifier == surveyIdentifier &&
    other.surveyResponseIdentifier == surveyResponseIdentifier &&
    other.surveySectionTitle == surveySectionTitle &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (namespace.hashCode) +
    (surveyIdentifier.hashCode) +
    (surveyResponseIdentifier.hashCode) +
    (surveySectionTitle.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiSurveySectionResponseReference[namespace=$namespace, surveyIdentifier=$surveyIdentifier, surveyResponseIdentifier=$surveyResponseIdentifier, surveySectionTitle=$surveySectionTitle, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'namespace'] = this.namespace;
      json[r'surveyIdentifier'] = this.surveyIdentifier;
      json[r'surveyResponseIdentifier'] = this.surveyResponseIdentifier;
      json[r'surveySectionTitle'] = this.surveySectionTitle;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiSurveySectionResponseReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiSurveySectionResponseReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiSurveySectionResponseReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiSurveySectionResponseReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiSurveySectionResponseReference(
        namespace: mapValueOfType<String>(json, r'namespace')!,
        surveyIdentifier: mapValueOfType<String>(json, r'surveyIdentifier')!,
        surveyResponseIdentifier: mapValueOfType<String>(json, r'surveyResponseIdentifier')!,
        surveySectionTitle: mapValueOfType<String>(json, r'surveySectionTitle')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiSurveySectionResponseReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiSurveySectionResponseReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiSurveySectionResponseReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiSurveySectionResponseReference> mapFromJson(dynamic json) {
    final map = <String, EdFiSurveySectionResponseReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiSurveySectionResponseReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiSurveySectionResponseReference-objects as value to a dart map
  static Map<String, List<EdFiSurveySectionResponseReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiSurveySectionResponseReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiSurveySectionResponseReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'namespace',
    'surveyIdentifier',
    'surveyResponseIdentifier',
    'surveySectionTitle',
  };
}

