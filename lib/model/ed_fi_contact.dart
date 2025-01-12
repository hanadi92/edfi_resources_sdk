//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiContact {
  /// Returns a new [EdFiContact] instance.
  EdFiContact({
    this.id,
    required this.contactUniqueId,
    this.personReference,
    this.addresses = const [],
    this.electronicMails = const [],
    required this.firstName,
    this.genderIdentity,
    this.generationCodeSuffix,
    this.highestCompletedLevelOfEducationDescriptor,
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

  /// A unique alphanumeric code assigned to a contact.
  String contactUniqueId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiPersonReference? personReference;

  /// An unordered collection of contactAddresses. Contact's address, if different from the student address.
  List<EdFiContactAddress> addresses;

  /// An unordered collection of contactElectronicMails. The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.
  List<EdFiContactElectronicMail> electronicMails;

  /// A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  String firstName;

  /// The gender the contact identifies themselves as.
  String? genderIdentity;

  /// An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  String? generationCodeSuffix;

  /// The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).
  String? highestCompletedLevelOfEducationDescriptor;

  /// An unordered collection of contactInternationalAddresses. The set of elements that describes an international address.
  List<EdFiContactInternationalAddress> internationalAddresses;

  /// An unordered collection of contactLanguages. The language(s) the individual uses to communicate. It is strongly recommended that entries use only ISO 639-2 language codes.
  List<EdFiContactLanguage> languages;

  /// The name borne in common by members of a family.
  String lastSurname;

  /// The login ID for the user; used for security access control interface.
  String? loginId;

  /// The individual's maiden name.
  String? maidenName;

  /// A secondary name given to an individual at birth, baptism, or during another naming ceremony.
  String? middleName;

  /// An unordered collection of contactOtherNames. Other names (e.g., alias, nickname, previous legal name) associated with a person.
  List<EdFiContactOtherName> otherNames;

  /// An unordered collection of contactPersonalIdentificationDocuments. The documents presented as evident to verify one's personal identity; for example: drivers license, passport, birth certificate, etc.
  List<EdFiContactPersonalIdentificationDocument> personalIdentificationDocuments;

  /// A prefix used to denote the title, degree, position, or seniority of the individual.
  String? personalTitlePrefix;

  /// The first name the individual prefers, if different from their legal first name
  String? preferredFirstName;

  /// The last name the individual prefers, if different from their legal last name
  String? preferredLastSurname;

  /// A person's birth sex.
  String? sexDescriptor;

  /// An unordered collection of contactTelephones. The 10-digit telephone number, including the area code, for the person.
  List<EdFiContactTelephone> telephones;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiContact &&
    other.id == id &&
    other.contactUniqueId == contactUniqueId &&
    other.personReference == personReference &&
    _deepEquality.equals(other.addresses, addresses) &&
    _deepEquality.equals(other.electronicMails, electronicMails) &&
    other.firstName == firstName &&
    other.genderIdentity == genderIdentity &&
    other.generationCodeSuffix == generationCodeSuffix &&
    other.highestCompletedLevelOfEducationDescriptor == highestCompletedLevelOfEducationDescriptor &&
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
    other.sexDescriptor == sexDescriptor &&
    _deepEquality.equals(other.telephones, telephones) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (contactUniqueId.hashCode) +
    (personReference == null ? 0 : personReference!.hashCode) +
    (addresses.hashCode) +
    (electronicMails.hashCode) +
    (firstName.hashCode) +
    (genderIdentity == null ? 0 : genderIdentity!.hashCode) +
    (generationCodeSuffix == null ? 0 : generationCodeSuffix!.hashCode) +
    (highestCompletedLevelOfEducationDescriptor == null ? 0 : highestCompletedLevelOfEducationDescriptor!.hashCode) +
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
    (sexDescriptor == null ? 0 : sexDescriptor!.hashCode) +
    (telephones.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiContact[id=$id, contactUniqueId=$contactUniqueId, personReference=$personReference, addresses=$addresses, electronicMails=$electronicMails, firstName=$firstName, genderIdentity=$genderIdentity, generationCodeSuffix=$generationCodeSuffix, highestCompletedLevelOfEducationDescriptor=$highestCompletedLevelOfEducationDescriptor, internationalAddresses=$internationalAddresses, languages=$languages, lastSurname=$lastSurname, loginId=$loginId, maidenName=$maidenName, middleName=$middleName, otherNames=$otherNames, personalIdentificationDocuments=$personalIdentificationDocuments, personalTitlePrefix=$personalTitlePrefix, preferredFirstName=$preferredFirstName, preferredLastSurname=$preferredLastSurname, sexDescriptor=$sexDescriptor, telephones=$telephones, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'contactUniqueId'] = this.contactUniqueId;
    if (this.personReference != null) {
      json[r'personReference'] = this.personReference;
    } else {
      json[r'personReference'] = null;
    }
      json[r'addresses'] = this.addresses;
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

  /// Returns a new [EdFiContact] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiContact? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiContact[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiContact[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiContact(
        id: mapValueOfType<String>(json, r'id'),
        contactUniqueId: mapValueOfType<String>(json, r'contactUniqueId')!,
        personReference: EdFiPersonReference.fromJson(json[r'personReference']),
        addresses: EdFiContactAddress.listFromJson(json[r'addresses']),
        electronicMails: EdFiContactElectronicMail.listFromJson(json[r'electronicMails']),
        firstName: mapValueOfType<String>(json, r'firstName')!,
        genderIdentity: mapValueOfType<String>(json, r'genderIdentity'),
        generationCodeSuffix: mapValueOfType<String>(json, r'generationCodeSuffix'),
        highestCompletedLevelOfEducationDescriptor: mapValueOfType<String>(json, r'highestCompletedLevelOfEducationDescriptor'),
        internationalAddresses: EdFiContactInternationalAddress.listFromJson(json[r'internationalAddresses']),
        languages: EdFiContactLanguage.listFromJson(json[r'languages']),
        lastSurname: mapValueOfType<String>(json, r'lastSurname')!,
        loginId: mapValueOfType<String>(json, r'loginId'),
        maidenName: mapValueOfType<String>(json, r'maidenName'),
        middleName: mapValueOfType<String>(json, r'middleName'),
        otherNames: EdFiContactOtherName.listFromJson(json[r'otherNames']),
        personalIdentificationDocuments: EdFiContactPersonalIdentificationDocument.listFromJson(json[r'personalIdentificationDocuments']),
        personalTitlePrefix: mapValueOfType<String>(json, r'personalTitlePrefix'),
        preferredFirstName: mapValueOfType<String>(json, r'preferredFirstName'),
        preferredLastSurname: mapValueOfType<String>(json, r'preferredLastSurname'),
        sexDescriptor: mapValueOfType<String>(json, r'sexDescriptor'),
        telephones: EdFiContactTelephone.listFromJson(json[r'telephones']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiContact> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiContact>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiContact.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiContact> mapFromJson(dynamic json) {
    final map = <String, EdFiContact>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiContact.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiContact-objects as value to a dart map
  static Map<String, List<EdFiContact>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiContact>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiContact.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'contactUniqueId',
    'firstName',
    'lastSurname',
  };
}

