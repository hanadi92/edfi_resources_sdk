//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStateEducationAgencyAccountability {
  /// Returns a new [EdFiStateEducationAgencyAccountability] instance.
  EdFiStateEducationAgencyAccountability({
    this.cteGraduationRateInclusion,
    required this.schoolYearTypeReference,
  });

  /// An indication of whether CTE concentrators are included in the state's computation of its graduation rate.
  bool? cteGraduationRateInclusion;

  EdFiSchoolYearTypeReference schoolYearTypeReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStateEducationAgencyAccountability &&
    other.cteGraduationRateInclusion == cteGraduationRateInclusion &&
    other.schoolYearTypeReference == schoolYearTypeReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cteGraduationRateInclusion == null ? 0 : cteGraduationRateInclusion!.hashCode) +
    (schoolYearTypeReference.hashCode);

  @override
  String toString() => 'EdFiStateEducationAgencyAccountability[cteGraduationRateInclusion=$cteGraduationRateInclusion, schoolYearTypeReference=$schoolYearTypeReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cteGraduationRateInclusion != null) {
      json[r'cteGraduationRateInclusion'] = this.cteGraduationRateInclusion;
    } else {
      json[r'cteGraduationRateInclusion'] = null;
    }
      json[r'schoolYearTypeReference'] = this.schoolYearTypeReference;
    return json;
  }

  /// Returns a new [EdFiStateEducationAgencyAccountability] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStateEducationAgencyAccountability? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStateEducationAgencyAccountability[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStateEducationAgencyAccountability[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStateEducationAgencyAccountability(
        cteGraduationRateInclusion: mapValueOfType<bool>(json, r'cteGraduationRateInclusion'),
        schoolYearTypeReference: EdFiSchoolYearTypeReference.fromJson(json[r'schoolYearTypeReference'])!,
      );
    }
    return null;
  }

  static List<EdFiStateEducationAgencyAccountability> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStateEducationAgencyAccountability>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStateEducationAgencyAccountability.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStateEducationAgencyAccountability> mapFromJson(dynamic json) {
    final map = <String, EdFiStateEducationAgencyAccountability>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStateEducationAgencyAccountability.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStateEducationAgencyAccountability-objects as value to a dart map
  static Map<String, List<EdFiStateEducationAgencyAccountability>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStateEducationAgencyAccountability>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStateEducationAgencyAccountability.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'schoolYearTypeReference',
  };
}

