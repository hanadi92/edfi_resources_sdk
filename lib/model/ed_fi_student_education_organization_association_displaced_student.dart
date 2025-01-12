//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentEducationOrganizationAssociationDisplacedStudent {
  /// Returns a new [EdFiStudentEducationOrganizationAssociationDisplacedStudent] instance.
  EdFiStudentEducationOrganizationAssociationDisplacedStudent({
    required this.displacedStudentStatusDescriptor,
    this.crisisHomelessnessIndicator,
    this.displacedStudentEndDate,
    this.displacedStudentStartDate,
    required this.crisisEventReference,
  });

  /// Indicates whether a student has been displaced as a result of a crisis event.
  String displacedStudentStatusDescriptor;

  /// Any student considered homeless (defined by the McKinney-Vento Homeless Education Assistance Act as lacking a fixed, regular, and adequate nighttime residence) as a result of the crisis event.
  bool? crisisHomelessnessIndicator;

  /// The date marking the end of the period during which a student is considered displaced due to a crisis event.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? displacedStudentEndDate;

  /// The date on which a student is officially identified as displaced due to a crisis event.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? displacedStudentStartDate;

  EdFiCrisisEventReference crisisEventReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentEducationOrganizationAssociationDisplacedStudent &&
    other.displacedStudentStatusDescriptor == displacedStudentStatusDescriptor &&
    other.crisisHomelessnessIndicator == crisisHomelessnessIndicator &&
    other.displacedStudentEndDate == displacedStudentEndDate &&
    other.displacedStudentStartDate == displacedStudentStartDate &&
    other.crisisEventReference == crisisEventReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (displacedStudentStatusDescriptor.hashCode) +
    (crisisHomelessnessIndicator == null ? 0 : crisisHomelessnessIndicator!.hashCode) +
    (displacedStudentEndDate == null ? 0 : displacedStudentEndDate!.hashCode) +
    (displacedStudentStartDate == null ? 0 : displacedStudentStartDate!.hashCode) +
    (crisisEventReference.hashCode);

  @override
  String toString() => 'EdFiStudentEducationOrganizationAssociationDisplacedStudent[displacedStudentStatusDescriptor=$displacedStudentStatusDescriptor, crisisHomelessnessIndicator=$crisisHomelessnessIndicator, displacedStudentEndDate=$displacedStudentEndDate, displacedStudentStartDate=$displacedStudentStartDate, crisisEventReference=$crisisEventReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'displacedStudentStatusDescriptor'] = this.displacedStudentStatusDescriptor;
    if (this.crisisHomelessnessIndicator != null) {
      json[r'crisisHomelessnessIndicator'] = this.crisisHomelessnessIndicator;
    } else {
      json[r'crisisHomelessnessIndicator'] = null;
    }
    if (this.displacedStudentEndDate != null) {
      json[r'displacedStudentEndDate'] = _dateFormatter.format(this.displacedStudentEndDate!.toUtc());
    } else {
      json[r'displacedStudentEndDate'] = null;
    }
    if (this.displacedStudentStartDate != null) {
      json[r'displacedStudentStartDate'] = _dateFormatter.format(this.displacedStudentStartDate!.toUtc());
    } else {
      json[r'displacedStudentStartDate'] = null;
    }
      json[r'crisisEventReference'] = this.crisisEventReference;
    return json;
  }

  /// Returns a new [EdFiStudentEducationOrganizationAssociationDisplacedStudent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentEducationOrganizationAssociationDisplacedStudent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentEducationOrganizationAssociationDisplacedStudent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentEducationOrganizationAssociationDisplacedStudent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentEducationOrganizationAssociationDisplacedStudent(
        displacedStudentStatusDescriptor: mapValueOfType<String>(json, r'displacedStudentStatusDescriptor')!,
        crisisHomelessnessIndicator: mapValueOfType<bool>(json, r'crisisHomelessnessIndicator'),
        displacedStudentEndDate: mapDateTime(json, r'displacedStudentEndDate', r''),
        displacedStudentStartDate: mapDateTime(json, r'displacedStudentStartDate', r''),
        crisisEventReference: EdFiCrisisEventReference.fromJson(json[r'crisisEventReference'])!,
      );
    }
    return null;
  }

  static List<EdFiStudentEducationOrganizationAssociationDisplacedStudent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentEducationOrganizationAssociationDisplacedStudent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentEducationOrganizationAssociationDisplacedStudent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentEducationOrganizationAssociationDisplacedStudent> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentEducationOrganizationAssociationDisplacedStudent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentEducationOrganizationAssociationDisplacedStudent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentEducationOrganizationAssociationDisplacedStudent-objects as value to a dart map
  static Map<String, List<EdFiStudentEducationOrganizationAssociationDisplacedStudent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentEducationOrganizationAssociationDisplacedStudent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentEducationOrganizationAssociationDisplacedStudent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'displacedStudentStatusDescriptor',
    'crisisEventReference',
  };
}

