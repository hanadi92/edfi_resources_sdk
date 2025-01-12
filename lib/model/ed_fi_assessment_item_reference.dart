//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiAssessmentItemReference {
  /// Returns a new [EdFiAssessmentItemReference] instance.
  EdFiAssessmentItemReference({
    required this.assessmentIdentifier,
    required this.identificationCode,
    required this.namespace,
    this.link,
  });

  /// A unique number or alphanumeric code assigned to an assessment.
  String assessmentIdentifier;

  /// A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, state, or other agency or entity.
  String identificationCode;

  /// Namespace for the assessment.
  String namespace;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiAssessmentItemReference &&
    other.assessmentIdentifier == assessmentIdentifier &&
    other.identificationCode == identificationCode &&
    other.namespace == namespace &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assessmentIdentifier.hashCode) +
    (identificationCode.hashCode) +
    (namespace.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiAssessmentItemReference[assessmentIdentifier=$assessmentIdentifier, identificationCode=$identificationCode, namespace=$namespace, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assessmentIdentifier'] = this.assessmentIdentifier;
      json[r'identificationCode'] = this.identificationCode;
      json[r'namespace'] = this.namespace;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiAssessmentItemReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiAssessmentItemReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiAssessmentItemReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiAssessmentItemReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiAssessmentItemReference(
        assessmentIdentifier: mapValueOfType<String>(json, r'assessmentIdentifier')!,
        identificationCode: mapValueOfType<String>(json, r'identificationCode')!,
        namespace: mapValueOfType<String>(json, r'namespace')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiAssessmentItemReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiAssessmentItemReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiAssessmentItemReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiAssessmentItemReference> mapFromJson(dynamic json) {
    final map = <String, EdFiAssessmentItemReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiAssessmentItemReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiAssessmentItemReference-objects as value to a dart map
  static Map<String, List<EdFiAssessmentItemReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiAssessmentItemReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiAssessmentItemReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assessmentIdentifier',
    'identificationCode',
    'namespace',
  };
}

