//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCourseTranscriptEarnedAdditionalCredits {
  /// Returns a new [EdFiCourseTranscriptEarnedAdditionalCredits] instance.
  EdFiCourseTranscriptEarnedAdditionalCredits({
    required this.additionalCreditTypeDescriptor,
    required this.credits,
  });

  /// The type of credits or units of value awarded for the completion of a course.
  String additionalCreditTypeDescriptor;

  /// The value of credits or units of value awarded for the completion of a course
  ///
  /// Minimum value: 0.0
  /// Maximum value: 999999.999
  double credits;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiCourseTranscriptEarnedAdditionalCredits &&
    other.additionalCreditTypeDescriptor == additionalCreditTypeDescriptor &&
    other.credits == credits;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (additionalCreditTypeDescriptor.hashCode) +
    (credits.hashCode);

  @override
  String toString() => 'EdFiCourseTranscriptEarnedAdditionalCredits[additionalCreditTypeDescriptor=$additionalCreditTypeDescriptor, credits=$credits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'additionalCreditTypeDescriptor'] = this.additionalCreditTypeDescriptor;
      json[r'credits'] = this.credits;
    return json;
  }

  /// Returns a new [EdFiCourseTranscriptEarnedAdditionalCredits] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCourseTranscriptEarnedAdditionalCredits? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCourseTranscriptEarnedAdditionalCredits[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCourseTranscriptEarnedAdditionalCredits[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCourseTranscriptEarnedAdditionalCredits(
        additionalCreditTypeDescriptor: mapValueOfType<String>(json, r'additionalCreditTypeDescriptor')!,
        credits: mapValueOfType<double>(json, r'credits')!,
      );
    }
    return null;
  }

  static List<EdFiCourseTranscriptEarnedAdditionalCredits> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCourseTranscriptEarnedAdditionalCredits>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCourseTranscriptEarnedAdditionalCredits.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCourseTranscriptEarnedAdditionalCredits> mapFromJson(dynamic json) {
    final map = <String, EdFiCourseTranscriptEarnedAdditionalCredits>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCourseTranscriptEarnedAdditionalCredits.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCourseTranscriptEarnedAdditionalCredits-objects as value to a dart map
  static Map<String, List<EdFiCourseTranscriptEarnedAdditionalCredits>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCourseTranscriptEarnedAdditionalCredits>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCourseTranscriptEarnedAdditionalCredits.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'additionalCreditTypeDescriptor',
    'credits',
  };
}

