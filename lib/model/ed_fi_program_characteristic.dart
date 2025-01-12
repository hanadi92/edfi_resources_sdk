//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiProgramCharacteristic {
  /// Returns a new [EdFiProgramCharacteristic] instance.
  EdFiProgramCharacteristic({
    required this.programCharacteristicDescriptor,
  });

  /// Reflects important characteristics of the program, such as categories or particular indications.
  String programCharacteristicDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiProgramCharacteristic &&
    other.programCharacteristicDescriptor == programCharacteristicDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (programCharacteristicDescriptor.hashCode);

  @override
  String toString() => 'EdFiProgramCharacteristic[programCharacteristicDescriptor=$programCharacteristicDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'programCharacteristicDescriptor'] = this.programCharacteristicDescriptor;
    return json;
  }

  /// Returns a new [EdFiProgramCharacteristic] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiProgramCharacteristic? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiProgramCharacteristic[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiProgramCharacteristic[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiProgramCharacteristic(
        programCharacteristicDescriptor: mapValueOfType<String>(json, r'programCharacteristicDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiProgramCharacteristic> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiProgramCharacteristic>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiProgramCharacteristic.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiProgramCharacteristic> mapFromJson(dynamic json) {
    final map = <String, EdFiProgramCharacteristic>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiProgramCharacteristic.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiProgramCharacteristic-objects as value to a dart map
  static Map<String, List<EdFiProgramCharacteristic>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiProgramCharacteristic>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiProgramCharacteristic.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'programCharacteristicDescriptor',
  };
}

