//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiProgramEvaluationKey {
  /// Returns a new [TrackedChangesEdFiProgramEvaluationKey] instance.
  TrackedChangesEdFiProgramEvaluationKey({
    this.programEvaluationPeriodDescriptor,
    this.programEvaluationTypeDescriptor,
    this.programEvaluationTitle,
    this.programEducationOrganizationId,
    this.programName,
    this.programTypeDescriptor,
  });

  /// The name of the period for the program evaluation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? programEvaluationPeriodDescriptor;

  /// The type of program evaluation conducted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? programEvaluationTypeDescriptor;

  /// An assigned unique identifier for the student program evaluation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? programEvaluationTitle;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? programEducationOrganizationId;

  /// The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? programName;

  /// The type of program.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? programTypeDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiProgramEvaluationKey &&
    other.programEvaluationPeriodDescriptor == programEvaluationPeriodDescriptor &&
    other.programEvaluationTypeDescriptor == programEvaluationTypeDescriptor &&
    other.programEvaluationTitle == programEvaluationTitle &&
    other.programEducationOrganizationId == programEducationOrganizationId &&
    other.programName == programName &&
    other.programTypeDescriptor == programTypeDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (programEvaluationPeriodDescriptor == null ? 0 : programEvaluationPeriodDescriptor!.hashCode) +
    (programEvaluationTypeDescriptor == null ? 0 : programEvaluationTypeDescriptor!.hashCode) +
    (programEvaluationTitle == null ? 0 : programEvaluationTitle!.hashCode) +
    (programEducationOrganizationId == null ? 0 : programEducationOrganizationId!.hashCode) +
    (programName == null ? 0 : programName!.hashCode) +
    (programTypeDescriptor == null ? 0 : programTypeDescriptor!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiProgramEvaluationKey[programEvaluationPeriodDescriptor=$programEvaluationPeriodDescriptor, programEvaluationTypeDescriptor=$programEvaluationTypeDescriptor, programEvaluationTitle=$programEvaluationTitle, programEducationOrganizationId=$programEducationOrganizationId, programName=$programName, programTypeDescriptor=$programTypeDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.programEvaluationPeriodDescriptor != null) {
      json[r'programEvaluationPeriodDescriptor'] = this.programEvaluationPeriodDescriptor;
    } else {
      json[r'programEvaluationPeriodDescriptor'] = null;
    }
    if (this.programEvaluationTypeDescriptor != null) {
      json[r'programEvaluationTypeDescriptor'] = this.programEvaluationTypeDescriptor;
    } else {
      json[r'programEvaluationTypeDescriptor'] = null;
    }
    if (this.programEvaluationTitle != null) {
      json[r'programEvaluationTitle'] = this.programEvaluationTitle;
    } else {
      json[r'programEvaluationTitle'] = null;
    }
    if (this.programEducationOrganizationId != null) {
      json[r'programEducationOrganizationId'] = this.programEducationOrganizationId;
    } else {
      json[r'programEducationOrganizationId'] = null;
    }
    if (this.programName != null) {
      json[r'programName'] = this.programName;
    } else {
      json[r'programName'] = null;
    }
    if (this.programTypeDescriptor != null) {
      json[r'programTypeDescriptor'] = this.programTypeDescriptor;
    } else {
      json[r'programTypeDescriptor'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiProgramEvaluationKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiProgramEvaluationKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiProgramEvaluationKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiProgramEvaluationKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiProgramEvaluationKey(
        programEvaluationPeriodDescriptor: mapValueOfType<String>(json, r'programEvaluationPeriodDescriptor'),
        programEvaluationTypeDescriptor: mapValueOfType<String>(json, r'programEvaluationTypeDescriptor'),
        programEvaluationTitle: mapValueOfType<String>(json, r'programEvaluationTitle'),
        programEducationOrganizationId: mapValueOfType<int>(json, r'programEducationOrganizationId'),
        programName: mapValueOfType<String>(json, r'programName'),
        programTypeDescriptor: mapValueOfType<String>(json, r'programTypeDescriptor'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiProgramEvaluationKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiProgramEvaluationKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiProgramEvaluationKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiProgramEvaluationKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiProgramEvaluationKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiProgramEvaluationKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiProgramEvaluationKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiProgramEvaluationKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiProgramEvaluationKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiProgramEvaluationKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

