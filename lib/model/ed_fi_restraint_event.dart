//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiRestraintEvent {
  /// Returns a new [EdFiRestraintEvent] instance.
  EdFiRestraintEvent({
    this.id,
    required this.restraintEventIdentifier,
    this.disciplineIncidentReference,
    required this.schoolReference,
    required this.studentReference,
    this.educationalEnvironmentDescriptor,
    required this.eventDate,
    this.programs = const [],
    this.reasons = const [],
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

  /// A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.
  String restraintEventIdentifier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiDisciplineIncidentReference? disciplineIncidentReference;

  EdFiSchoolReference schoolReference;

  EdFiStudentReference studentReference;

  /// The setting where the RestraintEvent was exercised.
  String? educationalEnvironmentDescriptor;

  /// Month, day, and year of the restraint event.
  DateTime eventDate;

  /// An unordered collection of restraintEventPrograms. The special education program associated with the restraint event.
  List<EdFiRestraintEventProgram> programs;

  /// An unordered collection of restraintEventReasons. A categorization of the circumstances or reason for the RestraintEvent.
  List<EdFiRestraintEventReason> reasons;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiRestraintEvent &&
    other.id == id &&
    other.restraintEventIdentifier == restraintEventIdentifier &&
    other.disciplineIncidentReference == disciplineIncidentReference &&
    other.schoolReference == schoolReference &&
    other.studentReference == studentReference &&
    other.educationalEnvironmentDescriptor == educationalEnvironmentDescriptor &&
    other.eventDate == eventDate &&
    _deepEquality.equals(other.programs, programs) &&
    _deepEquality.equals(other.reasons, reasons) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (restraintEventIdentifier.hashCode) +
    (disciplineIncidentReference == null ? 0 : disciplineIncidentReference!.hashCode) +
    (schoolReference.hashCode) +
    (studentReference.hashCode) +
    (educationalEnvironmentDescriptor == null ? 0 : educationalEnvironmentDescriptor!.hashCode) +
    (eventDate.hashCode) +
    (programs.hashCode) +
    (reasons.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiRestraintEvent[id=$id, restraintEventIdentifier=$restraintEventIdentifier, disciplineIncidentReference=$disciplineIncidentReference, schoolReference=$schoolReference, studentReference=$studentReference, educationalEnvironmentDescriptor=$educationalEnvironmentDescriptor, eventDate=$eventDate, programs=$programs, reasons=$reasons, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'restraintEventIdentifier'] = this.restraintEventIdentifier;
    if (this.disciplineIncidentReference != null) {
      json[r'disciplineIncidentReference'] = this.disciplineIncidentReference;
    } else {
      json[r'disciplineIncidentReference'] = null;
    }
      json[r'schoolReference'] = this.schoolReference;
      json[r'studentReference'] = this.studentReference;
    if (this.educationalEnvironmentDescriptor != null) {
      json[r'educationalEnvironmentDescriptor'] = this.educationalEnvironmentDescriptor;
    } else {
      json[r'educationalEnvironmentDescriptor'] = null;
    }
      json[r'eventDate'] = _dateFormatter.format(this.eventDate.toUtc());
      json[r'programs'] = this.programs;
      json[r'reasons'] = this.reasons;
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

  /// Returns a new [EdFiRestraintEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiRestraintEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiRestraintEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiRestraintEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiRestraintEvent(
        id: mapValueOfType<String>(json, r'id'),
        restraintEventIdentifier: mapValueOfType<String>(json, r'restraintEventIdentifier')!,
        disciplineIncidentReference: EdFiDisciplineIncidentReference.fromJson(json[r'disciplineIncidentReference']),
        schoolReference: EdFiSchoolReference.fromJson(json[r'schoolReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        educationalEnvironmentDescriptor: mapValueOfType<String>(json, r'educationalEnvironmentDescriptor'),
        eventDate: mapDateTime(json, r'eventDate', r'')!,
        programs: EdFiRestraintEventProgram.listFromJson(json[r'programs']),
        reasons: EdFiRestraintEventReason.listFromJson(json[r'reasons']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiRestraintEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiRestraintEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiRestraintEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiRestraintEvent> mapFromJson(dynamic json) {
    final map = <String, EdFiRestraintEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiRestraintEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiRestraintEvent-objects as value to a dart map
  static Map<String, List<EdFiRestraintEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiRestraintEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiRestraintEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'restraintEventIdentifier',
    'schoolReference',
    'studentReference',
    'eventDate',
  };
}

