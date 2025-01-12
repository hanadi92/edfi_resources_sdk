//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiLocalEducationAgencyAccountability {
  /// Returns a new [EdFiLocalEducationAgencyAccountability] instance.
  EdFiLocalEducationAgencyAccountability({
    this.gunFreeSchoolsActReportingStatusDescriptor,
    this.schoolChoiceImplementStatusDescriptor,
    required this.schoolYearTypeReference,
  });

  /// An indication of whether the school or Local Education Agency (LEA) submitted a Gun-Free Schools Act (GFSA) of 1994 report to the state, as defined by Title 18, Section 921.
  String? gunFreeSchoolsActReportingStatusDescriptor;

  /// An indication of whether the LEA was able to implement the provisions for public school choice under Title I, Part A, Section 1116 of ESEA as amended.
  String? schoolChoiceImplementStatusDescriptor;

  EdFiSchoolYearTypeReference schoolYearTypeReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiLocalEducationAgencyAccountability &&
    other.gunFreeSchoolsActReportingStatusDescriptor == gunFreeSchoolsActReportingStatusDescriptor &&
    other.schoolChoiceImplementStatusDescriptor == schoolChoiceImplementStatusDescriptor &&
    other.schoolYearTypeReference == schoolYearTypeReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (gunFreeSchoolsActReportingStatusDescriptor == null ? 0 : gunFreeSchoolsActReportingStatusDescriptor!.hashCode) +
    (schoolChoiceImplementStatusDescriptor == null ? 0 : schoolChoiceImplementStatusDescriptor!.hashCode) +
    (schoolYearTypeReference.hashCode);

  @override
  String toString() => 'EdFiLocalEducationAgencyAccountability[gunFreeSchoolsActReportingStatusDescriptor=$gunFreeSchoolsActReportingStatusDescriptor, schoolChoiceImplementStatusDescriptor=$schoolChoiceImplementStatusDescriptor, schoolYearTypeReference=$schoolYearTypeReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.gunFreeSchoolsActReportingStatusDescriptor != null) {
      json[r'gunFreeSchoolsActReportingStatusDescriptor'] = this.gunFreeSchoolsActReportingStatusDescriptor;
    } else {
      json[r'gunFreeSchoolsActReportingStatusDescriptor'] = null;
    }
    if (this.schoolChoiceImplementStatusDescriptor != null) {
      json[r'schoolChoiceImplementStatusDescriptor'] = this.schoolChoiceImplementStatusDescriptor;
    } else {
      json[r'schoolChoiceImplementStatusDescriptor'] = null;
    }
      json[r'schoolYearTypeReference'] = this.schoolYearTypeReference;
    return json;
  }

  /// Returns a new [EdFiLocalEducationAgencyAccountability] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiLocalEducationAgencyAccountability? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiLocalEducationAgencyAccountability[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiLocalEducationAgencyAccountability[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiLocalEducationAgencyAccountability(
        gunFreeSchoolsActReportingStatusDescriptor: mapValueOfType<String>(json, r'gunFreeSchoolsActReportingStatusDescriptor'),
        schoolChoiceImplementStatusDescriptor: mapValueOfType<String>(json, r'schoolChoiceImplementStatusDescriptor'),
        schoolYearTypeReference: EdFiSchoolYearTypeReference.fromJson(json[r'schoolYearTypeReference'])!,
      );
    }
    return null;
  }

  static List<EdFiLocalEducationAgencyAccountability> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiLocalEducationAgencyAccountability>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiLocalEducationAgencyAccountability.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiLocalEducationAgencyAccountability> mapFromJson(dynamic json) {
    final map = <String, EdFiLocalEducationAgencyAccountability>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiLocalEducationAgencyAccountability.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiLocalEducationAgencyAccountability-objects as value to a dart map
  static Map<String, List<EdFiLocalEducationAgencyAccountability>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiLocalEducationAgencyAccountability>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiLocalEducationAgencyAccountability.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'schoolYearTypeReference',
  };
}

