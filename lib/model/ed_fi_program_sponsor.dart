//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiProgramSponsor {
  /// Returns a new [EdFiProgramSponsor] instance.
  EdFiProgramSponsor({
    required this.programSponsorDescriptor,
  });

  /// Ultimate and intermediate providers of funds for a particular educational or service program or activity, or for an individual's participation in the program or activity (e.g., Federal, State, ESC, District, School, Private Organization).
  String programSponsorDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiProgramSponsor &&
    other.programSponsorDescriptor == programSponsorDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (programSponsorDescriptor.hashCode);

  @override
  String toString() => 'EdFiProgramSponsor[programSponsorDescriptor=$programSponsorDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'programSponsorDescriptor'] = this.programSponsorDescriptor;
    return json;
  }

  /// Returns a new [EdFiProgramSponsor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiProgramSponsor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiProgramSponsor[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiProgramSponsor[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiProgramSponsor(
        programSponsorDescriptor: mapValueOfType<String>(json, r'programSponsorDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiProgramSponsor> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiProgramSponsor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiProgramSponsor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiProgramSponsor> mapFromJson(dynamic json) {
    final map = <String, EdFiProgramSponsor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiProgramSponsor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiProgramSponsor-objects as value to a dart map
  static Map<String, List<EdFiProgramSponsor>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiProgramSponsor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiProgramSponsor.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'programSponsorDescriptor',
  };
}

