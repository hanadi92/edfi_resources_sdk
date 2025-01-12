//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaff {
  /// Returns a new [EdFiStaff] instance.
  EdFiStaff({
    this.id,
    required this.staffUniqueId,
    this.personReference,
    this.addresses = const [],
    this.ancestryEthnicOrigins = const [],
    this.birthDate,
    this.citizenshipStatusDescriptor,
    this.credentials = const [],
    this.electronicMails = const [],
    required this.firstName,
    this.genderIdentity,
    this.generationCodeSuffix,
    this.highestCompletedLevelOfEducationDescriptor,
    this.highlyQualifiedTeacher,
    this.hispanicLatinoEthnicity,
    this.identificationCodes = const [],
    this.identificationDocuments = const [],
    this.internationalAddresses = const [],
    this.languages = const [],
    required this.lastSurname,
    this.loginId,
    this.maidenName,
    this.middleName,
    this.otherNames = const [],
    this.personalIdentificationDocuments = const [],
    this.personalTitlePrefix,
    this.preferredFirstName,
    this.preferredLastSurname,
    this.races = const [],
    this.recognitions = const [],
    this.sexDescriptor,
    this.telephones = const [],
    this.tribalAffiliations = const [],
    this.visas = const [],
    this.yearsOfPriorProfessionalExperience,
    this.yearsOfPriorTeachingExperience,
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

  /// A unique alphanumeric code assigned to a staff.
  String staffUniqueId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiPersonReference? personReference;

  /// An unordered collection of staffAddresses. The set of elements that describes an address, including the street address, city, state, and ZIP code.
  List<EdFiStaffAddress> addresses;

  /// An unordered collection of staffAncestryEthnicOrigins. The original peoples or cultures with which the individual identifies.
  List<EdFiStaffAncestryEthnicOrigin> ancestryEthnicOrigins;

  /// The month, day, and year on which an individual was born.
  DateTime? birthDate;

  /// An indicator of whether or not the person is a U.S. citizen.
  String? citizenshipStatusDescriptor;

  /// An unordered collection of staffCredentials. The legal document giving authorization to perform teaching assignment services.
  List<EdFiStaffCredential> credentials;

  /// An unordered collection of staffElectronicMails. The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.
  List<EdFiStaffElectronicMail> electronicMails;

  /// A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  String firstName;

  /// The gender the staff member identifies themselves as.
  String? genderIdentity;

  /// An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  String? generationCodeSuffix;

  /// The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).
  String? highestCompletedLevelOfEducationDescriptor;

  /// An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for ALL Sections being taught.
  bool? highlyQualifiedTeacher;

  /// An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
  bool? hispanicLatinoEthnicity;

  /// An unordered collection of staffIdentificationCodes. A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity.
  List<EdFiStaffIdentificationCode> identificationCodes;

  /// An unordered collection of staffIdentificationDocuments. Describe the documentation of citizenship.
  List<EdFiStaffIdentificationDocument> identificationDocuments;

  /// An unordered collection of staffInternationalAddresses. The set of elements that describes an international address.
  List<EdFiStaffInternationalAddress> internationalAddresses;

  /// An unordered collection of staffLanguages. The language(s) the individual uses to communicate. It is strongly recommended that entries use only ISO 639-2 language codes.
  List<EdFiStaffLanguage> languages;

  /// The name borne in common by members of a family.
  String lastSurname;

  /// The login ID for the user; used for security access control interface.
  String? loginId;

  /// The individual's maiden name.
  String? maidenName;

  /// A secondary name given to an individual at birth, baptism, or during another naming ceremony.
  String? middleName;

  /// An unordered collection of staffOtherNames. Other names (e.g., alias, nickname, previous legal name) associated with a person.
  List<EdFiStaffOtherName> otherNames;

  /// An unordered collection of staffPersonalIdentificationDocuments. The documents presented as evident to verify one's personal identity; for example: drivers license, passport, birth certificate, etc.
  List<EdFiStaffPersonalIdentificationDocument> personalIdentificationDocuments;

  /// A prefix used to denote the title, degree, position, or seniority of the individual.
  String? personalTitlePrefix;

  /// The first name the individual prefers, if different from their legal first name
  String? preferredFirstName;

  /// The last name the individual prefers, if different from their legal last name
  String? preferredLastSurname;

  /// An unordered collection of staffRaces. The general racial category which most clearly reflects the individual's recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.
  List<EdFiStaffRace> races;

  /// An unordered collection of staffRecognitions. Recognitions given to the staff for accomplishments in a co-curricular or extracurricular activity.
  List<EdFiStaffRecognition> recognitions;

  /// The birth sex of the staff member.
  String? sexDescriptor;

  /// An unordered collection of staffTelephones. The 10-digit telephone number, including the area code, for the person.
  List<EdFiStaffTelephone> telephones;

  /// An unordered collection of staffTribalAffiliations. An American Indian tribe with which the staff member is affiliated.
  List<EdFiStaffTribalAffiliation> tribalAffiliations;

  /// An unordered collection of staffVisas. An indicator of a non-US citizen's Visa type.
  List<EdFiStaffVisa> visas;

  /// The total number of years that an individual has previously held a similar professional position in one or more education institutions prior to the current school year.
  ///
  /// Minimum value: -999.99
  /// Maximum value: 999.99
  double? yearsOfPriorProfessionalExperience;

  /// The total number of years that an individual has previously held a teaching position in one or more education institutions prior to the current school year.
  ///
  /// Minimum value: -999.99
  /// Maximum value: 999.99
  double? yearsOfPriorTeachingExperience;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaff &&
    other.id == id &&
    other.staffUniqueId == staffUniqueId &&
    other.personReference == personReference &&
    _deepEquality.equals(other.addresses, addresses) &&
    _deepEquality.equals(other.ancestryEthnicOrigins, ancestryEthnicOrigins) &&
    other.birthDate == birthDate &&
    other.citizenshipStatusDescriptor == citizenshipStatusDescriptor &&
    _deepEquality.equals(other.credentials, credentials) &&
    _deepEquality.equals(other.electronicMails, electronicMails) &&
    other.firstName == firstName &&
    other.genderIdentity == genderIdentity &&
    other.generationCodeSuffix == generationCodeSuffix &&
    other.highestCompletedLevelOfEducationDescriptor == highestCompletedLevelOfEducationDescriptor &&
    other.highlyQualifiedTeacher == highlyQualifiedTeacher &&
    other.hispanicLatinoEthnicity == hispanicLatinoEthnicity &&
    _deepEquality.equals(other.identificationCodes, identificationCodes) &&
    _deepEquality.equals(other.identificationDocuments, identificationDocuments) &&
    _deepEquality.equals(other.internationalAddresses, internationalAddresses) &&
    _deepEquality.equals(other.languages, languages) &&
    other.lastSurname == lastSurname &&
    other.loginId == loginId &&
    other.maidenName == maidenName &&
    other.middleName == middleName &&
    _deepEquality.equals(other.otherNames, otherNames) &&
    _deepEquality.equals(other.personalIdentificationDocuments, personalIdentificationDocuments) &&
    other.personalTitlePrefix == personalTitlePrefix &&
    other.preferredFirstName == preferredFirstName &&
    other.preferredLastSurname == preferredLastSurname &&
    _deepEquality.equals(other.races, races) &&
    _deepEquality.equals(other.recognitions, recognitions) &&
    other.sexDescriptor == sexDescriptor &&
    _deepEquality.equals(other.telephones, telephones) &&
    _deepEquality.equals(other.tribalAffiliations, tribalAffiliations) &&
    _deepEquality.equals(other.visas, visas) &&
    other.yearsOfPriorProfessionalExperience == yearsOfPriorProfessionalExperience &&
    other.yearsOfPriorTeachingExperience == yearsOfPriorTeachingExperience &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (staffUniqueId.hashCode) +
    (personReference == null ? 0 : personReference!.hashCode) +
    (addresses.hashCode) +
    (ancestryEthnicOrigins.hashCode) +
    (birthDate == null ? 0 : birthDate!.hashCode) +
    (citizenshipStatusDescriptor == null ? 0 : citizenshipStatusDescriptor!.hashCode) +
    (credentials.hashCode) +
    (electronicMails.hashCode) +
    (firstName.hashCode) +
    (genderIdentity == null ? 0 : genderIdentity!.hashCode) +
    (generationCodeSuffix == null ? 0 : generationCodeSuffix!.hashCode) +
    (highestCompletedLevelOfEducationDescriptor == null ? 0 : highestCompletedLevelOfEducationDescriptor!.hashCode) +
    (highlyQualifiedTeacher == null ? 0 : highlyQualifiedTeacher!.hashCode) +
    (hispanicLatinoEthnicity == null ? 0 : hispanicLatinoEthnicity!.hashCode) +
    (identificationCodes.hashCode) +
    (identificationDocuments.hashCode) +
    (internationalAddresses.hashCode) +
    (languages.hashCode) +
    (lastSurname.hashCode) +
    (loginId == null ? 0 : loginId!.hashCode) +
    (maidenName == null ? 0 : maidenName!.hashCode) +
    (middleName == null ? 0 : middleName!.hashCode) +
    (otherNames.hashCode) +
    (personalIdentificationDocuments.hashCode) +
    (personalTitlePrefix == null ? 0 : personalTitlePrefix!.hashCode) +
    (preferredFirstName == null ? 0 : preferredFirstName!.hashCode) +
    (preferredLastSurname == null ? 0 : preferredLastSurname!.hashCode) +
    (races.hashCode) +
    (recognitions.hashCode) +
    (sexDescriptor == null ? 0 : sexDescriptor!.hashCode) +
    (telephones.hashCode) +
    (tribalAffiliations.hashCode) +
    (visas.hashCode) +
    (yearsOfPriorProfessionalExperience == null ? 0 : yearsOfPriorProfessionalExperience!.hashCode) +
    (yearsOfPriorTeachingExperience == null ? 0 : yearsOfPriorTeachingExperience!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStaff[id=$id, staffUniqueId=$staffUniqueId, personReference=$personReference, addresses=$addresses, ancestryEthnicOrigins=$ancestryEthnicOrigins, birthDate=$birthDate, citizenshipStatusDescriptor=$citizenshipStatusDescriptor, credentials=$credentials, electronicMails=$electronicMails, firstName=$firstName, genderIdentity=$genderIdentity, generationCodeSuffix=$generationCodeSuffix, highestCompletedLevelOfEducationDescriptor=$highestCompletedLevelOfEducationDescriptor, highlyQualifiedTeacher=$highlyQualifiedTeacher, hispanicLatinoEthnicity=$hispanicLatinoEthnicity, identificationCodes=$identificationCodes, identificationDocuments=$identificationDocuments, internationalAddresses=$internationalAddresses, languages=$languages, lastSurname=$lastSurname, loginId=$loginId, maidenName=$maidenName, middleName=$middleName, otherNames=$otherNames, personalIdentificationDocuments=$personalIdentificationDocuments, personalTitlePrefix=$personalTitlePrefix, preferredFirstName=$preferredFirstName, preferredLastSurname=$preferredLastSurname, races=$races, recognitions=$recognitions, sexDescriptor=$sexDescriptor, telephones=$telephones, tribalAffiliations=$tribalAffiliations, visas=$visas, yearsOfPriorProfessionalExperience=$yearsOfPriorProfessionalExperience, yearsOfPriorTeachingExperience=$yearsOfPriorTeachingExperience, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'staffUniqueId'] = this.staffUniqueId;
    if (this.personReference != null) {
      json[r'personReference'] = this.personReference;
    } else {
      json[r'personReference'] = null;
    }
      json[r'addresses'] = this.addresses;
      json[r'ancestryEthnicOrigins'] = this.ancestryEthnicOrigins;
    if (this.birthDate != null) {
      json[r'birthDate'] = _dateFormatter.format(this.birthDate!.toUtc());
    } else {
      json[r'birthDate'] = null;
    }
    if (this.citizenshipStatusDescriptor != null) {
      json[r'citizenshipStatusDescriptor'] = this.citizenshipStatusDescriptor;
    } else {
      json[r'citizenshipStatusDescriptor'] = null;
    }
      json[r'credentials'] = this.credentials;
      json[r'electronicMails'] = this.electronicMails;
      json[r'firstName'] = this.firstName;
    if (this.genderIdentity != null) {
      json[r'genderIdentity'] = this.genderIdentity;
    } else {
      json[r'genderIdentity'] = null;
    }
    if (this.generationCodeSuffix != null) {
      json[r'generationCodeSuffix'] = this.generationCodeSuffix;
    } else {
      json[r'generationCodeSuffix'] = null;
    }
    if (this.highestCompletedLevelOfEducationDescriptor != null) {
      json[r'highestCompletedLevelOfEducationDescriptor'] = this.highestCompletedLevelOfEducationDescriptor;
    } else {
      json[r'highestCompletedLevelOfEducationDescriptor'] = null;
    }
    if (this.highlyQualifiedTeacher != null) {
      json[r'highlyQualifiedTeacher'] = this.highlyQualifiedTeacher;
    } else {
      json[r'highlyQualifiedTeacher'] = null;
    }
    if (this.hispanicLatinoEthnicity != null) {
      json[r'hispanicLatinoEthnicity'] = this.hispanicLatinoEthnicity;
    } else {
      json[r'hispanicLatinoEthnicity'] = null;
    }
      json[r'identificationCodes'] = this.identificationCodes;
      json[r'identificationDocuments'] = this.identificationDocuments;
      json[r'internationalAddresses'] = this.internationalAddresses;
      json[r'languages'] = this.languages;
      json[r'lastSurname'] = this.lastSurname;
    if (this.loginId != null) {
      json[r'loginId'] = this.loginId;
    } else {
      json[r'loginId'] = null;
    }
    if (this.maidenName != null) {
      json[r'maidenName'] = this.maidenName;
    } else {
      json[r'maidenName'] = null;
    }
    if (this.middleName != null) {
      json[r'middleName'] = this.middleName;
    } else {
      json[r'middleName'] = null;
    }
      json[r'otherNames'] = this.otherNames;
      json[r'personalIdentificationDocuments'] = this.personalIdentificationDocuments;
    if (this.personalTitlePrefix != null) {
      json[r'personalTitlePrefix'] = this.personalTitlePrefix;
    } else {
      json[r'personalTitlePrefix'] = null;
    }
    if (this.preferredFirstName != null) {
      json[r'preferredFirstName'] = this.preferredFirstName;
    } else {
      json[r'preferredFirstName'] = null;
    }
    if (this.preferredLastSurname != null) {
      json[r'preferredLastSurname'] = this.preferredLastSurname;
    } else {
      json[r'preferredLastSurname'] = null;
    }
      json[r'races'] = this.races;
      json[r'recognitions'] = this.recognitions;
    if (this.sexDescriptor != null) {
      json[r'sexDescriptor'] = this.sexDescriptor;
    } else {
      json[r'sexDescriptor'] = null;
    }
      json[r'telephones'] = this.telephones;
      json[r'tribalAffiliations'] = this.tribalAffiliations;
      json[r'visas'] = this.visas;
    if (this.yearsOfPriorProfessionalExperience != null) {
      json[r'yearsOfPriorProfessionalExperience'] = this.yearsOfPriorProfessionalExperience;
    } else {
      json[r'yearsOfPriorProfessionalExperience'] = null;
    }
    if (this.yearsOfPriorTeachingExperience != null) {
      json[r'yearsOfPriorTeachingExperience'] = this.yearsOfPriorTeachingExperience;
    } else {
      json[r'yearsOfPriorTeachingExperience'] = null;
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

  /// Returns a new [EdFiStaff] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaff? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaff[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaff[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaff(
        id: mapValueOfType<String>(json, r'id'),
        staffUniqueId: mapValueOfType<String>(json, r'staffUniqueId')!,
        personReference: EdFiPersonReference.fromJson(json[r'personReference']),
        addresses: EdFiStaffAddress.listFromJson(json[r'addresses']),
        ancestryEthnicOrigins: EdFiStaffAncestryEthnicOrigin.listFromJson(json[r'ancestryEthnicOrigins']),
        birthDate: mapDateTime(json, r'birthDate', r''),
        citizenshipStatusDescriptor: mapValueOfType<String>(json, r'citizenshipStatusDescriptor'),
        credentials: EdFiStaffCredential.listFromJson(json[r'credentials']),
        electronicMails: EdFiStaffElectronicMail.listFromJson(json[r'electronicMails']),
        firstName: mapValueOfType<String>(json, r'firstName')!,
        genderIdentity: mapValueOfType<String>(json, r'genderIdentity'),
        generationCodeSuffix: mapValueOfType<String>(json, r'generationCodeSuffix'),
        highestCompletedLevelOfEducationDescriptor: mapValueOfType<String>(json, r'highestCompletedLevelOfEducationDescriptor'),
        highlyQualifiedTeacher: mapValueOfType<bool>(json, r'highlyQualifiedTeacher'),
        hispanicLatinoEthnicity: mapValueOfType<bool>(json, r'hispanicLatinoEthnicity'),
        identificationCodes: EdFiStaffIdentificationCode.listFromJson(json[r'identificationCodes']),
        identificationDocuments: EdFiStaffIdentificationDocument.listFromJson(json[r'identificationDocuments']),
        internationalAddresses: EdFiStaffInternationalAddress.listFromJson(json[r'internationalAddresses']),
        languages: EdFiStaffLanguage.listFromJson(json[r'languages']),
        lastSurname: mapValueOfType<String>(json, r'lastSurname')!,
        loginId: mapValueOfType<String>(json, r'loginId'),
        maidenName: mapValueOfType<String>(json, r'maidenName'),
        middleName: mapValueOfType<String>(json, r'middleName'),
        otherNames: EdFiStaffOtherName.listFromJson(json[r'otherNames']),
        personalIdentificationDocuments: EdFiStaffPersonalIdentificationDocument.listFromJson(json[r'personalIdentificationDocuments']),
        personalTitlePrefix: mapValueOfType<String>(json, r'personalTitlePrefix'),
        preferredFirstName: mapValueOfType<String>(json, r'preferredFirstName'),
        preferredLastSurname: mapValueOfType<String>(json, r'preferredLastSurname'),
        races: EdFiStaffRace.listFromJson(json[r'races']),
        recognitions: EdFiStaffRecognition.listFromJson(json[r'recognitions']),
        sexDescriptor: mapValueOfType<String>(json, r'sexDescriptor'),
        telephones: EdFiStaffTelephone.listFromJson(json[r'telephones']),
        tribalAffiliations: EdFiStaffTribalAffiliation.listFromJson(json[r'tribalAffiliations']),
        visas: EdFiStaffVisa.listFromJson(json[r'visas']),
        yearsOfPriorProfessionalExperience: mapValueOfType<double>(json, r'yearsOfPriorProfessionalExperience'),
        yearsOfPriorTeachingExperience: mapValueOfType<double>(json, r'yearsOfPriorTeachingExperience'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStaff> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaff>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaff.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaff> mapFromJson(dynamic json) {
    final map = <String, EdFiStaff>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaff.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaff-objects as value to a dart map
  static Map<String, List<EdFiStaff>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaff>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaff.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'staffUniqueId',
    'firstName',
    'lastSurname',
  };
}

