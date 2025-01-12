//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiProgramEvaluationObjective {
  /// Returns a new [EdFiProgramEvaluationObjective] instance.
  EdFiProgramEvaluationObjective({
    this.id,
    required this.programEvaluationObjectiveTitle,
    required this.programEvaluationReference,
    this.objectiveMaxNumericRating,
    this.objectiveMinNumericRating,
    this.objectiveSortOrder,
    this.programEvaluationLevels = const [],
    this.programEvaluationObjectiveDescription,
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

  /// The name or title of the program evaluation objective.
  String programEvaluationObjectiveTitle;

  EdFiProgramEvaluationReference programEvaluationReference;

  /// The maximum summary numerical rating or score for the program evaluation objective.
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? objectiveMaxNumericRating;

  /// The minimum summary numerical rating or score for the program evaluation objective. If omitted, assumed to be 0.0
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? objectiveMinNumericRating;

  /// The sort order of this program evaluation objective.
  int? objectiveSortOrder;

  /// An unordered collection of programEvaluationObjectiveProgramEvaluationLevels. The descriptive level(s) of ratings (cut scores) for the program evaluation objective.
  List<EdFiProgramEvaluationObjectiveProgramEvaluationLevel> programEvaluationLevels;

  /// The long description of the program evaluation objective.
  String? programEvaluationObjectiveDescription;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiProgramEvaluationObjective &&
    other.id == id &&
    other.programEvaluationObjectiveTitle == programEvaluationObjectiveTitle &&
    other.programEvaluationReference == programEvaluationReference &&
    other.objectiveMaxNumericRating == objectiveMaxNumericRating &&
    other.objectiveMinNumericRating == objectiveMinNumericRating &&
    other.objectiveSortOrder == objectiveSortOrder &&
    _deepEquality.equals(other.programEvaluationLevels, programEvaluationLevels) &&
    other.programEvaluationObjectiveDescription == programEvaluationObjectiveDescription &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (programEvaluationObjectiveTitle.hashCode) +
    (programEvaluationReference.hashCode) +
    (objectiveMaxNumericRating == null ? 0 : objectiveMaxNumericRating!.hashCode) +
    (objectiveMinNumericRating == null ? 0 : objectiveMinNumericRating!.hashCode) +
    (objectiveSortOrder == null ? 0 : objectiveSortOrder!.hashCode) +
    (programEvaluationLevels.hashCode) +
    (programEvaluationObjectiveDescription == null ? 0 : programEvaluationObjectiveDescription!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiProgramEvaluationObjective[id=$id, programEvaluationObjectiveTitle=$programEvaluationObjectiveTitle, programEvaluationReference=$programEvaluationReference, objectiveMaxNumericRating=$objectiveMaxNumericRating, objectiveMinNumericRating=$objectiveMinNumericRating, objectiveSortOrder=$objectiveSortOrder, programEvaluationLevels=$programEvaluationLevels, programEvaluationObjectiveDescription=$programEvaluationObjectiveDescription, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'programEvaluationObjectiveTitle'] = this.programEvaluationObjectiveTitle;
      json[r'programEvaluationReference'] = this.programEvaluationReference;
    if (this.objectiveMaxNumericRating != null) {
      json[r'objectiveMaxNumericRating'] = this.objectiveMaxNumericRating;
    } else {
      json[r'objectiveMaxNumericRating'] = null;
    }
    if (this.objectiveMinNumericRating != null) {
      json[r'objectiveMinNumericRating'] = this.objectiveMinNumericRating;
    } else {
      json[r'objectiveMinNumericRating'] = null;
    }
    if (this.objectiveSortOrder != null) {
      json[r'objectiveSortOrder'] = this.objectiveSortOrder;
    } else {
      json[r'objectiveSortOrder'] = null;
    }
      json[r'programEvaluationLevels'] = this.programEvaluationLevels;
    if (this.programEvaluationObjectiveDescription != null) {
      json[r'programEvaluationObjectiveDescription'] = this.programEvaluationObjectiveDescription;
    } else {
      json[r'programEvaluationObjectiveDescription'] = null;
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

  /// Returns a new [EdFiProgramEvaluationObjective] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiProgramEvaluationObjective? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiProgramEvaluationObjective[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiProgramEvaluationObjective[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiProgramEvaluationObjective(
        id: mapValueOfType<String>(json, r'id'),
        programEvaluationObjectiveTitle: mapValueOfType<String>(json, r'programEvaluationObjectiveTitle')!,
        programEvaluationReference: EdFiProgramEvaluationReference.fromJson(json[r'programEvaluationReference'])!,
        objectiveMaxNumericRating: mapValueOfType<double>(json, r'objectiveMaxNumericRating'),
        objectiveMinNumericRating: mapValueOfType<double>(json, r'objectiveMinNumericRating'),
        objectiveSortOrder: mapValueOfType<int>(json, r'objectiveSortOrder'),
        programEvaluationLevels: EdFiProgramEvaluationObjectiveProgramEvaluationLevel.listFromJson(json[r'programEvaluationLevels']),
        programEvaluationObjectiveDescription: mapValueOfType<String>(json, r'programEvaluationObjectiveDescription'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiProgramEvaluationObjective> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiProgramEvaluationObjective>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiProgramEvaluationObjective.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiProgramEvaluationObjective> mapFromJson(dynamic json) {
    final map = <String, EdFiProgramEvaluationObjective>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiProgramEvaluationObjective.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiProgramEvaluationObjective-objects as value to a dart map
  static Map<String, List<EdFiProgramEvaluationObjective>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiProgramEvaluationObjective>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiProgramEvaluationObjective.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'programEvaluationObjectiveTitle',
    'programEvaluationReference',
  };
}

