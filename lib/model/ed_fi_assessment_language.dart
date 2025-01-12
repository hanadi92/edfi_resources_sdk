//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiAssessmentLanguage {
  /// Returns a new [EdFiAssessmentLanguage] instance.
  EdFiAssessmentLanguage({
    required this.languageDescriptor,
  });

  /// An indication of the languages in which the assessment is designed.
  String languageDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiAssessmentLanguage &&
    other.languageDescriptor == languageDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (languageDescriptor.hashCode);

  @override
  String toString() => 'EdFiAssessmentLanguage[languageDescriptor=$languageDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'languageDescriptor'] = this.languageDescriptor;
    return json;
  }

  /// Returns a new [EdFiAssessmentLanguage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiAssessmentLanguage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiAssessmentLanguage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiAssessmentLanguage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiAssessmentLanguage(
        languageDescriptor: mapValueOfType<String>(json, r'languageDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiAssessmentLanguage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiAssessmentLanguage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiAssessmentLanguage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiAssessmentLanguage> mapFromJson(dynamic json) {
    final map = <String, EdFiAssessmentLanguage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiAssessmentLanguage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiAssessmentLanguage-objects as value to a dart map
  static Map<String, List<EdFiAssessmentLanguage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiAssessmentLanguage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiAssessmentLanguage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'languageDescriptor',
  };
}

