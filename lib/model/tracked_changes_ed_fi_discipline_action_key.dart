//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiDisciplineActionKey {
  /// Returns a new [TrackedChangesEdFiDisciplineActionKey] instance.
  TrackedChangesEdFiDisciplineActionKey({
    this.disciplineActionIdentifier,
    this.disciplineDate,
    this.studentUniqueId,
  });

  /// Identifier assigned by the education organization to the discipline action.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? disciplineActionIdentifier;

  /// The date of the discipline action.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? disciplineDate;

  /// A unique alphanumeric code assigned to a student.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? studentUniqueId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiDisciplineActionKey &&
    other.disciplineActionIdentifier == disciplineActionIdentifier &&
    other.disciplineDate == disciplineDate &&
    other.studentUniqueId == studentUniqueId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (disciplineActionIdentifier == null ? 0 : disciplineActionIdentifier!.hashCode) +
    (disciplineDate == null ? 0 : disciplineDate!.hashCode) +
    (studentUniqueId == null ? 0 : studentUniqueId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiDisciplineActionKey[disciplineActionIdentifier=$disciplineActionIdentifier, disciplineDate=$disciplineDate, studentUniqueId=$studentUniqueId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.disciplineActionIdentifier != null) {
      json[r'disciplineActionIdentifier'] = this.disciplineActionIdentifier;
    } else {
      json[r'disciplineActionIdentifier'] = null;
    }
    if (this.disciplineDate != null) {
      json[r'disciplineDate'] = _dateFormatter.format(this.disciplineDate!.toUtc());
    } else {
      json[r'disciplineDate'] = null;
    }
    if (this.studentUniqueId != null) {
      json[r'studentUniqueId'] = this.studentUniqueId;
    } else {
      json[r'studentUniqueId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiDisciplineActionKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiDisciplineActionKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiDisciplineActionKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiDisciplineActionKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiDisciplineActionKey(
        disciplineActionIdentifier: mapValueOfType<String>(json, r'disciplineActionIdentifier'),
        disciplineDate: mapDateTime(json, r'disciplineDate', r''),
        studentUniqueId: mapValueOfType<String>(json, r'studentUniqueId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiDisciplineActionKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiDisciplineActionKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiDisciplineActionKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiDisciplineActionKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiDisciplineActionKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiDisciplineActionKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiDisciplineActionKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiDisciplineActionKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiDisciplineActionKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiDisciplineActionKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

