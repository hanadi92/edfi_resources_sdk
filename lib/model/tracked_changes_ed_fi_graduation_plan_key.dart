//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiGraduationPlanKey {
  /// Returns a new [TrackedChangesEdFiGraduationPlanKey] instance.
  TrackedChangesEdFiGraduationPlanKey({
    this.graduationPlanTypeDescriptor,
    this.educationOrganizationId,
    this.graduationSchoolYear,
  });

  /// The type of academic plan the student is following for graduation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? graduationPlanTypeDescriptor;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

  /// The school year the student is expected to graduate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? graduationSchoolYear;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiGraduationPlanKey &&
    other.graduationPlanTypeDescriptor == graduationPlanTypeDescriptor &&
    other.educationOrganizationId == educationOrganizationId &&
    other.graduationSchoolYear == graduationSchoolYear;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (graduationPlanTypeDescriptor == null ? 0 : graduationPlanTypeDescriptor!.hashCode) +
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (graduationSchoolYear == null ? 0 : graduationSchoolYear!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiGraduationPlanKey[graduationPlanTypeDescriptor=$graduationPlanTypeDescriptor, educationOrganizationId=$educationOrganizationId, graduationSchoolYear=$graduationSchoolYear]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.graduationPlanTypeDescriptor != null) {
      json[r'graduationPlanTypeDescriptor'] = this.graduationPlanTypeDescriptor;
    } else {
      json[r'graduationPlanTypeDescriptor'] = null;
    }
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    if (this.graduationSchoolYear != null) {
      json[r'graduationSchoolYear'] = this.graduationSchoolYear;
    } else {
      json[r'graduationSchoolYear'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiGraduationPlanKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiGraduationPlanKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiGraduationPlanKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiGraduationPlanKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiGraduationPlanKey(
        graduationPlanTypeDescriptor: mapValueOfType<String>(json, r'graduationPlanTypeDescriptor'),
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        graduationSchoolYear: mapValueOfType<int>(json, r'graduationSchoolYear'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiGraduationPlanKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiGraduationPlanKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiGraduationPlanKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiGraduationPlanKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiGraduationPlanKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiGraduationPlanKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiGraduationPlanKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiGraduationPlanKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiGraduationPlanKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiGraduationPlanKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

