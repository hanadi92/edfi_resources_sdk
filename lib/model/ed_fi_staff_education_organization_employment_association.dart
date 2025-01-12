//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaffEducationOrganizationEmploymentAssociation {
  /// Returns a new [EdFiStaffEducationOrganizationEmploymentAssociation] instance.
  EdFiStaffEducationOrganizationEmploymentAssociation({
    this.id,
    required this.employmentStatusDescriptor,
    required this.hireDate,
    this.credentialReference,
    required this.educationOrganizationReference,
    required this.staffReference,
    this.annualWage,
    this.department,
    this.endDate,
    this.fullTimeEquivalency,
    this.hourlyWage,
    this.offerDate,
    this.separationDescriptor,
    this.separationReasonDescriptor,
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

  /// Reflects the type of employment or contract.
  String employmentStatusDescriptor;

  /// The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime hireDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiCredentialReference? credentialReference;

  EdFiEducationOrganizationReference educationOrganizationReference;

  EdFiStaffReference staffReference;

  /// Annual wage associated with the employment position being reported.
  ///
  /// Minimum value: -922337203685477.6
  /// Maximum value: 922337203685477.6
  double? annualWage;

  /// The department or suborganization the employee/contractor is associated with in the education organization.
  String? department;

  /// The month, day, and year on which a contract between an individual and a governing authority ends or is terminated under the provisions of the contract (or the date on which the agreement is made invalid).  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  /// The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 9.9999
  double? fullTimeEquivalency;

  /// Hourly wage associated with the employment position being reported.
  ///
  /// Minimum value: -922337203685477.6
  /// Maximum value: 922337203685477.6
  double? hourlyWage;

  /// Date at which the staff member was made an official offer for this employment.
  DateTime? offerDate;

  /// Type of employment separation.
  String? separationDescriptor;

  /// Reason for terminating the employment.
  String? separationReasonDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaffEducationOrganizationEmploymentAssociation &&
    other.id == id &&
    other.employmentStatusDescriptor == employmentStatusDescriptor &&
    other.hireDate == hireDate &&
    other.credentialReference == credentialReference &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.staffReference == staffReference &&
    other.annualWage == annualWage &&
    other.department == department &&
    other.endDate == endDate &&
    other.fullTimeEquivalency == fullTimeEquivalency &&
    other.hourlyWage == hourlyWage &&
    other.offerDate == offerDate &&
    other.separationDescriptor == separationDescriptor &&
    other.separationReasonDescriptor == separationReasonDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (employmentStatusDescriptor.hashCode) +
    (hireDate.hashCode) +
    (credentialReference == null ? 0 : credentialReference!.hashCode) +
    (educationOrganizationReference.hashCode) +
    (staffReference.hashCode) +
    (annualWage == null ? 0 : annualWage!.hashCode) +
    (department == null ? 0 : department!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (fullTimeEquivalency == null ? 0 : fullTimeEquivalency!.hashCode) +
    (hourlyWage == null ? 0 : hourlyWage!.hashCode) +
    (offerDate == null ? 0 : offerDate!.hashCode) +
    (separationDescriptor == null ? 0 : separationDescriptor!.hashCode) +
    (separationReasonDescriptor == null ? 0 : separationReasonDescriptor!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStaffEducationOrganizationEmploymentAssociation[id=$id, employmentStatusDescriptor=$employmentStatusDescriptor, hireDate=$hireDate, credentialReference=$credentialReference, educationOrganizationReference=$educationOrganizationReference, staffReference=$staffReference, annualWage=$annualWage, department=$department, endDate=$endDate, fullTimeEquivalency=$fullTimeEquivalency, hourlyWage=$hourlyWage, offerDate=$offerDate, separationDescriptor=$separationDescriptor, separationReasonDescriptor=$separationReasonDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'employmentStatusDescriptor'] = this.employmentStatusDescriptor;
      json[r'hireDate'] = _dateFormatter.format(this.hireDate.toUtc());
    if (this.credentialReference != null) {
      json[r'credentialReference'] = this.credentialReference;
    } else {
      json[r'credentialReference'] = null;
    }
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'staffReference'] = this.staffReference;
    if (this.annualWage != null) {
      json[r'annualWage'] = this.annualWage;
    } else {
      json[r'annualWage'] = null;
    }
    if (this.department != null) {
      json[r'department'] = this.department;
    } else {
      json[r'department'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
    if (this.fullTimeEquivalency != null) {
      json[r'fullTimeEquivalency'] = this.fullTimeEquivalency;
    } else {
      json[r'fullTimeEquivalency'] = null;
    }
    if (this.hourlyWage != null) {
      json[r'hourlyWage'] = this.hourlyWage;
    } else {
      json[r'hourlyWage'] = null;
    }
    if (this.offerDate != null) {
      json[r'offerDate'] = _dateFormatter.format(this.offerDate!.toUtc());
    } else {
      json[r'offerDate'] = null;
    }
    if (this.separationDescriptor != null) {
      json[r'separationDescriptor'] = this.separationDescriptor;
    } else {
      json[r'separationDescriptor'] = null;
    }
    if (this.separationReasonDescriptor != null) {
      json[r'separationReasonDescriptor'] = this.separationReasonDescriptor;
    } else {
      json[r'separationReasonDescriptor'] = null;
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

  /// Returns a new [EdFiStaffEducationOrganizationEmploymentAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaffEducationOrganizationEmploymentAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaffEducationOrganizationEmploymentAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaffEducationOrganizationEmploymentAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaffEducationOrganizationEmploymentAssociation(
        id: mapValueOfType<String>(json, r'id'),
        employmentStatusDescriptor: mapValueOfType<String>(json, r'employmentStatusDescriptor')!,
        hireDate: mapDateTime(json, r'hireDate', r'')!,
        credentialReference: EdFiCredentialReference.fromJson(json[r'credentialReference']),
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        staffReference: EdFiStaffReference.fromJson(json[r'staffReference'])!,
        annualWage: mapValueOfType<double>(json, r'annualWage'),
        department: mapValueOfType<String>(json, r'department'),
        endDate: mapDateTime(json, r'endDate', r''),
        fullTimeEquivalency: mapValueOfType<double>(json, r'fullTimeEquivalency'),
        hourlyWage: mapValueOfType<double>(json, r'hourlyWage'),
        offerDate: mapDateTime(json, r'offerDate', r''),
        separationDescriptor: mapValueOfType<String>(json, r'separationDescriptor'),
        separationReasonDescriptor: mapValueOfType<String>(json, r'separationReasonDescriptor'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStaffEducationOrganizationEmploymentAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaffEducationOrganizationEmploymentAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaffEducationOrganizationEmploymentAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaffEducationOrganizationEmploymentAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStaffEducationOrganizationEmploymentAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaffEducationOrganizationEmploymentAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaffEducationOrganizationEmploymentAssociation-objects as value to a dart map
  static Map<String, List<EdFiStaffEducationOrganizationEmploymentAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaffEducationOrganizationEmploymentAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaffEducationOrganizationEmploymentAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'employmentStatusDescriptor',
    'hireDate',
    'educationOrganizationReference',
    'staffReference',
  };
}

