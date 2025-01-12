//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentSectionAttendanceEvent {
  /// Returns a new [EdFiStudentSectionAttendanceEvent] instance.
  EdFiStudentSectionAttendanceEvent({
    this.id,
    required this.attendanceEventCategoryDescriptor,
    required this.eventDate,
    required this.sectionReference,
    required this.studentReference,
    this.arrivalTime,
    this.attendanceEventReason,
    this.classPeriods = const [],
    this.departureTime,
    this.educationalEnvironmentDescriptor,
    this.eventDuration,
    this.sectionAttendanceDuration,
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

  /// A code describing the attendance event, for example:         Present         Unexcused absence         Excused absence         Tardy.
  String attendanceEventCategoryDescriptor;

  /// Date for this attendance event.
  DateTime eventDate;

  EdFiSectionReference sectionReference;

  EdFiStudentReference studentReference;

  /// The time of day the student arrived for the attendance event in ISO 8601 format.
  String? arrivalTime;

  /// The reported reason for a student's absence.
  String? attendanceEventReason;

  /// An unordered collection of studentSectionAttendanceEventClassPeriods. The class period(s) to which the section attendance event applies.
  List<EdFiStudentSectionAttendanceEventClassPeriod> classPeriods;

  /// The time of day the student departed for the attendance event in ISO 8601 format.
  String? departureTime;

  /// The setting in which a child receives education and related services. This attribute is only used if it differs from the EducationalEnvironment of the Section. This is only used in the AttendanceEvent if different from the associated Section.
  String? educationalEnvironmentDescriptor;

  /// The amount of time in days for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 1.0
  double? eventDuration;

  /// The duration in minutes of the section attendance event.
  ///
  /// Minimum value: 0
  /// Maximum value: 1440
  int? sectionAttendanceDuration;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentSectionAttendanceEvent &&
    other.id == id &&
    other.attendanceEventCategoryDescriptor == attendanceEventCategoryDescriptor &&
    other.eventDate == eventDate &&
    other.sectionReference == sectionReference &&
    other.studentReference == studentReference &&
    other.arrivalTime == arrivalTime &&
    other.attendanceEventReason == attendanceEventReason &&
    _deepEquality.equals(other.classPeriods, classPeriods) &&
    other.departureTime == departureTime &&
    other.educationalEnvironmentDescriptor == educationalEnvironmentDescriptor &&
    other.eventDuration == eventDuration &&
    other.sectionAttendanceDuration == sectionAttendanceDuration &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (attendanceEventCategoryDescriptor.hashCode) +
    (eventDate.hashCode) +
    (sectionReference.hashCode) +
    (studentReference.hashCode) +
    (arrivalTime == null ? 0 : arrivalTime!.hashCode) +
    (attendanceEventReason == null ? 0 : attendanceEventReason!.hashCode) +
    (classPeriods.hashCode) +
    (departureTime == null ? 0 : departureTime!.hashCode) +
    (educationalEnvironmentDescriptor == null ? 0 : educationalEnvironmentDescriptor!.hashCode) +
    (eventDuration == null ? 0 : eventDuration!.hashCode) +
    (sectionAttendanceDuration == null ? 0 : sectionAttendanceDuration!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentSectionAttendanceEvent[id=$id, attendanceEventCategoryDescriptor=$attendanceEventCategoryDescriptor, eventDate=$eventDate, sectionReference=$sectionReference, studentReference=$studentReference, arrivalTime=$arrivalTime, attendanceEventReason=$attendanceEventReason, classPeriods=$classPeriods, departureTime=$departureTime, educationalEnvironmentDescriptor=$educationalEnvironmentDescriptor, eventDuration=$eventDuration, sectionAttendanceDuration=$sectionAttendanceDuration, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'attendanceEventCategoryDescriptor'] = this.attendanceEventCategoryDescriptor;
      json[r'eventDate'] = _dateFormatter.format(this.eventDate.toUtc());
      json[r'sectionReference'] = this.sectionReference;
      json[r'studentReference'] = this.studentReference;
    if (this.arrivalTime != null) {
      json[r'arrivalTime'] = this.arrivalTime;
    } else {
      json[r'arrivalTime'] = null;
    }
    if (this.attendanceEventReason != null) {
      json[r'attendanceEventReason'] = this.attendanceEventReason;
    } else {
      json[r'attendanceEventReason'] = null;
    }
      json[r'classPeriods'] = this.classPeriods;
    if (this.departureTime != null) {
      json[r'departureTime'] = this.departureTime;
    } else {
      json[r'departureTime'] = null;
    }
    if (this.educationalEnvironmentDescriptor != null) {
      json[r'educationalEnvironmentDescriptor'] = this.educationalEnvironmentDescriptor;
    } else {
      json[r'educationalEnvironmentDescriptor'] = null;
    }
    if (this.eventDuration != null) {
      json[r'eventDuration'] = this.eventDuration;
    } else {
      json[r'eventDuration'] = null;
    }
    if (this.sectionAttendanceDuration != null) {
      json[r'sectionAttendanceDuration'] = this.sectionAttendanceDuration;
    } else {
      json[r'sectionAttendanceDuration'] = null;
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

  /// Returns a new [EdFiStudentSectionAttendanceEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentSectionAttendanceEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentSectionAttendanceEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentSectionAttendanceEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentSectionAttendanceEvent(
        id: mapValueOfType<String>(json, r'id'),
        attendanceEventCategoryDescriptor: mapValueOfType<String>(json, r'attendanceEventCategoryDescriptor')!,
        eventDate: mapDateTime(json, r'eventDate', r'')!,
        sectionReference: EdFiSectionReference.fromJson(json[r'sectionReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        arrivalTime: mapValueOfType<String>(json, r'arrivalTime'),
        attendanceEventReason: mapValueOfType<String>(json, r'attendanceEventReason'),
        classPeriods: EdFiStudentSectionAttendanceEventClassPeriod.listFromJson(json[r'classPeriods']),
        departureTime: mapValueOfType<String>(json, r'departureTime'),
        educationalEnvironmentDescriptor: mapValueOfType<String>(json, r'educationalEnvironmentDescriptor'),
        eventDuration: mapValueOfType<double>(json, r'eventDuration'),
        sectionAttendanceDuration: mapValueOfType<int>(json, r'sectionAttendanceDuration'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentSectionAttendanceEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentSectionAttendanceEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentSectionAttendanceEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentSectionAttendanceEvent> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentSectionAttendanceEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentSectionAttendanceEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentSectionAttendanceEvent-objects as value to a dart map
  static Map<String, List<EdFiStudentSectionAttendanceEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentSectionAttendanceEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentSectionAttendanceEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'attendanceEventCategoryDescriptor',
    'eventDate',
    'sectionReference',
    'studentReference',
  };
}

