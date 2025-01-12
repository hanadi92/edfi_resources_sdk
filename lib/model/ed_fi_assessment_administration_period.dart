//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiAssessmentAdministrationPeriod {
  /// Returns a new [EdFiAssessmentAdministrationPeriod] instance.
  EdFiAssessmentAdministrationPeriod({
    required this.beginDate,
    this.endDate,
  });

  /// The month, day, and year for the start of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime beginDate;

  /// The month, day, and year for the end of the period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiAssessmentAdministrationPeriod &&
    other.beginDate == beginDate &&
    other.endDate == endDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (beginDate.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode);

  @override
  String toString() => 'EdFiAssessmentAdministrationPeriod[beginDate=$beginDate, endDate=$endDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'beginDate'] = _dateFormatter.format(this.beginDate.toUtc());
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiAssessmentAdministrationPeriod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiAssessmentAdministrationPeriod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiAssessmentAdministrationPeriod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiAssessmentAdministrationPeriod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiAssessmentAdministrationPeriod(
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        endDate: mapDateTime(json, r'endDate', r''),
      );
    }
    return null;
  }

  static List<EdFiAssessmentAdministrationPeriod> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiAssessmentAdministrationPeriod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiAssessmentAdministrationPeriod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiAssessmentAdministrationPeriod> mapFromJson(dynamic json) {
    final map = <String, EdFiAssessmentAdministrationPeriod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiAssessmentAdministrationPeriod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiAssessmentAdministrationPeriod-objects as value to a dart map
  static Map<String, List<EdFiAssessmentAdministrationPeriod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiAssessmentAdministrationPeriod>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiAssessmentAdministrationPeriod.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'beginDate',
  };
}

