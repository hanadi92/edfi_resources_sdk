//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentEducationOrganizationAssociationStudentIndicator {
  /// Returns a new [EdFiStudentEducationOrganizationAssociationStudentIndicator] instance.
  EdFiStudentEducationOrganizationAssociationStudentIndicator({
    required this.indicatorName,
    this.designatedBy,
    required this.indicator,
    this.indicatorGroup,
    this.periods = const [],
  });

  /// The name of the indicator or metric.
  String indicatorName;

  /// The person, organization, or department that designated the program association.
  String? designatedBy;

  /// The value of the indicator or metric.
  String indicator;

  /// The name for a group of indicators.
  String? indicatorGroup;

  /// An unordered collection of studentEducationOrganizationAssociationStudentIndicatorPeriods. The time periods for which the indicator was effective.
  List<EdFiStudentEducationOrganizationAssociationStudentIndicatorPeriod> periods;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentEducationOrganizationAssociationStudentIndicator &&
    other.indicatorName == indicatorName &&
    other.designatedBy == designatedBy &&
    other.indicator == indicator &&
    other.indicatorGroup == indicatorGroup &&
    _deepEquality.equals(other.periods, periods);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (indicatorName.hashCode) +
    (designatedBy == null ? 0 : designatedBy!.hashCode) +
    (indicator.hashCode) +
    (indicatorGroup == null ? 0 : indicatorGroup!.hashCode) +
    (periods.hashCode);

  @override
  String toString() => 'EdFiStudentEducationOrganizationAssociationStudentIndicator[indicatorName=$indicatorName, designatedBy=$designatedBy, indicator=$indicator, indicatorGroup=$indicatorGroup, periods=$periods]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'indicatorName'] = this.indicatorName;
    if (this.designatedBy != null) {
      json[r'designatedBy'] = this.designatedBy;
    } else {
      json[r'designatedBy'] = null;
    }
      json[r'indicator'] = this.indicator;
    if (this.indicatorGroup != null) {
      json[r'indicatorGroup'] = this.indicatorGroup;
    } else {
      json[r'indicatorGroup'] = null;
    }
      json[r'periods'] = this.periods;
    return json;
  }

  /// Returns a new [EdFiStudentEducationOrganizationAssociationStudentIndicator] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentEducationOrganizationAssociationStudentIndicator? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentEducationOrganizationAssociationStudentIndicator[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentEducationOrganizationAssociationStudentIndicator[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentEducationOrganizationAssociationStudentIndicator(
        indicatorName: mapValueOfType<String>(json, r'indicatorName')!,
        designatedBy: mapValueOfType<String>(json, r'designatedBy'),
        indicator: mapValueOfType<String>(json, r'indicator')!,
        indicatorGroup: mapValueOfType<String>(json, r'indicatorGroup'),
        periods: EdFiStudentEducationOrganizationAssociationStudentIndicatorPeriod.listFromJson(json[r'periods']),
      );
    }
    return null;
  }

  static List<EdFiStudentEducationOrganizationAssociationStudentIndicator> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentEducationOrganizationAssociationStudentIndicator>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentEducationOrganizationAssociationStudentIndicator.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentEducationOrganizationAssociationStudentIndicator> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentEducationOrganizationAssociationStudentIndicator>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentEducationOrganizationAssociationStudentIndicator.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentEducationOrganizationAssociationStudentIndicator-objects as value to a dart map
  static Map<String, List<EdFiStudentEducationOrganizationAssociationStudentIndicator>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentEducationOrganizationAssociationStudentIndicator>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentEducationOrganizationAssociationStudentIndicator.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'indicatorName',
    'indicator',
  };
}

