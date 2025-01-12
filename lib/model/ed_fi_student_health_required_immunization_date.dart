//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentHealthRequiredImmunizationDate {
  /// Returns a new [EdFiStudentHealthRequiredImmunizationDate] instance.
  EdFiStudentHealthRequiredImmunizationDate({
    required this.immunizationDate,
  });

  /// The year, month and day of the related required immunization.
  DateTime immunizationDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentHealthRequiredImmunizationDate &&
    other.immunizationDate == immunizationDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (immunizationDate.hashCode);

  @override
  String toString() => 'EdFiStudentHealthRequiredImmunizationDate[immunizationDate=$immunizationDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'immunizationDate'] = _dateFormatter.format(this.immunizationDate.toUtc());
    return json;
  }

  /// Returns a new [EdFiStudentHealthRequiredImmunizationDate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentHealthRequiredImmunizationDate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentHealthRequiredImmunizationDate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentHealthRequiredImmunizationDate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentHealthRequiredImmunizationDate(
        immunizationDate: mapDateTime(json, r'immunizationDate', r'')!,
      );
    }
    return null;
  }

  static List<EdFiStudentHealthRequiredImmunizationDate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentHealthRequiredImmunizationDate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentHealthRequiredImmunizationDate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentHealthRequiredImmunizationDate> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentHealthRequiredImmunizationDate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentHealthRequiredImmunizationDate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentHealthRequiredImmunizationDate-objects as value to a dart map
  static Map<String, List<EdFiStudentHealthRequiredImmunizationDate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentHealthRequiredImmunizationDate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentHealthRequiredImmunizationDate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'immunizationDate',
  };
}

