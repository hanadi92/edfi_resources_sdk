//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiIntervention {
  /// Returns a new [EdFiIntervention] instance.
  EdFiIntervention({
    this.id,
    required this.interventionIdentificationCode,
    required this.educationOrganizationReference,
    this.appropriateGradeLevels = const [],
    this.appropriateSexes = const [],
    required this.beginDate,
    required this.deliveryMethodDescriptor,
    this.diagnoses = const [],
    this.educationContents = const [],
    this.endDate,
    required this.interventionClassDescriptor,
    this.interventionPrescriptions = const [],
    this.learningResourceMetadataURIs = const [],
    this.maxDosage,
    this.meetingTimes = const [],
    this.minDosage,
    this.namespace,
    this.populationServeds = const [],
    this.staffs = const [],
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

  /// A unique number or alphanumeric code assigned to an intervention.
  String interventionIdentificationCode;

  EdFiEducationOrganizationReference educationOrganizationReference;

  /// An unordered collection of interventionAppropriateGradeLevels. Grade levels for the intervention. If omitted, considered generally applicable.
  List<EdFiInterventionAppropriateGradeLevel> appropriateGradeLevels;

  /// An unordered collection of interventionAppropriateSexes. Sexes for the intervention. If omitted, considered generally applicable.
  List<EdFiInterventionAppropriateSex> appropriateSexes;

  /// The start date for the intervention implementation.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime beginDate;

  /// The way in which an intervention was implemented.
  String deliveryMethodDescriptor;

  /// An unordered collection of interventionDiagnoses. Targeted purpose of the intervention.
  List<EdFiInterventionDiagnosis> diagnoses;

  /// An unordered collection of interventionEducationContents. Relates the education content source to the education content.
  List<EdFiInterventionEducationContent> educationContents;

  /// The end date for the intervention implementation.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  /// The way in which an intervention is used: curriculum, supplement, or practice.
  String interventionClassDescriptor;

  /// An unordered collection of interventionInterventionPrescriptions. The reference to the intervention prescription being followed in this intervention implementation.
  List<EdFiInterventionInterventionPrescription> interventionPrescriptions;

  /// An unordered collection of interventionLearningResourceMetadataURIs. The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.
  List<EdFiInterventionLearningResourceMetadataURI> learningResourceMetadataURIs;

  /// The maximum duration of time in minutes that may be assigned for the intervention.
  int? maxDosage;

  /// An unordered collection of interventionMeetingTimes. The times at which this intervention is scheduled to meet.
  List<EdFiInterventionMeetingTime> meetingTimes;

  /// The minimum duration of time in minutes that may be assigned for the intervention.
  int? minDosage;

  /// Namespace for the intervention.
  String? namespace;

  /// An unordered collection of interventionPopulationServeds. A subset of students that are the focus of the intervention.
  List<EdFiInterventionPopulationServed> populationServeds;

  /// An unordered collection of interventionStaffs. Relates the staff member associated with the Intervention.
  List<EdFiInterventionStaff> staffs;

  /// An unordered collection of interventionURIs. The URI (typical a URL) pointing to an education content item.
  List<EdFiInterventionURI> uris;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiIntervention &&
    other.id == id &&
    other.interventionIdentificationCode == interventionIdentificationCode &&
    other.educationOrganizationReference == educationOrganizationReference &&
    _deepEquality.equals(other.appropriateGradeLevels, appropriateGradeLevels) &&
    _deepEquality.equals(other.appropriateSexes, appropriateSexes) &&
    other.beginDate == beginDate &&
    other.deliveryMethodDescriptor == deliveryMethodDescriptor &&
    _deepEquality.equals(other.diagnoses, diagnoses) &&
    _deepEquality.equals(other.educationContents, educationContents) &&
    other.endDate == endDate &&
    other.interventionClassDescriptor == interventionClassDescriptor &&
    _deepEquality.equals(other.interventionPrescriptions, interventionPrescriptions) &&
    _deepEquality.equals(other.learningResourceMetadataURIs, learningResourceMetadataURIs) &&
    other.maxDosage == maxDosage &&
    _deepEquality.equals(other.meetingTimes, meetingTimes) &&
    other.minDosage == minDosage &&
    other.namespace == namespace &&
    _deepEquality.equals(other.populationServeds, populationServeds) &&
    _deepEquality.equals(other.staffs, staffs) &&
    _deepEquality.equals(other.uris, uris) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (interventionIdentificationCode.hashCode) +
    (educationOrganizationReference.hashCode) +
    (appropriateGradeLevels.hashCode) +
    (appropriateSexes.hashCode) +
    (beginDate.hashCode) +
    (deliveryMethodDescriptor.hashCode) +
    (diagnoses.hashCode) +
    (educationContents.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (interventionClassDescriptor.hashCode) +
    (interventionPrescriptions.hashCode) +
    (learningResourceMetadataURIs.hashCode) +
    (maxDosage == null ? 0 : maxDosage!.hashCode) +
    (meetingTimes.hashCode) +
    (minDosage == null ? 0 : minDosage!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (populationServeds.hashCode) +
    (staffs.hashCode) +
    (uris.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiIntervention[id=$id, interventionIdentificationCode=$interventionIdentificationCode, educationOrganizationReference=$educationOrganizationReference, appropriateGradeLevels=$appropriateGradeLevels, appropriateSexes=$appropriateSexes, beginDate=$beginDate, deliveryMethodDescriptor=$deliveryMethodDescriptor, diagnoses=$diagnoses, educationContents=$educationContents, endDate=$endDate, interventionClassDescriptor=$interventionClassDescriptor, interventionPrescriptions=$interventionPrescriptions, learningResourceMetadataURIs=$learningResourceMetadataURIs, maxDosage=$maxDosage, meetingTimes=$meetingTimes, minDosage=$minDosage, namespace=$namespace, populationServeds=$populationServeds, staffs=$staffs, uris=$uris, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'interventionIdentificationCode'] = this.interventionIdentificationCode;
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'appropriateGradeLevels'] = this.appropriateGradeLevels;
      json[r'appropriateSexes'] = this.appropriateSexes;
      json[r'beginDate'] = _dateFormatter.format(this.beginDate.toUtc());
      json[r'deliveryMethodDescriptor'] = this.deliveryMethodDescriptor;
      json[r'diagnoses'] = this.diagnoses;
      json[r'educationContents'] = this.educationContents;
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
      json[r'interventionClassDescriptor'] = this.interventionClassDescriptor;
      json[r'interventionPrescriptions'] = this.interventionPrescriptions;
      json[r'learningResourceMetadataURIs'] = this.learningResourceMetadataURIs;
    if (this.maxDosage != null) {
      json[r'maxDosage'] = this.maxDosage;
    } else {
      json[r'maxDosage'] = null;
    }
      json[r'meetingTimes'] = this.meetingTimes;
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
      json[r'staffs'] = this.staffs;
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

  /// Returns a new [EdFiIntervention] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiIntervention? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiIntervention[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiIntervention[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiIntervention(
        id: mapValueOfType<String>(json, r'id'),
        interventionIdentificationCode: mapValueOfType<String>(json, r'interventionIdentificationCode')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        appropriateGradeLevels: EdFiInterventionAppropriateGradeLevel.listFromJson(json[r'appropriateGradeLevels']),
        appropriateSexes: EdFiInterventionAppropriateSex.listFromJson(json[r'appropriateSexes']),
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        deliveryMethodDescriptor: mapValueOfType<String>(json, r'deliveryMethodDescriptor')!,
        diagnoses: EdFiInterventionDiagnosis.listFromJson(json[r'diagnoses']),
        educationContents: EdFiInterventionEducationContent.listFromJson(json[r'educationContents']),
        endDate: mapDateTime(json, r'endDate', r''),
        interventionClassDescriptor: mapValueOfType<String>(json, r'interventionClassDescriptor')!,
        interventionPrescriptions: EdFiInterventionInterventionPrescription.listFromJson(json[r'interventionPrescriptions']),
        learningResourceMetadataURIs: EdFiInterventionLearningResourceMetadataURI.listFromJson(json[r'learningResourceMetadataURIs']),
        maxDosage: mapValueOfType<int>(json, r'maxDosage'),
        meetingTimes: EdFiInterventionMeetingTime.listFromJson(json[r'meetingTimes']),
        minDosage: mapValueOfType<int>(json, r'minDosage'),
        namespace: mapValueOfType<String>(json, r'namespace'),
        populationServeds: EdFiInterventionPopulationServed.listFromJson(json[r'populationServeds']),
        staffs: EdFiInterventionStaff.listFromJson(json[r'staffs']),
        uris: EdFiInterventionURI.listFromJson(json[r'uris']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiIntervention> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiIntervention>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiIntervention.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiIntervention> mapFromJson(dynamic json) {
    final map = <String, EdFiIntervention>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiIntervention.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiIntervention-objects as value to a dart map
  static Map<String, List<EdFiIntervention>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiIntervention>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiIntervention.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'interventionIdentificationCode',
    'educationOrganizationReference',
    'beginDate',
    'deliveryMethodDescriptor',
    'interventionClassDescriptor',
  };
}

