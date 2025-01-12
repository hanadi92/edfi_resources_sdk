//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiReportCardStudentCompetencyObjective {
  /// Returns a new [EdFiReportCardStudentCompetencyObjective] instance.
  EdFiReportCardStudentCompetencyObjective({
    required this.studentCompetencyObjectiveReference,
  });

  EdFiStudentCompetencyObjectiveReference studentCompetencyObjectiveReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiReportCardStudentCompetencyObjective &&
    other.studentCompetencyObjectiveReference == studentCompetencyObjectiveReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (studentCompetencyObjectiveReference.hashCode);

  @override
  String toString() => 'EdFiReportCardStudentCompetencyObjective[studentCompetencyObjectiveReference=$studentCompetencyObjectiveReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'studentCompetencyObjectiveReference'] = this.studentCompetencyObjectiveReference;
    return json;
  }

  /// Returns a new [EdFiReportCardStudentCompetencyObjective] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiReportCardStudentCompetencyObjective? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiReportCardStudentCompetencyObjective[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiReportCardStudentCompetencyObjective[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiReportCardStudentCompetencyObjective(
        studentCompetencyObjectiveReference: EdFiStudentCompetencyObjectiveReference.fromJson(json[r'studentCompetencyObjectiveReference'])!,
      );
    }
    return null;
  }

  static List<EdFiReportCardStudentCompetencyObjective> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiReportCardStudentCompetencyObjective>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiReportCardStudentCompetencyObjective.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiReportCardStudentCompetencyObjective> mapFromJson(dynamic json) {
    final map = <String, EdFiReportCardStudentCompetencyObjective>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiReportCardStudentCompetencyObjective.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiReportCardStudentCompetencyObjective-objects as value to a dart map
  static Map<String, List<EdFiReportCardStudentCompetencyObjective>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiReportCardStudentCompetencyObjective>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiReportCardStudentCompetencyObjective.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'studentCompetencyObjectiveReference',
  };
}

