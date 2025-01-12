//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiDisciplineIncidentBehavior {
  /// Returns a new [EdFiDisciplineIncidentBehavior] instance.
  EdFiDisciplineIncidentBehavior({
    required this.behaviorDescriptor,
    this.behaviorDetailedDescription,
  });

  /// Describes behavior by category and provides a detailed description.
  String behaviorDescriptor;

  /// Specifies a more granular level of detail of a behavior involved in the incident.
  String? behaviorDetailedDescription;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiDisciplineIncidentBehavior &&
    other.behaviorDescriptor == behaviorDescriptor &&
    other.behaviorDetailedDescription == behaviorDetailedDescription;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (behaviorDescriptor.hashCode) +
    (behaviorDetailedDescription == null ? 0 : behaviorDetailedDescription!.hashCode);

  @override
  String toString() => 'EdFiDisciplineIncidentBehavior[behaviorDescriptor=$behaviorDescriptor, behaviorDetailedDescription=$behaviorDetailedDescription]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'behaviorDescriptor'] = this.behaviorDescriptor;
    if (this.behaviorDetailedDescription != null) {
      json[r'behaviorDetailedDescription'] = this.behaviorDetailedDescription;
    } else {
      json[r'behaviorDetailedDescription'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiDisciplineIncidentBehavior] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiDisciplineIncidentBehavior? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiDisciplineIncidentBehavior[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiDisciplineIncidentBehavior[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiDisciplineIncidentBehavior(
        behaviorDescriptor: mapValueOfType<String>(json, r'behaviorDescriptor')!,
        behaviorDetailedDescription: mapValueOfType<String>(json, r'behaviorDetailedDescription'),
      );
    }
    return null;
  }

  static List<EdFiDisciplineIncidentBehavior> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiDisciplineIncidentBehavior>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiDisciplineIncidentBehavior.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiDisciplineIncidentBehavior> mapFromJson(dynamic json) {
    final map = <String, EdFiDisciplineIncidentBehavior>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiDisciplineIncidentBehavior.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiDisciplineIncidentBehavior-objects as value to a dart map
  static Map<String, List<EdFiDisciplineIncidentBehavior>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiDisciplineIncidentBehavior>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiDisciplineIncidentBehavior.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'behaviorDescriptor',
  };
}

