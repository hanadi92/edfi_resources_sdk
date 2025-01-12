//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAssessmentRegistrationAssessmentAccommodation {
  /// Returns a new [EdFiStudentAssessmentRegistrationAssessmentAccommodation] instance.
  EdFiStudentAssessmentRegistrationAssessmentAccommodation({
    required this.accommodationDescriptor,
  });

  /// The special variation(s) to be used in how assessments (in general) are presented, how it is administered, or how the test taker is allowed to respond. This generally refers to changes that do not substantially alter what the examination measures. The proper use of accommodations does not substantially change academic level or performance criteria.
  String accommodationDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAssessmentRegistrationAssessmentAccommodation &&
    other.accommodationDescriptor == accommodationDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accommodationDescriptor.hashCode);

  @override
  String toString() => 'EdFiStudentAssessmentRegistrationAssessmentAccommodation[accommodationDescriptor=$accommodationDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accommodationDescriptor'] = this.accommodationDescriptor;
    return json;
  }

  /// Returns a new [EdFiStudentAssessmentRegistrationAssessmentAccommodation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAssessmentRegistrationAssessmentAccommodation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAssessmentRegistrationAssessmentAccommodation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAssessmentRegistrationAssessmentAccommodation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAssessmentRegistrationAssessmentAccommodation(
        accommodationDescriptor: mapValueOfType<String>(json, r'accommodationDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiStudentAssessmentRegistrationAssessmentAccommodation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAssessmentRegistrationAssessmentAccommodation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAssessmentRegistrationAssessmentAccommodation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAssessmentRegistrationAssessmentAccommodation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAssessmentRegistrationAssessmentAccommodation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAssessmentRegistrationAssessmentAccommodation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAssessmentRegistrationAssessmentAccommodation-objects as value to a dart map
  static Map<String, List<EdFiStudentAssessmentRegistrationAssessmentAccommodation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAssessmentRegistrationAssessmentAccommodation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAssessmentRegistrationAssessmentAccommodation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'accommodationDescriptor',
  };
}

