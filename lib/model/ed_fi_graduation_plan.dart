//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiGraduationPlan {
  /// Returns a new [EdFiGraduationPlan] instance.
  EdFiGraduationPlan({
    this.id,
    required this.graduationPlanTypeDescriptor,
    required this.educationOrganizationReference,
    required this.graduationSchoolYearTypeReference,
    this.creditsByCourses = const [],
    this.creditsByCreditCategories = const [],
    this.creditsBySubjects = const [],
    this.individualPlan,
    this.requiredAssessments = const [],
    this.totalRequiredCreditConversion,
    required this.totalRequiredCredits,
    this.totalRequiredCreditTypeDescriptor,
    this.etag,
    this.lastModifiedDate,
  });

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The type of academic plan the student is following for graduation.
  String graduationPlanTypeDescriptor;

  EdFiEducationOrganizationReference educationOrganizationReference;

  EdFiSchoolYearTypeReference graduationSchoolYearTypeReference;

  /// An unordered collection of graduationPlanCreditsByCourses. The total credits required for graduation by taking a specific course, or by taking one or more from a set of courses.
  List<EdFiGraduationPlanCreditsByCourse> creditsByCourses;

  /// An unordered collection of graduationPlanCreditsByCreditCategories. The total credits required for graduation based on the credit category.
  List<EdFiGraduationPlanCreditsByCreditCategory> creditsByCreditCategories;

  /// An unordered collection of graduationPlanCreditsBySubjects. The total credits required in subject to graduate. Only those courses identified as a high school course requirement are eligible to meet subject credit requirements.
  List<EdFiGraduationPlanCreditsBySubject> creditsBySubjects;

  /// An indicator of whether the graduation plan is tailored for an individual.
  bool? individualPlan;

  /// An unordered collection of graduationPlanRequiredAssessments. The assessments and associated required score and performance level needed to satisfy graduation requirements.
  List<EdFiGraduationPlanRequiredAssessment> requiredAssessments;

  /// Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? totalRequiredCreditConversion;

  /// The value of credits or units of value awarded for the completion of a course.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 999999.999
  double totalRequiredCredits;

  /// The type of credits or units of value awarded for the completion of a course.
  String? totalRequiredCreditTypeDescriptor;

  /// A unique system-generated value that identifies the version of the resource.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? etag;

  /// The date and time the resource was last modified.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastModifiedDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiGraduationPlan &&
    other.id == id &&
    other.graduationPlanTypeDescriptor == graduationPlanTypeDescriptor &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.graduationSchoolYearTypeReference == graduationSchoolYearTypeReference &&
    _deepEquality.equals(other.creditsByCourses, creditsByCourses) &&
    _deepEquality.equals(other.creditsByCreditCategories, creditsByCreditCategories) &&
    _deepEquality.equals(other.creditsBySubjects, creditsBySubjects) &&
    other.individualPlan == individualPlan &&
    _deepEquality.equals(other.requiredAssessments, requiredAssessments) &&
    other.totalRequiredCreditConversion == totalRequiredCreditConversion &&
    other.totalRequiredCredits == totalRequiredCredits &&
    other.totalRequiredCreditTypeDescriptor == totalRequiredCreditTypeDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (graduationPlanTypeDescriptor.hashCode) +
    (educationOrganizationReference.hashCode) +
    (graduationSchoolYearTypeReference.hashCode) +
    (creditsByCourses.hashCode) +
    (creditsByCreditCategories.hashCode) +
    (creditsBySubjects.hashCode) +
    (individualPlan == null ? 0 : individualPlan!.hashCode) +
    (requiredAssessments.hashCode) +
    (totalRequiredCreditConversion == null ? 0 : totalRequiredCreditConversion!.hashCode) +
    (totalRequiredCredits.hashCode) +
    (totalRequiredCreditTypeDescriptor == null ? 0 : totalRequiredCreditTypeDescriptor!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiGraduationPlan[id=$id, graduationPlanTypeDescriptor=$graduationPlanTypeDescriptor, educationOrganizationReference=$educationOrganizationReference, graduationSchoolYearTypeReference=$graduationSchoolYearTypeReference, creditsByCourses=$creditsByCourses, creditsByCreditCategories=$creditsByCreditCategories, creditsBySubjects=$creditsBySubjects, individualPlan=$individualPlan, requiredAssessments=$requiredAssessments, totalRequiredCreditConversion=$totalRequiredCreditConversion, totalRequiredCredits=$totalRequiredCredits, totalRequiredCreditTypeDescriptor=$totalRequiredCreditTypeDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'graduationPlanTypeDescriptor'] = this.graduationPlanTypeDescriptor;
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'graduationSchoolYearTypeReference'] = this.graduationSchoolYearTypeReference;
      json[r'creditsByCourses'] = this.creditsByCourses;
      json[r'creditsByCreditCategories'] = this.creditsByCreditCategories;
      json[r'creditsBySubjects'] = this.creditsBySubjects;
    if (this.individualPlan != null) {
      json[r'individualPlan'] = this.individualPlan;
    } else {
      json[r'individualPlan'] = null;
    }
      json[r'requiredAssessments'] = this.requiredAssessments;
    if (this.totalRequiredCreditConversion != null) {
      json[r'totalRequiredCreditConversion'] = this.totalRequiredCreditConversion;
    } else {
      json[r'totalRequiredCreditConversion'] = null;
    }
      json[r'totalRequiredCredits'] = this.totalRequiredCredits;
    if (this.totalRequiredCreditTypeDescriptor != null) {
      json[r'totalRequiredCreditTypeDescriptor'] = this.totalRequiredCreditTypeDescriptor;
    } else {
      json[r'totalRequiredCreditTypeDescriptor'] = null;
    }
    if (this.etag != null) {
      json[r'_etag'] = this.etag;
    } else {
      json[r'_etag'] = null;
    }
    if (this.lastModifiedDate != null) {
      json[r'_lastModifiedDate'] = this.lastModifiedDate!.toUtc().toIso8601String();
    } else {
      json[r'_lastModifiedDate'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiGraduationPlan] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiGraduationPlan? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiGraduationPlan[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiGraduationPlan[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiGraduationPlan(
        id: mapValueOfType<String>(json, r'id'),
        graduationPlanTypeDescriptor: mapValueOfType<String>(json, r'graduationPlanTypeDescriptor')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        graduationSchoolYearTypeReference: EdFiSchoolYearTypeReference.fromJson(json[r'graduationSchoolYearTypeReference'])!,
        creditsByCourses: EdFiGraduationPlanCreditsByCourse.listFromJson(json[r'creditsByCourses']),
        creditsByCreditCategories: EdFiGraduationPlanCreditsByCreditCategory.listFromJson(json[r'creditsByCreditCategories']),
        creditsBySubjects: EdFiGraduationPlanCreditsBySubject.listFromJson(json[r'creditsBySubjects']),
        individualPlan: mapValueOfType<bool>(json, r'individualPlan'),
        requiredAssessments: EdFiGraduationPlanRequiredAssessment.listFromJson(json[r'requiredAssessments']),
        totalRequiredCreditConversion: mapValueOfType<double>(json, r'totalRequiredCreditConversion'),
        totalRequiredCredits: mapValueOfType<double>(json, r'totalRequiredCredits')!,
        totalRequiredCreditTypeDescriptor: mapValueOfType<String>(json, r'totalRequiredCreditTypeDescriptor'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiGraduationPlan> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiGraduationPlan>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiGraduationPlan.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiGraduationPlan> mapFromJson(dynamic json) {
    final map = <String, EdFiGraduationPlan>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiGraduationPlan.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiGraduationPlan-objects as value to a dart map
  static Map<String, List<EdFiGraduationPlan>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiGraduationPlan>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiGraduationPlan.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'graduationPlanTypeDescriptor',
    'educationOrganizationReference',
    'graduationSchoolYearTypeReference',
    'totalRequiredCredits',
  };
}

