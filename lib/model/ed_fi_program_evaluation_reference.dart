//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiProgramEvaluationReference {
  /// Returns a new [EdFiProgramEvaluationReference] instance.
  EdFiProgramEvaluationReference({
    required this.programEducationOrganizationId,
    required this.programEvaluationPeriodDescriptor,
    required this.programEvaluationTitle,
    required this.programEvaluationTypeDescriptor,
    required this.programName,
    required this.programTypeDescriptor,
    this.link,
  });

  /// The identifier assigned to an education organization.
  int programEducationOrganizationId;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiProgramEvaluationReference &&
    other.programEducationOrganizationId == programEducationOrganizationId &&
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
    (programEvaluationPeriodDescriptor.hashCode) +
    (programEvaluationTitle.hashCode) +
    (programEvaluationTypeDescriptor.hashCode) +
    (programName.hashCode) +
    (programTypeDescriptor.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiProgramEvaluationReference[programEducationOrganizationId=$programEducationOrganizationId, programEvaluationPeriodDescriptor=$programEvaluationPeriodDescriptor, programEvaluationTitle=$programEvaluationTitle, programEvaluationTypeDescriptor=$programEvaluationTypeDescriptor, programName=$programName, programTypeDescriptor=$programTypeDescriptor, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'programEducationOrganizationId'] = this.programEducationOrganizationId;
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

  /// Returns a new [EdFiProgramEvaluationReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiProgramEvaluationReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiProgramEvaluationReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiProgramEvaluationReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiProgramEvaluationReference(
        programEducationOrganizationId: mapValueOfType<int>(json, r'programEducationOrganizationId')!,
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

  static List<EdFiProgramEvaluationReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiProgramEvaluationReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiProgramEvaluationReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiProgramEvaluationReference> mapFromJson(dynamic json) {
    final map = <String, EdFiProgramEvaluationReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiProgramEvaluationReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiProgramEvaluationReference-objects as value to a dart map
  static Map<String, List<EdFiProgramEvaluationReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiProgramEvaluationReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiProgramEvaluationReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'programEducationOrganizationId',
    'programEvaluationPeriodDescriptor',
    'programEvaluationTitle',
    'programEvaluationTypeDescriptor',
    'programName',
    'programTypeDescriptor',
  };
}

