//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiClassPeriod {
  /// Returns a new [EdFiClassPeriod] instance.
  EdFiClassPeriod({
    this.id,
    required this.classPeriodName,
    required this.schoolReference,
    this.meetingTimes = const [],
    this.officialAttendancePeriod,
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

  /// An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).
  String classPeriodName;

  EdFiSchoolReference schoolReference;

  /// An unordered collection of classPeriodMeetingTimes. The meeting time(s) for a class period.
  List<EdFiClassPeriodMeetingTime> meetingTimes;

  /// Indicator of whether this class period is used for official daily attendance. Alternatively, official daily attendance may be tied to a section.
  bool? officialAttendancePeriod;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiClassPeriod &&
    other.id == id &&
    other.classPeriodName == classPeriodName &&
    other.schoolReference == schoolReference &&
    _deepEquality.equals(other.meetingTimes, meetingTimes) &&
    other.officialAttendancePeriod == officialAttendancePeriod &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (classPeriodName.hashCode) +
    (schoolReference.hashCode) +
    (meetingTimes.hashCode) +
    (officialAttendancePeriod == null ? 0 : officialAttendancePeriod!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiClassPeriod[id=$id, classPeriodName=$classPeriodName, schoolReference=$schoolReference, meetingTimes=$meetingTimes, officialAttendancePeriod=$officialAttendancePeriod, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'classPeriodName'] = this.classPeriodName;
      json[r'schoolReference'] = this.schoolReference;
      json[r'meetingTimes'] = this.meetingTimes;
    if (this.officialAttendancePeriod != null) {
      json[r'officialAttendancePeriod'] = this.officialAttendancePeriod;
    } else {
      json[r'officialAttendancePeriod'] = null;
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

  /// Returns a new [EdFiClassPeriod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiClassPeriod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiClassPeriod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiClassPeriod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiClassPeriod(
        id: mapValueOfType<String>(json, r'id'),
        classPeriodName: mapValueOfType<String>(json, r'classPeriodName')!,
        schoolReference: EdFiSchoolReference.fromJson(json[r'schoolReference'])!,
        meetingTimes: EdFiClassPeriodMeetingTime.listFromJson(json[r'meetingTimes']),
        officialAttendancePeriod: mapValueOfType<bool>(json, r'officialAttendancePeriod'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiClassPeriod> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiClassPeriod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiClassPeriod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiClassPeriod> mapFromJson(dynamic json) {
    final map = <String, EdFiClassPeriod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiClassPeriod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiClassPeriod-objects as value to a dart map
  static Map<String, List<EdFiClassPeriod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiClassPeriod>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiClassPeriod.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'classPeriodName',
    'schoolReference',
  };
}

