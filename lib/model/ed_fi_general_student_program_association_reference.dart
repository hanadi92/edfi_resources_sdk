//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiGeneralStudentProgramAssociationReference {
  /// Returns a new [EdFiGeneralStudentProgramAssociationReference] instance.
  EdFiGeneralStudentProgramAssociationReference({
    required this.beginDate,
    required this.educationOrganizationId,
    required this.programEducationOrganizationId,
    required this.programName,
    required this.programTypeDescriptor,
    required this.studentUniqueId,
    this.link,
  });

  /// The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime beginDate;

  /// The identifier assigned to an education organization.
  int educationOrganizationId;

  /// The identifier assigned to an education organization.
  int programEducationOrganizationId;

  /// The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
  String programName;

  /// The type of program.
  String programTypeDescriptor;

  /// A unique alphanumeric code assigned to a student.
  String studentUniqueId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiGeneralStudentProgramAssociationReference &&
    other.beginDate == beginDate &&
    other.educationOrganizationId == educationOrganizationId &&
    other.programEducationOrganizationId == programEducationOrganizationId &&
    other.programName == programName &&
    other.programTypeDescriptor == programTypeDescriptor &&
    other.studentUniqueId == studentUniqueId &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (beginDate.hashCode) +
    (educationOrganizationId.hashCode) +
    (programEducationOrganizationId.hashCode) +
    (programName.hashCode) +
    (programTypeDescriptor.hashCode) +
    (studentUniqueId.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiGeneralStudentProgramAssociationReference[beginDate=$beginDate, educationOrganizationId=$educationOrganizationId, programEducationOrganizationId=$programEducationOrganizationId, programName=$programName, programTypeDescriptor=$programTypeDescriptor, studentUniqueId=$studentUniqueId, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'beginDate'] = _dateFormatter.format(this.beginDate.toUtc());
      json[r'educationOrganizationId'] = this.educationOrganizationId;
      json[r'programEducationOrganizationId'] = this.programEducationOrganizationId;
      json[r'programName'] = this.programName;
      json[r'programTypeDescriptor'] = this.programTypeDescriptor;
      json[r'studentUniqueId'] = this.studentUniqueId;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiGeneralStudentProgramAssociationReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiGeneralStudentProgramAssociationReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiGeneralStudentProgramAssociationReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiGeneralStudentProgramAssociationReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiGeneralStudentProgramAssociationReference(
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId')!,
        programEducationOrganizationId: mapValueOfType<int>(json, r'programEducationOrganizationId')!,
        programName: mapValueOfType<String>(json, r'programName')!,
        programTypeDescriptor: mapValueOfType<String>(json, r'programTypeDescriptor')!,
        studentUniqueId: mapValueOfType<String>(json, r'studentUniqueId')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiGeneralStudentProgramAssociationReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiGeneralStudentProgramAssociationReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiGeneralStudentProgramAssociationReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiGeneralStudentProgramAssociationReference> mapFromJson(dynamic json) {
    final map = <String, EdFiGeneralStudentProgramAssociationReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiGeneralStudentProgramAssociationReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiGeneralStudentProgramAssociationReference-objects as value to a dart map
  static Map<String, List<EdFiGeneralStudentProgramAssociationReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiGeneralStudentProgramAssociationReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiGeneralStudentProgramAssociationReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'beginDate',
    'educationOrganizationId',
    'programEducationOrganizationId',
    'programName',
    'programTypeDescriptor',
    'studentUniqueId',
  };
}

