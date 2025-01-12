//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmCredentialExtension {
  /// Returns a new [TpdmCredentialExtension] instance.
  TpdmCredentialExtension({
    this.certificationRouteDescriptor,
    this.credentialStatusDescriptor,
    this.educatorRoleDescriptor,
    this.boardCertificationIndicator,
    this.certificationTitle,
    this.credentialStatusDate,
    this.personReference,
    this.studentAcademicRecords = const [],
  });

  /// The process, program, or pathway used to obtain certification.
  String? certificationRouteDescriptor;

  /// The current status of the credential (e.g., active, suspended, etc.).
  String? credentialStatusDescriptor;

  /// The specific roles or positions within an organization that the credential is intended to authorize (e.g., Principal, Reading Specialist), typically associated with service and administrative certifications.
  String? educatorRoleDescriptor;

  /// Indicator that the credential was granted under the authority of a national Board Certification.
  bool? boardCertificationIndicator;

  /// The title of the certification obtained by the educator.
  String? certificationTitle;

  /// The month, day, and year on which the credential status was effective.
  DateTime? credentialStatusDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiPersonReference? personReference;

  /// An unordered collection of credentialStudentAcademicRecords. Reference to the person's Student Academic Records for the school(s) with which the Credential is associated.
  List<TpdmCredentialStudentAcademicRecord> studentAcademicRecords;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TpdmCredentialExtension &&
    other.certificationRouteDescriptor == certificationRouteDescriptor &&
    other.credentialStatusDescriptor == credentialStatusDescriptor &&
    other.educatorRoleDescriptor == educatorRoleDescriptor &&
    other.boardCertificationIndicator == boardCertificationIndicator &&
    other.certificationTitle == certificationTitle &&
    other.credentialStatusDate == credentialStatusDate &&
    other.personReference == personReference &&
    _deepEquality.equals(other.studentAcademicRecords, studentAcademicRecords);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (certificationRouteDescriptor == null ? 0 : certificationRouteDescriptor!.hashCode) +
    (credentialStatusDescriptor == null ? 0 : credentialStatusDescriptor!.hashCode) +
    (educatorRoleDescriptor == null ? 0 : educatorRoleDescriptor!.hashCode) +
    (boardCertificationIndicator == null ? 0 : boardCertificationIndicator!.hashCode) +
    (certificationTitle == null ? 0 : certificationTitle!.hashCode) +
    (credentialStatusDate == null ? 0 : credentialStatusDate!.hashCode) +
    (personReference == null ? 0 : personReference!.hashCode) +
    (studentAcademicRecords.hashCode);

  @override
  String toString() => 'TpdmCredentialExtension[certificationRouteDescriptor=$certificationRouteDescriptor, credentialStatusDescriptor=$credentialStatusDescriptor, educatorRoleDescriptor=$educatorRoleDescriptor, boardCertificationIndicator=$boardCertificationIndicator, certificationTitle=$certificationTitle, credentialStatusDate=$credentialStatusDate, personReference=$personReference, studentAcademicRecords=$studentAcademicRecords]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.certificationRouteDescriptor != null) {
      json[r'certificationRouteDescriptor'] = this.certificationRouteDescriptor;
    } else {
      json[r'certificationRouteDescriptor'] = null;
    }
    if (this.credentialStatusDescriptor != null) {
      json[r'credentialStatusDescriptor'] = this.credentialStatusDescriptor;
    } else {
      json[r'credentialStatusDescriptor'] = null;
    }
    if (this.educatorRoleDescriptor != null) {
      json[r'educatorRoleDescriptor'] = this.educatorRoleDescriptor;
    } else {
      json[r'educatorRoleDescriptor'] = null;
    }
    if (this.boardCertificationIndicator != null) {
      json[r'boardCertificationIndicator'] = this.boardCertificationIndicator;
    } else {
      json[r'boardCertificationIndicator'] = null;
    }
    if (this.certificationTitle != null) {
      json[r'certificationTitle'] = this.certificationTitle;
    } else {
      json[r'certificationTitle'] = null;
    }
    if (this.credentialStatusDate != null) {
      json[r'credentialStatusDate'] = _dateFormatter.format(this.credentialStatusDate!.toUtc());
    } else {
      json[r'credentialStatusDate'] = null;
    }
    if (this.personReference != null) {
      json[r'personReference'] = this.personReference;
    } else {
      json[r'personReference'] = null;
    }
      json[r'studentAcademicRecords'] = this.studentAcademicRecords;
    return json;
  }

  /// Returns a new [TpdmCredentialExtension] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmCredentialExtension? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmCredentialExtension[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmCredentialExtension[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmCredentialExtension(
        certificationRouteDescriptor: mapValueOfType<String>(json, r'certificationRouteDescriptor'),
        credentialStatusDescriptor: mapValueOfType<String>(json, r'credentialStatusDescriptor'),
        educatorRoleDescriptor: mapValueOfType<String>(json, r'educatorRoleDescriptor'),
        boardCertificationIndicator: mapValueOfType<bool>(json, r'boardCertificationIndicator'),
        certificationTitle: mapValueOfType<String>(json, r'certificationTitle'),
        credentialStatusDate: mapDateTime(json, r'credentialStatusDate', r''),
        personReference: EdFiPersonReference.fromJson(json[r'personReference']),
        studentAcademicRecords: TpdmCredentialStudentAcademicRecord.listFromJson(json[r'studentAcademicRecords']),
      );
    }
    return null;
  }

  static List<TpdmCredentialExtension> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmCredentialExtension>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmCredentialExtension.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmCredentialExtension> mapFromJson(dynamic json) {
    final map = <String, TpdmCredentialExtension>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmCredentialExtension.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmCredentialExtension-objects as value to a dart map
  static Map<String, List<TpdmCredentialExtension>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmCredentialExtension>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmCredentialExtension.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

