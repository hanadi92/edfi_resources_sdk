//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentHealthAdditionalImmunizationDate {
  /// Returns a new [EdFiStudentHealthAdditionalImmunizationDate] instance.
  EdFiStudentHealthAdditionalImmunizationDate({
    required this.immunizationDate,
  });

  /// The year, month and day of the related additional immunization.
  DateTime immunizationDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentHealthAdditionalImmunizationDate &&
    other.immunizationDate == immunizationDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (immunizationDate.hashCode);

  @override
  String toString() => 'EdFiStudentHealthAdditionalImmunizationDate[immunizationDate=$immunizationDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'immunizationDate'] = _dateFormatter.format(this.immunizationDate.toUtc());
    return json;
  }

  /// Returns a new [EdFiStudentHealthAdditionalImmunizationDate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentHealthAdditionalImmunizationDate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentHealthAdditionalImmunizationDate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentHealthAdditionalImmunizationDate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentHealthAdditionalImmunizationDate(
        immunizationDate: mapDateTime(json, r'immunizationDate', r'')!,
      );
    }
    return null;
  }

  static List<EdFiStudentHealthAdditionalImmunizationDate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentHealthAdditionalImmunizationDate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentHealthAdditionalImmunizationDate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentHealthAdditionalImmunizationDate> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentHealthAdditionalImmunizationDate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentHealthAdditionalImmunizationDate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentHealthAdditionalImmunizationDate-objects as value to a dart map
  static Map<String, List<EdFiStudentHealthAdditionalImmunizationDate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentHealthAdditionalImmunizationDate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentHealthAdditionalImmunizationDate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'immunizationDate',
  };
}

