//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiInterventionPrescription {
  /// Returns a new [EdFiInterventionPrescription] instance.
  EdFiInterventionPrescription({
    this.id,
    required this.interventionPrescriptionIdentificationCode,
    required this.educationOrganizationReference,
    this.appropriateGradeLevels = const [],
    this.appropriateSexes = const [],
    required this.deliveryMethodDescriptor,
    this.diagnoses = const [],
    this.educationContents = const [],
    required this.interventionClassDescriptor,
    this.learningResourceMetadataURIs = const [],
    this.maxDosage,
    this.minDosage,
    this.namespace,
    this.populationServeds = const [],
    this.uris = const [],
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

  /// A unique number or alphanumeric code assigned to an intervention prescription.
  String interventionPrescriptionIdentificationCode;

  EdFiEducationOrganizationReference educationOrganizationReference;

  /// An unordered collection of interventionPrescriptionAppropriateGradeLevels. Grade levels for the prescribed intervention. If omitted, considered generally applicable.
  List<EdFiInterventionPrescriptionAppropriateGradeLevel> appropriateGradeLevels;

  /// An unordered collection of interventionPrescriptionAppropriateSexes. Sexes for the intervention prescription. If omitted, considered generally applicable.
  List<EdFiInterventionPrescriptionAppropriateSex> appropriateSexes;

  /// The way in which an intervention was implemented: individual, small group, whole class, or whole school.
  String deliveryMethodDescriptor;

  /// An unordered collection of interventionPrescriptionDiagnoses. Targeted purpose of the intervention prescription.
  List<EdFiInterventionPrescriptionDiagnosis> diagnoses;

  /// An unordered collection of interventionPrescriptionEducationContents. Relates the education content source to the education content.
  List<EdFiInterventionPrescriptionEducationContent> educationContents;

  /// The way in which an intervention is used: curriculum, supplement, or practice.
  String interventionClassDescriptor;

  /// An unordered collection of interventionPrescriptionLearningResourceMetadataURIs. The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.
  List<EdFiInterventionPrescriptionLearningResourceMetadataURI> learningResourceMetadataURIs;

  /// The maximum duration of time in minutes that is recommended for the intervention.
  int? maxDosage;

  /// The minimum duration of time in minutes that is recommended for the intervention.
  int? minDosage;

  /// Namespace for the intervention.
  String? namespace;

  /// An unordered collection of interventionPrescriptionPopulationServeds. A subset of students that are the focus of the intervention prescription.
  List<EdFiInterventionPrescriptionPopulationServed> populationServeds;

  /// An unordered collection of interventionPrescriptionURIs. The URI (typical a URL) pointing to an education content item.
  List<EdFiInterventionPrescriptionURI> uris;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiInterventionPrescription &&
    other.id == id &&
    other.interventionPrescriptionIdentificationCode == interventionPrescriptionIdentificationCode &&
    other.educationOrganizationReference == educationOrganizationReference &&
    _deepEquality.equals(other.appropriateGradeLevels, appropriateGradeLevels) &&
    _deepEquality.equals(other.appropriateSexes, appropriateSexes) &&
    other.deliveryMethodDescriptor == deliveryMethodDescriptor &&
    _deepEquality.equals(other.diagnoses, diagnoses) &&
    _deepEquality.equals(other.educationContents, educationContents) &&
    other.interventionClassDescriptor == interventionClassDescriptor &&
    _deepEquality.equals(other.learningResourceMetadataURIs, learningResourceMetadataURIs) &&
    other.maxDosage == maxDosage &&
    other.minDosage == minDosage &&
    other.namespace == namespace &&
    _deepEquality.equals(other.populationServeds, populationServeds) &&
    _deepEquality.equals(other.uris, uris) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (interventionPrescriptionIdentificationCode.hashCode) +
    (educationOrganizationReference.hashCode) +
    (appropriateGradeLevels.hashCode) +
    (appropriateSexes.hashCode) +
    (deliveryMethodDescriptor.hashCode) +
    (diagnoses.hashCode) +
    (educationContents.hashCode) +
    (interventionClassDescriptor.hashCode) +
    (learningResourceMetadataURIs.hashCode) +
    (maxDosage == null ? 0 : maxDosage!.hashCode) +
    (minDosage == null ? 0 : minDosage!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (populationServeds.hashCode) +
    (uris.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiInterventionPrescription[id=$id, interventionPrescriptionIdentificationCode=$interventionPrescriptionIdentificationCode, educationOrganizationReference=$educationOrganizationReference, appropriateGradeLevels=$appropriateGradeLevels, appropriateSexes=$appropriateSexes, deliveryMethodDescriptor=$deliveryMethodDescriptor, diagnoses=$diagnoses, educationContents=$educationContents, interventionClassDescriptor=$interventionClassDescriptor, learningResourceMetadataURIs=$learningResourceMetadataURIs, maxDosage=$maxDosage, minDosage=$minDosage, namespace=$namespace, populationServeds=$populationServeds, uris=$uris, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'interventionPrescriptionIdentificationCode'] = this.interventionPrescriptionIdentificationCode;
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'appropriateGradeLevels'] = this.appropriateGradeLevels;
      json[r'appropriateSexes'] = this.appropriateSexes;
      json[r'deliveryMethodDescriptor'] = this.deliveryMethodDescriptor;
      json[r'diagnoses'] = this.diagnoses;
      json[r'educationContents'] = this.educationContents;
      json[r'interventionClassDescriptor'] = this.interventionClassDescriptor;
      json[r'learningResourceMetadataURIs'] = this.learningResourceMetadataURIs;
    if (this.maxDosage != null) {
      json[r'maxDosage'] = this.maxDosage;
    } else {
      json[r'maxDosage'] = null;
    }
    if (this.minDosage != null) {
      json[r'minDosage'] = this.minDosage;
    } else {
      json[r'minDosage'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
      json[r'populationServeds'] = this.populationServeds;
      json[r'uris'] = this.uris;
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

  /// Returns a new [EdFiInterventionPrescription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiInterventionPrescription? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiInterventionPrescription[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiInterventionPrescription[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiInterventionPrescription(
        id: mapValueOfType<String>(json, r'id'),
        interventionPrescriptionIdentificationCode: mapValueOfType<String>(json, r'interventionPrescriptionIdentificationCode')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        appropriateGradeLevels: EdFiInterventionPrescriptionAppropriateGradeLevel.listFromJson(json[r'appropriateGradeLevels']),
        appropriateSexes: EdFiInterventionPrescriptionAppropriateSex.listFromJson(json[r'appropriateSexes']),
        deliveryMethodDescriptor: mapValueOfType<String>(json, r'deliveryMethodDescriptor')!,
        diagnoses: EdFiInterventionPrescriptionDiagnosis.listFromJson(json[r'diagnoses']),
        educationContents: EdFiInterventionPrescriptionEducationContent.listFromJson(json[r'educationContents']),
        interventionClassDescriptor: mapValueOfType<String>(json, r'interventionClassDescriptor')!,
        learningResourceMetadataURIs: EdFiInterventionPrescriptionLearningResourceMetadataURI.listFromJson(json[r'learningResourceMetadataURIs']),
        maxDosage: mapValueOfType<int>(json, r'maxDosage'),
        minDosage: mapValueOfType<int>(json, r'minDosage'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        populationServeds: EdFiInterventionPrescriptionPopulationServed.listFromJson(json[r'populationServeds']),
        uris: EdFiInterventionPrescriptionURI.listFromJson(json[r'uris']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiInterventionPrescription> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiInterventionPrescription>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiInterventionPrescription.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiInterventionPrescription> mapFromJson(dynamic json) {
    final map = <String, EdFiInterventionPrescription>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiInterventionPrescription.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiInterventionPrescription-objects as value to a dart map
  static Map<String, List<EdFiInterventionPrescription>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiInterventionPrescription>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiInterventionPrescription.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'interventionPrescriptionIdentificationCode',
    'educationOrganizationReference',
    'deliveryMethodDescriptor',
    'interventionClassDescriptor',
  };
}

