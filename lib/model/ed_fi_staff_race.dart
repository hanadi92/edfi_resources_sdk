//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaffRace {
  /// Returns a new [EdFiStaffRace] instance.
  EdFiStaffRace({
    required this.raceDescriptor,
  });

  /// The general racial category which most clearly reflects the individual's recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.
  String raceDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaffRace &&
    other.raceDescriptor == raceDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (raceDescriptor.hashCode);

  @override
  String toString() => 'EdFiStaffRace[raceDescriptor=$raceDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'raceDescriptor'] = this.raceDescriptor;
    return json;
  }

  /// Returns a new [EdFiStaffRace] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaffRace? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaffRace[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaffRace[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaffRace(
        raceDescriptor: mapValueOfType<String>(json, r'raceDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiStaffRace> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaffRace>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaffRace.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaffRace> mapFromJson(dynamic json) {
    final map = <String, EdFiStaffRace>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaffRace.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaffRace-objects as value to a dart map
  static Map<String, List<EdFiStaffRace>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaffRace>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaffRace.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'raceDescriptor',
  };
}

