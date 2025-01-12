//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiProgramEvaluationElement {
  /// Returns a new [EdFiProgramEvaluationElement] instance.
  EdFiProgramEvaluationElement({
    this.id,
    required this.programEvaluationElementTitle,
    this.programEvaluationObjectiveReference,
    required this.programEvaluationReference,
    this.elementMaxNumericRating,
    this.elementMinNumericRating,
    this.elementSortOrder,
    this.programEvaluationElementDescription,
    this.programEvaluationLevels = const [],
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

  /// The name or title of the program evaluation element.
  String programEvaluationElementTitle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiProgramEvaluationObjectiveReference? programEvaluationObjectiveReference;

  EdFiProgramEvaluationReference programEvaluationReference;

  /// The maximum summary numerical rating or score for the program evaluation element.
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? elementMaxNumericRating;

  /// The minimum summary numerical rating or score for the program evaluation element. If omitted, assumed to be 0.0.
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? elementMinNumericRating;

  /// The sort order of this program evaluation element.
  int? elementSortOrder;

  /// The long description of the program evaluation element.
  String? programEvaluationElementDescription;

  /// An unordered collection of programEvaluationElementProgramEvaluationLevels. The descriptive level(s) of ratings (cut scores) for the program evaluation element.
  List<EdFiProgramEvaluationElementProgramEvaluationLevel> programEvaluationLevels;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiProgramEvaluationElement &&
    other.id == id &&
    other.programEvaluationElementTitle == programEvaluationElementTitle &&
    other.programEvaluationObjectiveReference == programEvaluationObjectiveReference &&
    other.programEvaluationReference == programEvaluationReference &&
    other.elementMaxNumericRating == elementMaxNumericRating &&
    other.elementMinNumericRating == elementMinNumericRating &&
    other.elementSortOrder == elementSortOrder &&
    other.programEvaluationElementDescription == programEvaluationElementDescription &&
    _deepEquality.equals(other.programEvaluationLevels, programEvaluationLevels) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (programEvaluationElementTitle.hashCode) +
    (programEvaluationObjectiveReference == null ? 0 : programEvaluationObjectiveReference!.hashCode) +
    (programEvaluationReference.hashCode) +
    (elementMaxNumericRating == null ? 0 : elementMaxNumericRating!.hashCode) +
    (elementMinNumericRating == null ? 0 : elementMinNumericRating!.hashCode) +
    (elementSortOrder == null ? 0 : elementSortOrder!.hashCode) +
    (programEvaluationElementDescription == null ? 0 : programEvaluationElementDescription!.hashCode) +
    (programEvaluationLevels.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiProgramEvaluationElement[id=$id, programEvaluationElementTitle=$programEvaluationElementTitle, programEvaluationObjectiveReference=$programEvaluationObjectiveReference, programEvaluationReference=$programEvaluationReference, elementMaxNumericRating=$elementMaxNumericRating, elementMinNumericRating=$elementMinNumericRating, elementSortOrder=$elementSortOrder, programEvaluationElementDescription=$programEvaluationElementDescription, programEvaluationLevels=$programEvaluationLevels, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'programEvaluationElementTitle'] = this.programEvaluationElementTitle;
    if (this.programEvaluationObjectiveReference != null) {
      json[r'programEvaluationObjectiveReference'] = this.programEvaluationObjectiveReference;
    } else {
      json[r'programEvaluationObjectiveReference'] = null;
    }
      json[r'programEvaluationReference'] = this.programEvaluationReference;
    if (this.elementMaxNumericRating != null) {
      json[r'elementMaxNumericRating'] = this.elementMaxNumericRating;
    } else {
      json[r'elementMaxNumericRating'] = null;
    }
    if (this.elementMinNumericRating != null) {
      json[r'elementMinNumericRating'] = this.elementMinNumericRating;
    } else {
      json[r'elementMinNumericRating'] = null;
    }
    if (this.elementSortOrder != null) {
      json[r'elementSortOrder'] = this.elementSortOrder;
    } else {
      json[r'elementSortOrder'] = null;
    }
    if (this.programEvaluationElementDescription != null) {
      json[r'programEvaluationElementDescription'] = this.programEvaluationElementDescription;
    } else {
      json[r'programEvaluationElementDescription'] = null;
    }
      json[r'programEvaluationLevels'] = this.programEvaluationLevels;
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

  /// Returns a new [EdFiProgramEvaluationElement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiProgramEvaluationElement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiProgramEvaluationElement[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiProgramEvaluationElement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiProgramEvaluationElement(
        id: mapValueOfType<String>(json, r'id'),
        programEvaluationElementTitle: mapValueOfType<String>(json, r'programEvaluationElementTitle')!,
        programEvaluationObjectiveReference: EdFiProgramEvaluationObjectiveReference.fromJson(json[r'programEvaluationObjectiveReference']),
        programEvaluationReference: EdFiProgramEvaluationReference.fromJson(json[r'programEvaluationReference'])!,
        elementMaxNumericRating: mapValueOfType<double>(json, r'elementMaxNumericRating'),
        elementMinNumericRating: mapValueOfType<double>(json, r'elementMinNumericRating'),
        elementSortOrder: mapValueOfType<int>(json, r'elementSortOrder'),
        programEvaluationElementDescription: mapValueOfType<String>(json, r'programEvaluationElementDescription'),
        programEvaluationLevels: EdFiProgramEvaluationElementProgramEvaluationLevel.listFromJson(json[r'programEvaluationLevels']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiProgramEvaluationElement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiProgramEvaluationElement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiProgramEvaluationElement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiProgramEvaluationElement> mapFromJson(dynamic json) {
    final map = <String, EdFiProgramEvaluationElement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiProgramEvaluationElement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiProgramEvaluationElement-objects as value to a dart map
  static Map<String, List<EdFiProgramEvaluationElement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiProgramEvaluationElement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiProgramEvaluationElement.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'programEvaluationElementTitle',
    'programEvaluationReference',
  };
}

