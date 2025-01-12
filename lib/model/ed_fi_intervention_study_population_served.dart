//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiInterventionStudyPopulationServed {
  /// Returns a new [EdFiInterventionStudyPopulationServed] instance.
  EdFiInterventionStudyPopulationServed({
    required this.populationServedDescriptor,
  });

  /// A subset of students that are the focus of the intervention study.
  String populationServedDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiInterventionStudyPopulationServed &&
    other.populationServedDescriptor == populationServedDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (populationServedDescriptor.hashCode);

  @override
  String toString() => 'EdFiInterventionStudyPopulationServed[populationServedDescriptor=$populationServedDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'populationServedDescriptor'] = this.populationServedDescriptor;
    return json;
  }

  /// Returns a new [EdFiInterventionStudyPopulationServed] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiInterventionStudyPopulationServed? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiInterventionStudyPopulationServed[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiInterventionStudyPopulationServed[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiInterventionStudyPopulationServed(
        populationServedDescriptor: mapValueOfType<String>(json, r'populationServedDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiInterventionStudyPopulationServed> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiInterventionStudyPopulationServed>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiInterventionStudyPopulationServed.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiInterventionStudyPopulationServed> mapFromJson(dynamic json) {
    final map = <String, EdFiInterventionStudyPopulationServed>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiInterventionStudyPopulationServed.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiInterventionStudyPopulationServed-objects as value to a dart map
  static Map<String, List<EdFiInterventionStudyPopulationServed>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiInterventionStudyPopulationServed>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiInterventionStudyPopulationServed.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'populationServedDescriptor',
  };
}

