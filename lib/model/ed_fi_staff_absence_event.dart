//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaffAbsenceEvent {
  /// Returns a new [EdFiStaffAbsenceEvent] instance.
  EdFiStaffAbsenceEvent({
    this.id,
    required this.absenceEventCategoryDescriptor,
    required this.eventDate,
    required this.staffReference,
    this.absenceEventReason,
    this.hoursAbsent,
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

  /// The code describing the type of absence.
  String absenceEventCategoryDescriptor;

  /// Date for this leave event.
  DateTime eventDate;

  EdFiStaffReference staffReference;

  /// Expanded reason for the staff absence.
  String? absenceEventReason;

  /// The hours the staff was absent, if not the entire working day.
  ///
  /// Minimum value: -1.0E+16
  /// Maximum value: 1.0E+16
  double? hoursAbsent;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaffAbsenceEvent &&
    other.id == id &&
    other.absenceEventCategoryDescriptor == absenceEventCategoryDescriptor &&
    other.eventDate == eventDate &&
    other.staffReference == staffReference &&
    other.absenceEventReason == absenceEventReason &&
    other.hoursAbsent == hoursAbsent &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (absenceEventCategoryDescriptor.hashCode) +
    (eventDate.hashCode) +
    (staffReference.hashCode) +
    (absenceEventReason == null ? 0 : absenceEventReason!.hashCode) +
    (hoursAbsent == null ? 0 : hoursAbsent!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStaffAbsenceEvent[id=$id, absenceEventCategoryDescriptor=$absenceEventCategoryDescriptor, eventDate=$eventDate, staffReference=$staffReference, absenceEventReason=$absenceEventReason, hoursAbsent=$hoursAbsent, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'absenceEventCategoryDescriptor'] = this.absenceEventCategoryDescriptor;
      json[r'eventDate'] = _dateFormatter.format(this.eventDate.toUtc());
      json[r'staffReference'] = this.staffReference;
    if (this.absenceEventReason != null) {
      json[r'absenceEventReason'] = this.absenceEventReason;
    } else {
      json[r'absenceEventReason'] = null;
    }
    if (this.hoursAbsent != null) {
      json[r'hoursAbsent'] = this.hoursAbsent;
    } else {
      json[r'hoursAbsent'] = null;
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

  /// Returns a new [EdFiStaffAbsenceEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaffAbsenceEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaffAbsenceEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaffAbsenceEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaffAbsenceEvent(
        id: mapValueOfType<String>(json, r'id'),
        absenceEventCategoryDescriptor: mapValueOfType<String>(json, r'absenceEventCategoryDescriptor')!,
        eventDate: mapDateTime(json, r'eventDate', r'')!,
        staffReference: EdFiStaffReference.fromJson(json[r'staffReference'])!,
        absenceEventReason: mapValueOfType<String>(json, r'absenceEventReason'),
        hoursAbsent: mapValueOfType<double>(json, r'hoursAbsent'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStaffAbsenceEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaffAbsenceEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaffAbsenceEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaffAbsenceEvent> mapFromJson(dynamic json) {
    final map = <String, EdFiStaffAbsenceEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaffAbsenceEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaffAbsenceEvent-objects as value to a dart map
  static Map<String, List<EdFiStaffAbsenceEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaffAbsenceEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaffAbsenceEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'absenceEventCategoryDescriptor',
    'eventDate',
    'staffReference',
  };
}

