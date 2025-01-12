//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiDisciplineAction {
  /// Returns a new [EdFiDisciplineAction] instance.
  EdFiDisciplineAction({
    this.id,
    required this.disciplineActionIdentifier,
    required this.disciplineDate,
    this.disciplines = const [],
    this.assignmentSchoolReference,
    required this.responsibilitySchoolReference,
    required this.studentReference,
    this.actualDisciplineActionLength,
    this.disciplineActionLength,
    this.disciplineActionLengthDifferenceReasonDescriptor,
    this.iepPlacementMeetingIndicator,
    this.relatedToZeroTolerancePolicy,
    this.staffs = const [],
    this.studentDisciplineIncidentBehaviorAssociations = const [],
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

  /// Identifier assigned by the education organization to the discipline action.
  String disciplineActionIdentifier;

  /// The date of the discipline action.
  DateTime disciplineDate;

  /// An unordered collection of disciplineActionDisciplines. Type of action, such as removal from the classroom, used to discipline the student involved as a perpetrator in a discipline incident.
  List<EdFiDisciplineActionDiscipline> disciplines;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiSchoolReference? assignmentSchoolReference;

  EdFiSchoolReference responsibilitySchoolReference;

  EdFiStudentReference studentReference;

  /// Indicates the actual length in school days of a student's disciplinary assignment.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 999.99
  double? actualDisciplineActionLength;

  /// The length of time in school days for the discipline action (e.g. removal, detention), if applicable.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 999.99
  double? disciplineActionLength;

  /// Indicates the reason for the difference, if any, between the official and actual lengths of a student's disciplinary assignment.
  String? disciplineActionLengthDifferenceReasonDescriptor;

  /// An indication as to whether an offense and/or disciplinary action resulted in a meeting of a student's Individualized Education Program (IEP) team to determine appropriate placement.
  bool? iepPlacementMeetingIndicator;

  /// An indication of whether or not this disciplinary action taken against a student was imposed as a consequence of state or local zero tolerance policies.
  bool? relatedToZeroTolerancePolicy;

  /// An unordered collection of disciplineActionStaffs. The staff responsible for enforcing the discipline action.
  List<EdFiDisciplineActionStaff> staffs;

  /// An unordered collection of disciplineActionStudentDisciplineIncidentBehaviorAssociations. A reference to the behavior(s) by the student that led or contributed to this specific action.
  List<EdFiDisciplineActionStudentDisciplineIncidentBehaviorAssociation> studentDisciplineIncidentBehaviorAssociations;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiDisciplineAction &&
    other.id == id &&
    other.disciplineActionIdentifier == disciplineActionIdentifier &&
    other.disciplineDate == disciplineDate &&
    _deepEquality.equals(other.disciplines, disciplines) &&
    other.assignmentSchoolReference == assignmentSchoolReference &&
    other.responsibilitySchoolReference == responsibilitySchoolReference &&
    other.studentReference == studentReference &&
    other.actualDisciplineActionLength == actualDisciplineActionLength &&
    other.disciplineActionLength == disciplineActionLength &&
    other.disciplineActionLengthDifferenceReasonDescriptor == disciplineActionLengthDifferenceReasonDescriptor &&
    other.iepPlacementMeetingIndicator == iepPlacementMeetingIndicator &&
    other.relatedToZeroTolerancePolicy == relatedToZeroTolerancePolicy &&
    _deepEquality.equals(other.staffs, staffs) &&
    _deepEquality.equals(other.studentDisciplineIncidentBehaviorAssociations, studentDisciplineIncidentBehaviorAssociations) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (disciplineActionIdentifier.hashCode) +
    (disciplineDate.hashCode) +
    (disciplines.hashCode) +
    (assignmentSchoolReference == null ? 0 : assignmentSchoolReference!.hashCode) +
    (responsibilitySchoolReference.hashCode) +
    (studentReference.hashCode) +
    (actualDisciplineActionLength == null ? 0 : actualDisciplineActionLength!.hashCode) +
    (disciplineActionLength == null ? 0 : disciplineActionLength!.hashCode) +
    (disciplineActionLengthDifferenceReasonDescriptor == null ? 0 : disciplineActionLengthDifferenceReasonDescriptor!.hashCode) +
    (iepPlacementMeetingIndicator == null ? 0 : iepPlacementMeetingIndicator!.hashCode) +
    (relatedToZeroTolerancePolicy == null ? 0 : relatedToZeroTolerancePolicy!.hashCode) +
    (staffs.hashCode) +
    (studentDisciplineIncidentBehaviorAssociations.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiDisciplineAction[id=$id, disciplineActionIdentifier=$disciplineActionIdentifier, disciplineDate=$disciplineDate, disciplines=$disciplines, assignmentSchoolReference=$assignmentSchoolReference, responsibilitySchoolReference=$responsibilitySchoolReference, studentReference=$studentReference, actualDisciplineActionLength=$actualDisciplineActionLength, disciplineActionLength=$disciplineActionLength, disciplineActionLengthDifferenceReasonDescriptor=$disciplineActionLengthDifferenceReasonDescriptor, iepPlacementMeetingIndicator=$iepPlacementMeetingIndicator, relatedToZeroTolerancePolicy=$relatedToZeroTolerancePolicy, staffs=$staffs, studentDisciplineIncidentBehaviorAssociations=$studentDisciplineIncidentBehaviorAssociations, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'disciplineActionIdentifier'] = this.disciplineActionIdentifier;
      json[r'disciplineDate'] = _dateFormatter.format(this.disciplineDate.toUtc());
      json[r'disciplines'] = this.disciplines;
    if (this.assignmentSchoolReference != null) {
      json[r'assignmentSchoolReference'] = this.assignmentSchoolReference;
    } else {
      json[r'assignmentSchoolReference'] = null;
    }
      json[r'responsibilitySchoolReference'] = this.responsibilitySchoolReference;
      json[r'studentReference'] = this.studentReference;
    if (this.actualDisciplineActionLength != null) {
      json[r'actualDisciplineActionLength'] = this.actualDisciplineActionLength;
    } else {
      json[r'actualDisciplineActionLength'] = null;
    }
    if (this.disciplineActionLength != null) {
      json[r'disciplineActionLength'] = this.disciplineActionLength;
    } else {
      json[r'disciplineActionLength'] = null;
    }
    if (this.disciplineActionLengthDifferenceReasonDescriptor != null) {
      json[r'disciplineActionLengthDifferenceReasonDescriptor'] = this.disciplineActionLengthDifferenceReasonDescriptor;
    } else {
      json[r'disciplineActionLengthDifferenceReasonDescriptor'] = null;
    }
    if (this.iepPlacementMeetingIndicator != null) {
      json[r'iepPlacementMeetingIndicator'] = this.iepPlacementMeetingIndicator;
    } else {
      json[r'iepPlacementMeetingIndicator'] = null;
    }
    if (this.relatedToZeroTolerancePolicy != null) {
      json[r'relatedToZeroTolerancePolicy'] = this.relatedToZeroTolerancePolicy;
    } else {
      json[r'relatedToZeroTolerancePolicy'] = null;
    }
      json[r'staffs'] = this.staffs;
      json[r'studentDisciplineIncidentBehaviorAssociations'] = this.studentDisciplineIncidentBehaviorAssociations;
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

  /// Returns a new [EdFiDisciplineAction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiDisciplineAction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiDisciplineAction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiDisciplineAction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiDisciplineAction(
        id: mapValueOfType<String>(json, r'id'),
        disciplineActionIdentifier: mapValueOfType<String>(json, r'disciplineActionIdentifier')!,
        disciplineDate: mapDateTime(json, r'disciplineDate', r'')!,
        disciplines: EdFiDisciplineActionDiscipline.listFromJson(json[r'disciplines']),
        assignmentSchoolReference: EdFiSchoolReference.fromJson(json[r'assignmentSchoolReference']),
        responsibilitySchoolReference: EdFiSchoolReference.fromJson(json[r'responsibilitySchoolReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        actualDisciplineActionLength: mapValueOfType<double>(json, r'actualDisciplineActionLength'),
        disciplineActionLength: mapValueOfType<double>(json, r'disciplineActionLength'),
        disciplineActionLengthDifferenceReasonDescriptor: mapValueOfType<String>(json, r'disciplineActionLengthDifferenceReasonDescriptor'),
        iepPlacementMeetingIndicator: mapValueOfType<bool>(json, r'iepPlacementMeetingIndicator'),
        relatedToZeroTolerancePolicy: mapValueOfType<bool>(json, r'relatedToZeroTolerancePolicy'),
        staffs: EdFiDisciplineActionStaff.listFromJson(json[r'staffs']),
        studentDisciplineIncidentBehaviorAssociations: EdFiDisciplineActionStudentDisciplineIncidentBehaviorAssociation.listFromJson(json[r'studentDisciplineIncidentBehaviorAssociations']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiDisciplineAction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiDisciplineAction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiDisciplineAction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiDisciplineAction> mapFromJson(dynamic json) {
    final map = <String, EdFiDisciplineAction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiDisciplineAction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiDisciplineAction-objects as value to a dart map
  static Map<String, List<EdFiDisciplineAction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiDisciplineAction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiDisciplineAction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'disciplineActionIdentifier',
    'disciplineDate',
    'disciplines',
    'responsibilitySchoolReference',
    'studentReference',
  };
}

