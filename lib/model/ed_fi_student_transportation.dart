//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentTransportation {
  /// Returns a new [EdFiStudentTransportation] instance.
  EdFiStudentTransportation({
    this.id,
    required this.studentReference,
    required this.transportationEducationOrganizationReference,
    this.specialAccomodationRequirements,
    this.studentBusDetails,
    this.transportationPublicExpenseEligibilityTypeDescriptor,
    this.transportationTypeDescriptor,
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

  EdFiStudentReference studentReference;

  EdFiEducationOrganizationReference transportationEducationOrganizationReference;

  /// Specific requirements needed to accommodate a student's physical needs which may include special equipment installed in a vehicle or a special arrangement for transportation.
  String? specialAccomodationRequirements;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiStudentTransportationStudentBusDetails? studentBusDetails;

  /// The primary type of eligibility for transporting a student at public expense.
  String? transportationPublicExpenseEligibilityTypeDescriptor;

  /// The mode or type of transportation utilized by a student to commute to and from school
  String? transportationTypeDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentTransportation &&
    other.id == id &&
    other.studentReference == studentReference &&
    other.transportationEducationOrganizationReference == transportationEducationOrganizationReference &&
    other.specialAccomodationRequirements == specialAccomodationRequirements &&
    other.studentBusDetails == studentBusDetails &&
    other.transportationPublicExpenseEligibilityTypeDescriptor == transportationPublicExpenseEligibilityTypeDescriptor &&
    other.transportationTypeDescriptor == transportationTypeDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (studentReference.hashCode) +
    (transportationEducationOrganizationReference.hashCode) +
    (specialAccomodationRequirements == null ? 0 : specialAccomodationRequirements!.hashCode) +
    (studentBusDetails == null ? 0 : studentBusDetails!.hashCode) +
    (transportationPublicExpenseEligibilityTypeDescriptor == null ? 0 : transportationPublicExpenseEligibilityTypeDescriptor!.hashCode) +
    (transportationTypeDescriptor == null ? 0 : transportationTypeDescriptor!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentTransportation[id=$id, studentReference=$studentReference, transportationEducationOrganizationReference=$transportationEducationOrganizationReference, specialAccomodationRequirements=$specialAccomodationRequirements, studentBusDetails=$studentBusDetails, transportationPublicExpenseEligibilityTypeDescriptor=$transportationPublicExpenseEligibilityTypeDescriptor, transportationTypeDescriptor=$transportationTypeDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'studentReference'] = this.studentReference;
      json[r'transportationEducationOrganizationReference'] = this.transportationEducationOrganizationReference;
    if (this.specialAccomodationRequirements != null) {
      json[r'specialAccomodationRequirements'] = this.specialAccomodationRequirements;
    } else {
      json[r'specialAccomodationRequirements'] = null;
    }
    if (this.studentBusDetails != null) {
      json[r'studentBusDetails'] = this.studentBusDetails;
    } else {
      json[r'studentBusDetails'] = null;
    }
    if (this.transportationPublicExpenseEligibilityTypeDescriptor != null) {
      json[r'transportationPublicExpenseEligibilityTypeDescriptor'] = this.transportationPublicExpenseEligibilityTypeDescriptor;
    } else {
      json[r'transportationPublicExpenseEligibilityTypeDescriptor'] = null;
    }
    if (this.transportationTypeDescriptor != null) {
      json[r'transportationTypeDescriptor'] = this.transportationTypeDescriptor;
    } else {
      json[r'transportationTypeDescriptor'] = null;
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

  /// Returns a new [EdFiStudentTransportation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentTransportation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentTransportation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentTransportation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentTransportation(
        id: mapValueOfType<String>(json, r'id'),
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        transportationEducationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'transportationEducationOrganizationReference'])!,
        specialAccomodationRequirements: mapValueOfType<String>(json, r'specialAccomodationRequirements'),
        studentBusDetails: EdFiStudentTransportationStudentBusDetails.fromJson(json[r'studentBusDetails']),
        transportationPublicExpenseEligibilityTypeDescriptor: mapValueOfType<String>(json, r'transportationPublicExpenseEligibilityTypeDescriptor'),
        transportationTypeDescriptor: mapValueOfType<String>(json, r'transportationTypeDescriptor'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentTransportation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentTransportation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentTransportation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentTransportation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentTransportation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentTransportation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentTransportation-objects as value to a dart map
  static Map<String, List<EdFiStudentTransportation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentTransportation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentTransportation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'studentReference',
    'transportationEducationOrganizationReference',
  };
}

