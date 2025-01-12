//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentTransportationStudentBusDetails {
  /// Returns a new [EdFiStudentTransportationStudentBusDetails] instance.
  EdFiStudentTransportationStudentBusDetails({
    required this.busRouteDescriptor,
    required this.busNumber,
    this.mileage,
    this.travelDayofWeeks = const [],
    this.travelDirections = const [],
  });

  /// Identifies the specific route taken by a bus for student transportation.
  String busRouteDescriptor;

  /// The unique identifier assigned to the bus used for transporting the student.
  String busNumber;

  /// The distance, typically measured in miles, that a student was transported along the route of the bus during a single trip.
  ///
  /// Minimum value: -999.99
  /// Maximum value: 999.99
  double? mileage;

  /// An unordered collection of studentTransportationStudentBusDetailsTravelDayofWeeks. Specifies the day(s) of the week on which student transportation occurs.
  List<EdFiStudentTransportationStudentBusDetailsTravelDayofWeek> travelDayofWeeks;

  /// An unordered collection of studentTransportationStudentBusDetailsTravelDirections. Indicates the direction of travel for the student transportation route (e.g., to school, from school).
  List<EdFiStudentTransportationStudentBusDetailsTravelDirection> travelDirections;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentTransportationStudentBusDetails &&
    other.busRouteDescriptor == busRouteDescriptor &&
    other.busNumber == busNumber &&
    other.mileage == mileage &&
    _deepEquality.equals(other.travelDayofWeeks, travelDayofWeeks) &&
    _deepEquality.equals(other.travelDirections, travelDirections);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (busRouteDescriptor.hashCode) +
    (busNumber.hashCode) +
    (mileage == null ? 0 : mileage!.hashCode) +
    (travelDayofWeeks.hashCode) +
    (travelDirections.hashCode);

  @override
  String toString() => 'EdFiStudentTransportationStudentBusDetails[busRouteDescriptor=$busRouteDescriptor, busNumber=$busNumber, mileage=$mileage, travelDayofWeeks=$travelDayofWeeks, travelDirections=$travelDirections]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'busRouteDescriptor'] = this.busRouteDescriptor;
      json[r'busNumber'] = this.busNumber;
    if (this.mileage != null) {
      json[r'mileage'] = this.mileage;
    } else {
      json[r'mileage'] = null;
    }
      json[r'travelDayofWeeks'] = this.travelDayofWeeks;
      json[r'travelDirections'] = this.travelDirections;
    return json;
  }

  /// Returns a new [EdFiStudentTransportationStudentBusDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentTransportationStudentBusDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentTransportationStudentBusDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentTransportationStudentBusDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentTransportationStudentBusDetails(
        busRouteDescriptor: mapValueOfType<String>(json, r'busRouteDescriptor')!,
        busNumber: mapValueOfType<String>(json, r'busNumber')!,
        mileage: mapValueOfType<double>(json, r'mileage'),
        travelDayofWeeks: EdFiStudentTransportationStudentBusDetailsTravelDayofWeek.listFromJson(json[r'travelDayofWeeks']),
        travelDirections: EdFiStudentTransportationStudentBusDetailsTravelDirection.listFromJson(json[r'travelDirections']),
      );
    }
    return null;
  }

  static List<EdFiStudentTransportationStudentBusDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentTransportationStudentBusDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentTransportationStudentBusDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentTransportationStudentBusDetails> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentTransportationStudentBusDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentTransportationStudentBusDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentTransportationStudentBusDetails-objects as value to a dart map
  static Map<String, List<EdFiStudentTransportationStudentBusDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentTransportationStudentBusDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentTransportationStudentBusDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'busRouteDescriptor',
    'busNumber',
  };
}

