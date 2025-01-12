//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiGraduationPlanReference {
  /// Returns a new [EdFiGraduationPlanReference] instance.
  EdFiGraduationPlanReference({
    required this.educationOrganizationId,
    required this.graduationPlanTypeDescriptor,
    required this.graduationSchoolYear,
    this.link,
  });

  /// The identifier assigned to an education organization.
  int educationOrganizationId;

  /// The type of academic plan the student is following for graduation.
  String graduationPlanTypeDescriptor;

  /// The school year the student is expected to graduate.
  int graduationSchoolYear;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiGraduationPlanReference &&
    other.educationOrganizationId == educationOrganizationId &&
    other.graduationPlanTypeDescriptor == graduationPlanTypeDescriptor &&
    other.graduationSchoolYear == graduationSchoolYear &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (educationOrganizationId.hashCode) +
    (graduationPlanTypeDescriptor.hashCode) +
    (graduationSchoolYear.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiGraduationPlanReference[educationOrganizationId=$educationOrganizationId, graduationPlanTypeDescriptor=$graduationPlanTypeDescriptor, graduationSchoolYear=$graduationSchoolYear, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'educationOrganizationId'] = this.educationOrganizationId;
      json[r'graduationPlanTypeDescriptor'] = this.graduationPlanTypeDescriptor;
      json[r'graduationSchoolYear'] = this.graduationSchoolYear;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiGraduationPlanReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiGraduationPlanReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiGraduationPlanReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiGraduationPlanReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiGraduationPlanReference(
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId')!,
        graduationPlanTypeDescriptor: mapValueOfType<String>(json, r'graduationPlanTypeDescriptor')!,
        graduationSchoolYear: mapValueOfType<int>(json, r'graduationSchoolYear')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiGraduationPlanReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiGraduationPlanReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiGraduationPlanReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiGraduationPlanReference> mapFromJson(dynamic json) {
    final map = <String, EdFiGraduationPlanReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiGraduationPlanReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiGraduationPlanReference-objects as value to a dart map
  static Map<String, List<EdFiGraduationPlanReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiGraduationPlanReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiGraduationPlanReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'educationOrganizationId',
    'graduationPlanTypeDescriptor',
    'graduationSchoolYear',
  };
}

