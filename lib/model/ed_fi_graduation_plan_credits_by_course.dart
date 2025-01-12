//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiGraduationPlanCreditsByCourse {
  /// Returns a new [EdFiGraduationPlanCreditsByCourse] instance.
  EdFiGraduationPlanCreditsByCourse({
    required this.courseSetName,
    this.creditTypeDescriptor,
    this.whenTakenGradeLevelDescriptor,
    this.creditConversion,
    required this.credits,
    this.courses = const [],
  });

  /// Identifying name given to a collection of courses.
  String courseSetName;

  /// The type of credits or units of value awarded for the completion of a course.
  String? creditTypeDescriptor;

  /// The grade level when the student is planned to take the course.
  String? whenTakenGradeLevelDescriptor;

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

  /// An unordered collection of graduationPlanCreditsByCourseCourses. The course reference that identifies the organization of subject matter and related learning experiences provided for the instruction of students.
  List<EdFiGraduationPlanCreditsByCourseCourse> courses;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiGraduationPlanCreditsByCourse &&
    other.courseSetName == courseSetName &&
    other.creditTypeDescriptor == creditTypeDescriptor &&
    other.whenTakenGradeLevelDescriptor == whenTakenGradeLevelDescriptor &&
    other.creditConversion == creditConversion &&
    other.credits == credits &&
    _deepEquality.equals(other.courses, courses);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (courseSetName.hashCode) +
    (creditTypeDescriptor == null ? 0 : creditTypeDescriptor!.hashCode) +
    (whenTakenGradeLevelDescriptor == null ? 0 : whenTakenGradeLevelDescriptor!.hashCode) +
    (creditConversion == null ? 0 : creditConversion!.hashCode) +
    (credits.hashCode) +
    (courses.hashCode);

  @override
  String toString() => 'EdFiGraduationPlanCreditsByCourse[courseSetName=$courseSetName, creditTypeDescriptor=$creditTypeDescriptor, whenTakenGradeLevelDescriptor=$whenTakenGradeLevelDescriptor, creditConversion=$creditConversion, credits=$credits, courses=$courses]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'courseSetName'] = this.courseSetName;
    if (this.creditTypeDescriptor != null) {
      json[r'creditTypeDescriptor'] = this.creditTypeDescriptor;
    } else {
      json[r'creditTypeDescriptor'] = null;
    }
    if (this.whenTakenGradeLevelDescriptor != null) {
      json[r'whenTakenGradeLevelDescriptor'] = this.whenTakenGradeLevelDescriptor;
    } else {
      json[r'whenTakenGradeLevelDescriptor'] = null;
    }
    if (this.creditConversion != null) {
      json[r'creditConversion'] = this.creditConversion;
    } else {
      json[r'creditConversion'] = null;
    }
      json[r'credits'] = this.credits;
      json[r'courses'] = this.courses;
    return json;
  }

  /// Returns a new [EdFiGraduationPlanCreditsByCourse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiGraduationPlanCreditsByCourse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiGraduationPlanCreditsByCourse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiGraduationPlanCreditsByCourse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiGraduationPlanCreditsByCourse(
        courseSetName: mapValueOfType<String>(json, r'courseSetName')!,
        creditTypeDescriptor: mapValueOfType<String>(json, r'creditTypeDescriptor'),
        whenTakenGradeLevelDescriptor: mapValueOfType<String>(json, r'whenTakenGradeLevelDescriptor'),
        creditConversion: mapValueOfType<double>(json, r'creditConversion'),
        credits: mapValueOfType<double>(json, r'credits')!,
        courses: EdFiGraduationPlanCreditsByCourseCourse.listFromJson(json[r'courses']),
      );
    }
    return null;
  }

  static List<EdFiGraduationPlanCreditsByCourse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiGraduationPlanCreditsByCourse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiGraduationPlanCreditsByCourse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiGraduationPlanCreditsByCourse> mapFromJson(dynamic json) {
    final map = <String, EdFiGraduationPlanCreditsByCourse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiGraduationPlanCreditsByCourse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiGraduationPlanCreditsByCourse-objects as value to a dart map
  static Map<String, List<EdFiGraduationPlanCreditsByCourse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiGraduationPlanCreditsByCourse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiGraduationPlanCreditsByCourse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'courseSetName',
    'credits',
    'courses',
  };
}

