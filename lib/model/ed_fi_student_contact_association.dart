//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentContactAssociation {
  /// Returns a new [EdFiStudentContactAssociation] instance.
  EdFiStudentContactAssociation({
    this.id,
    required this.contactReference,
    required this.studentReference,
    this.contactPriority,
    this.contactRestrictions,
    this.emergencyContactStatus,
    this.legalGuardian,
    this.livesWith,
    this.primaryContactStatus,
    this.relationDescriptor,
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

  EdFiContactReference contactReference;

  EdFiStudentReference studentReference;

  /// The numeric order of the preferred sequence or priority of contact.
  int? contactPriority;

  /// Restrictions for student and/or teacher contact with the individual (e.g., the student may not be picked up by the individual).
  String? contactRestrictions;

  /// Indicator of whether the person is a designated emergency contact for the student.
  bool? emergencyContactStatus;

  /// Indicator of whether the person is a legal guardian for the student.
  bool? legalGuardian;

  /// Indicator of whether the student lives with the associated contact.
  bool? livesWith;

  /// Indicator of whether the person is a primary contact for the student.
  bool? primaryContactStatus;

  /// The nature of an individual's relationship to a student, primarily used to capture family relationships.
  String? relationDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentContactAssociation &&
    other.id == id &&
    other.contactReference == contactReference &&
    other.studentReference == studentReference &&
    other.contactPriority == contactPriority &&
    other.contactRestrictions == contactRestrictions &&
    other.emergencyContactStatus == emergencyContactStatus &&
    other.legalGuardian == legalGuardian &&
    other.livesWith == livesWith &&
    other.primaryContactStatus == primaryContactStatus &&
    other.relationDescriptor == relationDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (contactReference.hashCode) +
    (studentReference.hashCode) +
    (contactPriority == null ? 0 : contactPriority!.hashCode) +
    (contactRestrictions == null ? 0 : contactRestrictions!.hashCode) +
    (emergencyContactStatus == null ? 0 : emergencyContactStatus!.hashCode) +
    (legalGuardian == null ? 0 : legalGuardian!.hashCode) +
    (livesWith == null ? 0 : livesWith!.hashCode) +
    (primaryContactStatus == null ? 0 : primaryContactStatus!.hashCode) +
    (relationDescriptor == null ? 0 : relationDescriptor!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentContactAssociation[id=$id, contactReference=$contactReference, studentReference=$studentReference, contactPriority=$contactPriority, contactRestrictions=$contactRestrictions, emergencyContactStatus=$emergencyContactStatus, legalGuardian=$legalGuardian, livesWith=$livesWith, primaryContactStatus=$primaryContactStatus, relationDescriptor=$relationDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'contactReference'] = this.contactReference;
      json[r'studentReference'] = this.studentReference;
    if (this.contactPriority != null) {
      json[r'contactPriority'] = this.contactPriority;
    } else {
      json[r'contactPriority'] = null;
    }
    if (this.contactRestrictions != null) {
      json[r'contactRestrictions'] = this.contactRestrictions;
    } else {
      json[r'contactRestrictions'] = null;
    }
    if (this.emergencyContactStatus != null) {
      json[r'emergencyContactStatus'] = this.emergencyContactStatus;
    } else {
      json[r'emergencyContactStatus'] = null;
    }
    if (this.legalGuardian != null) {
      json[r'legalGuardian'] = this.legalGuardian;
    } else {
      json[r'legalGuardian'] = null;
    }
    if (this.livesWith != null) {
      json[r'livesWith'] = this.livesWith;
    } else {
      json[r'livesWith'] = null;
    }
    if (this.primaryContactStatus != null) {
      json[r'primaryContactStatus'] = this.primaryContactStatus;
    } else {
      json[r'primaryContactStatus'] = null;
    }
    if (this.relationDescriptor != null) {
      json[r'relationDescriptor'] = this.relationDescriptor;
    } else {
      json[r'relationDescriptor'] = null;
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

  /// Returns a new [EdFiStudentContactAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentContactAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentContactAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentContactAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentContactAssociation(
        id: mapValueOfType<String>(json, r'id'),
        contactReference: EdFiContactReference.fromJson(json[r'contactReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        contactPriority: mapValueOfType<int>(json, r'contactPriority'),
        contactRestrictions: mapValueOfType<String>(json, r'contactRestrictions'),
        emergencyContactStatus: mapValueOfType<bool>(json, r'emergencyContactStatus'),
        legalGuardian: mapValueOfType<bool>(json, r'legalGuardian'),
        livesWith: mapValueOfType<bool>(json, r'livesWith'),
        primaryContactStatus: mapValueOfType<bool>(json, r'primaryContactStatus'),
        relationDescriptor: mapValueOfType<String>(json, r'relationDescriptor'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentContactAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentContactAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentContactAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentContactAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentContactAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentContactAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentContactAssociation-objects as value to a dart map
  static Map<String, List<EdFiStudentContactAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentContactAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentContactAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'contactReference',
    'studentReference',
  };
}

