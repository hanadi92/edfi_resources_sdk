//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey {
  /// Returns a new [TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey] instance.
  TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey({
    this.responsibilityDescriptor,
    this.beginDate,
    this.educationOrganizationId,
    this.studentUniqueId,
  });

  /// Indications of an education organization's responsibility for a student, such as accountability, attendance, funding, etc.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? responsibilityDescriptor;

  /// Month, day, and year of the start date of an education organization's responsibility for a student.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? beginDate;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

  /// A unique alphanumeric code assigned to a student.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studentUniqueId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey &&
    other.responsibilityDescriptor == responsibilityDescriptor &&
    other.beginDate == beginDate &&
    other.educationOrganizationId == educationOrganizationId &&
    other.studentUniqueId == studentUniqueId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (responsibilityDescriptor == null ? 0 : responsibilityDescriptor!.hashCode) +
    (beginDate == null ? 0 : beginDate!.hashCode) +
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (studentUniqueId == null ? 0 : studentUniqueId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey[responsibilityDescriptor=$responsibilityDescriptor, beginDate=$beginDate, educationOrganizationId=$educationOrganizationId, studentUniqueId=$studentUniqueId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.responsibilityDescriptor != null) {
      json[r'responsibilityDescriptor'] = this.responsibilityDescriptor;
    } else {
      json[r'responsibilityDescriptor'] = null;
    }
    if (this.beginDate != null) {
      json[r'beginDate'] = _dateFormatter.format(this.beginDate!.toUtc());
    } else {
      json[r'beginDate'] = null;
    }
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    if (this.studentUniqueId != null) {
      json[r'studentUniqueId'] = this.studentUniqueId;
    } else {
      json[r'studentUniqueId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey(
        responsibilityDescriptor: mapValueOfType<String>(json, r'responsibilityDescriptor'),
        beginDate: mapDateTime(json, r'beginDate', r''),
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        studentUniqueId: mapValueOfType<String>(json, r'studentUniqueId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiStudentEducationOrganizationResponsibilityAssociationKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

