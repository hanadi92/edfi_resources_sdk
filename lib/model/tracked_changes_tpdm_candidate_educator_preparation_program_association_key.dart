//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey {
  /// Returns a new [TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey] instance.
  TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey({
    this.beginDate,
    this.candidateIdentifier,
    this.educationOrganizationId,
    this.programName,
    this.programTypeDescriptor,
  });

  /// The begin date for the association.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? beginDate;

  /// A unique alphanumeric code assigned to a candidate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? candidateIdentifier;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

  /// The name of the Educator Preparation Program.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? programName;

  /// The type of program.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? programTypeDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey &&
    other.beginDate == beginDate &&
    other.candidateIdentifier == candidateIdentifier &&
    other.educationOrganizationId == educationOrganizationId &&
    other.programName == programName &&
    other.programTypeDescriptor == programTypeDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (beginDate == null ? 0 : beginDate!.hashCode) +
    (candidateIdentifier == null ? 0 : candidateIdentifier!.hashCode) +
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (programName == null ? 0 : programName!.hashCode) +
    (programTypeDescriptor == null ? 0 : programTypeDescriptor!.hashCode);

  @override
  String toString() => 'TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey[beginDate=$beginDate, candidateIdentifier=$candidateIdentifier, educationOrganizationId=$educationOrganizationId, programName=$programName, programTypeDescriptor=$programTypeDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.beginDate != null) {
      json[r'beginDate'] = _dateFormatter.format(this.beginDate!.toUtc());
    } else {
      json[r'beginDate'] = null;
    }
    if (this.candidateIdentifier != null) {
      json[r'candidateIdentifier'] = this.candidateIdentifier;
    } else {
      json[r'candidateIdentifier'] = null;
    }
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    if (this.programName != null) {
      json[r'programName'] = this.programName;
    } else {
      json[r'programName'] = null;
    }
    if (this.programTypeDescriptor != null) {
      json[r'programTypeDescriptor'] = this.programTypeDescriptor;
    } else {
      json[r'programTypeDescriptor'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey(
        beginDate: mapDateTime(json, r'beginDate', r''),
        candidateIdentifier: mapValueOfType<String>(json, r'candidateIdentifier'),
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        programName: mapValueOfType<String>(json, r'programName'),
        programTypeDescriptor: mapValueOfType<String>(json, r'programTypeDescriptor'),
      );
    }
    return null;
  }

  static List<TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey-objects as value to a dart map
  static Map<String, List<TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesTpdmCandidateEducatorPreparationProgramAssociationKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

