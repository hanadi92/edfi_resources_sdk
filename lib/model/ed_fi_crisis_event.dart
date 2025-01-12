//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCrisisEvent {
  /// Returns a new [EdFiCrisisEvent] instance.
  EdFiCrisisEvent({
    this.id,
    required this.crisisEventName,
    this.crisisDescription,
    this.crisisEndDate,
    this.crisisStartDate,
    required this.crisisTypeDescriptor,
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

  /// The name of the crisis event that occurred. If there is no generally accepted name for this crisis event, the suggested format: Location + Crisis type + Year.
  String crisisEventName;

  /// Provides a textual description of the crisis event affecting the student. It may include details such as the nature of the crisis (e.g., natural disaster, conflict, medical emergency), its severity, location, and any other relevant information describing the crisis situation.
  String? crisisDescription;

  /// The date on which the crisis ceased to affect the student. Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? crisisEndDate;

  /// The year, month and day on which the crisis affected the student. This date may not be the same as the date the crisis occurred if evacuation orders are implemented in anticipation of a crisis.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? crisisStartDate;

  /// The type or category of crisis.
  String crisisTypeDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiCrisisEvent &&
    other.id == id &&
    other.crisisEventName == crisisEventName &&
    other.crisisDescription == crisisDescription &&
    other.crisisEndDate == crisisEndDate &&
    other.crisisStartDate == crisisStartDate &&
    other.crisisTypeDescriptor == crisisTypeDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (crisisEventName.hashCode) +
    (crisisDescription == null ? 0 : crisisDescription!.hashCode) +
    (crisisEndDate == null ? 0 : crisisEndDate!.hashCode) +
    (crisisStartDate == null ? 0 : crisisStartDate!.hashCode) +
    (crisisTypeDescriptor.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiCrisisEvent[id=$id, crisisEventName=$crisisEventName, crisisDescription=$crisisDescription, crisisEndDate=$crisisEndDate, crisisStartDate=$crisisStartDate, crisisTypeDescriptor=$crisisTypeDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'crisisEventName'] = this.crisisEventName;
    if (this.crisisDescription != null) {
      json[r'crisisDescription'] = this.crisisDescription;
    } else {
      json[r'crisisDescription'] = null;
    }
    if (this.crisisEndDate != null) {
      json[r'crisisEndDate'] = _dateFormatter.format(this.crisisEndDate!.toUtc());
    } else {
      json[r'crisisEndDate'] = null;
    }
    if (this.crisisStartDate != null) {
      json[r'crisisStartDate'] = _dateFormatter.format(this.crisisStartDate!.toUtc());
    } else {
      json[r'crisisStartDate'] = null;
    }
      json[r'crisisTypeDescriptor'] = this.crisisTypeDescriptor;
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

  /// Returns a new [EdFiCrisisEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCrisisEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCrisisEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCrisisEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCrisisEvent(
        id: mapValueOfType<String>(json, r'id'),
        crisisEventName: mapValueOfType<String>(json, r'crisisEventName')!,
        crisisDescription: mapValueOfType<String>(json, r'crisisDescription'),
        crisisEndDate: mapDateTime(json, r'crisisEndDate', r''),
        crisisStartDate: mapDateTime(json, r'crisisStartDate', r''),
        crisisTypeDescriptor: mapValueOfType<String>(json, r'crisisTypeDescriptor')!,
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiCrisisEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCrisisEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCrisisEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCrisisEvent> mapFromJson(dynamic json) {
    final map = <String, EdFiCrisisEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCrisisEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCrisisEvent-objects as value to a dart map
  static Map<String, List<EdFiCrisisEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCrisisEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCrisisEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'crisisEventName',
    'crisisTypeDescriptor',
  };
}

