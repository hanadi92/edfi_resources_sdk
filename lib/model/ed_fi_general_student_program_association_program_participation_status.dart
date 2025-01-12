//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiGeneralStudentProgramAssociationProgramParticipationStatus {
  /// Returns a new [EdFiGeneralStudentProgramAssociationProgramParticipationStatus] instance.
  EdFiGeneralStudentProgramAssociationProgramParticipationStatus({
    required this.participationStatusDescriptor,
    required this.statusBeginDate,
    this.designatedBy,
    this.statusEndDate,
  });

  /// The student's program participation status.
  String participationStatusDescriptor;

  /// The date the student's program participation status began.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime statusBeginDate;

  /// The person, organization, or department that designated the participation status.
  String? designatedBy;

  /// The date the student's program participation status ended.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? statusEndDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiGeneralStudentProgramAssociationProgramParticipationStatus &&
    other.participationStatusDescriptor == participationStatusDescriptor &&
    other.statusBeginDate == statusBeginDate &&
    other.designatedBy == designatedBy &&
    other.statusEndDate == statusEndDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (participationStatusDescriptor.hashCode) +
    (statusBeginDate.hashCode) +
    (designatedBy == null ? 0 : designatedBy!.hashCode) +
    (statusEndDate == null ? 0 : statusEndDate!.hashCode);

  @override
  String toString() => 'EdFiGeneralStudentProgramAssociationProgramParticipationStatus[participationStatusDescriptor=$participationStatusDescriptor, statusBeginDate=$statusBeginDate, designatedBy=$designatedBy, statusEndDate=$statusEndDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'participationStatusDescriptor'] = this.participationStatusDescriptor;
      json[r'statusBeginDate'] = _dateFormatter.format(this.statusBeginDate.toUtc());
    if (this.designatedBy != null) {
      json[r'designatedBy'] = this.designatedBy;
    } else {
      json[r'designatedBy'] = null;
    }
    if (this.statusEndDate != null) {
      json[r'statusEndDate'] = _dateFormatter.format(this.statusEndDate!.toUtc());
    } else {
      json[r'statusEndDate'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiGeneralStudentProgramAssociationProgramParticipationStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiGeneralStudentProgramAssociationProgramParticipationStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiGeneralStudentProgramAssociationProgramParticipationStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiGeneralStudentProgramAssociationProgramParticipationStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiGeneralStudentProgramAssociationProgramParticipationStatus(
        participationStatusDescriptor: mapValueOfType<String>(json, r'participationStatusDescriptor')!,
        statusBeginDate: mapDateTime(json, r'statusBeginDate', r'')!,
        designatedBy: mapValueOfType<String>(json, r'designatedBy'),
        statusEndDate: mapDateTime(json, r'statusEndDate', r''),
      );
    }
    return null;
  }

  static List<EdFiGeneralStudentProgramAssociationProgramParticipationStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiGeneralStudentProgramAssociationProgramParticipationStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiGeneralStudentProgramAssociationProgramParticipationStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiGeneralStudentProgramAssociationProgramParticipationStatus> mapFromJson(dynamic json) {
    final map = <String, EdFiGeneralStudentProgramAssociationProgramParticipationStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiGeneralStudentProgramAssociationProgramParticipationStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiGeneralStudentProgramAssociationProgramParticipationStatus-objects as value to a dart map
  static Map<String, List<EdFiGeneralStudentProgramAssociationProgramParticipationStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiGeneralStudentProgramAssociationProgramParticipationStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiGeneralStudentProgramAssociationProgramParticipationStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'participationStatusDescriptor',
    'statusBeginDate',
  };
}

