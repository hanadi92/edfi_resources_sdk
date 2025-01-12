//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAssessmentRegistration {
  /// Returns a new [EdFiStudentAssessmentRegistration] instance.
  EdFiStudentAssessmentRegistration({
    this.id,
    required this.assessmentAdministrationReference,
    this.reportingEducationOrganizationReference,
    this.scheduledStudentEducationOrganizationAssessmentAccommodationReference,
    required this.studentEducationOrganizationAssociationReference,
    required this.studentSchoolAssociationReference,
    this.testingEducationOrganizationReference,
    this.assessmentAccommodations = const [],
    this.assessmentCustomizations = const [],
    this.assessmentGradeLevelDescriptor,
    this.platformTypeDescriptor,
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

  EdFiAssessmentAdministrationReference assessmentAdministrationReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiEducationOrganizationReference? reportingEducationOrganizationReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiStudentEducationOrganizationAssessmentAccommodationReference? scheduledStudentEducationOrganizationAssessmentAccommodationReference;

  EdFiStudentEducationOrganizationAssociationReference studentEducationOrganizationAssociationReference;

  EdFiStudentSchoolAssociationReference studentSchoolAssociationReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiEducationOrganizationReference? testingEducationOrganizationReference;

  /// An unordered collection of studentAssessmentRegistrationAssessmentAccommodations. The special variation(s) to be used in how assessments (in general) are presented, how it is administered, or how the test taker is allowed to respond. This generally refers to changes that do not substantially alter what the examination measures. The proper use of accommodations does not substantially change academic level or performance criteria.
  List<EdFiStudentAssessmentRegistrationAssessmentAccommodation> assessmentAccommodations;

  /// An unordered collection of studentAssessmentRegistrationAssessmentCustomizations. Key/value pairs which may be used to facilitate customization of an assessment or to support vendor reporting/analysis.
  List<EdFiStudentAssessmentRegistrationAssessmentCustomization> assessmentCustomizations;

  /// The grade level or primary instructional level at which the student is to be assessed.
  String? assessmentGradeLevelDescriptor;

  /// The environment or format in which the assessment is expected to be administered.
  String? platformTypeDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAssessmentRegistration &&
    other.id == id &&
    other.assessmentAdministrationReference == assessmentAdministrationReference &&
    other.reportingEducationOrganizationReference == reportingEducationOrganizationReference &&
    other.scheduledStudentEducationOrganizationAssessmentAccommodationReference == scheduledStudentEducationOrganizationAssessmentAccommodationReference &&
    other.studentEducationOrganizationAssociationReference == studentEducationOrganizationAssociationReference &&
    other.studentSchoolAssociationReference == studentSchoolAssociationReference &&
    other.testingEducationOrganizationReference == testingEducationOrganizationReference &&
    _deepEquality.equals(other.assessmentAccommodations, assessmentAccommodations) &&
    _deepEquality.equals(other.assessmentCustomizations, assessmentCustomizations) &&
    other.assessmentGradeLevelDescriptor == assessmentGradeLevelDescriptor &&
    other.platformTypeDescriptor == platformTypeDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (assessmentAdministrationReference.hashCode) +
    (reportingEducationOrganizationReference == null ? 0 : reportingEducationOrganizationReference!.hashCode) +
    (scheduledStudentEducationOrganizationAssessmentAccommodationReference == null ? 0 : scheduledStudentEducationOrganizationAssessmentAccommodationReference!.hashCode) +
    (studentEducationOrganizationAssociationReference.hashCode) +
    (studentSchoolAssociationReference.hashCode) +
    (testingEducationOrganizationReference == null ? 0 : testingEducationOrganizationReference!.hashCode) +
    (assessmentAccommodations.hashCode) +
    (assessmentCustomizations.hashCode) +
    (assessmentGradeLevelDescriptor == null ? 0 : assessmentGradeLevelDescriptor!.hashCode) +
    (platformTypeDescriptor == null ? 0 : platformTypeDescriptor!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentAssessmentRegistration[id=$id, assessmentAdministrationReference=$assessmentAdministrationReference, reportingEducationOrganizationReference=$reportingEducationOrganizationReference, scheduledStudentEducationOrganizationAssessmentAccommodationReference=$scheduledStudentEducationOrganizationAssessmentAccommodationReference, studentEducationOrganizationAssociationReference=$studentEducationOrganizationAssociationReference, studentSchoolAssociationReference=$studentSchoolAssociationReference, testingEducationOrganizationReference=$testingEducationOrganizationReference, assessmentAccommodations=$assessmentAccommodations, assessmentCustomizations=$assessmentCustomizations, assessmentGradeLevelDescriptor=$assessmentGradeLevelDescriptor, platformTypeDescriptor=$platformTypeDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'assessmentAdministrationReference'] = this.assessmentAdministrationReference;
    if (this.reportingEducationOrganizationReference != null) {
      json[r'reportingEducationOrganizationReference'] = this.reportingEducationOrganizationReference;
    } else {
      json[r'reportingEducationOrganizationReference'] = null;
    }
    if (this.scheduledStudentEducationOrganizationAssessmentAccommodationReference != null) {
      json[r'scheduledStudentEducationOrganizationAssessmentAccommodationReference'] = this.scheduledStudentEducationOrganizationAssessmentAccommodationReference;
    } else {
      json[r'scheduledStudentEducationOrganizationAssessmentAccommodationReference'] = null;
    }
      json[r'studentEducationOrganizationAssociationReference'] = this.studentEducationOrganizationAssociationReference;
      json[r'studentSchoolAssociationReference'] = this.studentSchoolAssociationReference;
    if (this.testingEducationOrganizationReference != null) {
      json[r'testingEducationOrganizationReference'] = this.testingEducationOrganizationReference;
    } else {
      json[r'testingEducationOrganizationReference'] = null;
    }
      json[r'assessmentAccommodations'] = this.assessmentAccommodations;
      json[r'assessmentCustomizations'] = this.assessmentCustomizations;
    if (this.assessmentGradeLevelDescriptor != null) {
      json[r'assessmentGradeLevelDescriptor'] = this.assessmentGradeLevelDescriptor;
    } else {
      json[r'assessmentGradeLevelDescriptor'] = null;
    }
    if (this.platformTypeDescriptor != null) {
      json[r'platformTypeDescriptor'] = this.platformTypeDescriptor;
    } else {
      json[r'platformTypeDescriptor'] = null;
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

  /// Returns a new [EdFiStudentAssessmentRegistration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAssessmentRegistration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAssessmentRegistration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAssessmentRegistration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAssessmentRegistration(
        id: mapValueOfType<String>(json, r'id'),
        assessmentAdministrationReference: EdFiAssessmentAdministrationReference.fromJson(json[r'assessmentAdministrationReference'])!,
        reportingEducationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'reportingEducationOrganizationReference']),
        scheduledStudentEducationOrganizationAssessmentAccommodationReference: EdFiStudentEducationOrganizationAssessmentAccommodationReference.fromJson(json[r'scheduledStudentEducationOrganizationAssessmentAccommodationReference']),
        studentEducationOrganizationAssociationReference: EdFiStudentEducationOrganizationAssociationReference.fromJson(json[r'studentEducationOrganizationAssociationReference'])!,
        studentSchoolAssociationReference: EdFiStudentSchoolAssociationReference.fromJson(json[r'studentSchoolAssociationReference'])!,
        testingEducationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'testingEducationOrganizationReference']),
        assessmentAccommodations: EdFiStudentAssessmentRegistrationAssessmentAccommodation.listFromJson(json[r'assessmentAccommodations']),
        assessmentCustomizations: EdFiStudentAssessmentRegistrationAssessmentCustomization.listFromJson(json[r'assessmentCustomizations']),
        assessmentGradeLevelDescriptor: mapValueOfType<String>(json, r'assessmentGradeLevelDescriptor'),
        platformTypeDescriptor: mapValueOfType<String>(json, r'platformTypeDescriptor'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentAssessmentRegistration> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAssessmentRegistration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAssessmentRegistration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAssessmentRegistration> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAssessmentRegistration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAssessmentRegistration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAssessmentRegistration-objects as value to a dart map
  static Map<String, List<EdFiStudentAssessmentRegistration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAssessmentRegistration>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAssessmentRegistration.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assessmentAdministrationReference',
    'studentEducationOrganizationAssociationReference',
    'studentSchoolAssociationReference',
  };
}

