//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentSchoolAssociationReference {
  /// Returns a new [EdFiStudentSchoolAssociationReference] instance.
  EdFiStudentSchoolAssociationReference({
    required this.entryDate,
    required this.schoolId,
    required this.studentUniqueId,
    this.link,
  });

  /// The month, day, and year on which an individual enters and begins to receive instructional services in a school for each school year. The EntryDate value should be the date the student enrolled, or when the student's enrollment materially changed, such as with a grade promotion.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime entryDate;

  /// The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  int schoolId;

  /// A unique alphanumeric code assigned to a student.
  String studentUniqueId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentSchoolAssociationReference &&
    other.entryDate == entryDate &&
    other.schoolId == schoolId &&
    other.studentUniqueId == studentUniqueId &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entryDate.hashCode) +
    (schoolId.hashCode) +
    (studentUniqueId.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiStudentSchoolAssociationReference[entryDate=$entryDate, schoolId=$schoolId, studentUniqueId=$studentUniqueId, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'entryDate'] = _dateFormatter.format(this.entryDate.toUtc());
      json[r'schoolId'] = this.schoolId;
      json[r'studentUniqueId'] = this.studentUniqueId;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiStudentSchoolAssociationReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentSchoolAssociationReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentSchoolAssociationReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentSchoolAssociationReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentSchoolAssociationReference(
        entryDate: mapDateTime(json, r'entryDate', r'')!,
        schoolId: mapValueOfType<int>(json, r'schoolId')!,
        studentUniqueId: mapValueOfType<String>(json, r'studentUniqueId')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiStudentSchoolAssociationReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentSchoolAssociationReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentSchoolAssociationReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentSchoolAssociationReference> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentSchoolAssociationReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentSchoolAssociationReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentSchoolAssociationReference-objects as value to a dart map
  static Map<String, List<EdFiStudentSchoolAssociationReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentSchoolAssociationReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentSchoolAssociationReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'entryDate',
    'schoolId',
    'studentUniqueId',
  };
}

