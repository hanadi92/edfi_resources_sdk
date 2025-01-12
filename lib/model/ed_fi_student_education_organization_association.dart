//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentEducationOrganizationAssociation {
  /// Returns a new [EdFiStudentEducationOrganizationAssociation] instance.
  EdFiStudentEducationOrganizationAssociation({
    this.id,
    required this.educationOrganizationReference,
    required this.studentReference,
    this.addresses = const [],
    this.ancestryEthnicOrigins = const [],
    this.barrierToInternetAccessInResidenceDescriptor,
    this.cohortYears = const [],
    this.disabilities = const [],
    this.displacedStudents = const [],
    this.electronicMails = const [],
    this.genderIdentity,
    this.hispanicLatinoEthnicity,
    this.internationalAddresses = const [],
    this.internetAccessInResidence,
    this.internetAccessTypeInResidenceDescriptor,
    this.internetPerformanceInResidenceDescriptor,
    this.languages = const [],
    this.limitedEnglishProficiencyDescriptor,
    this.loginId,
    this.primaryLearningDeviceAccessDescriptor,
    this.primaryLearningDeviceAwayFromSchoolDescriptor,
    this.primaryLearningDeviceProviderDescriptor,
    this.profileThumbnail,
    this.races = const [],
    this.sexDescriptor,
    this.studentCharacteristics = const [],
    this.studentIdentificationCodes = const [],
    this.studentIndicators = const [],
    this.supporterMilitaryConnectionDescriptor,
    this.telephones = const [],
    this.tribalAffiliations = const [],
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

  EdFiEducationOrganizationReference educationOrganizationReference;

  EdFiStudentReference studentReference;

  /// An unordered collection of studentEducationOrganizationAssociationAddresses. The set of elements that describes an address, including the street address, city, state, and ZIP code.
  List<EdFiStudentEducationOrganizationAssociationAddress> addresses;

  /// An unordered collection of studentEducationOrganizationAssociationAncestryEthnicOrigins. The original peoples or cultures with which the individual identifies.
  List<EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin> ancestryEthnicOrigins;

  /// An indication of the barrier to having internet access in the student s primary place of residence.
  String? barrierToInternetAccessInResidenceDescriptor;

  /// An unordered collection of studentEducationOrganizationAssociationCohortYears. The type and year of a cohort (e.g., 9th grade) the student belongs to as determined by the year that student entered a specific grade.
  List<EdFiStudentEducationOrganizationAssociationCohortYear> cohortYears;

  /// An unordered collection of studentEducationOrganizationAssociationDisabilities. The disability condition(s) that best describes an individual's impairment, as determined by evaluation(s) conducted by the education organization.
  List<EdFiStudentEducationOrganizationAssociationDisability> disabilities;

  /// An unordered collection of studentEducationOrganizationAssociationDisplacedStudents. Information about student who was enrolled, or eligible for enrollment, but has temporarily or permanently enrolled in another school or district because of a crisis-related disruption in educational services.
  List<EdFiStudentEducationOrganizationAssociationDisplacedStudent> displacedStudents;

  /// An unordered collection of studentEducationOrganizationAssociationElectronicMails. The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.
  List<EdFiStudentEducationOrganizationAssociationElectronicMail> electronicMails;

  /// The student's gender as last reported to the education organization.
  String? genderIdentity;

  /// An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race, as last reported to the education organization. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
  bool? hispanicLatinoEthnicity;

  /// An unordered collection of studentEducationOrganizationAssociationInternationalAddresses. The set of elements that describes an international address.
  List<EdFiStudentEducationOrganizationAssociationInternationalAddress> internationalAddresses;

  /// An indication of whether the student is able to access the internet in their primary place of residence.
  bool? internetAccessInResidence;

  /// The primary type of internet service used in the student s primary place of residence.
  String? internetAccessTypeInResidenceDescriptor;

  /// An indication of whether the student can complete the full range of learning activities, including video streaming and assignment upload, without interruptions caused by poor internet performance in their primary place of residence.
  String? internetPerformanceInResidenceDescriptor;

  /// An unordered collection of studentEducationOrganizationAssociationLanguages. The language(s) the individual uses to communicate. It is strongly recommended that entries use only ISO 639-3 language codes.
  List<EdFiStudentEducationOrganizationAssociationLanguage> languages;

  /// An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.
  String? limitedEnglishProficiencyDescriptor;

  /// The login ID for the user; used for security access control interface.
  String? loginId;

  /// An indication of whether the primary learning device is shared or not shared with another individual.
  String? primaryLearningDeviceAccessDescriptor;

  /// The type of device the student uses most often to complete learning activities away from school.
  String? primaryLearningDeviceAwayFromSchoolDescriptor;

  /// The provider of the primary learning device.
  String? primaryLearningDeviceProviderDescriptor;

  /// Locator reference for the student photo. The specification for that reference is left to local definition.
  String? profileThumbnail;

  /// An unordered collection of studentEducationOrganizationAssociationRaces. The general racial category which most clearly reflects the individual's recognition of his or her community or with which the individual most identifies as last reported to the education organization. The data model allows for multiple entries so that each individual can specify all appropriate races.
  List<EdFiStudentEducationOrganizationAssociationRace> races;

  /// The student's birth sex as reported to the education organization.
  String? sexDescriptor;

  /// An unordered collection of studentEducationOrganizationAssociationStudentCharacteristics. Reflects important characteristics of a student. If a student has a characteristic present, that characteristic is considered true or active for that student. If a characteristic is not present, no assumption is made as to the applicability of the characteristic, but local policy may dictate otherwise.
  List<EdFiStudentEducationOrganizationAssociationStudentCharacteristic> studentCharacteristics;

  /// An unordered collection of studentEducationOrganizationAssociationStudentIdentificationCodes. A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a student.
  List<EdFiStudentEducationOrganizationAssociationStudentIdentificationCode> studentIdentificationCodes;

  /// An unordered collection of studentEducationOrganizationAssociationStudentIndicators. An indicator or metric computed for the student (e.g., at risk).
  List<EdFiStudentEducationOrganizationAssociationStudentIndicator> studentIndicators;

  /// Military connection of the person/people whom the student is a dependent of.
  String? supporterMilitaryConnectionDescriptor;

  /// An unordered collection of studentEducationOrganizationAssociationTelephones. The 10-digit telephone number, including the area code, for the person.
  List<EdFiStudentEducationOrganizationAssociationTelephone> telephones;

  /// An unordered collection of studentEducationOrganizationAssociationTribalAffiliations. An American Indian tribe with which the student is affiliated as last reported to the education organization.
  List<EdFiStudentEducationOrganizationAssociationTribalAffiliation> tribalAffiliations;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentEducationOrganizationAssociation &&
    other.id == id &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.studentReference == studentReference &&
    _deepEquality.equals(other.addresses, addresses) &&
    _deepEquality.equals(other.ancestryEthnicOrigins, ancestryEthnicOrigins) &&
    other.barrierToInternetAccessInResidenceDescriptor == barrierToInternetAccessInResidenceDescriptor &&
    _deepEquality.equals(other.cohortYears, cohortYears) &&
    _deepEquality.equals(other.disabilities, disabilities) &&
    _deepEquality.equals(other.displacedStudents, displacedStudents) &&
    _deepEquality.equals(other.electronicMails, electronicMails) &&
    other.genderIdentity == genderIdentity &&
    other.hispanicLatinoEthnicity == hispanicLatinoEthnicity &&
    _deepEquality.equals(other.internationalAddresses, internationalAddresses) &&
    other.internetAccessInResidence == internetAccessInResidence &&
    other.internetAccessTypeInResidenceDescriptor == internetAccessTypeInResidenceDescriptor &&
    other.internetPerformanceInResidenceDescriptor == internetPerformanceInResidenceDescriptor &&
    _deepEquality.equals(other.languages, languages) &&
    other.limitedEnglishProficiencyDescriptor == limitedEnglishProficiencyDescriptor &&
    other.loginId == loginId &&
    other.primaryLearningDeviceAccessDescriptor == primaryLearningDeviceAccessDescriptor &&
    other.primaryLearningDeviceAwayFromSchoolDescriptor == primaryLearningDeviceAwayFromSchoolDescriptor &&
    other.primaryLearningDeviceProviderDescriptor == primaryLearningDeviceProviderDescriptor &&
    other.profileThumbnail == profileThumbnail &&
    _deepEquality.equals(other.races, races) &&
    other.sexDescriptor == sexDescriptor &&
    _deepEquality.equals(other.studentCharacteristics, studentCharacteristics) &&
    _deepEquality.equals(other.studentIdentificationCodes, studentIdentificationCodes) &&
    _deepEquality.equals(other.studentIndicators, studentIndicators) &&
    other.supporterMilitaryConnectionDescriptor == supporterMilitaryConnectionDescriptor &&
    _deepEquality.equals(other.telephones, telephones) &&
    _deepEquality.equals(other.tribalAffiliations, tribalAffiliations) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (educationOrganizationReference.hashCode) +
    (studentReference.hashCode) +
    (addresses.hashCode) +
    (ancestryEthnicOrigins.hashCode) +
    (barrierToInternetAccessInResidenceDescriptor == null ? 0 : barrierToInternetAccessInResidenceDescriptor!.hashCode) +
    (cohortYears.hashCode) +
    (disabilities.hashCode) +
    (displacedStudents.hashCode) +
    (electronicMails.hashCode) +
    (genderIdentity == null ? 0 : genderIdentity!.hashCode) +
    (hispanicLatinoEthnicity == null ? 0 : hispanicLatinoEthnicity!.hashCode) +
    (internationalAddresses.hashCode) +
    (internetAccessInResidence == null ? 0 : internetAccessInResidence!.hashCode) +
    (internetAccessTypeInResidenceDescriptor == null ? 0 : internetAccessTypeInResidenceDescriptor!.hashCode) +
    (internetPerformanceInResidenceDescriptor == null ? 0 : internetPerformanceInResidenceDescriptor!.hashCode) +
    (languages.hashCode) +
    (limitedEnglishProficiencyDescriptor == null ? 0 : limitedEnglishProficiencyDescriptor!.hashCode) +
    (loginId == null ? 0 : loginId!.hashCode) +
    (primaryLearningDeviceAccessDescriptor == null ? 0 : primaryLearningDeviceAccessDescriptor!.hashCode) +
    (primaryLearningDeviceAwayFromSchoolDescriptor == null ? 0 : primaryLearningDeviceAwayFromSchoolDescriptor!.hashCode) +
    (primaryLearningDeviceProviderDescriptor == null ? 0 : primaryLearningDeviceProviderDescriptor!.hashCode) +
    (profileThumbnail == null ? 0 : profileThumbnail!.hashCode) +
    (races.hashCode) +
    (sexDescriptor == null ? 0 : sexDescriptor!.hashCode) +
    (studentCharacteristics.hashCode) +
    (studentIdentificationCodes.hashCode) +
    (studentIndicators.hashCode) +
    (supporterMilitaryConnectionDescriptor == null ? 0 : supporterMilitaryConnectionDescriptor!.hashCode) +
    (telephones.hashCode) +
    (tribalAffiliations.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudentEducationOrganizationAssociation[id=$id, educationOrganizationReference=$educationOrganizationReference, studentReference=$studentReference, addresses=$addresses, ancestryEthnicOrigins=$ancestryEthnicOrigins, barrierToInternetAccessInResidenceDescriptor=$barrierToInternetAccessInResidenceDescriptor, cohortYears=$cohortYears, disabilities=$disabilities, displacedStudents=$displacedStudents, electronicMails=$electronicMails, genderIdentity=$genderIdentity, hispanicLatinoEthnicity=$hispanicLatinoEthnicity, internationalAddresses=$internationalAddresses, internetAccessInResidence=$internetAccessInResidence, internetAccessTypeInResidenceDescriptor=$internetAccessTypeInResidenceDescriptor, internetPerformanceInResidenceDescriptor=$internetPerformanceInResidenceDescriptor, languages=$languages, limitedEnglishProficiencyDescriptor=$limitedEnglishProficiencyDescriptor, loginId=$loginId, primaryLearningDeviceAccessDescriptor=$primaryLearningDeviceAccessDescriptor, primaryLearningDeviceAwayFromSchoolDescriptor=$primaryLearningDeviceAwayFromSchoolDescriptor, primaryLearningDeviceProviderDescriptor=$primaryLearningDeviceProviderDescriptor, profileThumbnail=$profileThumbnail, races=$races, sexDescriptor=$sexDescriptor, studentCharacteristics=$studentCharacteristics, studentIdentificationCodes=$studentIdentificationCodes, studentIndicators=$studentIndicators, supporterMilitaryConnectionDescriptor=$supporterMilitaryConnectionDescriptor, telephones=$telephones, tribalAffiliations=$tribalAffiliations, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'studentReference'] = this.studentReference;
      json[r'addresses'] = this.addresses;
      json[r'ancestryEthnicOrigins'] = this.ancestryEthnicOrigins;
    if (this.barrierToInternetAccessInResidenceDescriptor != null) {
      json[r'barrierToInternetAccessInResidenceDescriptor'] = this.barrierToInternetAccessInResidenceDescriptor;
    } else {
      json[r'barrierToInternetAccessInResidenceDescriptor'] = null;
    }
      json[r'cohortYears'] = this.cohortYears;
      json[r'disabilities'] = this.disabilities;
      json[r'displacedStudents'] = this.displacedStudents;
      json[r'electronicMails'] = this.electronicMails;
    if (this.genderIdentity != null) {
      json[r'genderIdentity'] = this.genderIdentity;
    } else {
      json[r'genderIdentity'] = null;
    }
    if (this.hispanicLatinoEthnicity != null) {
      json[r'hispanicLatinoEthnicity'] = this.hispanicLatinoEthnicity;
    } else {
      json[r'hispanicLatinoEthnicity'] = null;
    }
      json[r'internationalAddresses'] = this.internationalAddresses;
    if (this.internetAccessInResidence != null) {
      json[r'internetAccessInResidence'] = this.internetAccessInResidence;
    } else {
      json[r'internetAccessInResidence'] = null;
    }
    if (this.internetAccessTypeInResidenceDescriptor != null) {
      json[r'internetAccessTypeInResidenceDescriptor'] = this.internetAccessTypeInResidenceDescriptor;
    } else {
      json[r'internetAccessTypeInResidenceDescriptor'] = null;
    }
    if (this.internetPerformanceInResidenceDescriptor != null) {
      json[r'internetPerformanceInResidenceDescriptor'] = this.internetPerformanceInResidenceDescriptor;
    } else {
      json[r'internetPerformanceInResidenceDescriptor'] = null;
    }
      json[r'languages'] = this.languages;
    if (this.limitedEnglishProficiencyDescriptor != null) {
      json[r'limitedEnglishProficiencyDescriptor'] = this.limitedEnglishProficiencyDescriptor;
    } else {
      json[r'limitedEnglishProficiencyDescriptor'] = null;
    }
    if (this.loginId != null) {
      json[r'loginId'] = this.loginId;
    } else {
      json[r'loginId'] = null;
    }
    if (this.primaryLearningDeviceAccessDescriptor != null) {
      json[r'primaryLearningDeviceAccessDescriptor'] = this.primaryLearningDeviceAccessDescriptor;
    } else {
      json[r'primaryLearningDeviceAccessDescriptor'] = null;
    }
    if (this.primaryLearningDeviceAwayFromSchoolDescriptor != null) {
      json[r'primaryLearningDeviceAwayFromSchoolDescriptor'] = this.primaryLearningDeviceAwayFromSchoolDescriptor;
    } else {
      json[r'primaryLearningDeviceAwayFromSchoolDescriptor'] = null;
    }
    if (this.primaryLearningDeviceProviderDescriptor != null) {
      json[r'primaryLearningDeviceProviderDescriptor'] = this.primaryLearningDeviceProviderDescriptor;
    } else {
      json[r'primaryLearningDeviceProviderDescriptor'] = null;
    }
    if (this.profileThumbnail != null) {
      json[r'profileThumbnail'] = this.profileThumbnail;
    } else {
      json[r'profileThumbnail'] = null;
    }
      json[r'races'] = this.races;
    if (this.sexDescriptor != null) {
      json[r'sexDescriptor'] = this.sexDescriptor;
    } else {
      json[r'sexDescriptor'] = null;
    }
      json[r'studentCharacteristics'] = this.studentCharacteristics;
      json[r'studentIdentificationCodes'] = this.studentIdentificationCodes;
      json[r'studentIndicators'] = this.studentIndicators;
    if (this.supporterMilitaryConnectionDescriptor != null) {
      json[r'supporterMilitaryConnectionDescriptor'] = this.supporterMilitaryConnectionDescriptor;
    } else {
      json[r'supporterMilitaryConnectionDescriptor'] = null;
    }
      json[r'telephones'] = this.telephones;
      json[r'tribalAffiliations'] = this.tribalAffiliations;
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

  /// Returns a new [EdFiStudentEducationOrganizationAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentEducationOrganizationAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentEducationOrganizationAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentEducationOrganizationAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentEducationOrganizationAssociation(
        id: mapValueOfType<String>(json, r'id'),
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        addresses: EdFiStudentEducationOrganizationAssociationAddress.listFromJson(json[r'addresses']),
        ancestryEthnicOrigins: EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin.listFromJson(json[r'ancestryEthnicOrigins']),
        barrierToInternetAccessInResidenceDescriptor: mapValueOfType<String>(json, r'barrierToInternetAccessInResidenceDescriptor'),
        cohortYears: EdFiStudentEducationOrganizationAssociationCohortYear.listFromJson(json[r'cohortYears']),
        disabilities: EdFiStudentEducationOrganizationAssociationDisability.listFromJson(json[r'disabilities']),
        displacedStudents: EdFiStudentEducationOrganizationAssociationDisplacedStudent.listFromJson(json[r'displacedStudents']),
        electronicMails: EdFiStudentEducationOrganizationAssociationElectronicMail.listFromJson(json[r'electronicMails']),
        genderIdentity: mapValueOfType<String>(json, r'genderIdentity'),
        hispanicLatinoEthnicity: mapValueOfType<bool>(json, r'hispanicLatinoEthnicity'),
        internationalAddresses: EdFiStudentEducationOrganizationAssociationInternationalAddress.listFromJson(json[r'internationalAddresses']),
        internetAccessInResidence: mapValueOfType<bool>(json, r'internetAccessInResidence'),
        internetAccessTypeInResidenceDescriptor: mapValueOfType<String>(json, r'internetAccessTypeInResidenceDescriptor'),
        internetPerformanceInResidenceDescriptor: mapValueOfType<String>(json, r'internetPerformanceInResidenceDescriptor'),
        languages: EdFiStudentEducationOrganizationAssociationLanguage.listFromJson(json[r'languages']),
        limitedEnglishProficiencyDescriptor: mapValueOfType<String>(json, r'limitedEnglishProficiencyDescriptor'),
        loginId: mapValueOfType<String>(json, r'loginId'),
        primaryLearningDeviceAccessDescriptor: mapValueOfType<String>(json, r'primaryLearningDeviceAccessDescriptor'),
        primaryLearningDeviceAwayFromSchoolDescriptor: mapValueOfType<String>(json, r'primaryLearningDeviceAwayFromSchoolDescriptor'),
        primaryLearningDeviceProviderDescriptor: mapValueOfType<String>(json, r'primaryLearningDeviceProviderDescriptor'),
        profileThumbnail: mapValueOfType<String>(json, r'profileThumbnail'),
        races: EdFiStudentEducationOrganizationAssociationRace.listFromJson(json[r'races']),
        sexDescriptor: mapValueOfType<String>(json, r'sexDescriptor'),
        studentCharacteristics: EdFiStudentEducationOrganizationAssociationStudentCharacteristic.listFromJson(json[r'studentCharacteristics']),
        studentIdentificationCodes: EdFiStudentEducationOrganizationAssociationStudentIdentificationCode.listFromJson(json[r'studentIdentificationCodes']),
        studentIndicators: EdFiStudentEducationOrganizationAssociationStudentIndicator.listFromJson(json[r'studentIndicators']),
        supporterMilitaryConnectionDescriptor: mapValueOfType<String>(json, r'supporterMilitaryConnectionDescriptor'),
        telephones: EdFiStudentEducationOrganizationAssociationTelephone.listFromJson(json[r'telephones']),
        tribalAffiliations: EdFiStudentEducationOrganizationAssociationTribalAffiliation.listFromJson(json[r'tribalAffiliations']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentEducationOrganizationAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentEducationOrganizationAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentEducationOrganizationAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentEducationOrganizationAssociation> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentEducationOrganizationAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentEducationOrganizationAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentEducationOrganizationAssociation-objects as value to a dart map
  static Map<String, List<EdFiStudentEducationOrganizationAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentEducationOrganizationAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentEducationOrganizationAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'educationOrganizationReference',
    'studentReference',
  };
}

