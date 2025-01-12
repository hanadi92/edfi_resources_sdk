//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiOpenStaffPosition {
  /// Returns a new [EdFiOpenStaffPosition] instance.
  EdFiOpenStaffPosition({
    this.id,
    required this.requisitionNumber,
    required this.educationOrganizationReference,
    this.academicSubjects = const [],
    required this.datePosted,
    this.datePostingRemoved,
    required this.employmentStatusDescriptor,
    this.instructionalGradeLevels = const [],
    this.positionTitle,
    this.postingResultDescriptor,
    this.programAssignmentDescriptor,
    required this.staffClassificationDescriptor,
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

  /// The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources.
  String requisitionNumber;

  EdFiEducationOrganizationReference educationOrganizationReference;

  /// An unordered collection of openStaffPositionAcademicSubjects. The teaching field required for the open staff position.
  List<EdFiOpenStaffPositionAcademicSubject> academicSubjects;

  /// Date the open staff position was posted.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime datePosted;

  /// The date the posting was removed or filled.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? datePostingRemoved;

  /// Reflects the type of employment or contract desired for the position.
  String employmentStatusDescriptor;

  /// An unordered collection of openStaffPositionInstructionalGradeLevels. The set of grade levels for which the position's assignment is responsible.
  List<EdFiOpenStaffPositionInstructionalGradeLevel> instructionalGradeLevels;

  /// The descriptive name of an individual's position.
  String? positionTitle;

  /// Indication of whether the OpenStaffPosition was filled or retired without filling.
  String? postingResultDescriptor;

  /// The name of the program for which the open staff position will be assigned.
  String? programAssignmentDescriptor;

  /// The titles of employment, official status, or rank of education staff.
  String staffClassificationDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiOpenStaffPosition &&
    other.id == id &&
    other.requisitionNumber == requisitionNumber &&
    other.educationOrganizationReference == educationOrganizationReference &&
    _deepEquality.equals(other.academicSubjects, academicSubjects) &&
    other.datePosted == datePosted &&
    other.datePostingRemoved == datePostingRemoved &&
    other.employmentStatusDescriptor == employmentStatusDescriptor &&
    _deepEquality.equals(other.instructionalGradeLevels, instructionalGradeLevels) &&
    other.positionTitle == positionTitle &&
    other.postingResultDescriptor == postingResultDescriptor &&
    other.programAssignmentDescriptor == programAssignmentDescriptor &&
    other.staffClassificationDescriptor == staffClassificationDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (requisitionNumber.hashCode) +
    (educationOrganizationReference.hashCode) +
    (academicSubjects.hashCode) +
    (datePosted.hashCode) +
    (datePostingRemoved == null ? 0 : datePostingRemoved!.hashCode) +
    (employmentStatusDescriptor.hashCode) +
    (instructionalGradeLevels.hashCode) +
    (positionTitle == null ? 0 : positionTitle!.hashCode) +
    (postingResultDescriptor == null ? 0 : postingResultDescriptor!.hashCode) +
    (programAssignmentDescriptor == null ? 0 : programAssignmentDescriptor!.hashCode) +
    (staffClassificationDescriptor.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiOpenStaffPosition[id=$id, requisitionNumber=$requisitionNumber, educationOrganizationReference=$educationOrganizationReference, academicSubjects=$academicSubjects, datePosted=$datePosted, datePostingRemoved=$datePostingRemoved, employmentStatusDescriptor=$employmentStatusDescriptor, instructionalGradeLevels=$instructionalGradeLevels, positionTitle=$positionTitle, postingResultDescriptor=$postingResultDescriptor, programAssignmentDescriptor=$programAssignmentDescriptor, staffClassificationDescriptor=$staffClassificationDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'requisitionNumber'] = this.requisitionNumber;
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'academicSubjects'] = this.academicSubjects;
      json[r'datePosted'] = _dateFormatter.format(this.datePosted.toUtc());
    if (this.datePostingRemoved != null) {
      json[r'datePostingRemoved'] = _dateFormatter.format(this.datePostingRemoved!.toUtc());
    } else {
      json[r'datePostingRemoved'] = null;
    }
      json[r'employmentStatusDescriptor'] = this.employmentStatusDescriptor;
      json[r'instructionalGradeLevels'] = this.instructionalGradeLevels;
    if (this.positionTitle != null) {
      json[r'positionTitle'] = this.positionTitle;
    } else {
      json[r'positionTitle'] = null;
    }
    if (this.postingResultDescriptor != null) {
      json[r'postingResultDescriptor'] = this.postingResultDescriptor;
    } else {
      json[r'postingResultDescriptor'] = null;
    }
    if (this.programAssignmentDescriptor != null) {
      json[r'programAssignmentDescriptor'] = this.programAssignmentDescriptor;
    } else {
      json[r'programAssignmentDescriptor'] = null;
    }
      json[r'staffClassificationDescriptor'] = this.staffClassificationDescriptor;
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

  /// Returns a new [EdFiOpenStaffPosition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiOpenStaffPosition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiOpenStaffPosition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiOpenStaffPosition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiOpenStaffPosition(
        id: mapValueOfType<String>(json, r'id'),
        requisitionNumber: mapValueOfType<String>(json, r'requisitionNumber')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        academicSubjects: EdFiOpenStaffPositionAcademicSubject.listFromJson(json[r'academicSubjects']),
        datePosted: mapDateTime(json, r'datePosted', r'')!,
        datePostingRemoved: mapDateTime(json, r'datePostingRemoved', r''),
        employmentStatusDescriptor: mapValueOfType<String>(json, r'employmentStatusDescriptor')!,
        instructionalGradeLevels: EdFiOpenStaffPositionInstructionalGradeLevel.listFromJson(json[r'instructionalGradeLevels']),
        positionTitle: mapValueOfType<String>(json, r'positionTitle'),
        postingResultDescriptor: mapValueOfType<String>(json, r'postingResultDescriptor'),
        programAssignmentDescriptor: mapValueOfType<String>(json, r'programAssignmentDescriptor'),
        staffClassificationDescriptor: mapValueOfType<String>(json, r'staffClassificationDescriptor')!,
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiOpenStaffPosition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiOpenStaffPosition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiOpenStaffPosition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiOpenStaffPosition> mapFromJson(dynamic json) {
    final map = <String, EdFiOpenStaffPosition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiOpenStaffPosition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiOpenStaffPosition-objects as value to a dart map
  static Map<String, List<EdFiOpenStaffPosition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiOpenStaffPosition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiOpenStaffPosition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'requisitionNumber',
    'educationOrganizationReference',
    'datePosted',
    'employmentStatusDescriptor',
    'staffClassificationDescriptor',
  };
}

