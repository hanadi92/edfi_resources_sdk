//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentTransportationStudentBusDetailsTravelDayofWeek {
  /// Returns a new [EdFiStudentTransportationStudentBusDetailsTravelDayofWeek] instance.
  EdFiStudentTransportationStudentBusDetailsTravelDayofWeek({
    required this.travelDayofWeekDescriptor,
  });

  /// Specifies the day(s) of the week on which student transportation occurs.
  String travelDayofWeekDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentTransportationStudentBusDetailsTravelDayofWeek &&
    other.travelDayofWeekDescriptor == travelDayofWeekDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (travelDayofWeekDescriptor.hashCode);

  @override
  String toString() => 'EdFiStudentTransportationStudentBusDetailsTravelDayofWeek[travelDayofWeekDescriptor=$travelDayofWeekDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'travelDayofWeekDescriptor'] = this.travelDayofWeekDescriptor;
    return json;
  }

  /// Returns a new [EdFiStudentTransportationStudentBusDetailsTravelDayofWeek] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentTransportationStudentBusDetailsTravelDayofWeek? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentTransportationStudentBusDetailsTravelDayofWeek[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentTransportationStudentBusDetailsTravelDayofWeek[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentTransportationStudentBusDetailsTravelDayofWeek(
        travelDayofWeekDescriptor: mapValueOfType<String>(json, r'travelDayofWeekDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiStudentTransportationStudentBusDetailsTravelDayofWeek> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentTransportationStudentBusDetailsTravelDayofWeek>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentTransportationStudentBusDetailsTravelDayofWeek.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentTransportationStudentBusDetailsTravelDayofWeek> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentTransportationStudentBusDetailsTravelDayofWeek>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentTransportationStudentBusDetailsTravelDayofWeek.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentTransportationStudentBusDetailsTravelDayofWeek-objects as value to a dart map
  static Map<String, List<EdFiStudentTransportationStudentBusDetailsTravelDayofWeek>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentTransportationStudentBusDetailsTravelDayofWeek>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentTransportationStudentBusDetailsTravelDayofWeek.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'travelDayofWeekDescriptor',
  };
}

