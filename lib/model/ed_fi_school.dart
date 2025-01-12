//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiSchool {
  /// Returns a new [EdFiSchool] instance.
  EdFiSchool({
    this.id,
    this.educationOrganizationCategories = const [],
    this.gradeLevels = const [],
    required this.schoolId,
    this.charterApprovalSchoolYearTypeReference,
    this.localEducationAgencyReference,
    this.addresses = const [],
    this.administrativeFundingControlDescriptor,
    this.charterApprovalAgencyTypeDescriptor,
    this.charterStatusDescriptor,
    this.identificationCodes = const [],
    this.indicators = const [],
    this.institutionTelephones = const [],
    this.internationalAddresses = const [],
    this.internetAccessDescriptor,
    this.magnetSpecialProgramEmphasisSchoolDescriptor,
    required this.nameOfInstitution,
    this.operationalStatusDescriptor,
    this.schoolCategories = const [],
    this.schoolTypeDescriptor,
    this.shortNameOfInstitution,
    this.titleIPartASchoolDesignationDescriptor,
    this.webSite,
    this.etag,
    this.lastModifiedDate,
    this.ext,
  });

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// An unordered collection of educationOrganizationCategories. The classification of the education agency within the geographic boundaries of a state according to the level of administrative and operational control granted by the state.
  List<EdFiEducationOrganizationCategory> educationOrganizationCategories;

  /// An unordered collection of schoolGradeLevels. The grade levels served at the school.
  List<EdFiSchoolGradeLevel> gradeLevels;

  /// The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  int schoolId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiSchoolYearTypeReference? charterApprovalSchoolYearTypeReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiLocalEducationAgencyReference? localEducationAgencyReference;

  /// An unordered collection of educationOrganizationAddresses. The set of elements that describes an address for the education entity, including the street address, city, state, ZIP code, and ZIP code + 4.
  List<EdFiEducationOrganizationAddress> addresses;

  /// The type of education institution as classified by its funding source, for example public or private.
  String? administrativeFundingControlDescriptor;

  /// The type of agency that approved the establishment or continuation of a charter school.
  String? charterApprovalAgencyTypeDescriptor;

  /// A school or agency providing free public elementary or secondary education to eligible students under a specific charter granted by the state legislature or other appropriate authority and designated by such authority to be a charter school.
  String? charterStatusDescriptor;

  /// An unordered collection of educationOrganizationIdentificationCodes. A unique number or alphanumeric code assigned to an education organization by a school, school system, a state, or other agency or entity.
  List<EdFiEducationOrganizationIdentificationCode> identificationCodes;

  /// An unordered collection of educationOrganizationIndicators. An indicator or metric of an education organization.
  List<EdFiEducationOrganizationIndicator> indicators;

  /// An unordered collection of educationOrganizationInstitutionTelephones. The 10-digit telephone number, including the area code, for the education entity.
  List<EdFiEducationOrganizationInstitutionTelephone> institutionTelephones;

  /// An unordered collection of educationOrganizationInternationalAddresses. The set of elements that describes the international physical location of the education entity.
  List<EdFiEducationOrganizationInternationalAddress> internationalAddresses;

  /// The type of Internet access available.
  String? internetAccessDescriptor;

  /// A school that has been designed: 1) to attract students of different racial/ethnic backgrounds for the purpose of reducing, preventing, or eliminating racial isolation; and/or 2) to provide an academic or social focus on a particular theme (e.g., science/math, performing arts, gifted/talented, or foreign language).
  String? magnetSpecialProgramEmphasisSchoolDescriptor;

  /// The full, legally accepted name of the institution.
  String nameOfInstitution;

  /// The current operational status of the education organization (e.g., active, inactive).
  String? operationalStatusDescriptor;

  /// An unordered collection of schoolCategories. The one or more categories of school.
  List<EdFiSchoolCategory> schoolCategories;

  /// The type of education institution as classified by its primary focus.
  String? schoolTypeDescriptor;

  /// A short name for the institution.
  String? shortNameOfInstitution;

  /// Denotes the Title I Part A designation for the school.
  String? titleIPartASchoolDesignationDescriptor;

  /// The public web site address (URL) for the education organization.
  String? webSite;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SchoolExtensions? ext;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiSchool &&
    other.id == id &&
    _deepEquality.equals(other.educationOrganizationCategories, educationOrganizationCategories) &&
    _deepEquality.equals(other.gradeLevels, gradeLevels) &&
    other.schoolId == schoolId &&
    other.charterApprovalSchoolYearTypeReference == charterApprovalSchoolYearTypeReference &&
    other.localEducationAgencyReference == localEducationAgencyReference &&
    _deepEquality.equals(other.addresses, addresses) &&
    other.administrativeFundingControlDescriptor == administrativeFundingControlDescriptor &&
    other.charterApprovalAgencyTypeDescriptor == charterApprovalAgencyTypeDescriptor &&
    other.charterStatusDescriptor == charterStatusDescriptor &&
    _deepEquality.equals(other.identificationCodes, identificationCodes) &&
    _deepEquality.equals(other.indicators, indicators) &&
    _deepEquality.equals(other.institutionTelephones, institutionTelephones) &&
    _deepEquality.equals(other.internationalAddresses, internationalAddresses) &&
    other.internetAccessDescriptor == internetAccessDescriptor &&
    other.magnetSpecialProgramEmphasisSchoolDescriptor == magnetSpecialProgramEmphasisSchoolDescriptor &&
    other.nameOfInstitution == nameOfInstitution &&
    other.operationalStatusDescriptor == operationalStatusDescriptor &&
    _deepEquality.equals(other.schoolCategories, schoolCategories) &&
    other.schoolTypeDescriptor == schoolTypeDescriptor &&
    other.shortNameOfInstitution == shortNameOfInstitution &&
    other.titleIPartASchoolDesignationDescriptor == titleIPartASchoolDesignationDescriptor &&
    other.webSite == webSite &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate &&
    other.ext == ext;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (educationOrganizationCategories.hashCode) +
    (gradeLevels.hashCode) +
    (schoolId.hashCode) +
    (charterApprovalSchoolYearTypeReference == null ? 0 : charterApprovalSchoolYearTypeReference!.hashCode) +
    (localEducationAgencyReference == null ? 0 : localEducationAgencyReference!.hashCode) +
    (addresses.hashCode) +
    (administrativeFundingControlDescriptor == null ? 0 : administrativeFundingControlDescriptor!.hashCode) +
    (charterApprovalAgencyTypeDescriptor == null ? 0 : charterApprovalAgencyTypeDescriptor!.hashCode) +
    (charterStatusDescriptor == null ? 0 : charterStatusDescriptor!.hashCode) +
    (identificationCodes.hashCode) +
    (indicators.hashCode) +
    (institutionTelephones.hashCode) +
    (internationalAddresses.hashCode) +
    (internetAccessDescriptor == null ? 0 : internetAccessDescriptor!.hashCode) +
    (magnetSpecialProgramEmphasisSchoolDescriptor == null ? 0 : magnetSpecialProgramEmphasisSchoolDescriptor!.hashCode) +
    (nameOfInstitution.hashCode) +
    (operationalStatusDescriptor == null ? 0 : operationalStatusDescriptor!.hashCode) +
    (schoolCategories.hashCode) +
    (schoolTypeDescriptor == null ? 0 : schoolTypeDescriptor!.hashCode) +
    (shortNameOfInstitution == null ? 0 : shortNameOfInstitution!.hashCode) +
    (titleIPartASchoolDesignationDescriptor == null ? 0 : titleIPartASchoolDesignationDescriptor!.hashCode) +
    (webSite == null ? 0 : webSite!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode) +
    (ext == null ? 0 : ext!.hashCode);

  @override
  String toString() => 'EdFiSchool[id=$id, educationOrganizationCategories=$educationOrganizationCategories, gradeLevels=$gradeLevels, schoolId=$schoolId, charterApprovalSchoolYearTypeReference=$charterApprovalSchoolYearTypeReference, localEducationAgencyReference=$localEducationAgencyReference, addresses=$addresses, administrativeFundingControlDescriptor=$administrativeFundingControlDescriptor, charterApprovalAgencyTypeDescriptor=$charterApprovalAgencyTypeDescriptor, charterStatusDescriptor=$charterStatusDescriptor, identificationCodes=$identificationCodes, indicators=$indicators, institutionTelephones=$institutionTelephones, internationalAddresses=$internationalAddresses, internetAccessDescriptor=$internetAccessDescriptor, magnetSpecialProgramEmphasisSchoolDescriptor=$magnetSpecialProgramEmphasisSchoolDescriptor, nameOfInstitution=$nameOfInstitution, operationalStatusDescriptor=$operationalStatusDescriptor, schoolCategories=$schoolCategories, schoolTypeDescriptor=$schoolTypeDescriptor, shortNameOfInstitution=$shortNameOfInstitution, titleIPartASchoolDesignationDescriptor=$titleIPartASchoolDesignationDescriptor, webSite=$webSite, etag=$etag, lastModifiedDate=$lastModifiedDate, ext=$ext]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'educationOrganizationCategories'] = this.educationOrganizationCategories;
      json[r'gradeLevels'] = this.gradeLevels;
      json[r'schoolId'] = this.schoolId;
    if (this.charterApprovalSchoolYearTypeReference != null) {
      json[r'charterApprovalSchoolYearTypeReference'] = this.charterApprovalSchoolYearTypeReference;
    } else {
      json[r'charterApprovalSchoolYearTypeReference'] = null;
    }
    if (this.localEducationAgencyReference != null) {
      json[r'localEducationAgencyReference'] = this.localEducationAgencyReference;
    } else {
      json[r'localEducationAgencyReference'] = null;
    }
      json[r'addresses'] = this.addresses;
    if (this.administrativeFundingControlDescriptor != null) {
      json[r'administrativeFundingControlDescriptor'] = this.administrativeFundingControlDescriptor;
    } else {
      json[r'administrativeFundingControlDescriptor'] = null;
    }
    if (this.charterApprovalAgencyTypeDescriptor != null) {
      json[r'charterApprovalAgencyTypeDescriptor'] = this.charterApprovalAgencyTypeDescriptor;
    } else {
      json[r'charterApprovalAgencyTypeDescriptor'] = null;
    }
    if (this.charterStatusDescriptor != null) {
      json[r'charterStatusDescriptor'] = this.charterStatusDescriptor;
    } else {
      json[r'charterStatusDescriptor'] = null;
    }
      json[r'identificationCodes'] = this.identificationCodes;
      json[r'indicators'] = this.indicators;
      json[r'institutionTelephones'] = this.institutionTelephones;
      json[r'internationalAddresses'] = this.internationalAddresses;
    if (this.internetAccessDescriptor != null) {
      json[r'internetAccessDescriptor'] = this.internetAccessDescriptor;
    } else {
      json[r'internetAccessDescriptor'] = null;
    }
    if (this.magnetSpecialProgramEmphasisSchoolDescriptor != null) {
      json[r'magnetSpecialProgramEmphasisSchoolDescriptor'] = this.magnetSpecialProgramEmphasisSchoolDescriptor;
    } else {
      json[r'magnetSpecialProgramEmphasisSchoolDescriptor'] = null;
    }
      json[r'nameOfInstitution'] = this.nameOfInstitution;
    if (this.operationalStatusDescriptor != null) {
      json[r'operationalStatusDescriptor'] = this.operationalStatusDescriptor;
    } else {
      json[r'operationalStatusDescriptor'] = null;
    }
      json[r'schoolCategories'] = this.schoolCategories;
    if (this.schoolTypeDescriptor != null) {
      json[r'schoolTypeDescriptor'] = this.schoolTypeDescriptor;
    } else {
      json[r'schoolTypeDescriptor'] = null;
    }
    if (this.shortNameOfInstitution != null) {
      json[r'shortNameOfInstitution'] = this.shortNameOfInstitution;
    } else {
      json[r'shortNameOfInstitution'] = null;
    }
    if (this.titleIPartASchoolDesignationDescriptor != null) {
      json[r'titleIPartASchoolDesignationDescriptor'] = this.titleIPartASchoolDesignationDescriptor;
    } else {
      json[r'titleIPartASchoolDesignationDescriptor'] = null;
    }
    if (this.webSite != null) {
      json[r'webSite'] = this.webSite;
    } else {
      json[r'webSite'] = null;
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
    if (this.ext != null) {
      json[r'_ext'] = this.ext;
    } else {
      json[r'_ext'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiSchool] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiSchool? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiSchool[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiSchool[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiSchool(
        id: mapValueOfType<String>(json, r'id'),
        educationOrganizationCategories: EdFiEducationOrganizationCategory.listFromJson(json[r'educationOrganizationCategories']),
        gradeLevels: EdFiSchoolGradeLevel.listFromJson(json[r'gradeLevels']),
        schoolId: mapValueOfType<int>(json, r'schoolId')!,
        charterApprovalSchoolYearTypeReference: EdFiSchoolYearTypeReference.fromJson(json[r'charterApprovalSchoolYearTypeReference']),
        localEducationAgencyReference: EdFiLocalEducationAgencyReference.fromJson(json[r'localEducationAgencyReference']),
        addresses: EdFiEducationOrganizationAddress.listFromJson(json[r'addresses']),
        administrativeFundingControlDescriptor: mapValueOfType<String>(json, r'administrativeFundingControlDescriptor'),
        charterApprovalAgencyTypeDescriptor: mapValueOfType<String>(json, r'charterApprovalAgencyTypeDescriptor'),
        charterStatusDescriptor: mapValueOfType<String>(json, r'charterStatusDescriptor'),
        identificationCodes: EdFiEducationOrganizationIdentificationCode.listFromJson(json[r'identificationCodes']),
        indicators: EdFiEducationOrganizationIndicator.listFromJson(json[r'indicators']),
        institutionTelephones: EdFiEducationOrganizationInstitutionTelephone.listFromJson(json[r'institutionTelephones']),
        internationalAddresses: EdFiEducationOrganizationInternationalAddress.listFromJson(json[r'internationalAddresses']),
        internetAccessDescriptor: mapValueOfType<String>(json, r'internetAccessDescriptor'),
        magnetSpecialProgramEmphasisSchoolDescriptor: mapValueOfType<String>(json, r'magnetSpecialProgramEmphasisSchoolDescriptor'),
        nameOfInstitution: mapValueOfType<String>(json, r'nameOfInstitution')!,
        operationalStatusDescriptor: mapValueOfType<String>(json, r'operationalStatusDescriptor'),
        schoolCategories: EdFiSchoolCategory.listFromJson(json[r'schoolCategories']),
        schoolTypeDescriptor: mapValueOfType<String>(json, r'schoolTypeDescriptor'),
        shortNameOfInstitution: mapValueOfType<String>(json, r'shortNameOfInstitution'),
        titleIPartASchoolDesignationDescriptor: mapValueOfType<String>(json, r'titleIPartASchoolDesignationDescriptor'),
        webSite: mapValueOfType<String>(json, r'webSite'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
        ext: SchoolExtensions.fromJson(json[r'_ext']),
      );
    }
    return null;
  }

  static List<EdFiSchool> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiSchool>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiSchool.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiSchool> mapFromJson(dynamic json) {
    final map = <String, EdFiSchool>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiSchool.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiSchool-objects as value to a dart map
  static Map<String, List<EdFiSchool>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiSchool>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiSchool.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'educationOrganizationCategories',
    'gradeLevels',
    'schoolId',
    'nameOfInstitution',
  };
}

