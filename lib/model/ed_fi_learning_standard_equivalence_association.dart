//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiLearningStandardEquivalenceAssociation {
  /// Returns a new [EdFiLearningStandardEquivalenceAssociation] instance.
  EdFiLearningStandardEquivalenceAssociation({
    this.id,
    required this.namespace,
    required this.sourceLearningStandardReference,
    required this.targetLearningStandardReference,
    this.effectiveDate,
    this.learningStandardEquivalenceStrengthDescription,
    this.learningStandardEquivalenceStrengthDescriptor,
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

  /// The namespace of the organization that has created and owns the association.
  String namespace;

  EdFiLearningStandardReference sourceLearningStandardReference;

  EdFiLearningStandardReference targetLearningStandardReference;

  /// The date that the association is considered to be applicable or effective.
  DateTime? effectiveDate;

  /// Captures supplemental information on the relationship. Recommended for use only when the match is partial.
  String? learningStandardEquivalenceStrengthDescription;

  /// A measure that indicates the strength or quality of the equivalence relationship.
  String? learningStandardEquivalenceStrengthDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiLearningStandardEquivalenceAssociation &&
    other.id == id &&
    other.namespace == namespace &&
    other.sourceLearningStandardReference == sourceLearningStandardReference &&
    other.targetLearningStandardReference == targetLearningStandardReference &&
    other.effectiveDate == effectiveDate &&
    other.learningStandardEquivalenceStrengthDescription == learningStandardEquivalenceStrengthDescription &&
    other.learningStandardEquivalenceStrengthDescriptor == learningStandardEquivalenceStrengthDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (namespace.hashCode) +
    (sourceLearningStandardReference.hashCode) +
    (targetLearningStandardReference.hashCode) +
    (effectiveDate == null ? 0 : effectiveDate!.hashCode) +
    (learningStandardEquivalenceStrengthDescription == null ? 0 : learningStandardEquivalenceStrengthDescription!.hashCode) +
    (learningStandardEquivalenceStrengthDescriptor == null ? 0 : learningStandardEquivalenceStrengthDescriptor!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiLearningStandardEquivalenceAssociation[id=$id, namespace=$namespace, sourceLearningStandardReference=$sourceLearningStandardReference, targetLearningStandardReference=$targetLearningStandardReference, effectiveDate=$effectiveDate, learningStandardEquivalenceStrengthDescription=$learningStandardEquivalenceStrengthDescription, learningStandardEquivalenceStrengthDescriptor=$learningStandardEquivalenceStrengthDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'namespace'] = this.namespace;
      json[r'sourceLearningStandardReference'] = this.sourceLearningStandardReference;
      json[r'targetLearningStandardReference'] = this.targetLearningStandardReference;
    if (this.effectiveDate != null) {
      json[r'effectiveDate'] = _dateFormatter.format(this.effectiveDate!.toUtc());
    } else {
      json[r'effectiveDate'] = null;
    }
    if (this.learningStandardEquivalenceStrengthDescription != null) {
      json[r'learningStandardEquivalenceStrengthDescription'] = this.learningStandardEquivalenceStrengthDescription;
    } else {
      json[r'learningStandardEquivalenceStrengthDescription'] = null;
    }
    if (this.learningStandardEquivalenceStrengthDescriptor != null) {
      json[r'learningStandardEquivalenceStrengthDescriptor'] = this.learningStandardEquivalenceStrengthDescriptor;
    } else {
      json[r'learningStandardEquivalenceStrengthDescriptor'] = null;
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

  /// Returns a new [EdFiLearningStandardEquivalenceAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiLearningStandardEquivalenceAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiLearningStandardEquivalenceAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiLearningStandardEquivalenceAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiLearningStandardEquivalenceAssociation(
        id: mapValueOfType<String>(json, r'id'),
        namespace: mapValueOfType<String>(json, r'namespace')!,
        sourceLearningStandardReference: EdFiLearningStandardReference.fromJson(json[r'sourceLearningStandardReference'])!,
        targetLearningStandardReference: EdFiLearningStandardReference.fromJson(json[r'targetLearningStandardReference'])!,
        effectiveDate: mapDateTime(json, r'effectiveDate', r''),
        learningStandardEquivalenceStrengthDescription: mapValueOfType<String>(json, r'learningStandardEquivalenceStrengthDescription'),
        learningStandardEquivalenceStrengthDescriptor: mapValueOfType<String>(json, r'learningStandardEquivalenceStrengthDescriptor'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiLearningStandardEquivalenceAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiLearningStandardEquivalenceAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiLearningStandardEquivalenceAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiLearningStandardEquivalenceAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiLearningStandardEquivalenceAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiLearningStandardEquivalenceAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiLearningStandardEquivalenceAssociation-objects as value to a dart map
  static Map<String, List<EdFiLearningStandardEquivalenceAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiLearningStandardEquivalenceAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiLearningStandardEquivalenceAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'namespace',
    'sourceLearningStandardReference',
    'targetLearningStandardReference',
  };
}

