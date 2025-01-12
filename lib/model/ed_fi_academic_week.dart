//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiAcademicWeek {
  /// Returns a new [EdFiAcademicWeek] instance.
  EdFiAcademicWeek({
    this.id,
    required this.weekIdentifier,
    required this.schoolReference,
    required this.beginDate,
    required this.endDate,
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

  /// The school label for the week.
  String weekIdentifier;

  EdFiSchoolReference schoolReference;

  /// The start date for the academic week.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime beginDate;

  /// The end date for the academic week.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime endDate;

  /// The total instructional days during the academic week.
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
  bool operator ==(Object other) => identical(this, other) || other is EdFiAcademicWeek &&
    other.id == id &&
    other.weekIdentifier == weekIdentifier &&
    other.schoolReference == schoolReference &&
    other.beginDate == beginDate &&
    other.endDate == endDate &&
    other.totalInstructionalDays == totalInstructionalDays &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (weekIdentifier.hashCode) +
    (schoolReference.hashCode) +
    (beginDate.hashCode) +
    (endDate.hashCode) +
    (totalInstructionalDays.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiAcademicWeek[id=$id, weekIdentifier=$weekIdentifier, schoolReference=$schoolReference, beginDate=$beginDate, endDate=$endDate, totalInstructionalDays=$totalInstructionalDays, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'weekIdentifier'] = this.weekIdentifier;
      json[r'schoolReference'] = this.schoolReference;
      json[r'beginDate'] = _dateFormatter.format(this.beginDate.toUtc());
      json[r'endDate'] = _dateFormatter.format(this.endDate.toUtc());
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

  /// Returns a new [EdFiAcademicWeek] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiAcademicWeek? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiAcademicWeek[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiAcademicWeek[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiAcademicWeek(
        id: mapValueOfType<String>(json, r'id'),
        weekIdentifier: mapValueOfType<String>(json, r'weekIdentifier')!,
        schoolReference: EdFiSchoolReference.fromJson(json[r'schoolReference'])!,
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        endDate: mapDateTime(json, r'endDate', r'')!,
        totalInstructionalDays: mapValueOfType<int>(json, r'totalInstructionalDays')!,
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiAcademicWeek> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiAcademicWeek>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiAcademicWeek.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiAcademicWeek> mapFromJson(dynamic json) {
    final map = <String, EdFiAcademicWeek>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiAcademicWeek.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiAcademicWeek-objects as value to a dart map
  static Map<String, List<EdFiAcademicWeek>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiAcademicWeek>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiAcademicWeek.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'weekIdentifier',
    'schoolReference',
    'beginDate',
    'endDate',
    'totalInstructionalDays',
  };
}

