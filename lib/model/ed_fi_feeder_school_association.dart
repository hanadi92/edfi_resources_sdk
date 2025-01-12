//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiFeederSchoolAssociation {
  /// Returns a new [EdFiFeederSchoolAssociation] instance.
  EdFiFeederSchoolAssociation({
    this.id,
    required this.beginDate,
    required this.feederSchoolReference,
    required this.schoolReference,
    this.endDate,
    this.feederRelationshipDescription,
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

  /// The month, day, and year of the first day of the feeder school association.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime beginDate;

  EdFiSchoolReference feederSchoolReference;

  EdFiSchoolReference schoolReference;

  /// The month, day, and year of the last day of the feeder school association.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  /// Describes the relationship from the feeder school to the receiving school, for example by program emphasis, such as special education, language immersion, science, or performing art.
  String? feederRelationshipDescription;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiFeederSchoolAssociation &&
    other.id == id &&
    other.beginDate == beginDate &&
    other.feederSchoolReference == feederSchoolReference &&
    other.schoolReference == schoolReference &&
    other.endDate == endDate &&
    other.feederRelationshipDescription == feederRelationshipDescription &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (beginDate.hashCode) +
    (feederSchoolReference.hashCode) +
    (schoolReference.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (feederRelationshipDescription == null ? 0 : feederRelationshipDescription!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiFeederSchoolAssociation[id=$id, beginDate=$beginDate, feederSchoolReference=$feederSchoolReference, schoolReference=$schoolReference, endDate=$endDate, feederRelationshipDescription=$feederRelationshipDescription, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'beginDate'] = _dateFormatter.format(this.beginDate.toUtc());
      json[r'feederSchoolReference'] = this.feederSchoolReference;
      json[r'schoolReference'] = this.schoolReference;
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
    if (this.feederRelationshipDescription != null) {
      json[r'feederRelationshipDescription'] = this.feederRelationshipDescription;
    } else {
      json[r'feederRelationshipDescription'] = null;
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

  /// Returns a new [EdFiFeederSchoolAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiFeederSchoolAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiFeederSchoolAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiFeederSchoolAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiFeederSchoolAssociation(
        id: mapValueOfType<String>(json, r'id'),
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        feederSchoolReference: EdFiSchoolReference.fromJson(json[r'feederSchoolReference'])!,
        schoolReference: EdFiSchoolReference.fromJson(json[r'schoolReference'])!,
        endDate: mapDateTime(json, r'endDate', r''),
        feederRelationshipDescription: mapValueOfType<String>(json, r'feederRelationshipDescription'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiFeederSchoolAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiFeederSchoolAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiFeederSchoolAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiFeederSchoolAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiFeederSchoolAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiFeederSchoolAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiFeederSchoolAssociation-objects as value to a dart map
  static Map<String, List<EdFiFeederSchoolAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiFeederSchoolAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiFeederSchoolAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'beginDate',
    'feederSchoolReference',
    'schoolReference',
  };
}

