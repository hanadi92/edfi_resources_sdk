//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiGraduationPlanCreditsBySubject {
  /// Returns a new [EdFiGraduationPlanCreditsBySubject] instance.
  EdFiGraduationPlanCreditsBySubject({
    required this.academicSubjectDescriptor,
    this.creditTypeDescriptor,
    this.creditConversion,
    required this.credits,
  });

  /// The intended major subject area of the graduation requirement.
  String academicSubjectDescriptor;

  /// The type of credits or units of value awarded for the completion of a course.
  String? creditTypeDescriptor;

  /// Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? creditConversion;

  /// The value of credits or units of value awarded for the completion of a course.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 999999.999
  double credits;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiGraduationPlanCreditsBySubject &&
    other.academicSubjectDescriptor == academicSubjectDescriptor &&
    other.creditTypeDescriptor == creditTypeDescriptor &&
    other.creditConversion == creditConversion &&
    other.credits == credits;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (academicSubjectDescriptor.hashCode) +
    (creditTypeDescriptor == null ? 0 : creditTypeDescriptor!.hashCode) +
    (creditConversion == null ? 0 : creditConversion!.hashCode) +
    (credits.hashCode);

  @override
  String toString() => 'EdFiGraduationPlanCreditsBySubject[academicSubjectDescriptor=$academicSubjectDescriptor, creditTypeDescriptor=$creditTypeDescriptor, creditConversion=$creditConversion, credits=$credits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'academicSubjectDescriptor'] = this.academicSubjectDescriptor;
    if (this.creditTypeDescriptor != null) {
      json[r'creditTypeDescriptor'] = this.creditTypeDescriptor;
    } else {
      json[r'creditTypeDescriptor'] = null;
    }
    if (this.creditConversion != null) {
      json[r'creditConversion'] = this.creditConversion;
    } else {
      json[r'creditConversion'] = null;
    }
      json[r'credits'] = this.credits;
    return json;
  }

  /// Returns a new [EdFiGraduationPlanCreditsBySubject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiGraduationPlanCreditsBySubject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiGraduationPlanCreditsBySubject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiGraduationPlanCreditsBySubject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiGraduationPlanCreditsBySubject(
        academicSubjectDescriptor: mapValueOfType<String>(json, r'academicSubjectDescriptor')!,
        creditTypeDescriptor: mapValueOfType<String>(json, r'creditTypeDescriptor'),
        creditConversion: mapValueOfType<double>(json, r'creditConversion'),
        credits: mapValueOfType<double>(json, r'credits')!,
      );
    }
    return null;
  }

  static List<EdFiGraduationPlanCreditsBySubject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiGraduationPlanCreditsBySubject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiGraduationPlanCreditsBySubject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiGraduationPlanCreditsBySubject> mapFromJson(dynamic json) {
    final map = <String, EdFiGraduationPlanCreditsBySubject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiGraduationPlanCreditsBySubject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiGraduationPlanCreditsBySubject-objects as value to a dart map
  static Map<String, List<EdFiGraduationPlanCreditsBySubject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiGraduationPlanCreditsBySubject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiGraduationPlanCreditsBySubject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'academicSubjectDescriptor',
    'credits',
  };
}

