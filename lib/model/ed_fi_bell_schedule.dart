//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiBellSchedule {
  /// Returns a new [EdFiBellSchedule] instance.
  EdFiBellSchedule({
    this.id,
    required this.bellScheduleName,
    this.classPeriods = const [],
    required this.schoolReference,
    this.alternateDayName,
    this.dates = const [],
    this.endTime,
    this.gradeLevels = const [],
    this.startTime,
    this.totalInstructionalTime,
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

  /// Name or title of the bell schedule.
  String bellScheduleName;

  /// An unordered collection of bellScheduleClassPeriods. The class periods that compose this bell schedule.
  List<EdFiBellScheduleClassPeriod> classPeriods;

  EdFiSchoolReference schoolReference;

  /// An alternate name for the day (e.g., Red, Blue).
  String? alternateDayName;

  /// An unordered collection of bellScheduleDates. The dates for which the bell schedule applies.
  List<EdFiBellScheduleDate> dates;

  /// An indication of the time of day the bell schedule ends.
  String? endTime;

  /// An unordered collection of bellScheduleGradeLevels. The grade levels the particular bell schedule applies to.
  List<EdFiBellScheduleGradeLevel> gradeLevels;

  /// An indication of the time of day the bell schedule begins.
  String? startTime;

  /// The total instructional time in minutes per day for the bell schedule.
  int? totalInstructionalTime;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiBellSchedule &&
    other.id == id &&
    other.bellScheduleName == bellScheduleName &&
    _deepEquality.equals(other.classPeriods, classPeriods) &&
    other.schoolReference == schoolReference &&
    other.alternateDayName == alternateDayName &&
    _deepEquality.equals(other.dates, dates) &&
    other.endTime == endTime &&
    _deepEquality.equals(other.gradeLevels, gradeLevels) &&
    other.startTime == startTime &&
    other.totalInstructionalTime == totalInstructionalTime &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (bellScheduleName.hashCode) +
    (classPeriods.hashCode) +
    (schoolReference.hashCode) +
    (alternateDayName == null ? 0 : alternateDayName!.hashCode) +
    (dates.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode) +
    (gradeLevels.hashCode) +
    (startTime == null ? 0 : startTime!.hashCode) +
    (totalInstructionalTime == null ? 0 : totalInstructionalTime!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiBellSchedule[id=$id, bellScheduleName=$bellScheduleName, classPeriods=$classPeriods, schoolReference=$schoolReference, alternateDayName=$alternateDayName, dates=$dates, endTime=$endTime, gradeLevels=$gradeLevels, startTime=$startTime, totalInstructionalTime=$totalInstructionalTime, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'bellScheduleName'] = this.bellScheduleName;
      json[r'classPeriods'] = this.classPeriods;
      json[r'schoolReference'] = this.schoolReference;
    if (this.alternateDayName != null) {
      json[r'alternateDayName'] = this.alternateDayName;
    } else {
      json[r'alternateDayName'] = null;
    }
      json[r'dates'] = this.dates;
    if (this.endTime != null) {
      json[r'endTime'] = this.endTime;
    } else {
      json[r'endTime'] = null;
    }
      json[r'gradeLevels'] = this.gradeLevels;
    if (this.startTime != null) {
      json[r'startTime'] = this.startTime;
    } else {
      json[r'startTime'] = null;
    }
    if (this.totalInstructionalTime != null) {
      json[r'totalInstructionalTime'] = this.totalInstructionalTime;
    } else {
      json[r'totalInstructionalTime'] = null;
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

  /// Returns a new [EdFiBellSchedule] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiBellSchedule? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiBellSchedule[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiBellSchedule[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiBellSchedule(
        id: mapValueOfType<String>(json, r'id'),
        bellScheduleName: mapValueOfType<String>(json, r'bellScheduleName')!,
        classPeriods: EdFiBellScheduleClassPeriod.listFromJson(json[r'classPeriods']),
        schoolReference: EdFiSchoolReference.fromJson(json[r'schoolReference'])!,
        alternateDayName: mapValueOfType<String>(json, r'alternateDayName'),
        dates: EdFiBellScheduleDate.listFromJson(json[r'dates']),
        endTime: mapValueOfType<String>(json, r'endTime'),
        gradeLevels: EdFiBellScheduleGradeLevel.listFromJson(json[r'gradeLevels']),
        startTime: mapValueOfType<String>(json, r'startTime'),
        totalInstructionalTime: mapValueOfType<int>(json, r'totalInstructionalTime'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiBellSchedule> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiBellSchedule>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiBellSchedule.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiBellSchedule> mapFromJson(dynamic json) {
    final map = <String, EdFiBellSchedule>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiBellSchedule.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiBellSchedule-objects as value to a dart map
  static Map<String, List<EdFiBellSchedule>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiBellSchedule>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiBellSchedule.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'bellScheduleName',
    'classPeriods',
    'schoolReference',
  };
}

