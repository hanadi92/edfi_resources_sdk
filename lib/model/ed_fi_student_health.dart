//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentHealth {
  /// Returns a new [EdFiStudentHealth] instance.
  EdFiStudentHealth({
    this.id,
    required this.educationOrganizationReference,
    required this.studentReference,
    this.additionalImmunizations = const [],
    required this.asOfDate,
    this.nonMedicalImmunizationExemptionDate,
    this.nonMedicalImmunizationExemptionDescriptor,
    this.requiredImmunizations = const [],
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

  EdFiEducationOrganizationReference educationOrganizationReference;

  EdFiStudentReference studentReference;

  /// An unordered collection of studentHealthAdditionalImmunizations. A record of additional immunizations satisfactorily received and reported.
  List<EdFiStudentHealthAdditionalImmunization> additionalImmunizations;

  /// Date of last update of the student's health record.
  DateTime asOfDate;

  /// The year, month and day of the nonmedical exemption from vaccination claimed by the student's parent or guardian.
  DateTime? nonMedicalImmunizationExemptionDate;

  /// The type of nonmedical exemption from vaccination claimed by the student's parent or guardian.
  String? nonMedicalImmunizationExemptionDescriptor;

  /// An unordered collection of studentHealthRequiredImmunizations. A record of the immunizations satisfactorily  received for those recommended to protect the student against vaccine-preventable diseases.
  List<EdFiStudentHealthRequiredImmunization> requiredImmunizations;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentHealth &&
    other.id == id &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.studentReference == studentReference &&
    _deepEquality.equals(other.additionalImmunizations, additionalImmunizations) &&
    other.asOfDate == asOfDate &&
    other.nonMedicalImmunizationExemptionDate == nonMedicalImmunizationExemptionDate &&
    other.nonMedicalImmunizationExemptionDescriptor == nonMedicalImmunizationExemptionDescriptor &&
    _deepEquality.equals(other.requiredImmunizations, requiredImmunizations) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (educationOrganizationReference.hashCode) +
    (studentReference.hashCode) +
    (additionalImmunizations.hashCode) +
    (asOfDate.hashCode) +
    (nonMedicalImmunizationExemptionDate == null ? 0 : nonMedicalImmunizationExemptionDate!.hashCode) +
    (nonMedicalImmunizationExemptionDescriptor == null ? 0 : nonMedicalImmunizationExemptionDescriptor!.hashCode) +
    (requiredImmunizations.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentHealth[id=$id, educationOrganizationReference=$educationOrganizationReference, studentReference=$studentReference, additionalImmunizations=$additionalImmunizations, asOfDate=$asOfDate, nonMedicalImmunizationExemptionDate=$nonMedicalImmunizationExemptionDate, nonMedicalImmunizationExemptionDescriptor=$nonMedicalImmunizationExemptionDescriptor, requiredImmunizations=$requiredImmunizations, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'studentReference'] = this.studentReference;
      json[r'additionalImmunizations'] = this.additionalImmunizations;
      json[r'asOfDate'] = _dateFormatter.format(this.asOfDate.toUtc());
    if (this.nonMedicalImmunizationExemptionDate != null) {
      json[r'nonMedicalImmunizationExemptionDate'] = _dateFormatter.format(this.nonMedicalImmunizationExemptionDate!.toUtc());
    } else {
      json[r'nonMedicalImmunizationExemptionDate'] = null;
    }
    if (this.nonMedicalImmunizationExemptionDescriptor != null) {
      json[r'nonMedicalImmunizationExemptionDescriptor'] = this.nonMedicalImmunizationExemptionDescriptor;
    } else {
      json[r'nonMedicalImmunizationExemptionDescriptor'] = null;
    }
      json[r'requiredImmunizations'] = this.requiredImmunizations;
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

  /// Returns a new [EdFiStudentHealth] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentHealth? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentHealth[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentHealth[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentHealth(
        id: mapValueOfType<String>(json, r'id'),
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        additionalImmunizations: EdFiStudentHealthAdditionalImmunization.listFromJson(json[r'additionalImmunizations']),
        asOfDate: mapDateTime(json, r'asOfDate', r'')!,
        nonMedicalImmunizationExemptionDate: mapDateTime(json, r'nonMedicalImmunizationExemptionDate', r''),
        nonMedicalImmunizationExemptionDescriptor: mapValueOfType<String>(json, r'nonMedicalImmunizationExemptionDescriptor'),
        requiredImmunizations: EdFiStudentHealthRequiredImmunization.listFromJson(json[r'requiredImmunizations']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentHealth> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentHealth>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentHealth.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentHealth> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentHealth>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentHealth.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentHealth-objects as value to a dart map
  static Map<String, List<EdFiStudentHealth>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentHealth>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentHealth.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'educationOrganizationReference',
    'studentReference',
    'asOfDate',
  };
}

