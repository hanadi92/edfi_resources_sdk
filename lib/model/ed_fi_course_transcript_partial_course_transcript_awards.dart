//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCourseTranscriptPartialCourseTranscriptAwards {
  /// Returns a new [EdFiCourseTranscriptPartialCourseTranscriptAwards] instance.
  EdFiCourseTranscriptPartialCourseTranscriptAwards({
    required this.awardDate,
    this.methodCreditEarnedDescriptor,
    required this.earnedCredits,
    this.letterGradeEarned,
    this.numericGradeEarned,
  });

  /// The date the partial credits and/or grades were awarded or earned.
  DateTime awardDate;

  /// The method the credits were earned.
  String? methodCreditEarnedDescriptor;

  /// The number of credits a student earned for completing a given course.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 999999.999
  double earnedCredits;

  /// The indicator of student performance as submitted by the instructor.
  String? letterGradeEarned;

  /// The indicator of student performance as submitted by the instructor.
  String? numericGradeEarned;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiCourseTranscriptPartialCourseTranscriptAwards &&
    other.awardDate == awardDate &&
    other.methodCreditEarnedDescriptor == methodCreditEarnedDescriptor &&
    other.earnedCredits == earnedCredits &&
    other.letterGradeEarned == letterGradeEarned &&
    other.numericGradeEarned == numericGradeEarned;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (awardDate.hashCode) +
    (methodCreditEarnedDescriptor == null ? 0 : methodCreditEarnedDescriptor!.hashCode) +
    (earnedCredits.hashCode) +
    (letterGradeEarned == null ? 0 : letterGradeEarned!.hashCode) +
    (numericGradeEarned == null ? 0 : numericGradeEarned!.hashCode);

  @override
  String toString() => 'EdFiCourseTranscriptPartialCourseTranscriptAwards[awardDate=$awardDate, methodCreditEarnedDescriptor=$methodCreditEarnedDescriptor, earnedCredits=$earnedCredits, letterGradeEarned=$letterGradeEarned, numericGradeEarned=$numericGradeEarned]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'awardDate'] = _dateFormatter.format(this.awardDate.toUtc());
    if (this.methodCreditEarnedDescriptor != null) {
      json[r'methodCreditEarnedDescriptor'] = this.methodCreditEarnedDescriptor;
    } else {
      json[r'methodCreditEarnedDescriptor'] = null;
    }
      json[r'earnedCredits'] = this.earnedCredits;
    if (this.letterGradeEarned != null) {
      json[r'letterGradeEarned'] = this.letterGradeEarned;
    } else {
      json[r'letterGradeEarned'] = null;
    }
    if (this.numericGradeEarned != null) {
      json[r'numericGradeEarned'] = this.numericGradeEarned;
    } else {
      json[r'numericGradeEarned'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiCourseTranscriptPartialCourseTranscriptAwards] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCourseTranscriptPartialCourseTranscriptAwards? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCourseTranscriptPartialCourseTranscriptAwards[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCourseTranscriptPartialCourseTranscriptAwards[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCourseTranscriptPartialCourseTranscriptAwards(
        awardDate: mapDateTime(json, r'awardDate', r'')!,
        methodCreditEarnedDescriptor: mapValueOfType<String>(json, r'methodCreditEarnedDescriptor'),
        earnedCredits: mapValueOfType<double>(json, r'earnedCredits')!,
        letterGradeEarned: mapValueOfType<String>(json, r'letterGradeEarned'),
        numericGradeEarned: mapValueOfType<String>(json, r'numericGradeEarned'),
      );
    }
    return null;
  }

  static List<EdFiCourseTranscriptPartialCourseTranscriptAwards> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCourseTranscriptPartialCourseTranscriptAwards>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCourseTranscriptPartialCourseTranscriptAwards.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCourseTranscriptPartialCourseTranscriptAwards> mapFromJson(dynamic json) {
    final map = <String, EdFiCourseTranscriptPartialCourseTranscriptAwards>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCourseTranscriptPartialCourseTranscriptAwards.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCourseTranscriptPartialCourseTranscriptAwards-objects as value to a dart map
  static Map<String, List<EdFiCourseTranscriptPartialCourseTranscriptAwards>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCourseTranscriptPartialCourseTranscriptAwards>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCourseTranscriptPartialCourseTranscriptAwards.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'awardDate',
    'earnedCredits',
  };
}

