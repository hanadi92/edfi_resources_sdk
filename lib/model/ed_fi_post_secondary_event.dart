//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiPostSecondaryEvent {
  /// Returns a new [EdFiPostSecondaryEvent] instance.
  EdFiPostSecondaryEvent({
    this.id,
    required this.eventDate,
    required this.postSecondaryEventCategoryDescriptor,
    this.postSecondaryInstitutionReference,
    required this.studentReference,
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

  /// The date the event occurred or was recorded.
  DateTime eventDate;

  /// The post secondary event that is logged.
  String postSecondaryEventCategoryDescriptor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiPostSecondaryInstitutionReference? postSecondaryInstitutionReference;

  EdFiStudentReference studentReference;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiPostSecondaryEvent &&
    other.id == id &&
    other.eventDate == eventDate &&
    other.postSecondaryEventCategoryDescriptor == postSecondaryEventCategoryDescriptor &&
    other.postSecondaryInstitutionReference == postSecondaryInstitutionReference &&
    other.studentReference == studentReference &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (eventDate.hashCode) +
    (postSecondaryEventCategoryDescriptor.hashCode) +
    (postSecondaryInstitutionReference == null ? 0 : postSecondaryInstitutionReference!.hashCode) +
    (studentReference.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiPostSecondaryEvent[id=$id, eventDate=$eventDate, postSecondaryEventCategoryDescriptor=$postSecondaryEventCategoryDescriptor, postSecondaryInstitutionReference=$postSecondaryInstitutionReference, studentReference=$studentReference, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'eventDate'] = _dateFormatter.format(this.eventDate.toUtc());
      json[r'postSecondaryEventCategoryDescriptor'] = this.postSecondaryEventCategoryDescriptor;
    if (this.postSecondaryInstitutionReference != null) {
      json[r'postSecondaryInstitutionReference'] = this.postSecondaryInstitutionReference;
    } else {
      json[r'postSecondaryInstitutionReference'] = null;
    }
      json[r'studentReference'] = this.studentReference;
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

  /// Returns a new [EdFiPostSecondaryEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiPostSecondaryEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiPostSecondaryEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiPostSecondaryEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiPostSecondaryEvent(
        id: mapValueOfType<String>(json, r'id'),
        eventDate: mapDateTime(json, r'eventDate', r'')!,
        postSecondaryEventCategoryDescriptor: mapValueOfType<String>(json, r'postSecondaryEventCategoryDescriptor')!,
        postSecondaryInstitutionReference: EdFiPostSecondaryInstitutionReference.fromJson(json[r'postSecondaryInstitutionReference']),
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiPostSecondaryEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiPostSecondaryEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiPostSecondaryEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiPostSecondaryEvent> mapFromJson(dynamic json) {
    final map = <String, EdFiPostSecondaryEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiPostSecondaryEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiPostSecondaryEvent-objects as value to a dart map
  static Map<String, List<EdFiPostSecondaryEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiPostSecondaryEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiPostSecondaryEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'eventDate',
    'postSecondaryEventCategoryDescriptor',
    'studentReference',
  };
}

