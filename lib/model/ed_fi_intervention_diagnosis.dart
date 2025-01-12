//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiInterventionDiagnosis {
  /// Returns a new [EdFiInterventionDiagnosis] instance.
  EdFiInterventionDiagnosis({
    required this.diagnosisDescriptor,
  });

  /// Targeted purpose of the intervention.
  String diagnosisDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiInterventionDiagnosis &&
    other.diagnosisDescriptor == diagnosisDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (diagnosisDescriptor.hashCode);

  @override
  String toString() => 'EdFiInterventionDiagnosis[diagnosisDescriptor=$diagnosisDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'diagnosisDescriptor'] = this.diagnosisDescriptor;
    return json;
  }

  /// Returns a new [EdFiInterventionDiagnosis] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiInterventionDiagnosis? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiInterventionDiagnosis[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiInterventionDiagnosis[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiInterventionDiagnosis(
        diagnosisDescriptor: mapValueOfType<String>(json, r'diagnosisDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiInterventionDiagnosis> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiInterventionDiagnosis>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiInterventionDiagnosis.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiInterventionDiagnosis> mapFromJson(dynamic json) {
    final map = <String, EdFiInterventionDiagnosis>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiInterventionDiagnosis.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiInterventionDiagnosis-objects as value to a dart map
  static Map<String, List<EdFiInterventionDiagnosis>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiInterventionDiagnosis>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiInterventionDiagnosis.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'diagnosisDescriptor',
  };
}

