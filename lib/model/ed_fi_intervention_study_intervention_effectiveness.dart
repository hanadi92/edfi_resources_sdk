//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiInterventionStudyInterventionEffectiveness {
  /// Returns a new [EdFiInterventionStudyInterventionEffectiveness] instance.
  EdFiInterventionStudyInterventionEffectiveness({
    required this.diagnosisDescriptor,
    required this.gradeLevelDescriptor,
    required this.populationServedDescriptor,
    required this.interventionEffectivenessRatingDescriptor,
    this.improvementIndex,
  });

  /// Targeted purpose of the intervention (e.g., attendance issue, dropout risk) for which the effectiveness is measured.
  String diagnosisDescriptor;

  /// Grade level for which effectiveness is measured.
  String gradeLevelDescriptor;

  /// Population for which effectiveness is measured.
  String populationServedDescriptor;

  /// An intervention demonstrates effectiveness if the research has shown that the program caused an improvement in outcomes. Values: positive effects, potentially positive effects, mixed effects, potentially negative effects, negative effects, and no discernible effects.
  String interventionEffectivenessRatingDescriptor;

  /// Along a percentile distribution of students, the improvement index represents the change in an average student's percentile rank that is considered to be due to the intervention.
  int? improvementIndex;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiInterventionStudyInterventionEffectiveness &&
    other.diagnosisDescriptor == diagnosisDescriptor &&
    other.gradeLevelDescriptor == gradeLevelDescriptor &&
    other.populationServedDescriptor == populationServedDescriptor &&
    other.interventionEffectivenessRatingDescriptor == interventionEffectivenessRatingDescriptor &&
    other.improvementIndex == improvementIndex;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (diagnosisDescriptor.hashCode) +
    (gradeLevelDescriptor.hashCode) +
    (populationServedDescriptor.hashCode) +
    (interventionEffectivenessRatingDescriptor.hashCode) +
    (improvementIndex == null ? 0 : improvementIndex!.hashCode);

  @override
  String toString() => 'EdFiInterventionStudyInterventionEffectiveness[diagnosisDescriptor=$diagnosisDescriptor, gradeLevelDescriptor=$gradeLevelDescriptor, populationServedDescriptor=$populationServedDescriptor, interventionEffectivenessRatingDescriptor=$interventionEffectivenessRatingDescriptor, improvementIndex=$improvementIndex]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'diagnosisDescriptor'] = this.diagnosisDescriptor;
      json[r'gradeLevelDescriptor'] = this.gradeLevelDescriptor;
      json[r'populationServedDescriptor'] = this.populationServedDescriptor;
      json[r'interventionEffectivenessRatingDescriptor'] = this.interventionEffectivenessRatingDescriptor;
    if (this.improvementIndex != null) {
      json[r'improvementIndex'] = this.improvementIndex;
    } else {
      json[r'improvementIndex'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiInterventionStudyInterventionEffectiveness] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiInterventionStudyInterventionEffectiveness? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiInterventionStudyInterventionEffectiveness[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiInterventionStudyInterventionEffectiveness[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiInterventionStudyInterventionEffectiveness(
        diagnosisDescriptor: mapValueOfType<String>(json, r'diagnosisDescriptor')!,
        gradeLevelDescriptor: mapValueOfType<String>(json, r'gradeLevelDescriptor')!,
        populationServedDescriptor: mapValueOfType<String>(json, r'populationServedDescriptor')!,
        interventionEffectivenessRatingDescriptor: mapValueOfType<String>(json, r'interventionEffectivenessRatingDescriptor')!,
        improvementIndex: mapValueOfType<int>(json, r'improvementIndex'),
      );
    }
    return null;
  }

  static List<EdFiInterventionStudyInterventionEffectiveness> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiInterventionStudyInterventionEffectiveness>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiInterventionStudyInterventionEffectiveness.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiInterventionStudyInterventionEffectiveness> mapFromJson(dynamic json) {
    final map = <String, EdFiInterventionStudyInterventionEffectiveness>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiInterventionStudyInterventionEffectiveness.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiInterventionStudyInterventionEffectiveness-objects as value to a dart map
  static Map<String, List<EdFiInterventionStudyInterventionEffectiveness>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiInterventionStudyInterventionEffectiveness>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiInterventionStudyInterventionEffectiveness.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'diagnosisDescriptor',
    'gradeLevelDescriptor',
    'populationServedDescriptor',
    'interventionEffectivenessRatingDescriptor',
  };
}

