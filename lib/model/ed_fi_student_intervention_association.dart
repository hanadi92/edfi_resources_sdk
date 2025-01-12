//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentInterventionAssociation {
  /// Returns a new [EdFiStudentInterventionAssociation] instance.
  EdFiStudentInterventionAssociation({
    this.id,
    this.cohortReference,
    required this.interventionReference,
    required this.studentReference,
    this.diagnosticStatement,
    this.dosage,
    this.interventionEffectivenesses = const [],
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiCohortReference? cohortReference;

  EdFiInterventionReference interventionReference;

  EdFiStudentReference studentReference;

  /// A statement provided by the assigner that provides information regarding why the student was assigned to this intervention.
  String? diagnosticStatement;

  /// The duration of time in minutes for which the student was assigned to participate in the intervention.
  int? dosage;

  /// An unordered collection of studentInterventionAssociationInterventionEffectivenesses. A measure of the effects of an intervention in each outcome domain. The rating of effectiveness takes into account four factors: the quality of the research on the intervention, the statistical significance of the research findings, the size of the differences between participants in the intervention and comparison groups and the consistency in results.
  List<EdFiStudentInterventionAssociationInterventionEffectiveness> interventionEffectivenesses;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentInterventionAssociation &&
    other.id == id &&
    other.cohortReference == cohortReference &&
    other.interventionReference == interventionReference &&
    other.studentReference == studentReference &&
    other.diagnosticStatement == diagnosticStatement &&
    other.dosage == dosage &&
    _deepEquality.equals(other.interventionEffectivenesses, interventionEffectivenesses) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (cohortReference == null ? 0 : cohortReference!.hashCode) +
    (interventionReference.hashCode) +
    (studentReference.hashCode) +
    (diagnosticStatement == null ? 0 : diagnosticStatement!.hashCode) +
    (dosage == null ? 0 : dosage!.hashCode) +
    (interventionEffectivenesses.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentInterventionAssociation[id=$id, cohortReference=$cohortReference, interventionReference=$interventionReference, studentReference=$studentReference, diagnosticStatement=$diagnosticStatement, dosage=$dosage, interventionEffectivenesses=$interventionEffectivenesses, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.cohortReference != null) {
      json[r'cohortReference'] = this.cohortReference;
    } else {
      json[r'cohortReference'] = null;
    }
      json[r'interventionReference'] = this.interventionReference;
      json[r'studentReference'] = this.studentReference;
    if (this.diagnosticStatement != null) {
      json[r'diagnosticStatement'] = this.diagnosticStatement;
    } else {
      json[r'diagnosticStatement'] = null;
    }
    if (this.dosage != null) {
      json[r'dosage'] = this.dosage;
    } else {
      json[r'dosage'] = null;
    }
      json[r'interventionEffectivenesses'] = this.interventionEffectivenesses;
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

  /// Returns a new [EdFiStudentInterventionAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentInterventionAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentInterventionAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentInterventionAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentInterventionAssociation(
        id: mapValueOfType<String>(json, r'id'),
        cohortReference: EdFiCohortReference.fromJson(json[r'cohortReference']),
        interventionReference: EdFiInterventionReference.fromJson(json[r'interventionReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        diagnosticStatement: mapValueOfType<String>(json, r'diagnosticStatement'),
        dosage: mapValueOfType<int>(json, r'dosage'),
        interventionEffectivenesses: EdFiStudentInterventionAssociationInterventionEffectiveness.listFromJson(json[r'interventionEffectivenesses']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentInterventionAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentInterventionAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentInterventionAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentInterventionAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentInterventionAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentInterventionAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentInterventionAssociation-objects as value to a dart map
  static Map<String, List<EdFiStudentInterventionAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentInterventionAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentInterventionAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'interventionReference',
    'studentReference',
  };
}

