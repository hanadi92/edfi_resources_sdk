//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentTransportationStudentBusDetailsTravelDirection {
  /// Returns a new [EdFiStudentTransportationStudentBusDetailsTravelDirection] instance.
  EdFiStudentTransportationStudentBusDetailsTravelDirection({
    required this.travelDirectionDescriptor,
  });

  /// Indicates the direction of travel for the student transportation route (e.g., to school, from school).
  String travelDirectionDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentTransportationStudentBusDetailsTravelDirection &&
    other.travelDirectionDescriptor == travelDirectionDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (travelDirectionDescriptor.hashCode);

  @override
  String toString() => 'EdFiStudentTransportationStudentBusDetailsTravelDirection[travelDirectionDescriptor=$travelDirectionDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'travelDirectionDescriptor'] = this.travelDirectionDescriptor;
    return json;
  }

  /// Returns a new [EdFiStudentTransportationStudentBusDetailsTravelDirection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentTransportationStudentBusDetailsTravelDirection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentTransportationStudentBusDetailsTravelDirection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentTransportationStudentBusDetailsTravelDirection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentTransportationStudentBusDetailsTravelDirection(
        travelDirectionDescriptor: mapValueOfType<String>(json, r'travelDirectionDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiStudentTransportationStudentBusDetailsTravelDirection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentTransportationStudentBusDetailsTravelDirection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentTransportationStudentBusDetailsTravelDirection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentTransportationStudentBusDetailsTravelDirection> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentTransportationStudentBusDetailsTravelDirection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentTransportationStudentBusDetailsTravelDirection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentTransportationStudentBusDetailsTravelDirection-objects as value to a dart map
  static Map<String, List<EdFiStudentTransportationStudentBusDetailsTravelDirection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentTransportationStudentBusDetailsTravelDirection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentTransportationStudentBusDetailsTravelDirection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'travelDirectionDescriptor',
  };
}

