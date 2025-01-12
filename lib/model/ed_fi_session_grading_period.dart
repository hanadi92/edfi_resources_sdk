//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiSessionGradingPeriod {
  /// Returns a new [EdFiSessionGradingPeriod] instance.
  EdFiSessionGradingPeriod({
    required this.gradingPeriodReference,
  });

  EdFiGradingPeriodReference gradingPeriodReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiSessionGradingPeriod &&
    other.gradingPeriodReference == gradingPeriodReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gradingPeriodReference.hashCode);

  @override
  String toString() => 'EdFiSessionGradingPeriod[gradingPeriodReference=$gradingPeriodReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'gradingPeriodReference'] = this.gradingPeriodReference;
    return json;
  }

  /// Returns a new [EdFiSessionGradingPeriod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiSessionGradingPeriod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiSessionGradingPeriod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiSessionGradingPeriod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiSessionGradingPeriod(
        gradingPeriodReference: EdFiGradingPeriodReference.fromJson(json[r'gradingPeriodReference'])!,
      );
    }
    return null;
  }

  static List<EdFiSessionGradingPeriod> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiSessionGradingPeriod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiSessionGradingPeriod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiSessionGradingPeriod> mapFromJson(dynamic json) {
    final map = <String, EdFiSessionGradingPeriod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiSessionGradingPeriod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiSessionGradingPeriod-objects as value to a dart map
  static Map<String, List<EdFiSessionGradingPeriod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiSessionGradingPeriod>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiSessionGradingPeriod.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'gradingPeriodReference',
  };
}

