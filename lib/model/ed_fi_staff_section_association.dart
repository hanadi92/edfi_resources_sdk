//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaffSectionAssociation {
  /// Returns a new [EdFiStaffSectionAssociation] instance.
  EdFiStaffSectionAssociation({
    this.id,
    required this.beginDate,
    required this.sectionReference,
    required this.staffReference,
    required this.classroomPositionDescriptor,
    this.endDate,
    this.highlyQualifiedTeacher,
    this.percentageContribution,
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

  /// Month, day, and year of a teacher's assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime beginDate;

  EdFiSectionReference sectionReference;

  EdFiStaffReference staffReference;

  /// The type of position the staff member holds in the specific class/section.
  String classroomPositionDescriptor;

  /// Month, day, and year of the last day of a staff member's assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  /// An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for this section being taught.
  bool? highlyQualifiedTeacher;

  /// Indicates the percentage of the total scheduled course time, academic standards, and/or learning activities delivered in this section by this staff member. A teacher of record designation may be based solely or partially on this contribution percentage.
  ///
  /// Minimum value: -9.9999
  /// Maximum value: 9.9999
  double? percentageContribution;

  /// Indicates that the entire section is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation.
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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaffSectionAssociation &&
    other.id == id &&
    other.beginDate == beginDate &&
    other.sectionReference == sectionReference &&
    other.staffReference == staffReference &&
    other.classroomPositionDescriptor == classroomPositionDescriptor &&
    other.endDate == endDate &&
    other.highlyQualifiedTeacher == highlyQualifiedTeacher &&
    other.percentageContribution == percentageContribution &&
    other.teacherStudentDataLinkExclusion == teacherStudentDataLinkExclusion &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (beginDate.hashCode) +
    (sectionReference.hashCode) +
    (staffReference.hashCode) +
    (classroomPositionDescriptor.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (highlyQualifiedTeacher == null ? 0 : highlyQualifiedTeacher!.hashCode) +
    (percentageContribution == null ? 0 : percentageContribution!.hashCode) +
    (teacherStudentDataLinkExclusion == null ? 0 : teacherStudentDataLinkExclusion!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStaffSectionAssociation[id=$id, beginDate=$beginDate, sectionReference=$sectionReference, staffReference=$staffReference, classroomPositionDescriptor=$classroomPositionDescriptor, endDate=$endDate, highlyQualifiedTeacher=$highlyQualifiedTeacher, percentageContribution=$percentageContribution, teacherStudentDataLinkExclusion=$teacherStudentDataLinkExclusion, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'beginDate'] = _dateFormatter.format(this.beginDate.toUtc());
      json[r'sectionReference'] = this.sectionReference;
      json[r'staffReference'] = this.staffReference;
      json[r'classroomPositionDescriptor'] = this.classroomPositionDescriptor;
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
    if (this.highlyQualifiedTeacher != null) {
      json[r'highlyQualifiedTeacher'] = this.highlyQualifiedTeacher;
    } else {
      json[r'highlyQualifiedTeacher'] = null;
    }
    if (this.percentageContribution != null) {
      json[r'percentageContribution'] = this.percentageContribution;
    } else {
      json[r'percentageContribution'] = null;
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

  /// Returns a new [EdFiStaffSectionAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaffSectionAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaffSectionAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaffSectionAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaffSectionAssociation(
        id: mapValueOfType<String>(json, r'id'),
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        sectionReference: EdFiSectionReference.fromJson(json[r'sectionReference'])!,
        staffReference: EdFiStaffReference.fromJson(json[r'staffReference'])!,
        classroomPositionDescriptor: mapValueOfType<String>(json, r'classroomPositionDescriptor')!,
        endDate: mapDateTime(json, r'endDate', r''),
        highlyQualifiedTeacher: mapValueOfType<bool>(json, r'highlyQualifiedTeacher'),
        percentageContribution: mapValueOfType<double>(json, r'percentageContribution'),
        teacherStudentDataLinkExclusion: mapValueOfType<bool>(json, r'teacherStudentDataLinkExclusion'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStaffSectionAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaffSectionAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaffSectionAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaffSectionAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStaffSectionAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaffSectionAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaffSectionAssociation-objects as value to a dart map
  static Map<String, List<EdFiStaffSectionAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaffSectionAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaffSectionAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'beginDate',
    'sectionReference',
    'staffReference',
    'classroomPositionDescriptor',
  };
}

