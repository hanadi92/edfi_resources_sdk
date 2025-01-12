//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentSectionAssociation {
  /// Returns a new [EdFiStudentSectionAssociation] instance.
  EdFiStudentSectionAssociation({
    this.id,
    required this.beginDate,
    this.dualCreditEducationOrganizationReference,
    required this.sectionReference,
    required this.studentReference,
    this.attemptStatusDescriptor,
    this.dualCreditIndicator,
    this.dualCreditInstitutionDescriptor,
    this.dualCreditTypeDescriptor,
    this.dualHighSchoolCreditIndicator,
    this.endDate,
    this.homeroomIndicator,
    this.programs = const [],
    this.repeatIdentifierDescriptor,
    this.teacherStudentDataLinkExclusion,
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

  /// Month, day, and year of the student's entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime beginDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiEducationOrganizationReference? dualCreditEducationOrganizationReference;

  EdFiSectionReference sectionReference;

  EdFiStudentReference studentReference;

  /// An indication of the student's completion status for the section.
  String? attemptStatusDescriptor;

  /// Indicates whether the student assigned to the section is to receive dual credit upon successful completion.
  bool? dualCreditIndicator;

  /// Descriptor for the postsecondary institution offering college credit. This descriptor may be used to select a postsecondary institution that is not defined as an education organization, and/or select a general type of postsecondary institution.
  String? dualCreditInstitutionDescriptor;

  /// For a student taking a dual credit course in a college or high school setting, indicates the type of dual credit program.
  String? dualCreditTypeDescriptor;

  /// Indicates whether successful completion of the course will result in credits toward high school graduation.
  bool? dualHighSchoolCreditIndicator;

  /// Month, day, and year of the withdrawal or exit of the student from the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  /// Indicates the section is the student's homeroom. Homeroom period may the convention for taking daily attendance.
  bool? homeroomIndicator;

  /// An unordered collection of studentSectionAssociationPrograms. The program(s) that the student is participating in the context of the course.
  List<EdFiStudentSectionAssociationProgram> programs;

  /// An indication as to whether a student has previously taken a given course.
  String? repeatIdentifierDescriptor;

  /// Indicates that the student-section combination is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation.
  bool? teacherStudentDataLinkExclusion;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentSectionAssociation &&
    other.id == id &&
    other.beginDate == beginDate &&
    other.dualCreditEducationOrganizationReference == dualCreditEducationOrganizationReference &&
    other.sectionReference == sectionReference &&
    other.studentReference == studentReference &&
    other.attemptStatusDescriptor == attemptStatusDescriptor &&
    other.dualCreditIndicator == dualCreditIndicator &&
    other.dualCreditInstitutionDescriptor == dualCreditInstitutionDescriptor &&
    other.dualCreditTypeDescriptor == dualCreditTypeDescriptor &&
    other.dualHighSchoolCreditIndicator == dualHighSchoolCreditIndicator &&
    other.endDate == endDate &&
    other.homeroomIndicator == homeroomIndicator &&
    _deepEquality.equals(other.programs, programs) &&
    other.repeatIdentifierDescriptor == repeatIdentifierDescriptor &&
    other.teacherStudentDataLinkExclusion == teacherStudentDataLinkExclusion &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (beginDate.hashCode) +
    (dualCreditEducationOrganizationReference == null ? 0 : dualCreditEducationOrganizationReference!.hashCode) +
    (sectionReference.hashCode) +
    (studentReference.hashCode) +
    (attemptStatusDescriptor == null ? 0 : attemptStatusDescriptor!.hashCode) +
    (dualCreditIndicator == null ? 0 : dualCreditIndicator!.hashCode) +
    (dualCreditInstitutionDescriptor == null ? 0 : dualCreditInstitutionDescriptor!.hashCode) +
    (dualCreditTypeDescriptor == null ? 0 : dualCreditTypeDescriptor!.hashCode) +
    (dualHighSchoolCreditIndicator == null ? 0 : dualHighSchoolCreditIndicator!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (homeroomIndicator == null ? 0 : homeroomIndicator!.hashCode) +
    (programs.hashCode) +
    (repeatIdentifierDescriptor == null ? 0 : repeatIdentifierDescriptor!.hashCode) +
    (teacherStudentDataLinkExclusion == null ? 0 : teacherStudentDataLinkExclusion!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentSectionAssociation[id=$id, beginDate=$beginDate, dualCreditEducationOrganizationReference=$dualCreditEducationOrganizationReference, sectionReference=$sectionReference, studentReference=$studentReference, attemptStatusDescriptor=$attemptStatusDescriptor, dualCreditIndicator=$dualCreditIndicator, dualCreditInstitutionDescriptor=$dualCreditInstitutionDescriptor, dualCreditTypeDescriptor=$dualCreditTypeDescriptor, dualHighSchoolCreditIndicator=$dualHighSchoolCreditIndicator, endDate=$endDate, homeroomIndicator=$homeroomIndicator, programs=$programs, repeatIdentifierDescriptor=$repeatIdentifierDescriptor, teacherStudentDataLinkExclusion=$teacherStudentDataLinkExclusion, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'beginDate'] = _dateFormatter.format(this.beginDate.toUtc());
    if (this.dualCreditEducationOrganizationReference != null) {
      json[r'dualCreditEducationOrganizationReference'] = this.dualCreditEducationOrganizationReference;
    } else {
      json[r'dualCreditEducationOrganizationReference'] = null;
    }
      json[r'sectionReference'] = this.sectionReference;
      json[r'studentReference'] = this.studentReference;
    if (this.attemptStatusDescriptor != null) {
      json[r'attemptStatusDescriptor'] = this.attemptStatusDescriptor;
    } else {
      json[r'attemptStatusDescriptor'] = null;
    }
    if (this.dualCreditIndicator != null) {
      json[r'dualCreditIndicator'] = this.dualCreditIndicator;
    } else {
      json[r'dualCreditIndicator'] = null;
    }
    if (this.dualCreditInstitutionDescriptor != null) {
      json[r'dualCreditInstitutionDescriptor'] = this.dualCreditInstitutionDescriptor;
    } else {
      json[r'dualCreditInstitutionDescriptor'] = null;
    }
    if (this.dualCreditTypeDescriptor != null) {
      json[r'dualCreditTypeDescriptor'] = this.dualCreditTypeDescriptor;
    } else {
      json[r'dualCreditTypeDescriptor'] = null;
    }
    if (this.dualHighSchoolCreditIndicator != null) {
      json[r'dualHighSchoolCreditIndicator'] = this.dualHighSchoolCreditIndicator;
    } else {
      json[r'dualHighSchoolCreditIndicator'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
    if (this.homeroomIndicator != null) {
      json[r'homeroomIndicator'] = this.homeroomIndicator;
    } else {
      json[r'homeroomIndicator'] = null;
    }
      json[r'programs'] = this.programs;
    if (this.repeatIdentifierDescriptor != null) {
      json[r'repeatIdentifierDescriptor'] = this.repeatIdentifierDescriptor;
    } else {
      json[r'repeatIdentifierDescriptor'] = null;
    }
    if (this.teacherStudentDataLinkExclusion != null) {
      json[r'teacherStudentDataLinkExclusion'] = this.teacherStudentDataLinkExclusion;
    } else {
      json[r'teacherStudentDataLinkExclusion'] = null;
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

  /// Returns a new [EdFiStudentSectionAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentSectionAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentSectionAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentSectionAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentSectionAssociation(
        id: mapValueOfType<String>(json, r'id'),
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        dualCreditEducationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'dualCreditEducationOrganizationReference']),
        sectionReference: EdFiSectionReference.fromJson(json[r'sectionReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        attemptStatusDescriptor: mapValueOfType<String>(json, r'attemptStatusDescriptor'),
        dualCreditIndicator: mapValueOfType<bool>(json, r'dualCreditIndicator'),
        dualCreditInstitutionDescriptor: mapValueOfType<String>(json, r'dualCreditInstitutionDescriptor'),
        dualCreditTypeDescriptor: mapValueOfType<String>(json, r'dualCreditTypeDescriptor'),
        dualHighSchoolCreditIndicator: mapValueOfType<bool>(json, r'dualHighSchoolCreditIndicator'),
        endDate: mapDateTime(json, r'endDate', r''),
        homeroomIndicator: mapValueOfType<bool>(json, r'homeroomIndicator'),
        programs: EdFiStudentSectionAssociationProgram.listFromJson(json[r'programs']),
        repeatIdentifierDescriptor: mapValueOfType<String>(json, r'repeatIdentifierDescriptor'),
        teacherStudentDataLinkExclusion: mapValueOfType<bool>(json, r'teacherStudentDataLinkExclusion'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentSectionAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentSectionAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentSectionAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentSectionAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentSectionAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentSectionAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentSectionAssociation-objects as value to a dart map
  static Map<String, List<EdFiStudentSectionAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentSectionAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentSectionAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'beginDate',
    'sectionReference',
    'studentReference',
  };
}

