//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiInterventionStudy {
  /// Returns a new [EdFiInterventionStudy] instance.
  EdFiInterventionStudy({
    this.id,
    required this.interventionStudyIdentificationCode,
    required this.educationOrganizationReference,
    required this.interventionPrescriptionReference,
    this.appropriateGradeLevels = const [],
    this.appropriateSexes = const [],
    required this.deliveryMethodDescriptor,
    this.educationContents = const [],
    required this.interventionClassDescriptor,
    this.interventionEffectivenesses = const [],
    this.learningResourceMetadataURIs = const [],
    required this.participants,
    this.populationServeds = const [],
    this.stateAbbreviations = const [],
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

  /// A unique number or alphanumeric code assigned to an intervention study.
  String interventionStudyIdentificationCode;

  EdFiEducationOrganizationReference educationOrganizationReference;

  EdFiInterventionPrescriptionReference interventionPrescriptionReference;

  /// An unordered collection of interventionStudyAppropriateGradeLevels. Grade levels participating in this study.
  List<EdFiInterventionStudyAppropriateGradeLevel> appropriateGradeLevels;

  /// An unordered collection of interventionStudyAppropriateSexes. Sexes participating in this study. If omitted, considered generally applicable.
  List<EdFiInterventionStudyAppropriateSex> appropriateSexes;

  /// The way in which an intervention was implemented: individual, small group, whole class, or whole school.
  String deliveryMethodDescriptor;

  /// An unordered collection of interventionStudyEducationContents. Relates the education content source to the education content.
  List<EdFiInterventionStudyEducationContent> educationContents;

  /// The way in which an intervention is used: curriculum, supplement, or practice.
  String interventionClassDescriptor;

  /// An unordered collection of interventionStudyInterventionEffectivenesses. Measurement of the effectiveness of the intervention study per diagnosis.
  List<EdFiInterventionStudyInterventionEffectiveness> interventionEffectivenesses;

  /// An unordered collection of interventionStudyLearningResourceMetadataURIs. The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.
  List<EdFiInterventionStudyLearningResourceMetadataURI> learningResourceMetadataURIs;

  /// The number of participants observed in the study.
  int participants;

  /// An unordered collection of interventionStudyPopulationServeds. A subset of students that are the focus of the intervention study.
  List<EdFiInterventionStudyPopulationServed> populationServeds;

  /// An unordered collection of interventionStudyStateAbbreviations. The abbreviation for the state (within the United States) or outlying area, the school system of which the participants of the study are considered to be a part.
  List<EdFiInterventionStudyStateAbbreviation> stateAbbreviations;

  /// An unordered collection of interventionStudyURIs. The URI (typical a URL) pointing to an education content item.
  List<EdFiInterventionStudyURI> uris;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiInterventionStudy &&
    other.id == id &&
    other.interventionStudyIdentificationCode == interventionStudyIdentificationCode &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.interventionPrescriptionReference == interventionPrescriptionReference &&
    _deepEquality.equals(other.appropriateGradeLevels, appropriateGradeLevels) &&
    _deepEquality.equals(other.appropriateSexes, appropriateSexes) &&
    other.deliveryMethodDescriptor == deliveryMethodDescriptor &&
    _deepEquality.equals(other.educationContents, educationContents) &&
    other.interventionClassDescriptor == interventionClassDescriptor &&
    _deepEquality.equals(other.interventionEffectivenesses, interventionEffectivenesses) &&
    _deepEquality.equals(other.learningResourceMetadataURIs, learningResourceMetadataURIs) &&
    other.participants == participants &&
    _deepEquality.equals(other.populationServeds, populationServeds) &&
    _deepEquality.equals(other.stateAbbreviations, stateAbbreviations) &&
    _deepEquality.equals(other.uris, uris) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (interventionStudyIdentificationCode.hashCode) +
    (educationOrganizationReference.hashCode) +
    (interventionPrescriptionReference.hashCode) +
    (appropriateGradeLevels.hashCode) +
    (appropriateSexes.hashCode) +
    (deliveryMethodDescriptor.hashCode) +
    (educationContents.hashCode) +
    (interventionClassDescriptor.hashCode) +
    (interventionEffectivenesses.hashCode) +
    (learningResourceMetadataURIs.hashCode) +
    (participants.hashCode) +
    (populationServeds.hashCode) +
    (stateAbbreviations.hashCode) +
    (uris.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiInterventionStudy[id=$id, interventionStudyIdentificationCode=$interventionStudyIdentificationCode, educationOrganizationReference=$educationOrganizationReference, interventionPrescriptionReference=$interventionPrescriptionReference, appropriateGradeLevels=$appropriateGradeLevels, appropriateSexes=$appropriateSexes, deliveryMethodDescriptor=$deliveryMethodDescriptor, educationContents=$educationContents, interventionClassDescriptor=$interventionClassDescriptor, interventionEffectivenesses=$interventionEffectivenesses, learningResourceMetadataURIs=$learningResourceMetadataURIs, participants=$participants, populationServeds=$populationServeds, stateAbbreviations=$stateAbbreviations, uris=$uris, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'interventionStudyIdentificationCode'] = this.interventionStudyIdentificationCode;
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'interventionPrescriptionReference'] = this.interventionPrescriptionReference;
      json[r'appropriateGradeLevels'] = this.appropriateGradeLevels;
      json[r'appropriateSexes'] = this.appropriateSexes;
      json[r'deliveryMethodDescriptor'] = this.deliveryMethodDescriptor;
      json[r'educationContents'] = this.educationContents;
      json[r'interventionClassDescriptor'] = this.interventionClassDescriptor;
      json[r'interventionEffectivenesses'] = this.interventionEffectivenesses;
      json[r'learningResourceMetadataURIs'] = this.learningResourceMetadataURIs;
      json[r'participants'] = this.participants;
      json[r'populationServeds'] = this.populationServeds;
      json[r'stateAbbreviations'] = this.stateAbbreviations;
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

  /// Returns a new [EdFiInterventionStudy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiInterventionStudy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiInterventionStudy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiInterventionStudy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiInterventionStudy(
        id: mapValueOfType<String>(json, r'id'),
        interventionStudyIdentificationCode: mapValueOfType<String>(json, r'interventionStudyIdentificationCode')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        interventionPrescriptionReference: EdFiInterventionPrescriptionReference.fromJson(json[r'interventionPrescriptionReference'])!,
        appropriateGradeLevels: EdFiInterventionStudyAppropriateGradeLevel.listFromJson(json[r'appropriateGradeLevels']),
        appropriateSexes: EdFiInterventionStudyAppropriateSex.listFromJson(json[r'appropriateSexes']),
        deliveryMethodDescriptor: mapValueOfType<String>(json, r'deliveryMethodDescriptor')!,
        educationContents: EdFiInterventionStudyEducationContent.listFromJson(json[r'educationContents']),
        interventionClassDescriptor: mapValueOfType<String>(json, r'interventionClassDescriptor')!,
        interventionEffectivenesses: EdFiInterventionStudyInterventionEffectiveness.listFromJson(json[r'interventionEffectivenesses']),
        learningResourceMetadataURIs: EdFiInterventionStudyLearningResourceMetadataURI.listFromJson(json[r'learningResourceMetadataURIs']),
        participants: mapValueOfType<int>(json, r'participants')!,
        populationServeds: EdFiInterventionStudyPopulationServed.listFromJson(json[r'populationServeds']),
        stateAbbreviations: EdFiInterventionStudyStateAbbreviation.listFromJson(json[r'stateAbbreviations']),
        uris: EdFiInterventionStudyURI.listFromJson(json[r'uris']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiInterventionStudy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiInterventionStudy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiInterventionStudy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiInterventionStudy> mapFromJson(dynamic json) {
    final map = <String, EdFiInterventionStudy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiInterventionStudy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiInterventionStudy-objects as value to a dart map
  static Map<String, List<EdFiInterventionStudy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiInterventionStudy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiInterventionStudy.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'interventionStudyIdentificationCode',
    'educationOrganizationReference',
    'interventionPrescriptionReference',
    'deliveryMethodDescriptor',
    'interventionClassDescriptor',
    'participants',
  };
}

