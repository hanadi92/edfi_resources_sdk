//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey {
  /// Returns a new [TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey] instance.
  TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey({
    this.employmentStatusDescriptor,
    this.hireDate,
    this.educationOrganizationId,
    this.staffUniqueId,
  });

  /// Reflects the type of employment or contract.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? employmentStatusDescriptor;

  /// The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? hireDate;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

  /// A unique alphanumeric code assigned to a staff.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? staffUniqueId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey &&
    other.employmentStatusDescriptor == employmentStatusDescriptor &&
    other.hireDate == hireDate &&
    other.educationOrganizationId == educationOrganizationId &&
    other.staffUniqueId == staffUniqueId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (employmentStatusDescriptor == null ? 0 : employmentStatusDescriptor!.hashCode) +
    (hireDate == null ? 0 : hireDate!.hashCode) +
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (staffUniqueId == null ? 0 : staffUniqueId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey[employmentStatusDescriptor=$employmentStatusDescriptor, hireDate=$hireDate, educationOrganizationId=$educationOrganizationId, staffUniqueId=$staffUniqueId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.employmentStatusDescriptor != null) {
      json[r'employmentStatusDescriptor'] = this.employmentStatusDescriptor;
    } else {
      json[r'employmentStatusDescriptor'] = null;
    }
    if (this.hireDate != null) {
      json[r'hireDate'] = _dateFormatter.format(this.hireDate!.toUtc());
    } else {
      json[r'hireDate'] = null;
    }
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    if (this.staffUniqueId != null) {
      json[r'staffUniqueId'] = this.staffUniqueId;
    } else {
      json[r'staffUniqueId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey(
        employmentStatusDescriptor: mapValueOfType<String>(json, r'employmentStatusDescriptor'),
        hireDate: mapDateTime(json, r'hireDate', r''),
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        staffUniqueId: mapValueOfType<String>(json, r'staffUniqueId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiStaffEducationOrganizationEmploymentAssociationKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

