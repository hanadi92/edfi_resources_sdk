//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiEducationOrganizationIndicator {
  /// Returns a new [EdFiEducationOrganizationIndicator] instance.
  EdFiEducationOrganizationIndicator({
    required this.indicatorDescriptor,
    this.indicatorGroupDescriptor,
    this.indicatorLevelDescriptor,
    this.designatedBy,
    this.indicatorValue,
    this.periods = const [],
  });

  /// The name or code for the indicator or metric.
  String indicatorDescriptor;

  /// The name for a group of indicators.
  String? indicatorGroupDescriptor;

  /// The value of the indicator or metric, as a value from a controlled vocabulary. The semantics of an empty value is \"not submitted.\"
  String? indicatorLevelDescriptor;

  /// The person, organization, or department that defined the metric.
  String? designatedBy;

  /// The value of the indicator or metric. The semantics of an empty value is \"not submitted.\"
  String? indicatorValue;

  /// An unordered collection of educationOrganizationIndicatorPeriods. The time period or as-of date for the indicator.
  List<EdFiEducationOrganizationIndicatorPeriod> periods;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiEducationOrganizationIndicator &&
    other.indicatorDescriptor == indicatorDescriptor &&
    other.indicatorGroupDescriptor == indicatorGroupDescriptor &&
    other.indicatorLevelDescriptor == indicatorLevelDescriptor &&
    other.designatedBy == designatedBy &&
    other.indicatorValue == indicatorValue &&
    _deepEquality.equals(other.periods, periods);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (indicatorDescriptor.hashCode) +
    (indicatorGroupDescriptor == null ? 0 : indicatorGroupDescriptor!.hashCode) +
    (indicatorLevelDescriptor == null ? 0 : indicatorLevelDescriptor!.hashCode) +
    (designatedBy == null ? 0 : designatedBy!.hashCode) +
    (indicatorValue == null ? 0 : indicatorValue!.hashCode) +
    (periods.hashCode);

  @override
  String toString() => 'EdFiEducationOrganizationIndicator[indicatorDescriptor=$indicatorDescriptor, indicatorGroupDescriptor=$indicatorGroupDescriptor, indicatorLevelDescriptor=$indicatorLevelDescriptor, designatedBy=$designatedBy, indicatorValue=$indicatorValue, periods=$periods]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'indicatorDescriptor'] = this.indicatorDescriptor;
    if (this.indicatorGroupDescriptor != null) {
      json[r'indicatorGroupDescriptor'] = this.indicatorGroupDescriptor;
    } else {
      json[r'indicatorGroupDescriptor'] = null;
    }
    if (this.indicatorLevelDescriptor != null) {
      json[r'indicatorLevelDescriptor'] = this.indicatorLevelDescriptor;
    } else {
      json[r'indicatorLevelDescriptor'] = null;
    }
    if (this.designatedBy != null) {
      json[r'designatedBy'] = this.designatedBy;
    } else {
      json[r'designatedBy'] = null;
    }
    if (this.indicatorValue != null) {
      json[r'indicatorValue'] = this.indicatorValue;
    } else {
      json[r'indicatorValue'] = null;
    }
      json[r'periods'] = this.periods;
    return json;
  }

  /// Returns a new [EdFiEducationOrganizationIndicator] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiEducationOrganizationIndicator? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiEducationOrganizationIndicator[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiEducationOrganizationIndicator[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiEducationOrganizationIndicator(
        indicatorDescriptor: mapValueOfType<String>(json, r'indicatorDescriptor')!,
        indicatorGroupDescriptor: mapValueOfType<String>(json, r'indicatorGroupDescriptor'),
        indicatorLevelDescriptor: mapValueOfType<String>(json, r'indicatorLevelDescriptor'),
        designatedBy: mapValueOfType<String>(json, r'designatedBy'),
        indicatorValue: mapValueOfType<String>(json, r'indicatorValue'),
        periods: EdFiEducationOrganizationIndicatorPeriod.listFromJson(json[r'periods']),
      );
    }
    return null;
  }

  static List<EdFiEducationOrganizationIndicator> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiEducationOrganizationIndicator>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiEducationOrganizationIndicator.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiEducationOrganizationIndicator> mapFromJson(dynamic json) {
    final map = <String, EdFiEducationOrganizationIndicator>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiEducationOrganizationIndicator.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiEducationOrganizationIndicator-objects as value to a dart map
  static Map<String, List<EdFiEducationOrganizationIndicator>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiEducationOrganizationIndicator>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiEducationOrganizationIndicator.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'indicatorDescriptor',
  };
}

