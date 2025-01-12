//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmCandidate {
  /// Returns a new [TpdmCandidate] instance.
  TpdmCandidate({
    this.id,
    required this.candidateIdentifier,
    this.personReference,
    this.addresses = const [],
    this.birthCity,
    this.birthCountryDescriptor,
    required this.birthDate,
    this.birthInternationalProvince,
    this.birthSexDescriptor,
    this.birthStateAbbreviationDescriptor,
    this.dateEnteredUS,
    this.disabilities = const [],
    this.displacementStatus,
    this.economicDisadvantaged,
    this.electronicMails = const [],
    this.englishLanguageExamDescriptor,
    this.firstGenerationStudent,
    required this.firstName,
    this.genderDescriptor,
    this.generationCodeSuffix,
    this.hispanicLatinoEthnicity,
    this.languages = const [],
    required this.lastSurname,
    this.limitedEnglishProficiencyDescriptor,
    this.maidenName,
    this.middleName,
    this.multipleBirthStatus,
    this.otherNames = const [],
    this.personalIdentificationDocuments = const [],
    this.personalTitlePrefix,
    this.preferredFirstName,
    this.preferredLastSurname,
    this.races = const [],
    this.sexDescriptor,
    this.telephones = const [],
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

  /// A unique alphanumeric code assigned to a candidate.
  String candidateIdentifier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiPersonReference? personReference;

  /// An unordered collection of candidateAddresses. The set of elements that describes an address, including the street address, city, state, and ZIP code.
  List<TpdmCandidateAddress> addresses;

  /// The city the student was born in.
  String? birthCity;

  /// The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.
  String? birthCountryDescriptor;

  /// The month, day, and year on which an individual was born.
  DateTime birthDate;

  /// For students born outside of the U.S., the Province or jurisdiction in which an individual is born.
  String? birthInternationalProvince;

  /// A person's sex at birth.
  String? birthSexDescriptor;

  /// The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.
  String? birthStateAbbreviationDescriptor;

  /// For students born outside of the U.S., the date the student entered the U.S.
  DateTime? dateEnteredUS;

  /// An unordered collection of candidateDisabilities. The disability condition(s) that best describes an individual's impairment.
  List<TpdmCandidateDisability> disabilities;

  /// Indicates a state health or weather related event that displaces a group of students, and may require additional funding, educational, or social services.
  String? displacementStatus;

  /// An indication of inadequate financial condition of an individual's family, as determined by family income, number of family members/dependents, participation in public assistance programs, and/or other characteristics considered relevant by federal, state, and local policy.
  bool? economicDisadvantaged;

  /// An unordered collection of candidateElectronicMails. The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.
  List<TpdmCandidateElectronicMail> electronicMails;

  /// Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL).
  String? englishLanguageExamDescriptor;

  /// Indicator of whether individual is a first generation college student.
  bool? firstGenerationStudent;

  /// A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  String firstName;

  /// The gender of the candidate.
  String? genderDescriptor;

  /// An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  String? generationCodeSuffix;

  /// An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\"
  bool? hispanicLatinoEthnicity;

  /// An unordered collection of candidateLanguages. The language(s) the individual uses to communicate.
  List<TpdmCandidateLanguage> languages;

  /// The name borne in common by members of a family.
  String lastSurname;

  /// An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.
  String? limitedEnglishProficiencyDescriptor;

  /// The individual's maiden name.
  String? maidenName;

  /// A secondary name given to an individual at birth, baptism, or during another naming ceremony.
  String? middleName;

  /// Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)
  bool? multipleBirthStatus;

  /// An unordered collection of candidateOtherNames. Other names (e.g., alias, nickname, previous legal name) associated with a person.
  List<TpdmCandidateOtherName> otherNames;

  /// An unordered collection of candidatePersonalIdentificationDocuments. The documents presented as evident to verify one's personal identity; for example: drivers license, passport, birth certificate, etc.
  List<TpdmCandidatePersonalIdentificationDocument> personalIdentificationDocuments;

  /// A prefix used to denote the title, degree, position, or seniority of the individual.
  String? personalTitlePrefix;

  /// The first name the individual prefers, if different from their legal first name
  String? preferredFirstName;

  /// The last name the individual prefers, if different from their legal last name
  String? preferredLastSurname;

  /// An unordered collection of candidateRaces. The general racial category which most clearly reflects the individual's recognition of his or her community or with which the individual most identifies. The data model allows for multiple entries so that each individual can specify all appropriate races.
  List<TpdmCandidateRace> races;

  /// The sex of the candidate.
  String? sexDescriptor;

  /// An unordered collection of candidateTelephones. The 10-digit telephone number, including the area code, for the person.
  List<TpdmCandidateTelephone> telephones;

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
  bool operator ==(Object other) => identical(this, other) || other is TpdmCandidate &&
    other.id == id &&
    other.candidateIdentifier == candidateIdentifier &&
    other.personReference == personReference &&
    _deepEquality.equals(other.addresses, addresses) &&
    other.birthCity == birthCity &&
    other.birthCountryDescriptor == birthCountryDescriptor &&
    other.birthDate == birthDate &&
    other.birthInternationalProvince == birthInternationalProvince &&
    other.birthSexDescriptor == birthSexDescriptor &&
    other.birthStateAbbreviationDescriptor == birthStateAbbreviationDescriptor &&
    other.dateEnteredUS == dateEnteredUS &&
    _deepEquality.equals(other.disabilities, disabilities) &&
    other.displacementStatus == displacementStatus &&
    other.economicDisadvantaged == economicDisadvantaged &&
    _deepEquality.equals(other.electronicMails, electronicMails) &&
    other.englishLanguageExamDescriptor == englishLanguageExamDescriptor &&
    other.firstGenerationStudent == firstGenerationStudent &&
    other.firstName == firstName &&
    other.genderDescriptor == genderDescriptor &&
    other.generationCodeSuffix == generationCodeSuffix &&
    other.hispanicLatinoEthnicity == hispanicLatinoEthnicity &&
    _deepEquality.equals(other.languages, languages) &&
    other.lastSurname == lastSurname &&
    other.limitedEnglishProficiencyDescriptor == limitedEnglishProficiencyDescriptor &&
    other.maidenName == maidenName &&
    other.middleName == middleName &&
    other.multipleBirthStatus == multipleBirthStatus &&
    _deepEquality.equals(other.otherNames, otherNames) &&
    _deepEquality.equals(other.personalIdentificationDocuments, personalIdentificationDocuments) &&
    other.personalTitlePrefix == personalTitlePrefix &&
    other.preferredFirstName == preferredFirstName &&
    other.preferredLastSurname == preferredLastSurname &&
    _deepEquality.equals(other.races, races) &&
    other.sexDescriptor == sexDescriptor &&
    _deepEquality.equals(other.telephones, telephones) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (candidateIdentifier.hashCode) +
    (personReference == null ? 0 : personReference!.hashCode) +
    (addresses.hashCode) +
    (birthCity == null ? 0 : birthCity!.hashCode) +
    (birthCountryDescriptor == null ? 0 : birthCountryDescriptor!.hashCode) +
    (birthDate.hashCode) +
    (birthInternationalProvince == null ? 0 : birthInternationalProvince!.hashCode) +
    (birthSexDescriptor == null ? 0 : birthSexDescriptor!.hashCode) +
    (birthStateAbbreviationDescriptor == null ? 0 : birthStateAbbreviationDescriptor!.hashCode) +
    (dateEnteredUS == null ? 0 : dateEnteredUS!.hashCode) +
    (disabilities.hashCode) +
    (displacementStatus == null ? 0 : displacementStatus!.hashCode) +
    (economicDisadvantaged == null ? 0 : economicDisadvantaged!.hashCode) +
    (electronicMails.hashCode) +
    (englishLanguageExamDescriptor == null ? 0 : englishLanguageExamDescriptor!.hashCode) +
    (firstGenerationStudent == null ? 0 : firstGenerationStudent!.hashCode) +
    (firstName.hashCode) +
    (genderDescriptor == null ? 0 : genderDescriptor!.hashCode) +
    (generationCodeSuffix == null ? 0 : generationCodeSuffix!.hashCode) +
    (hispanicLatinoEthnicity == null ? 0 : hispanicLatinoEthnicity!.hashCode) +
    (languages.hashCode) +
    (lastSurname.hashCode) +
    (limitedEnglishProficiencyDescriptor == null ? 0 : limitedEnglishProficiencyDescriptor!.hashCode) +
    (maidenName == null ? 0 : maidenName!.hashCode) +
    (middleName == null ? 0 : middleName!.hashCode) +
    (multipleBirthStatus == null ? 0 : multipleBirthStatus!.hashCode) +
    (otherNames.hashCode) +
    (personalIdentificationDocuments.hashCode) +
    (personalTitlePrefix == null ? 0 : personalTitlePrefix!.hashCode) +
    (preferredFirstName == null ? 0 : preferredFirstName!.hashCode) +
    (preferredLastSurname == null ? 0 : preferredLastSurname!.hashCode) +
    (races.hashCode) +
    (sexDescriptor == null ? 0 : sexDescriptor!.hashCode) +
    (telephones.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'TpdmCandidate[id=$id, candidateIdentifier=$candidateIdentifier, personReference=$personReference, addresses=$addresses, birthCity=$birthCity, birthCountryDescriptor=$birthCountryDescriptor, birthDate=$birthDate, birthInternationalProvince=$birthInternationalProvince, birthSexDescriptor=$birthSexDescriptor, birthStateAbbreviationDescriptor=$birthStateAbbreviationDescriptor, dateEnteredUS=$dateEnteredUS, disabilities=$disabilities, displacementStatus=$displacementStatus, economicDisadvantaged=$economicDisadvantaged, electronicMails=$electronicMails, englishLanguageExamDescriptor=$englishLanguageExamDescriptor, firstGenerationStudent=$firstGenerationStudent, firstName=$firstName, genderDescriptor=$genderDescriptor, generationCodeSuffix=$generationCodeSuffix, hispanicLatinoEthnicity=$hispanicLatinoEthnicity, languages=$languages, lastSurname=$lastSurname, limitedEnglishProficiencyDescriptor=$limitedEnglishProficiencyDescriptor, maidenName=$maidenName, middleName=$middleName, multipleBirthStatus=$multipleBirthStatus, otherNames=$otherNames, personalIdentificationDocuments=$personalIdentificationDocuments, personalTitlePrefix=$personalTitlePrefix, preferredFirstName=$preferredFirstName, preferredLastSurname=$preferredLastSurname, races=$races, sexDescriptor=$sexDescriptor, telephones=$telephones, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'candidateIdentifier'] = this.candidateIdentifier;
    if (this.personReference != null) {
      json[r'personReference'] = this.personReference;
    } else {
      json[r'personReference'] = null;
    }
      json[r'addresses'] = this.addresses;
    if (this.birthCity != null) {
      json[r'birthCity'] = this.birthCity;
    } else {
      json[r'birthCity'] = null;
    }
    if (this.birthCountryDescriptor != null) {
      json[r'birthCountryDescriptor'] = this.birthCountryDescriptor;
    } else {
      json[r'birthCountryDescriptor'] = null;
    }
      json[r'birthDate'] = _dateFormatter.format(this.birthDate.toUtc());
    if (this.birthInternationalProvince != null) {
      json[r'birthInternationalProvince'] = this.birthInternationalProvince;
    } else {
      json[r'birthInternationalProvince'] = null;
    }
    if (this.birthSexDescriptor != null) {
      json[r'birthSexDescriptor'] = this.birthSexDescriptor;
    } else {
      json[r'birthSexDescriptor'] = null;
    }
    if (this.birthStateAbbreviationDescriptor != null) {
      json[r'birthStateAbbreviationDescriptor'] = this.birthStateAbbreviationDescriptor;
    } else {
      json[r'birthStateAbbreviationDescriptor'] = null;
    }
    if (this.dateEnteredUS != null) {
      json[r'dateEnteredUS'] = _dateFormatter.format(this.dateEnteredUS!.toUtc());
    } else {
      json[r'dateEnteredUS'] = null;
    }
      json[r'disabilities'] = this.disabilities;
    if (this.displacementStatus != null) {
      json[r'displacementStatus'] = this.displacementStatus;
    } else {
      json[r'displacementStatus'] = null;
    }
    if (this.economicDisadvantaged != null) {
      json[r'economicDisadvantaged'] = this.economicDisadvantaged;
    } else {
      json[r'economicDisadvantaged'] = null;
    }
      json[r'electronicMails'] = this.electronicMails;
    if (this.englishLanguageExamDescriptor != null) {
      json[r'englishLanguageExamDescriptor'] = this.englishLanguageExamDescriptor;
    } else {
      json[r'englishLanguageExamDescriptor'] = null;
    }
    if (this.firstGenerationStudent != null) {
      json[r'firstGenerationStudent'] = this.firstGenerationStudent;
    } else {
      json[r'firstGenerationStudent'] = null;
    }
      json[r'firstName'] = this.firstName;
    if (this.genderDescriptor != null) {
      json[r'genderDescriptor'] = this.genderDescriptor;
    } else {
      json[r'genderDescriptor'] = null;
    }
    if (this.generationCodeSuffix != null) {
      json[r'generationCodeSuffix'] = this.generationCodeSuffix;
    } else {
      json[r'generationCodeSuffix'] = null;
    }
    if (this.hispanicLatinoEthnicity != null) {
      json[r'hispanicLatinoEthnicity'] = this.hispanicLatinoEthnicity;
    } else {
      json[r'hispanicLatinoEthnicity'] = null;
    }
      json[r'languages'] = this.languages;
      json[r'lastSurname'] = this.lastSurname;
    if (this.limitedEnglishProficiencyDescriptor != null) {
      json[r'limitedEnglishProficiencyDescriptor'] = this.limitedEnglishProficiencyDescriptor;
    } else {
      json[r'limitedEnglishProficiencyDescriptor'] = null;
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
    if (this.multipleBirthStatus != null) {
      json[r'multipleBirthStatus'] = this.multipleBirthStatus;
    } else {
      json[r'multipleBirthStatus'] = null;
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
    if (this.sexDescriptor != null) {
      json[r'sexDescriptor'] = this.sexDescriptor;
    } else {
      json[r'sexDescriptor'] = null;
    }
      json[r'telephones'] = this.telephones;
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

  /// Returns a new [TpdmCandidate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmCandidate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmCandidate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmCandidate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmCandidate(
        id: mapValueOfType<String>(json, r'id'),
        candidateIdentifier: mapValueOfType<String>(json, r'candidateIdentifier')!,
        personReference: EdFiPersonReference.fromJson(json[r'personReference']),
        addresses: TpdmCandidateAddress.listFromJson(json[r'addresses']),
        birthCity: mapValueOfType<String>(json, r'birthCity'),
        birthCountryDescriptor: mapValueOfType<String>(json, r'birthCountryDescriptor'),
        birthDate: mapDateTime(json, r'birthDate', r'')!,
        birthInternationalProvince: mapValueOfType<String>(json, r'birthInternationalProvince'),
        birthSexDescriptor: mapValueOfType<String>(json, r'birthSexDescriptor'),
        birthStateAbbreviationDescriptor: mapValueOfType<String>(json, r'birthStateAbbreviationDescriptor'),
        dateEnteredUS: mapDateTime(json, r'dateEnteredUS', r''),
        disabilities: TpdmCandidateDisability.listFromJson(json[r'disabilities']),
        displacementStatus: mapValueOfType<String>(json, r'displacementStatus'),
        economicDisadvantaged: mapValueOfType<bool>(json, r'economicDisadvantaged'),
        electronicMails: TpdmCandidateElectronicMail.listFromJson(json[r'electronicMails']),
        englishLanguageExamDescriptor: mapValueOfType<String>(json, r'englishLanguageExamDescriptor'),
        firstGenerationStudent: mapValueOfType<bool>(json, r'firstGenerationStudent'),
        firstName: mapValueOfType<String>(json, r'firstName')!,
        genderDescriptor: mapValueOfType<String>(json, r'genderDescriptor'),
        generationCodeSuffix: mapValueOfType<String>(json, r'generationCodeSuffix'),
        hispanicLatinoEthnicity: mapValueOfType<bool>(json, r'hispanicLatinoEthnicity'),
        languages: TpdmCandidateLanguage.listFromJson(json[r'languages']),
        lastSurname: mapValueOfType<String>(json, r'lastSurname')!,
        limitedEnglishProficiencyDescriptor: mapValueOfType<String>(json, r'limitedEnglishProficiencyDescriptor'),
        maidenName: mapValueOfType<String>(json, r'maidenName'),
        middleName: mapValueOfType<String>(json, r'middleName'),
        multipleBirthStatus: mapValueOfType<bool>(json, r'multipleBirthStatus'),
        otherNames: TpdmCandidateOtherName.listFromJson(json[r'otherNames']),
        personalIdentificationDocuments: TpdmCandidatePersonalIdentificationDocument.listFromJson(json[r'personalIdentificationDocuments']),
        personalTitlePrefix: mapValueOfType<String>(json, r'personalTitlePrefix'),
        preferredFirstName: mapValueOfType<String>(json, r'preferredFirstName'),
        preferredLastSurname: mapValueOfType<String>(json, r'preferredLastSurname'),
        races: TpdmCandidateRace.listFromJson(json[r'races']),
        sexDescriptor: mapValueOfType<String>(json, r'sexDescriptor'),
        telephones: TpdmCandidateTelephone.listFromJson(json[r'telephones']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<TpdmCandidate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmCandidate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmCandidate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmCandidate> mapFromJson(dynamic json) {
    final map = <String, TpdmCandidate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmCandidate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmCandidate-objects as value to a dart map
  static Map<String, List<TpdmCandidate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmCandidate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmCandidate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'candidateIdentifier',
    'birthDate',
    'firstName',
    'lastSurname',
  };
}

