//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiStaffAbsenceEventKey {
  /// Returns a new [TrackedChangesEdFiStaffAbsenceEventKey] instance.
  TrackedChangesEdFiStaffAbsenceEventKey({
    this.absenceEventCategoryDescriptor,
    this.eventDate,
    this.staffUniqueId,
  });

  /// The code describing the type of absence.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? absenceEventCategoryDescriptor;

  /// Date for this leave event.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? eventDate;

  /// A unique alphanumeric code assigned to a staff.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? staffUniqueId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiStaffAbsenceEventKey &&
    other.absenceEventCategoryDescriptor == absenceEventCategoryDescriptor &&
    other.eventDate == eventDate &&
    other.staffUniqueId == staffUniqueId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (absenceEventCategoryDescriptor == null ? 0 : absenceEventCategoryDescriptor!.hashCode) +
    (eventDate == null ? 0 : eventDate!.hashCode) +
    (staffUniqueId == null ? 0 : staffUniqueId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiStaffAbsenceEventKey[absenceEventCategoryDescriptor=$absenceEventCategoryDescriptor, eventDate=$eventDate, staffUniqueId=$staffUniqueId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.absenceEventCategoryDescriptor != null) {
      json[r'absenceEventCategoryDescriptor'] = this.absenceEventCategoryDescriptor;
    } else {
      json[r'absenceEventCategoryDescriptor'] = null;
    }
    if (this.eventDate != null) {
      json[r'eventDate'] = _dateFormatter.format(this.eventDate!.toUtc());
    } else {
      json[r'eventDate'] = null;
    }
    if (this.staffUniqueId != null) {
      json[r'staffUniqueId'] = this.staffUniqueId;
    } else {
      json[r'staffUniqueId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiStaffAbsenceEventKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiStaffAbsenceEventKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiStaffAbsenceEventKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiStaffAbsenceEventKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiStaffAbsenceEventKey(
        absenceEventCategoryDescriptor: mapValueOfType<String>(json, r'absenceEventCategoryDescriptor'),
        eventDate: mapDateTime(json, r'eventDate', r''),
        staffUniqueId: mapValueOfType<String>(json, r'staffUniqueId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiStaffAbsenceEventKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiStaffAbsenceEventKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiStaffAbsenceEventKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiStaffAbsenceEventKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiStaffAbsenceEventKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiStaffAbsenceEventKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiStaffAbsenceEventKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiStaffAbsenceEventKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiStaffAbsenceEventKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiStaffAbsenceEventKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

