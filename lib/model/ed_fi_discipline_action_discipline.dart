//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiDisciplineActionDiscipline {
  /// Returns a new [EdFiDisciplineActionDiscipline] instance.
  EdFiDisciplineActionDiscipline({
    required this.disciplineDescriptor,
  });

  /// Type of action, such as removal from the classroom, used to discipline the student involved as a perpetrator in a discipline incident.
  String disciplineDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiDisciplineActionDiscipline &&
    other.disciplineDescriptor == disciplineDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (disciplineDescriptor.hashCode);

  @override
  String toString() => 'EdFiDisciplineActionDiscipline[disciplineDescriptor=$disciplineDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'disciplineDescriptor'] = this.disciplineDescriptor;
    return json;
  }

  /// Returns a new [EdFiDisciplineActionDiscipline] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiDisciplineActionDiscipline? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiDisciplineActionDiscipline[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiDisciplineActionDiscipline[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiDisciplineActionDiscipline(
        disciplineDescriptor: mapValueOfType<String>(json, r'disciplineDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiDisciplineActionDiscipline> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiDisciplineActionDiscipline>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiDisciplineActionDiscipline.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiDisciplineActionDiscipline> mapFromJson(dynamic json) {
    final map = <String, EdFiDisciplineActionDiscipline>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiDisciplineActionDiscipline.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiDisciplineActionDiscipline-objects as value to a dart map
  static Map<String, List<EdFiDisciplineActionDiscipline>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiDisciplineActionDiscipline>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiDisciplineActionDiscipline.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'disciplineDescriptor',
  };
}

