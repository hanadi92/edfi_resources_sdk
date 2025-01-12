//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiGradingPeriod {
  /// Returns a new [EdFiGradingPeriod] instance.
  EdFiGradingPeriod({
    this.id,
    required this.gradingPeriodDescriptor,
    required this.gradingPeriodName,
    required this.schoolReference,
    required this.schoolYearTypeReference,
    required this.beginDate,
    required this.endDate,
    this.periodSequence,
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

  /// The state's name of the period for which grades are reported.
  String gradingPeriodDescriptor;

  /// The school's descriptive name of the grading period.
  String gradingPeriodName;

  EdFiSchoolReference schoolReference;

  EdFiSchoolYearTypeReference schoolYearTypeReference;

  /// Month, day, and year of the first day of the grading period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime beginDate;

  /// Month, day, and year of the last day of the grading period.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime endDate;

  /// The sequential order of this period relative to other periods.
  int? periodSequence;

  /// Total days available for educational instruction during the grading period.
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
  bool operator ==(Object other) => identical(this, other) || other is EdFiGradingPeriod &&
    other.id == id &&
    other.gradingPeriodDescriptor == gradingPeriodDescriptor &&
    other.gradingPeriodName == gradingPeriodName &&
    other.schoolReference == schoolReference &&
    other.schoolYearTypeReference == schoolYearTypeReference &&
    other.beginDate == beginDate &&
    other.endDate == endDate &&
    other.periodSequence == periodSequence &&
    other.totalInstructionalDays == totalInstructionalDays &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (gradingPeriodDescriptor.hashCode) +
    (gradingPeriodName.hashCode) +
    (schoolReference.hashCode) +
    (schoolYearTypeReference.hashCode) +
    (beginDate.hashCode) +
    (endDate.hashCode) +
    (periodSequence == null ? 0 : periodSequence!.hashCode) +
    (totalInstructionalDays.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiGradingPeriod[id=$id, gradingPeriodDescriptor=$gradingPeriodDescriptor, gradingPeriodName=$gradingPeriodName, schoolReference=$schoolReference, schoolYearTypeReference=$schoolYearTypeReference, beginDate=$beginDate, endDate=$endDate, periodSequence=$periodSequence, totalInstructionalDays=$totalInstructionalDays, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'gradingPeriodDescriptor'] = this.gradingPeriodDescriptor;
      json[r'gradingPeriodName'] = this.gradingPeriodName;
      json[r'schoolReference'] = this.schoolReference;
      json[r'schoolYearTypeReference'] = this.schoolYearTypeReference;
      json[r'beginDate'] = _dateFormatter.format(this.beginDate.toUtc());
      json[r'endDate'] = _dateFormatter.format(this.endDate.toUtc());
    if (this.periodSequence != null) {
      json[r'periodSequence'] = this.periodSequence;
    } else {
      json[r'periodSequence'] = null;
    }
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

  /// Returns a new [EdFiGradingPeriod] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiGradingPeriod? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiGradingPeriod[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiGradingPeriod[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiGradingPeriod(
        id: mapValueOfType<String>(json, r'id'),
        gradingPeriodDescriptor: mapValueOfType<String>(json, r'gradingPeriodDescriptor')!,
        gradingPeriodName: mapValueOfType<String>(json, r'gradingPeriodName')!,
        schoolReference: EdFiSchoolReference.fromJson(json[r'schoolReference'])!,
        schoolYearTypeReference: EdFiSchoolYearTypeReference.fromJson(json[r'schoolYearTypeReference'])!,
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        endDate: mapDateTime(json, r'endDate', r'')!,
        periodSequence: mapValueOfType<int>(json, r'periodSequence'),
        totalInstructionalDays: mapValueOfType<int>(json, r'totalInstructionalDays')!,
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiGradingPeriod> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiGradingPeriod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiGradingPeriod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiGradingPeriod> mapFromJson(dynamic json) {
    final map = <String, EdFiGradingPeriod>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiGradingPeriod.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiGradingPeriod-objects as value to a dart map
  static Map<String, List<EdFiGradingPeriod>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiGradingPeriod>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiGradingPeriod.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'gradingPeriodDescriptor',
    'gradingPeriodName',
    'schoolReference',
    'schoolYearTypeReference',
    'beginDate',
    'endDate',
    'totalInstructionalDays',
  };
}

