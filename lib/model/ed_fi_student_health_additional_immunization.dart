//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentHealthAdditionalImmunization {
  /// Returns a new [EdFiStudentHealthAdditionalImmunization] instance.
  EdFiStudentHealthAdditionalImmunization({
    required this.immunizationName,
    this.dates = const [],
  });

  /// The name of the immunization that the student has received.
  String immunizationName;

  /// An unordered collection of studentHealthAdditionalImmunizationDates. The year, month and day of the related additional immunization.
  List<EdFiStudentHealthAdditionalImmunizationDate> dates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentHealthAdditionalImmunization &&
    other.immunizationName == immunizationName &&
    _deepEquality.equals(other.dates, dates);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (immunizationName.hashCode) +
    (dates.hashCode);

  @override
  String toString() => 'EdFiStudentHealthAdditionalImmunization[immunizationName=$immunizationName, dates=$dates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'immunizationName'] = this.immunizationName;
      json[r'dates'] = this.dates;
    return json;
  }

  /// Returns a new [EdFiStudentHealthAdditionalImmunization] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentHealthAdditionalImmunization? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentHealthAdditionalImmunization[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentHealthAdditionalImmunization[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentHealthAdditionalImmunization(
        immunizationName: mapValueOfType<String>(json, r'immunizationName')!,
        dates: EdFiStudentHealthAdditionalImmunizationDate.listFromJson(json[r'dates']),
      );
    }
    return null;
  }

  static List<EdFiStudentHealthAdditionalImmunization> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentHealthAdditionalImmunization>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentHealthAdditionalImmunization.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentHealthAdditionalImmunization> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentHealthAdditionalImmunization>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentHealthAdditionalImmunization.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentHealthAdditionalImmunization-objects as value to a dart map
  static Map<String, List<EdFiStudentHealthAdditionalImmunization>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentHealthAdditionalImmunization>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentHealthAdditionalImmunization.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'immunizationName',
  };
}

