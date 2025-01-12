//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudent {
  /// Returns a new [EdFiStudent] instance.
  EdFiStudent({
    this.id,
    required this.studentUniqueId,
    this.personReference,
    this.birthCity,
    this.birthCountryDescriptor,
    required this.birthDate,
    this.birthInternationalProvince,
    this.birthSexDescriptor,
    this.birthStateAbbreviationDescriptor,
    this.citizenshipStatusDescriptor,
    this.dateEnteredUS,
    required this.firstName,
    this.generationCodeSuffix,
    this.identificationDocuments = const [],
    required this.lastSurname,
    this.maidenName,
    this.middleName,
    this.multipleBirthStatus,
    this.otherNames = const [],
    this.personalIdentificationDocuments = const [],
    this.personalTitlePrefix,
    this.preferredFirstName,
    this.preferredLastSurname,
    this.visas = const [],
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

  /// A unique alphanumeric code assigned to a student.
  String studentUniqueId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiPersonReference? personReference;

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

  /// An indicator of whether or not the person is a U.S. citizen.
  String? citizenshipStatusDescriptor;

  /// For students born outside of the U.S., the date the student entered the U.S.
  DateTime? dateEnteredUS;

  /// A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.
  String firstName;

  /// An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III).
  String? generationCodeSuffix;

  /// An unordered collection of studentIdentificationDocuments. Describe the documentation of citizenship.
  List<EdFiStudentIdentificationDocument> identificationDocuments;

  /// The name borne in common by members of a family.
  String lastSurname;

  /// The individual's maiden name.
  String? maidenName;

  /// A secondary name given to an individual at birth, baptism, or during another naming ceremony.
  String? middleName;

  /// Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)
  bool? multipleBirthStatus;

  /// An unordered collection of studentOtherNames. Other names (e.g., alias, nickname, previous legal name) associated with a person.
  List<EdFiStudentOtherName> otherNames;

  /// An unordered collection of studentPersonalIdentificationDocuments. The documents presented as evident to verify one's personal identity; for example: drivers license, passport, birth certificate, etc.
  List<EdFiStudentPersonalIdentificationDocument> personalIdentificationDocuments;

  /// A prefix used to denote the title, degree, position, or seniority of the individual.
  String? personalTitlePrefix;

  /// The first name the individual prefers, if different from their legal first name
  String? preferredFirstName;

  /// The last name the individual prefers, if different from their legal last name
  String? preferredLastSurname;

  /// An unordered collection of studentVisas. An indicator of a non-US citizen's Visa type.
  List<EdFiStudentVisa> visas;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudent &&
    other.id == id &&
    other.studentUniqueId == studentUniqueId &&
    other.personReference == personReference &&
    other.birthCity == birthCity &&
    other.birthCountryDescriptor == birthCountryDescriptor &&
    other.birthDate == birthDate &&
    other.birthInternationalProvince == birthInternationalProvince &&
    other.birthSexDescriptor == birthSexDescriptor &&
    other.birthStateAbbreviationDescriptor == birthStateAbbreviationDescriptor &&
    other.citizenshipStatusDescriptor == citizenshipStatusDescriptor &&
    other.dateEnteredUS == dateEnteredUS &&
    other.firstName == firstName &&
    other.generationCodeSuffix == generationCodeSuffix &&
    _deepEquality.equals(other.identificationDocuments, identificationDocuments) &&
    other.lastSurname == lastSurname &&
    other.maidenName == maidenName &&
    other.middleName == middleName &&
    other.multipleBirthStatus == multipleBirthStatus &&
    _deepEquality.equals(other.otherNames, otherNames) &&
    _deepEquality.equals(other.personalIdentificationDocuments, personalIdentificationDocuments) &&
    other.personalTitlePrefix == personalTitlePrefix &&
    other.preferredFirstName == preferredFirstName &&
    other.preferredLastSurname == preferredLastSurname &&
    _deepEquality.equals(other.visas, visas) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (studentUniqueId.hashCode) +
    (personReference == null ? 0 : personReference!.hashCode) +
    (birthCity == null ? 0 : birthCity!.hashCode) +
    (birthCountryDescriptor == null ? 0 : birthCountryDescriptor!.hashCode) +
    (birthDate.hashCode) +
    (birthInternationalProvince == null ? 0 : birthInternationalProvince!.hashCode) +
    (birthSexDescriptor == null ? 0 : birthSexDescriptor!.hashCode) +
    (birthStateAbbreviationDescriptor == null ? 0 : birthStateAbbreviationDescriptor!.hashCode) +
    (citizenshipStatusDescriptor == null ? 0 : citizenshipStatusDescriptor!.hashCode) +
    (dateEnteredUS == null ? 0 : dateEnteredUS!.hashCode) +
    (firstName.hashCode) +
    (generationCodeSuffix == null ? 0 : generationCodeSuffix!.hashCode) +
    (identificationDocuments.hashCode) +
    (lastSurname.hashCode) +
    (maidenName == null ? 0 : maidenName!.hashCode) +
    (middleName == null ? 0 : middleName!.hashCode) +
    (multipleBirthStatus == null ? 0 : multipleBirthStatus!.hashCode) +
    (otherNames.hashCode) +
    (personalIdentificationDocuments.hashCode) +
    (personalTitlePrefix == null ? 0 : personalTitlePrefix!.hashCode) +
    (preferredFirstName == null ? 0 : preferredFirstName!.hashCode) +
    (preferredLastSurname == null ? 0 : preferredLastSurname!.hashCode) +
    (visas.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStudent[id=$id, studentUniqueId=$studentUniqueId, personReference=$personReference, birthCity=$birthCity, birthCountryDescriptor=$birthCountryDescriptor, birthDate=$birthDate, birthInternationalProvince=$birthInternationalProvince, birthSexDescriptor=$birthSexDescriptor, birthStateAbbreviationDescriptor=$birthStateAbbreviationDescriptor, citizenshipStatusDescriptor=$citizenshipStatusDescriptor, dateEnteredUS=$dateEnteredUS, firstName=$firstName, generationCodeSuffix=$generationCodeSuffix, identificationDocuments=$identificationDocuments, lastSurname=$lastSurname, maidenName=$maidenName, middleName=$middleName, multipleBirthStatus=$multipleBirthStatus, otherNames=$otherNames, personalIdentificationDocuments=$personalIdentificationDocuments, personalTitlePrefix=$personalTitlePrefix, preferredFirstName=$preferredFirstName, preferredLastSurname=$preferredLastSurname, visas=$visas, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'studentUniqueId'] = this.studentUniqueId;
    if (this.personReference != null) {
      json[r'personReference'] = this.personReference;
    } else {
      json[r'personReference'] = null;
    }
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
    if (this.citizenshipStatusDescriptor != null) {
      json[r'citizenshipStatusDescriptor'] = this.citizenshipStatusDescriptor;
    } else {
      json[r'citizenshipStatusDescriptor'] = null;
    }
    if (this.dateEnteredUS != null) {
      json[r'dateEnteredUS'] = _dateFormatter.format(this.dateEnteredUS!.toUtc());
    } else {
      json[r'dateEnteredUS'] = null;
    }
      json[r'firstName'] = this.firstName;
    if (this.generationCodeSuffix != null) {
      json[r'generationCodeSuffix'] = this.generationCodeSuffix;
    } else {
      json[r'generationCodeSuffix'] = null;
    }
      json[r'identificationDocuments'] = this.identificationDocuments;
      json[r'lastSurname'] = this.lastSurname;
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
      json[r'visas'] = this.visas;
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

  /// Returns a new [EdFiStudent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudent(
        id: mapValueOfType<String>(json, r'id'),
        studentUniqueId: mapValueOfType<String>(json, r'studentUniqueId')!,
        personReference: EdFiPersonReference.fromJson(json[r'personReference']),
        birthCity: mapValueOfType<String>(json, r'birthCity'),
        birthCountryDescriptor: mapValueOfType<String>(json, r'birthCountryDescriptor'),
        birthDate: mapDateTime(json, r'birthDate', r'')!,
        birthInternationalProvince: mapValueOfType<String>(json, r'birthInternationalProvince'),
        birthSexDescriptor: mapValueOfType<String>(json, r'birthSexDescriptor'),
        birthStateAbbreviationDescriptor: mapValueOfType<String>(json, r'birthStateAbbreviationDescriptor'),
        citizenshipStatusDescriptor: mapValueOfType<String>(json, r'citizenshipStatusDescriptor'),
        dateEnteredUS: mapDateTime(json, r'dateEnteredUS', r''),
        firstName: mapValueOfType<String>(json, r'firstName')!,
        generationCodeSuffix: mapValueOfType<String>(json, r'generationCodeSuffix'),
        identificationDocuments: EdFiStudentIdentificationDocument.listFromJson(json[r'identificationDocuments']),
        lastSurname: mapValueOfType<String>(json, r'lastSurname')!,
        maidenName: mapValueOfType<String>(json, r'maidenName'),
        middleName: mapValueOfType<String>(json, r'middleName'),
        multipleBirthStatus: mapValueOfType<bool>(json, r'multipleBirthStatus'),
        otherNames: EdFiStudentOtherName.listFromJson(json[r'otherNames']),
        personalIdentificationDocuments: EdFiStudentPersonalIdentificationDocument.listFromJson(json[r'personalIdentificationDocuments']),
        personalTitlePrefix: mapValueOfType<String>(json, r'personalTitlePrefix'),
        preferredFirstName: mapValueOfType<String>(json, r'preferredFirstName'),
        preferredLastSurname: mapValueOfType<String>(json, r'preferredLastSurname'),
        visas: EdFiStudentVisa.listFromJson(json[r'visas']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudent> mapFromJson(dynamic json) {
    final map = <String, EdFiStudent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudent-objects as value to a dart map
  static Map<String, List<EdFiStudent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'studentUniqueId',
    'birthDate',
    'firstName',
    'lastSurname',
  };
}

