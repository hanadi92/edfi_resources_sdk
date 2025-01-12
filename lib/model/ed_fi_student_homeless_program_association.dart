//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentHomelessProgramAssociation {
  /// Returns a new [EdFiStudentHomelessProgramAssociation] instance.
  EdFiStudentHomelessProgramAssociation({
    this.id,
    required this.beginDate,
    required this.educationOrganizationReference,
    required this.programReference,
    required this.studentReference,
    this.awaitingFosterCare,
    this.endDate,
    this.homelessPrimaryNighttimeResidenceDescriptor,
    this.homelessProgramServices = const [],
    this.homelessUnaccompaniedYouth,
    this.programParticipationStatuses = const [],
    this.reasonExitedDescriptor,
    this.servedOutsideOfRegularSession,
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

  /// The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime beginDate;

  EdFiEducationOrganizationReference educationOrganizationReference;

  EdFiProgramReference programReference;

  EdFiStudentReference studentReference;

  /// State defined definition for awaiting foster care.
  bool? awaitingFosterCare;

  /// The month, day, and year on which the student exited the program or stopped receiving services.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  /// The primary nighttime residence of the student at the time the student is identified as homeless.
  String? homelessPrimaryNighttimeResidenceDescriptor;

  /// An unordered collection of studentHomelessProgramAssociationHomelessProgramServices. Indicates the service(s) being provided to the student by the homeless program.
  List<EdFiStudentHomelessProgramAssociationHomelessProgramService> homelessProgramServices;

  /// A homeless unaccompanied youth is a youth who is not in the physical custody of a parent or guardian and who fits the McKinney-Vento definition of homeless. Students must be both unaccompanied and homeless to be included as an unaccompanied homeless youth.
  bool? homelessUnaccompaniedYouth;

  /// An unordered collection of generalStudentProgramAssociationProgramParticipationStatuses. The status of the student's program participation.
  List<EdFiGeneralStudentProgramAssociationProgramParticipationStatus> programParticipationStatuses;

  /// The reason the student left the program within a school or district.
  String? reasonExitedDescriptor;

  /// Indicates whether the student received services during the summer session or between sessions.
  bool? servedOutsideOfRegularSession;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentHomelessProgramAssociation &&
    other.id == id &&
    other.beginDate == beginDate &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.programReference == programReference &&
    other.studentReference == studentReference &&
    other.awaitingFosterCare == awaitingFosterCare &&
    other.endDate == endDate &&
    other.homelessPrimaryNighttimeResidenceDescriptor == homelessPrimaryNighttimeResidenceDescriptor &&
    _deepEquality.equals(other.homelessProgramServices, homelessProgramServices) &&
    other.homelessUnaccompaniedYouth == homelessUnaccompaniedYouth &&
    _deepEquality.equals(other.programParticipationStatuses, programParticipationStatuses) &&
    other.reasonExitedDescriptor == reasonExitedDescriptor &&
    other.servedOutsideOfRegularSession == servedOutsideOfRegularSession &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (beginDate.hashCode) +
    (educationOrganizationReference.hashCode) +
    (programReference.hashCode) +
    (studentReference.hashCode) +
    (awaitingFosterCare == null ? 0 : awaitingFosterCare!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (homelessPrimaryNighttimeResidenceDescriptor == null ? 0 : homelessPrimaryNighttimeResidenceDescriptor!.hashCode) +
    (homelessProgramServices.hashCode) +
    (homelessUnaccompaniedYouth == null ? 0 : homelessUnaccompaniedYouth!.hashCode) +
    (programParticipationStatuses.hashCode) +
    (reasonExitedDescriptor == null ? 0 : reasonExitedDescriptor!.hashCode) +
    (servedOutsideOfRegularSession == null ? 0 : servedOutsideOfRegularSession!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentHomelessProgramAssociation[id=$id, beginDate=$beginDate, educationOrganizationReference=$educationOrganizationReference, programReference=$programReference, studentReference=$studentReference, awaitingFosterCare=$awaitingFosterCare, endDate=$endDate, homelessPrimaryNighttimeResidenceDescriptor=$homelessPrimaryNighttimeResidenceDescriptor, homelessProgramServices=$homelessProgramServices, homelessUnaccompaniedYouth=$homelessUnaccompaniedYouth, programParticipationStatuses=$programParticipationStatuses, reasonExitedDescriptor=$reasonExitedDescriptor, servedOutsideOfRegularSession=$servedOutsideOfRegularSession, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'beginDate'] = _dateFormatter.format(this.beginDate.toUtc());
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'programReference'] = this.programReference;
      json[r'studentReference'] = this.studentReference;
    if (this.awaitingFosterCare != null) {
      json[r'awaitingFosterCare'] = this.awaitingFosterCare;
    } else {
      json[r'awaitingFosterCare'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
    if (this.homelessPrimaryNighttimeResidenceDescriptor != null) {
      json[r'homelessPrimaryNighttimeResidenceDescriptor'] = this.homelessPrimaryNighttimeResidenceDescriptor;
    } else {
      json[r'homelessPrimaryNighttimeResidenceDescriptor'] = null;
    }
      json[r'homelessProgramServices'] = this.homelessProgramServices;
    if (this.homelessUnaccompaniedYouth != null) {
      json[r'homelessUnaccompaniedYouth'] = this.homelessUnaccompaniedYouth;
    } else {
      json[r'homelessUnaccompaniedYouth'] = null;
    }
      json[r'programParticipationStatuses'] = this.programParticipationStatuses;
    if (this.reasonExitedDescriptor != null) {
      json[r'reasonExitedDescriptor'] = this.reasonExitedDescriptor;
    } else {
      json[r'reasonExitedDescriptor'] = null;
    }
    if (this.servedOutsideOfRegularSession != null) {
      json[r'servedOutsideOfRegularSession'] = this.servedOutsideOfRegularSession;
    } else {
      json[r'servedOutsideOfRegularSession'] = null;
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

  /// Returns a new [EdFiStudentHomelessProgramAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentHomelessProgramAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentHomelessProgramAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentHomelessProgramAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentHomelessProgramAssociation(
        id: mapValueOfType<String>(json, r'id'),
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        programReference: EdFiProgramReference.fromJson(json[r'programReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        awaitingFosterCare: mapValueOfType<bool>(json, r'awaitingFosterCare'),
        endDate: mapDateTime(json, r'endDate', r''),
        homelessPrimaryNighttimeResidenceDescriptor: mapValueOfType<String>(json, r'homelessPrimaryNighttimeResidenceDescriptor'),
        homelessProgramServices: EdFiStudentHomelessProgramAssociationHomelessProgramService.listFromJson(json[r'homelessProgramServices']),
        homelessUnaccompaniedYouth: mapValueOfType<bool>(json, r'homelessUnaccompaniedYouth'),
        programParticipationStatuses: EdFiGeneralStudentProgramAssociationProgramParticipationStatus.listFromJson(json[r'programParticipationStatuses']),
        reasonExitedDescriptor: mapValueOfType<String>(json, r'reasonExitedDescriptor'),
        servedOutsideOfRegularSession: mapValueOfType<bool>(json, r'servedOutsideOfRegularSession'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentHomelessProgramAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentHomelessProgramAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentHomelessProgramAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentHomelessProgramAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentHomelessProgramAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentHomelessProgramAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentHomelessProgramAssociation-objects as value to a dart map
  static Map<String, List<EdFiStudentHomelessProgramAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentHomelessProgramAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentHomelessProgramAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'beginDate',
    'educationOrganizationReference',
    'programReference',
    'studentReference',
  };
}

