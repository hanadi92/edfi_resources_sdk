//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiSession {
  /// Returns a new [EdFiSession] instance.
  EdFiSession({
    this.id,
    required this.sessionName,
    required this.schoolReference,
    required this.schoolYearTypeReference,
    this.academicWeeks = const [],
    required this.beginDate,
    required this.endDate,
    this.gradingPeriods = const [],
    required this.termDescriptor,
    required this.totalInstructionalDays,
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

  /// The identifier for the calendar for the academic session.
  String sessionName;

  EdFiSchoolReference schoolReference;

  EdFiSchoolYearTypeReference schoolYearTypeReference;

  /// An unordered collection of sessionAcademicWeeks. The academic weeks associated with the school year.
  List<EdFiSessionAcademicWeek> academicWeeks;

  /// Month, day, and year of the first day of the session.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime beginDate;

  /// Month, day and year of the last day of the session.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime endDate;

  /// An unordered collection of sessionGradingPeriods. Grading periods associated with the session.
  List<EdFiSessionGradingPeriod> gradingPeriods;

  /// A descriptor value to indicate the term that the session is associated with.
  String termDescriptor;

  /// The total number of instructional days in the school calendar.
  ///
  /// Minimum value: 0
  int totalInstructionalDays;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiSession &&
    other.id == id &&
    other.sessionName == sessionName &&
    other.schoolReference == schoolReference &&
    other.schoolYearTypeReference == schoolYearTypeReference &&
    _deepEquality.equals(other.academicWeeks, academicWeeks) &&
    other.beginDate == beginDate &&
    other.endDate == endDate &&
    _deepEquality.equals(other.gradingPeriods, gradingPeriods) &&
    other.termDescriptor == termDescriptor &&
    other.totalInstructionalDays == totalInstructionalDays &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (sessionName.hashCode) +
    (schoolReference.hashCode) +
    (schoolYearTypeReference.hashCode) +
    (academicWeeks.hashCode) +
    (beginDate.hashCode) +
    (endDate.hashCode) +
    (gradingPeriods.hashCode) +
    (termDescriptor.hashCode) +
    (totalInstructionalDays.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiSession[id=$id, sessionName=$sessionName, schoolReference=$schoolReference, schoolYearTypeReference=$schoolYearTypeReference, academicWeeks=$academicWeeks, beginDate=$beginDate, endDate=$endDate, gradingPeriods=$gradingPeriods, termDescriptor=$termDescriptor, totalInstructionalDays=$totalInstructionalDays, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'sessionName'] = this.sessionName;
      json[r'schoolReference'] = this.schoolReference;
      json[r'schoolYearTypeReference'] = this.schoolYearTypeReference;
      json[r'academicWeeks'] = this.academicWeeks;
      json[r'beginDate'] = _dateFormatter.format(this.beginDate.toUtc());
      json[r'endDate'] = _dateFormatter.format(this.endDate.toUtc());
      json[r'gradingPeriods'] = this.gradingPeriods;
      json[r'termDescriptor'] = this.termDescriptor;
      json[r'totalInstructionalDays'] = this.totalInstructionalDays;
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

  /// Returns a new [EdFiSession] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiSession? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiSession[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiSession[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiSession(
        id: mapValueOfType<String>(json, r'id'),
        sessionName: mapValueOfType<String>(json, r'sessionName')!,
        schoolReference: EdFiSchoolReference.fromJson(json[r'schoolReference'])!,
        schoolYearTypeReference: EdFiSchoolYearTypeReference.fromJson(json[r'schoolYearTypeReference'])!,
        academicWeeks: EdFiSessionAcademicWeek.listFromJson(json[r'academicWeeks']),
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        endDate: mapDateTime(json, r'endDate', r'')!,
        gradingPeriods: EdFiSessionGradingPeriod.listFromJson(json[r'gradingPeriods']),
        termDescriptor: mapValueOfType<String>(json, r'termDescriptor')!,
        totalInstructionalDays: mapValueOfType<int>(json, r'totalInstructionalDays')!,
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiSession> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiSession>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiSession.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiSession> mapFromJson(dynamic json) {
    final map = <String, EdFiSession>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiSession.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiSession-objects as value to a dart map
  static Map<String, List<EdFiSession>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiSession>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiSession.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sessionName',
    'schoolReference',
    'schoolYearTypeReference',
    'beginDate',
    'endDate',
    'termDescriptor',
    'totalInstructionalDays',
  };
}

