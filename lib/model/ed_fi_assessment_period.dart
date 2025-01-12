//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiAssessmentPeriod {
  /// Returns a new [EdFiAssessmentPeriod] instance.
  EdFiAssessmentPeriod({
    required this.assessmentPeriodDescriptor,
    this.beginDate,
    this.endDate,
  });

  /// The period of time in which an assessment is supposed to be administered (e.g., Beginning of Year, Middle of Year, End of Year).
  String assessmentPeriodDescriptor;

  /// The first date the assessment is to be administered.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? beginDate;

  /// The last date the assessment is to be administered.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiAssessmentPeriod &&
    other.assessmentPeriodDescriptor == assessmentPeriodDescriptor &&
    other.beginDate == beginDate &&
    other.endDate == endDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assessmentPeriodDescriptor.hashCode) +
    (beginDate == null ? 0 : beginDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode);

  @override
  String toString() => 'EdFiAssessmentPeriod[assessmentPeriodDescriptor=$assessmentPeriodDescriptor, beginDate=$beginDate, endDate=$endDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assessmentPeriodDescriptor'] = this.assessmentPeriodDescriptor;
    if (this.beginDate != null) {
      json[r'beginDate'] = _dateFormatter.format(this.beginDate!.toUtc());
    } else {
      json[r'beginDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiAssessmentPeriod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiAssessmentPeriod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiAssessmentPeriod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiAssessmentPeriod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiAssessmentPeriod(
        assessmentPeriodDescriptor: mapValueOfType<String>(json, r'assessmentPeriodDescriptor')!,
        beginDate: mapDateTime(json, r'beginDate', r''),
        endDate: mapDateTime(json, r'endDate', r''),
      );
    }
    return null;
  }

  static List<EdFiAssessmentPeriod> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiAssessmentPeriod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiAssessmentPeriod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiAssessmentPeriod> mapFromJson(dynamic json) {
    final map = <String, EdFiAssessmentPeriod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiAssessmentPeriod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiAssessmentPeriod-objects as value to a dart map
  static Map<String, List<EdFiAssessmentPeriod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiAssessmentPeriod>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiAssessmentPeriod.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assessmentPeriodDescriptor',
  };
}

