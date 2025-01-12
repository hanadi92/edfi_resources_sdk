//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentCompetencyObjectiveStudentSectionAssociation {
  /// Returns a new [EdFiStudentCompetencyObjectiveStudentSectionAssociation] instance.
  EdFiStudentCompetencyObjectiveStudentSectionAssociation({
    required this.studentSectionAssociationReference,
  });

  EdFiStudentSectionAssociationReference studentSectionAssociationReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentCompetencyObjectiveStudentSectionAssociation &&
    other.studentSectionAssociationReference == studentSectionAssociationReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (studentSectionAssociationReference.hashCode);

  @override
  String toString() => 'EdFiStudentCompetencyObjectiveStudentSectionAssociation[studentSectionAssociationReference=$studentSectionAssociationReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'studentSectionAssociationReference'] = this.studentSectionAssociationReference;
    return json;
  }

  /// Returns a new [EdFiStudentCompetencyObjectiveStudentSectionAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentCompetencyObjectiveStudentSectionAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentCompetencyObjectiveStudentSectionAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentCompetencyObjectiveStudentSectionAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentCompetencyObjectiveStudentSectionAssociation(
        studentSectionAssociationReference: EdFiStudentSectionAssociationReference.fromJson(json[r'studentSectionAssociationReference'])!,
      );
    }
    return null;
  }

  static List<EdFiStudentCompetencyObjectiveStudentSectionAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentCompetencyObjectiveStudentSectionAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentCompetencyObjectiveStudentSectionAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentCompetencyObjectiveStudentSectionAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentCompetencyObjectiveStudentSectionAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentCompetencyObjectiveStudentSectionAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentCompetencyObjectiveStudentSectionAssociation-objects as value to a dart map
  static Map<String, List<EdFiStudentCompetencyObjectiveStudentSectionAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentCompetencyObjectiveStudentSectionAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentCompetencyObjectiveStudentSectionAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'studentSectionAssociationReference',
  };
}

