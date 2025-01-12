//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiProgramEvaluationElementReference {
  /// Returns a new [EdFiProgramEvaluationElementReference] instance.
  EdFiProgramEvaluationElementReference({
    required this.programEducationOrganizationId,
    required this.programEvaluationElementTitle,
    required this.programEvaluationPeriodDescriptor,
    required this.programEvaluationTitle,
    required this.programEvaluationTypeDescriptor,
    required this.programName,
    required this.programTypeDescriptor,
    this.link,
  });

  /// The identifier assigned to an education organization.
  int programEducationOrganizationId;

  /// The name or title of the program evaluation element.
  String programEvaluationElementTitle;

  /// The name of the period for the program evaluation.
  String programEvaluationPeriodDescriptor;

  /// An assigned unique identifier for the student program evaluation.
  String programEvaluationTitle;

  /// The type of program evaluation conducted.
  String programEvaluationTypeDescriptor;

  /// The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
  String programName;

  /// The type of program.
  String programTypeDescriptor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiProgramEvaluationElementReference &&
    other.programEducationOrganizationId == programEducationOrganizationId &&
    other.programEvaluationElementTitle == programEvaluationElementTitle &&
    other.programEvaluationPeriodDescriptor == programEvaluationPeriodDescriptor &&
    other.programEvaluationTitle == programEvaluationTitle &&
    other.programEvaluationTypeDescriptor == programEvaluationTypeDescriptor &&
    other.programName == programName &&
    other.programTypeDescriptor == programTypeDescriptor &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (programEducationOrganizationId.hashCode) +
    (programEvaluationElementTitle.hashCode) +
    (programEvaluationPeriodDescriptor.hashCode) +
    (programEvaluationTitle.hashCode) +
    (programEvaluationTypeDescriptor.hashCode) +
    (programName.hashCode) +
    (programTypeDescriptor.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiProgramEvaluationElementReference[programEducationOrganizationId=$programEducationOrganizationId, programEvaluationElementTitle=$programEvaluationElementTitle, programEvaluationPeriodDescriptor=$programEvaluationPeriodDescriptor, programEvaluationTitle=$programEvaluationTitle, programEvaluationTypeDescriptor=$programEvaluationTypeDescriptor, programName=$programName, programTypeDescriptor=$programTypeDescriptor, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'programEducationOrganizationId'] = this.programEducationOrganizationId;
      json[r'programEvaluationElementTitle'] = this.programEvaluationElementTitle;
      json[r'programEvaluationPeriodDescriptor'] = this.programEvaluationPeriodDescriptor;
      json[r'programEvaluationTitle'] = this.programEvaluationTitle;
      json[r'programEvaluationTypeDescriptor'] = this.programEvaluationTypeDescriptor;
      json[r'programName'] = this.programName;
      json[r'programTypeDescriptor'] = this.programTypeDescriptor;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiProgramEvaluationElementReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiProgramEvaluationElementReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiProgramEvaluationElementReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiProgramEvaluationElementReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiProgramEvaluationElementReference(
        programEducationOrganizationId: mapValueOfType<int>(json, r'programEducationOrganizationId')!,
        programEvaluationElementTitle: mapValueOfType<String>(json, r'programEvaluationElementTitle')!,
        programEvaluationPeriodDescriptor: mapValueOfType<String>(json, r'programEvaluationPeriodDescriptor')!,
        programEvaluationTitle: mapValueOfType<String>(json, r'programEvaluationTitle')!,
        programEvaluationTypeDescriptor: mapValueOfType<String>(json, r'programEvaluationTypeDescriptor')!,
        programName: mapValueOfType<String>(json, r'programName')!,
        programTypeDescriptor: mapValueOfType<String>(json, r'programTypeDescriptor')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiProgramEvaluationElementReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiProgramEvaluationElementReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiProgramEvaluationElementReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiProgramEvaluationElementReference> mapFromJson(dynamic json) {
    final map = <String, EdFiProgramEvaluationElementReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiProgramEvaluationElementReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiProgramEvaluationElementReference-objects as value to a dart map
  static Map<String, List<EdFiProgramEvaluationElementReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiProgramEvaluationElementReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiProgramEvaluationElementReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'programEducationOrganizationId',
    'programEvaluationElementTitle',
    'programEvaluationPeriodDescriptor',
    'programEvaluationTitle',
    'programEvaluationTypeDescriptor',
    'programName',
    'programTypeDescriptor',
  };
}

