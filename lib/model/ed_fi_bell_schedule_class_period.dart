//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiBellScheduleClassPeriod {
  /// Returns a new [EdFiBellScheduleClassPeriod] instance.
  EdFiBellScheduleClassPeriod({
    required this.classPeriodReference,
  });

  EdFiClassPeriodReference classPeriodReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiBellScheduleClassPeriod &&
    other.classPeriodReference == classPeriodReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (classPeriodReference.hashCode);

  @override
  String toString() => 'EdFiBellScheduleClassPeriod[classPeriodReference=$classPeriodReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'classPeriodReference'] = this.classPeriodReference;
    return json;
  }

  /// Returns a new [EdFiBellScheduleClassPeriod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiBellScheduleClassPeriod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiBellScheduleClassPeriod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiBellScheduleClassPeriod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiBellScheduleClassPeriod(
        classPeriodReference: EdFiClassPeriodReference.fromJson(json[r'classPeriodReference'])!,
      );
    }
    return null;
  }

  static List<EdFiBellScheduleClassPeriod> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiBellScheduleClassPeriod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiBellScheduleClassPeriod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiBellScheduleClassPeriod> mapFromJson(dynamic json) {
    final map = <String, EdFiBellScheduleClassPeriod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiBellScheduleClassPeriod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiBellScheduleClassPeriod-objects as value to a dart map
  static Map<String, List<EdFiBellScheduleClassPeriod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiBellScheduleClassPeriod>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiBellScheduleClassPeriod.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'classPeriodReference',
  };
}

