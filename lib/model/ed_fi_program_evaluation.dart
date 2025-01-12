//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiProgramEvaluation {
  /// Returns a new [EdFiProgramEvaluation] instance.
  EdFiProgramEvaluation({
    this.id,
    required this.programEvaluationPeriodDescriptor,
    required this.programEvaluationTitle,
    required this.programEvaluationTypeDescriptor,
    required this.programReference,
    this.evaluationMaxNumericRating,
    this.evaluationMinNumericRating,
    this.levels = const [],
    this.programEvaluationDescription,
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

  /// The name of the period for the program evaluation.
  String programEvaluationPeriodDescriptor;

  /// An assigned unique identifier for the student program evaluation.
  String programEvaluationTitle;

  /// The type of program evaluation conducted.
  String programEvaluationTypeDescriptor;

  EdFiProgramReference programReference;

  /// The maximum summary numerical rating or score for the program evaluation.
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? evaluationMaxNumericRating;

  /// The minimum summary numerical rating or score for the program evaluation. If omitted, assumed to be 0.0
  ///
  /// Minimum value: -999.999
  /// Maximum value: 999.999
  double? evaluationMinNumericRating;

  /// An unordered collection of programEvaluationLevels. The descriptive level(s) of ratings (cut scores) for the program evaluation.
  List<EdFiProgramEvaluationLevel> levels;

  /// The long description of the program evaluation.
  String? programEvaluationDescription;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiProgramEvaluation &&
    other.id == id &&
    other.programEvaluationPeriodDescriptor == programEvaluationPeriodDescriptor &&
    other.programEvaluationTitle == programEvaluationTitle &&
    other.programEvaluationTypeDescriptor == programEvaluationTypeDescriptor &&
    other.programReference == programReference &&
    other.evaluationMaxNumericRating == evaluationMaxNumericRating &&
    other.evaluationMinNumericRating == evaluationMinNumericRating &&
    _deepEquality.equals(other.levels, levels) &&
    other.programEvaluationDescription == programEvaluationDescription &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (programEvaluationPeriodDescriptor.hashCode) +
    (programEvaluationTitle.hashCode) +
    (programEvaluationTypeDescriptor.hashCode) +
    (programReference.hashCode) +
    (evaluationMaxNumericRating == null ? 0 : evaluationMaxNumericRating!.hashCode) +
    (evaluationMinNumericRating == null ? 0 : evaluationMinNumericRating!.hashCode) +
    (levels.hashCode) +
    (programEvaluationDescription == null ? 0 : programEvaluationDescription!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiProgramEvaluation[id=$id, programEvaluationPeriodDescriptor=$programEvaluationPeriodDescriptor, programEvaluationTitle=$programEvaluationTitle, programEvaluationTypeDescriptor=$programEvaluationTypeDescriptor, programReference=$programReference, evaluationMaxNumericRating=$evaluationMaxNumericRating, evaluationMinNumericRating=$evaluationMinNumericRating, levels=$levels, programEvaluationDescription=$programEvaluationDescription, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'programEvaluationPeriodDescriptor'] = this.programEvaluationPeriodDescriptor;
      json[r'programEvaluationTitle'] = this.programEvaluationTitle;
      json[r'programEvaluationTypeDescriptor'] = this.programEvaluationTypeDescriptor;
      json[r'programReference'] = this.programReference;
    if (this.evaluationMaxNumericRating != null) {
      json[r'evaluationMaxNumericRating'] = this.evaluationMaxNumericRating;
    } else {
      json[r'evaluationMaxNumericRating'] = null;
    }
    if (this.evaluationMinNumericRating != null) {
      json[r'evaluationMinNumericRating'] = this.evaluationMinNumericRating;
    } else {
      json[r'evaluationMinNumericRating'] = null;
    }
      json[r'levels'] = this.levels;
    if (this.programEvaluationDescription != null) {
      json[r'programEvaluationDescription'] = this.programEvaluationDescription;
    } else {
      json[r'programEvaluationDescription'] = null;
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

  /// Returns a new [EdFiProgramEvaluation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiProgramEvaluation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiProgramEvaluation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiProgramEvaluation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiProgramEvaluation(
        id: mapValueOfType<String>(json, r'id'),
        programEvaluationPeriodDescriptor: mapValueOfType<String>(json, r'programEvaluationPeriodDescriptor')!,
        programEvaluationTitle: mapValueOfType<String>(json, r'programEvaluationTitle')!,
        programEvaluationTypeDescriptor: mapValueOfType<String>(json, r'programEvaluationTypeDescriptor')!,
        programReference: EdFiProgramReference.fromJson(json[r'programReference'])!,
        evaluationMaxNumericRating: mapValueOfType<double>(json, r'evaluationMaxNumericRating'),
        evaluationMinNumericRating: mapValueOfType<double>(json, r'evaluationMinNumericRating'),
        levels: EdFiProgramEvaluationLevel.listFromJson(json[r'levels']),
        programEvaluationDescription: mapValueOfType<String>(json, r'programEvaluationDescription'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiProgramEvaluation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiProgramEvaluation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiProgramEvaluation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiProgramEvaluation> mapFromJson(dynamic json) {
    final map = <String, EdFiProgramEvaluation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiProgramEvaluation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiProgramEvaluation-objects as value to a dart map
  static Map<String, List<EdFiProgramEvaluation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiProgramEvaluation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiProgramEvaluation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'programEvaluationPeriodDescriptor',
    'programEvaluationTitle',
    'programEvaluationTypeDescriptor',
    'programReference',
  };
}

