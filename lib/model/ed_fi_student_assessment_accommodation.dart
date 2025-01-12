//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAssessmentAccommodation {
  /// Returns a new [EdFiStudentAssessmentAccommodation] instance.
  EdFiStudentAssessmentAccommodation({
    required this.accommodationDescriptor,
  });

  /// The specific type of special variation used in how an examination is presented, how it is administered, or how the test taker is allowed to respond. This generally refers to changes that do not substantially alter what the examination measures. The proper use of accommodations does not substantially change academic level or performance criteria.
  String accommodationDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAssessmentAccommodation &&
    other.accommodationDescriptor == accommodationDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accommodationDescriptor.hashCode);

  @override
  String toString() => 'EdFiStudentAssessmentAccommodation[accommodationDescriptor=$accommodationDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accommodationDescriptor'] = this.accommodationDescriptor;
    return json;
  }

  /// Returns a new [EdFiStudentAssessmentAccommodation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAssessmentAccommodation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAssessmentAccommodation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAssessmentAccommodation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAssessmentAccommodation(
        accommodationDescriptor: mapValueOfType<String>(json, r'accommodationDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiStudentAssessmentAccommodation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAssessmentAccommodation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAssessmentAccommodation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAssessmentAccommodation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAssessmentAccommodation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAssessmentAccommodation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAssessmentAccommodation-objects as value to a dart map
  static Map<String, List<EdFiStudentAssessmentAccommodation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAssessmentAccommodation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAssessmentAccommodation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'accommodationDescriptor',
  };
}

