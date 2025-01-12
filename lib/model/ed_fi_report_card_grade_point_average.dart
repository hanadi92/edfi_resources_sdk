//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiReportCardGradePointAverage {
  /// Returns a new [EdFiReportCardGradePointAverage] instance.
  EdFiReportCardGradePointAverage({
    required this.gradePointAverageTypeDescriptor,
    required this.gradePointAverageValue,
    this.isCumulative,
    this.maxGradePointAverageValue,
  });

  /// The system used for calculating the grade point average for an individual.
  String gradePointAverageTypeDescriptor;

  /// The value of the grade points earned divided by the number of credits attempted.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 1.0E+14
  double gradePointAverageValue;

  /// Indicator of whether or not the Grade Point Average value is cumulative.
  bool? isCumulative;

  /// The maximum value for the grade point average.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 1.0E+14
  double? maxGradePointAverageValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiReportCardGradePointAverage &&
    other.gradePointAverageTypeDescriptor == gradePointAverageTypeDescriptor &&
    other.gradePointAverageValue == gradePointAverageValue &&
    other.isCumulative == isCumulative &&
    other.maxGradePointAverageValue == maxGradePointAverageValue;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gradePointAverageTypeDescriptor.hashCode) +
    (gradePointAverageValue.hashCode) +
    (isCumulative == null ? 0 : isCumulative!.hashCode) +
    (maxGradePointAverageValue == null ? 0 : maxGradePointAverageValue!.hashCode);

  @override
  String toString() => 'EdFiReportCardGradePointAverage[gradePointAverageTypeDescriptor=$gradePointAverageTypeDescriptor, gradePointAverageValue=$gradePointAverageValue, isCumulative=$isCumulative, maxGradePointAverageValue=$maxGradePointAverageValue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'gradePointAverageTypeDescriptor'] = this.gradePointAverageTypeDescriptor;
      json[r'gradePointAverageValue'] = this.gradePointAverageValue;
    if (this.isCumulative != null) {
      json[r'isCumulative'] = this.isCumulative;
    } else {
      json[r'isCumulative'] = null;
    }
    if (this.maxGradePointAverageValue != null) {
      json[r'maxGradePointAverageValue'] = this.maxGradePointAverageValue;
    } else {
      json[r'maxGradePointAverageValue'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiReportCardGradePointAverage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiReportCardGradePointAverage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiReportCardGradePointAverage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiReportCardGradePointAverage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiReportCardGradePointAverage(
        gradePointAverageTypeDescriptor: mapValueOfType<String>(json, r'gradePointAverageTypeDescriptor')!,
        gradePointAverageValue: mapValueOfType<double>(json, r'gradePointAverageValue')!,
        isCumulative: mapValueOfType<bool>(json, r'isCumulative'),
        maxGradePointAverageValue: mapValueOfType<double>(json, r'maxGradePointAverageValue'),
      );
    }
    return null;
  }

  static List<EdFiReportCardGradePointAverage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiReportCardGradePointAverage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiReportCardGradePointAverage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiReportCardGradePointAverage> mapFromJson(dynamic json) {
    final map = <String, EdFiReportCardGradePointAverage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiReportCardGradePointAverage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiReportCardGradePointAverage-objects as value to a dart map
  static Map<String, List<EdFiReportCardGradePointAverage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiReportCardGradePointAverage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiReportCardGradePointAverage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'gradePointAverageTypeDescriptor',
    'gradePointAverageValue',
  };
}

