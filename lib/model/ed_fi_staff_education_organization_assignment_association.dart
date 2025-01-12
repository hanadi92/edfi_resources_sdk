//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaffEducationOrganizationAssignmentAssociation {
  /// Returns a new [EdFiStaffEducationOrganizationAssignmentAssociation] instance.
  EdFiStaffEducationOrganizationAssignmentAssociation({
    this.id,
    required this.beginDate,
    required this.staffClassificationDescriptor,
    this.credentialReference,
    required this.educationOrganizationReference,
    this.employmentStaffEducationOrganizationEmploymentAssociationReference,
    required this.staffReference,
    this.endDate,
    this.fullTimeEquivalency,
    this.orderOfAssignment,
    this.positionTitle,
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

  /// Month, day, and year of the start or effective date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime beginDate;

  /// The titles of employment, official status, or rank of education staff.
  String staffClassificationDescriptor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiCredentialReference? credentialReference;

  EdFiEducationOrganizationReference educationOrganizationReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiStaffEducationOrganizationEmploymentAssociationReference? employmentStaffEducationOrganizationEmploymentAssociationReference;

  EdFiStaffReference staffReference;

  /// Month, day, and year of the end or termination date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  /// The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 9.9999
  double? fullTimeEquivalency;

  /// Describes whether the assignment is this the staff member's primary assignment, secondary assignment, etc.
  int? orderOfAssignment;

  /// The descriptive name of an individual's position.
  String? positionTitle;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaffEducationOrganizationAssignmentAssociation &&
    other.id == id &&
    other.beginDate == beginDate &&
    other.staffClassificationDescriptor == staffClassificationDescriptor &&
    other.credentialReference == credentialReference &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.employmentStaffEducationOrganizationEmploymentAssociationReference == employmentStaffEducationOrganizationEmploymentAssociationReference &&
    other.staffReference == staffReference &&
    other.endDate == endDate &&
    other.fullTimeEquivalency == fullTimeEquivalency &&
    other.orderOfAssignment == orderOfAssignment &&
    other.positionTitle == positionTitle &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (beginDate.hashCode) +
    (staffClassificationDescriptor.hashCode) +
    (credentialReference == null ? 0 : credentialReference!.hashCode) +
    (educationOrganizationReference.hashCode) +
    (employmentStaffEducationOrganizationEmploymentAssociationReference == null ? 0 : employmentStaffEducationOrganizationEmploymentAssociationReference!.hashCode) +
    (staffReference.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (fullTimeEquivalency == null ? 0 : fullTimeEquivalency!.hashCode) +
    (orderOfAssignment == null ? 0 : orderOfAssignment!.hashCode) +
    (positionTitle == null ? 0 : positionTitle!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStaffEducationOrganizationAssignmentAssociation[id=$id, beginDate=$beginDate, staffClassificationDescriptor=$staffClassificationDescriptor, credentialReference=$credentialReference, educationOrganizationReference=$educationOrganizationReference, employmentStaffEducationOrganizationEmploymentAssociationReference=$employmentStaffEducationOrganizationEmploymentAssociationReference, staffReference=$staffReference, endDate=$endDate, fullTimeEquivalency=$fullTimeEquivalency, orderOfAssignment=$orderOfAssignment, positionTitle=$positionTitle, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'beginDate'] = _dateFormatter.format(this.beginDate.toUtc());
      json[r'staffClassificationDescriptor'] = this.staffClassificationDescriptor;
    if (this.credentialReference != null) {
      json[r'credentialReference'] = this.credentialReference;
    } else {
      json[r'credentialReference'] = null;
    }
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
    if (this.employmentStaffEducationOrganizationEmploymentAssociationReference != null) {
      json[r'employmentStaffEducationOrganizationEmploymentAssociationReference'] = this.employmentStaffEducationOrganizationEmploymentAssociationReference;
    } else {
      json[r'employmentStaffEducationOrganizationEmploymentAssociationReference'] = null;
    }
      json[r'staffReference'] = this.staffReference;
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
    if (this.orderOfAssignment != null) {
      json[r'orderOfAssignment'] = this.orderOfAssignment;
    } else {
      json[r'orderOfAssignment'] = null;
    }
    if (this.positionTitle != null) {
      json[r'positionTitle'] = this.positionTitle;
    } else {
      json[r'positionTitle'] = null;
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

  /// Returns a new [EdFiStaffEducationOrganizationAssignmentAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaffEducationOrganizationAssignmentAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaffEducationOrganizationAssignmentAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaffEducationOrganizationAssignmentAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaffEducationOrganizationAssignmentAssociation(
        id: mapValueOfType<String>(json, r'id'),
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        staffClassificationDescriptor: mapValueOfType<String>(json, r'staffClassificationDescriptor')!,
        credentialReference: EdFiCredentialReference.fromJson(json[r'credentialReference']),
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        employmentStaffEducationOrganizationEmploymentAssociationReference: EdFiStaffEducationOrganizationEmploymentAssociationReference.fromJson(json[r'employmentStaffEducationOrganizationEmploymentAssociationReference']),
        staffReference: EdFiStaffReference.fromJson(json[r'staffReference'])!,
        endDate: mapDateTime(json, r'endDate', r''),
        fullTimeEquivalency: mapValueOfType<double>(json, r'fullTimeEquivalency'),
        orderOfAssignment: mapValueOfType<int>(json, r'orderOfAssignment'),
        positionTitle: mapValueOfType<String>(json, r'positionTitle'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStaffEducationOrganizationAssignmentAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaffEducationOrganizationAssignmentAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaffEducationOrganizationAssignmentAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaffEducationOrganizationAssignmentAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStaffEducationOrganizationAssignmentAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaffEducationOrganizationAssignmentAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaffEducationOrganizationAssignmentAssociation-objects as value to a dart map
  static Map<String, List<EdFiStaffEducationOrganizationAssignmentAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaffEducationOrganizationAssignmentAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaffEducationOrganizationAssignmentAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'beginDate',
    'staffClassificationDescriptor',
    'educationOrganizationReference',
    'staffReference',
  };
}

