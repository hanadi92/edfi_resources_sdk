//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCohort {
  /// Returns a new [EdFiCohort] instance.
  EdFiCohort({
    this.id,
    required this.cohortIdentifier,
    required this.educationOrganizationReference,
    this.academicSubjectDescriptor,
    this.cohortDescription,
    this.cohortScopeDescriptor,
    required this.cohortTypeDescriptor,
    this.programs = const [],
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

  /// The name or ID for the cohort.
  String cohortIdentifier;

  EdFiEducationOrganizationReference educationOrganizationReference;

  /// The academic subject associated with an academic intervention.
  String? academicSubjectDescriptor;

  /// The description of the cohort and its purpose.
  String? cohortDescription;

  /// The scope of cohort (e.g., school, district, classroom).
  String? cohortScopeDescriptor;

  /// The type of cohort (e.g., academic intervention, classroom breakout).
  String cohortTypeDescriptor;

  /// An unordered collection of cohortPrograms. The (optional) program associated with this cohort (e.g., special education).
  List<EdFiCohortProgram> programs;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiCohort &&
    other.id == id &&
    other.cohortIdentifier == cohortIdentifier &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.academicSubjectDescriptor == academicSubjectDescriptor &&
    other.cohortDescription == cohortDescription &&
    other.cohortScopeDescriptor == cohortScopeDescriptor &&
    other.cohortTypeDescriptor == cohortTypeDescriptor &&
    _deepEquality.equals(other.programs, programs) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (cohortIdentifier.hashCode) +
    (educationOrganizationReference.hashCode) +
    (academicSubjectDescriptor == null ? 0 : academicSubjectDescriptor!.hashCode) +
    (cohortDescription == null ? 0 : cohortDescription!.hashCode) +
    (cohortScopeDescriptor == null ? 0 : cohortScopeDescriptor!.hashCode) +
    (cohortTypeDescriptor.hashCode) +
    (programs.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiCohort[id=$id, cohortIdentifier=$cohortIdentifier, educationOrganizationReference=$educationOrganizationReference, academicSubjectDescriptor=$academicSubjectDescriptor, cohortDescription=$cohortDescription, cohortScopeDescriptor=$cohortScopeDescriptor, cohortTypeDescriptor=$cohortTypeDescriptor, programs=$programs, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'cohortIdentifier'] = this.cohortIdentifier;
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
    if (this.academicSubjectDescriptor != null) {
      json[r'academicSubjectDescriptor'] = this.academicSubjectDescriptor;
    } else {
      json[r'academicSubjectDescriptor'] = null;
    }
    if (this.cohortDescription != null) {
      json[r'cohortDescription'] = this.cohortDescription;
    } else {
      json[r'cohortDescription'] = null;
    }
    if (this.cohortScopeDescriptor != null) {
      json[r'cohortScopeDescriptor'] = this.cohortScopeDescriptor;
    } else {
      json[r'cohortScopeDescriptor'] = null;
    }
      json[r'cohortTypeDescriptor'] = this.cohortTypeDescriptor;
      json[r'programs'] = this.programs;
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

  /// Returns a new [EdFiCohort] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCohort? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCohort[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCohort[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCohort(
        id: mapValueOfType<String>(json, r'id'),
        cohortIdentifier: mapValueOfType<String>(json, r'cohortIdentifier')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        academicSubjectDescriptor: mapValueOfType<String>(json, r'academicSubjectDescriptor'),
        cohortDescription: mapValueOfType<String>(json, r'cohortDescription'),
        cohortScopeDescriptor: mapValueOfType<String>(json, r'cohortScopeDescriptor'),
        cohortTypeDescriptor: mapValueOfType<String>(json, r'cohortTypeDescriptor')!,
        programs: EdFiCohortProgram.listFromJson(json[r'programs']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiCohort> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCohort>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCohort.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCohort> mapFromJson(dynamic json) {
    final map = <String, EdFiCohort>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCohort.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCohort-objects as value to a dart map
  static Map<String, List<EdFiCohort>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCohort>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCohort.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'cohortIdentifier',
    'educationOrganizationReference',
    'cohortTypeDescriptor',
  };
}

