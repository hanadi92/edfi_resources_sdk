//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCourseTranscriptCreditCategory {
  /// Returns a new [EdFiCourseTranscriptCreditCategory] instance.
  EdFiCourseTranscriptCreditCategory({
    required this.creditCategoryDescriptor,
  });

  /// A categorization for the course transcript credits awarded in the course transcript.
  String creditCategoryDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiCourseTranscriptCreditCategory &&
    other.creditCategoryDescriptor == creditCategoryDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (creditCategoryDescriptor.hashCode);

  @override
  String toString() => 'EdFiCourseTranscriptCreditCategory[creditCategoryDescriptor=$creditCategoryDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'creditCategoryDescriptor'] = this.creditCategoryDescriptor;
    return json;
  }

  /// Returns a new [EdFiCourseTranscriptCreditCategory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCourseTranscriptCreditCategory? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCourseTranscriptCreditCategory[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCourseTranscriptCreditCategory[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCourseTranscriptCreditCategory(
        creditCategoryDescriptor: mapValueOfType<String>(json, r'creditCategoryDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiCourseTranscriptCreditCategory> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCourseTranscriptCreditCategory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCourseTranscriptCreditCategory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCourseTranscriptCreditCategory> mapFromJson(dynamic json) {
    final map = <String, EdFiCourseTranscriptCreditCategory>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCourseTranscriptCreditCategory.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCourseTranscriptCreditCategory-objects as value to a dart map
  static Map<String, List<EdFiCourseTranscriptCreditCategory>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCourseTranscriptCreditCategory>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCourseTranscriptCreditCategory.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'creditCategoryDescriptor',
  };
}

