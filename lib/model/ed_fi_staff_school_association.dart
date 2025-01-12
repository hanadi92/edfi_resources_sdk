//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaffSchoolAssociation {
  /// Returns a new [EdFiStaffSchoolAssociation] instance.
  EdFiStaffSchoolAssociation({
    this.id,
    required this.programAssignmentDescriptor,
    this.calendarReference,
    required this.schoolReference,
    this.schoolYearTypeReference,
    required this.staffReference,
    this.academicSubjects = const [],
    this.gradeLevels = const [],
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

  /// The name of the program for which the individual is assigned.
  String programAssignmentDescriptor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiCalendarReference? calendarReference;

  EdFiSchoolReference schoolReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiSchoolYearTypeReference? schoolYearTypeReference;

  EdFiStaffReference staffReference;

  /// An unordered collection of staffSchoolAssociationAcademicSubjects. The academic subjects the individual is eligible to teach.
  List<EdFiStaffSchoolAssociationAcademicSubject> academicSubjects;

  /// An unordered collection of staffSchoolAssociationGradeLevels. The grade levels the individual is eligible to teach.
  List<EdFiStaffSchoolAssociationGradeLevel> gradeLevels;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaffSchoolAssociation &&
    other.id == id &&
    other.programAssignmentDescriptor == programAssignmentDescriptor &&
    other.calendarReference == calendarReference &&
    other.schoolReference == schoolReference &&
    other.schoolYearTypeReference == schoolYearTypeReference &&
    other.staffReference == staffReference &&
    _deepEquality.equals(other.academicSubjects, academicSubjects) &&
    _deepEquality.equals(other.gradeLevels, gradeLevels) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (programAssignmentDescriptor.hashCode) +
    (calendarReference == null ? 0 : calendarReference!.hashCode) +
    (schoolReference.hashCode) +
    (schoolYearTypeReference == null ? 0 : schoolYearTypeReference!.hashCode) +
    (staffReference.hashCode) +
    (academicSubjects.hashCode) +
    (gradeLevels.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStaffSchoolAssociation[id=$id, programAssignmentDescriptor=$programAssignmentDescriptor, calendarReference=$calendarReference, schoolReference=$schoolReference, schoolYearTypeReference=$schoolYearTypeReference, staffReference=$staffReference, academicSubjects=$academicSubjects, gradeLevels=$gradeLevels, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'programAssignmentDescriptor'] = this.programAssignmentDescriptor;
    if (this.calendarReference != null) {
      json[r'calendarReference'] = this.calendarReference;
    } else {
      json[r'calendarReference'] = null;
    }
      json[r'schoolReference'] = this.schoolReference;
    if (this.schoolYearTypeReference != null) {
      json[r'schoolYearTypeReference'] = this.schoolYearTypeReference;
    } else {
      json[r'schoolYearTypeReference'] = null;
    }
      json[r'staffReference'] = this.staffReference;
      json[r'academicSubjects'] = this.academicSubjects;
      json[r'gradeLevels'] = this.gradeLevels;
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

  /// Returns a new [EdFiStaffSchoolAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaffSchoolAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaffSchoolAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaffSchoolAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaffSchoolAssociation(
        id: mapValueOfType<String>(json, r'id'),
        programAssignmentDescriptor: mapValueOfType<String>(json, r'programAssignmentDescriptor')!,
        calendarReference: EdFiCalendarReference.fromJson(json[r'calendarReference']),
        schoolReference: EdFiSchoolReference.fromJson(json[r'schoolReference'])!,
        schoolYearTypeReference: EdFiSchoolYearTypeReference.fromJson(json[r'schoolYearTypeReference']),
        staffReference: EdFiStaffReference.fromJson(json[r'staffReference'])!,
        academicSubjects: EdFiStaffSchoolAssociationAcademicSubject.listFromJson(json[r'academicSubjects']),
        gradeLevels: EdFiStaffSchoolAssociationGradeLevel.listFromJson(json[r'gradeLevels']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStaffSchoolAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaffSchoolAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaffSchoolAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaffSchoolAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStaffSchoolAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaffSchoolAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaffSchoolAssociation-objects as value to a dart map
  static Map<String, List<EdFiStaffSchoolAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaffSchoolAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaffSchoolAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'programAssignmentDescriptor',
    'schoolReference',
    'staffReference',
  };
}

