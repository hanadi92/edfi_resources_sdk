//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCompetencyObjectiveReference {
  /// Returns a new [EdFiCompetencyObjectiveReference] instance.
  EdFiCompetencyObjectiveReference({
    required this.educationOrganizationId,
    required this.objective,
    required this.objectiveGradeLevelDescriptor,
    this.link,
  });

  /// The identifier assigned to an education organization.
  int educationOrganizationId;

  /// The designated title of the competency objective.
  String objective;

  /// The grade level for which the competency objective is targeted.
  String objectiveGradeLevelDescriptor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiCompetencyObjectiveReference &&
    other.educationOrganizationId == educationOrganizationId &&
    other.objective == objective &&
    other.objectiveGradeLevelDescriptor == objectiveGradeLevelDescriptor &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (educationOrganizationId.hashCode) +
    (objective.hashCode) +
    (objectiveGradeLevelDescriptor.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiCompetencyObjectiveReference[educationOrganizationId=$educationOrganizationId, objective=$objective, objectiveGradeLevelDescriptor=$objectiveGradeLevelDescriptor, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'educationOrganizationId'] = this.educationOrganizationId;
      json[r'objective'] = this.objective;
      json[r'objectiveGradeLevelDescriptor'] = this.objectiveGradeLevelDescriptor;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiCompetencyObjectiveReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCompetencyObjectiveReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCompetencyObjectiveReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCompetencyObjectiveReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCompetencyObjectiveReference(
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId')!,
        objective: mapValueOfType<String>(json, r'objective')!,
        objectiveGradeLevelDescriptor: mapValueOfType<String>(json, r'objectiveGradeLevelDescriptor')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiCompetencyObjectiveReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCompetencyObjectiveReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCompetencyObjectiveReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCompetencyObjectiveReference> mapFromJson(dynamic json) {
    final map = <String, EdFiCompetencyObjectiveReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCompetencyObjectiveReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCompetencyObjectiveReference-objects as value to a dart map
  static Map<String, List<EdFiCompetencyObjectiveReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCompetencyObjectiveReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCompetencyObjectiveReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'educationOrganizationId',
    'objective',
    'objectiveGradeLevelDescriptor',
  };
}

