//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAssessmentRegistrationAssessmentCustomization {
  /// Returns a new [EdFiStudentAssessmentRegistrationAssessmentCustomization] instance.
  EdFiStudentAssessmentRegistrationAssessmentCustomization({
    required this.customizationKey,
    required this.customizationValue,
  });

  /// An agreed upon identifier for the custom information.
  String customizationKey;

  /// Custom value for the indicated CustomizationKey.
  String customizationValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAssessmentRegistrationAssessmentCustomization &&
    other.customizationKey == customizationKey &&
    other.customizationValue == customizationValue;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (customizationKey.hashCode) +
    (customizationValue.hashCode);

  @override
  String toString() => 'EdFiStudentAssessmentRegistrationAssessmentCustomization[customizationKey=$customizationKey, customizationValue=$customizationValue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'customizationKey'] = this.customizationKey;
      json[r'customizationValue'] = this.customizationValue;
    return json;
  }

  /// Returns a new [EdFiStudentAssessmentRegistrationAssessmentCustomization] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAssessmentRegistrationAssessmentCustomization? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAssessmentRegistrationAssessmentCustomization[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAssessmentRegistrationAssessmentCustomization[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAssessmentRegistrationAssessmentCustomization(
        customizationKey: mapValueOfType<String>(json, r'customizationKey')!,
        customizationValue: mapValueOfType<String>(json, r'customizationValue')!,
      );
    }
    return null;
  }

  static List<EdFiStudentAssessmentRegistrationAssessmentCustomization> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAssessmentRegistrationAssessmentCustomization>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAssessmentRegistrationAssessmentCustomization.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAssessmentRegistrationAssessmentCustomization> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAssessmentRegistrationAssessmentCustomization>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAssessmentRegistrationAssessmentCustomization.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAssessmentRegistrationAssessmentCustomization-objects as value to a dart map
  static Map<String, List<EdFiStudentAssessmentRegistrationAssessmentCustomization>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAssessmentRegistrationAssessmentCustomization>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAssessmentRegistrationAssessmentCustomization.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'customizationKey',
    'customizationValue',
  };
}

