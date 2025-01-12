//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAssessmentEducationOrganizationAssociation {
  /// Returns a new [EdFiStudentAssessmentEducationOrganizationAssociation] instance.
  EdFiStudentAssessmentEducationOrganizationAssociation({
    this.id,
    required this.educationOrganizationAssociationTypeDescriptor,
    required this.educationOrganizationReference,
    this.schoolYearTypeReference,
    required this.studentAssessmentReference,
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

  /// The type of association being represented.
  String educationOrganizationAssociationTypeDescriptor;

  EdFiEducationOrganizationReference educationOrganizationReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiSchoolYearTypeReference? schoolYearTypeReference;

  EdFiStudentAssessmentReference studentAssessmentReference;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAssessmentEducationOrganizationAssociation &&
    other.id == id &&
    other.educationOrganizationAssociationTypeDescriptor == educationOrganizationAssociationTypeDescriptor &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.schoolYearTypeReference == schoolYearTypeReference &&
    other.studentAssessmentReference == studentAssessmentReference &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (educationOrganizationAssociationTypeDescriptor.hashCode) +
    (educationOrganizationReference.hashCode) +
    (schoolYearTypeReference == null ? 0 : schoolYearTypeReference!.hashCode) +
    (studentAssessmentReference.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentAssessmentEducationOrganizationAssociation[id=$id, educationOrganizationAssociationTypeDescriptor=$educationOrganizationAssociationTypeDescriptor, educationOrganizationReference=$educationOrganizationReference, schoolYearTypeReference=$schoolYearTypeReference, studentAssessmentReference=$studentAssessmentReference, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'educationOrganizationAssociationTypeDescriptor'] = this.educationOrganizationAssociationTypeDescriptor;
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
    if (this.schoolYearTypeReference != null) {
      json[r'schoolYearTypeReference'] = this.schoolYearTypeReference;
    } else {
      json[r'schoolYearTypeReference'] = null;
    }
      json[r'studentAssessmentReference'] = this.studentAssessmentReference;
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

  /// Returns a new [EdFiStudentAssessmentEducationOrganizationAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAssessmentEducationOrganizationAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAssessmentEducationOrganizationAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAssessmentEducationOrganizationAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAssessmentEducationOrganizationAssociation(
        id: mapValueOfType<String>(json, r'id'),
        educationOrganizationAssociationTypeDescriptor: mapValueOfType<String>(json, r'educationOrganizationAssociationTypeDescriptor')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        schoolYearTypeReference: EdFiSchoolYearTypeReference.fromJson(json[r'schoolYearTypeReference']),
        studentAssessmentReference: EdFiStudentAssessmentReference.fromJson(json[r'studentAssessmentReference'])!,
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentAssessmentEducationOrganizationAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAssessmentEducationOrganizationAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAssessmentEducationOrganizationAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAssessmentEducationOrganizationAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAssessmentEducationOrganizationAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAssessmentEducationOrganizationAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAssessmentEducationOrganizationAssociation-objects as value to a dart map
  static Map<String, List<EdFiStudentAssessmentEducationOrganizationAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAssessmentEducationOrganizationAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAssessmentEducationOrganizationAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'educationOrganizationAssociationTypeDescriptor',
    'educationOrganizationReference',
    'studentAssessmentReference',
  };
}

