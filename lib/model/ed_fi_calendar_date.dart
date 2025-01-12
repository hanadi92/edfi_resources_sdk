//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCalendarDate {
  /// Returns a new [EdFiCalendarDate] instance.
  EdFiCalendarDate({
    this.id,
    this.calendarEvents = const [],
    required this.date,
    required this.calendarReference,
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

  /// An unordered collection of calendarDateCalendarEvents. The type of scheduled or unscheduled event for the day.
  List<EdFiCalendarDateCalendarEvent> calendarEvents;

  /// The month, day, and year of the calendar event.
  DateTime date;

  EdFiCalendarReference calendarReference;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiCalendarDate &&
    other.id == id &&
    _deepEquality.equals(other.calendarEvents, calendarEvents) &&
    other.date == date &&
    other.calendarReference == calendarReference &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (calendarEvents.hashCode) +
    (date.hashCode) +
    (calendarReference.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiCalendarDate[id=$id, calendarEvents=$calendarEvents, date=$date, calendarReference=$calendarReference, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'calendarEvents'] = this.calendarEvents;
      json[r'date'] = _dateFormatter.format(this.date.toUtc());
      json[r'calendarReference'] = this.calendarReference;
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

  /// Returns a new [EdFiCalendarDate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCalendarDate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCalendarDate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCalendarDate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCalendarDate(
        id: mapValueOfType<String>(json, r'id'),
        calendarEvents: EdFiCalendarDateCalendarEvent.listFromJson(json[r'calendarEvents']),
        date: mapDateTime(json, r'date', r'')!,
        calendarReference: EdFiCalendarReference.fromJson(json[r'calendarReference'])!,
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiCalendarDate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCalendarDate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCalendarDate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCalendarDate> mapFromJson(dynamic json) {
    final map = <String, EdFiCalendarDate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCalendarDate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCalendarDate-objects as value to a dart map
  static Map<String, List<EdFiCalendarDate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCalendarDate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCalendarDate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'calendarEvents',
    'date',
    'calendarReference',
  };
}

