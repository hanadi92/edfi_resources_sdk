//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaffLeave {
  /// Returns a new [EdFiStaffLeave] instance.
  EdFiStaffLeave({
    this.id,
    required this.beginDate,
    required this.staffLeaveEventCategoryDescriptor,
    required this.staffReference,
    this.endDate,
    this.reason,
    this.substituteAssigned,
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

  /// The begin date of the staff leave.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime beginDate;

  /// The code describing the type of leave taken.
  String staffLeaveEventCategoryDescriptor;

  EdFiStaffReference staffReference;

  /// The end date of the staff leave.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  /// Expanded reason for the staff leave.
  String? reason;

  /// Indicator of whether a substitute was assigned during the period of staff leave.
  bool? substituteAssigned;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaffLeave &&
    other.id == id &&
    other.beginDate == beginDate &&
    other.staffLeaveEventCategoryDescriptor == staffLeaveEventCategoryDescriptor &&
    other.staffReference == staffReference &&
    other.endDate == endDate &&
    other.reason == reason &&
    other.substituteAssigned == substituteAssigned &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (beginDate.hashCode) +
    (staffLeaveEventCategoryDescriptor.hashCode) +
    (staffReference.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (substituteAssigned == null ? 0 : substituteAssigned!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStaffLeave[id=$id, beginDate=$beginDate, staffLeaveEventCategoryDescriptor=$staffLeaveEventCategoryDescriptor, staffReference=$staffReference, endDate=$endDate, reason=$reason, substituteAssigned=$substituteAssigned, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'beginDate'] = _dateFormatter.format(this.beginDate.toUtc());
      json[r'staffLeaveEventCategoryDescriptor'] = this.staffLeaveEventCategoryDescriptor;
      json[r'staffReference'] = this.staffReference;
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.substituteAssigned != null) {
      json[r'substituteAssigned'] = this.substituteAssigned;
    } else {
      json[r'substituteAssigned'] = null;
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

  /// Returns a new [EdFiStaffLeave] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaffLeave? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaffLeave[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaffLeave[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaffLeave(
        id: mapValueOfType<String>(json, r'id'),
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        staffLeaveEventCategoryDescriptor: mapValueOfType<String>(json, r'staffLeaveEventCategoryDescriptor')!,
        staffReference: EdFiStaffReference.fromJson(json[r'staffReference'])!,
        endDate: mapDateTime(json, r'endDate', r''),
        reason: mapValueOfType<String>(json, r'reason'),
        substituteAssigned: mapValueOfType<bool>(json, r'substituteAssigned'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStaffLeave> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaffLeave>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaffLeave.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaffLeave> mapFromJson(dynamic json) {
    final map = <String, EdFiStaffLeave>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaffLeave.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaffLeave-objects as value to a dart map
  static Map<String, List<EdFiStaffLeave>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaffLeave>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaffLeave.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'beginDate',
    'staffLeaveEventCategoryDescriptor',
    'staffReference',
  };
}

