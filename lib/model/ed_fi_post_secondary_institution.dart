//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiPostSecondaryInstitution {
  /// Returns a new [EdFiPostSecondaryInstitution] instance.
  EdFiPostSecondaryInstitution({
    this.id,
    this.categories = const [],
    required this.postSecondaryInstitutionId,
    this.addresses = const [],
    this.administrativeFundingControlDescriptor,
    this.identificationCodes = const [],
    this.indicators = const [],
    this.institutionTelephones = const [],
    this.internationalAddresses = const [],
    this.mediumOfInstructions = const [],
    required this.nameOfInstitution,
    this.operationalStatusDescriptor,
    this.postSecondaryInstitutionLevelDescriptor,
    this.shortNameOfInstitution,
    this.webSite,
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

  /// An unordered collection of educationOrganizationCategories. The classification of the education agency within the geographic boundaries of a state according to the level of administrative and operational control granted by the state.
  List<EdFiEducationOrganizationCategory> categories;

  /// The ID of the post secondary institution. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  int postSecondaryInstitutionId;

  /// An unordered collection of educationOrganizationAddresses. The set of elements that describes an address for the education entity, including the street address, city, state, ZIP code, and ZIP code + 4.
  List<EdFiEducationOrganizationAddress> addresses;

  /// A classification of whether a postsecondary institution is operated by publicly elected or appointed officials (public control) or by privately elected or appointed officials and derives its major source of funds from private sources (private control).
  String? administrativeFundingControlDescriptor;

  /// An unordered collection of educationOrganizationIdentificationCodes. A unique number or alphanumeric code assigned to an education organization by a school, school system, a state, or other agency or entity.
  List<EdFiEducationOrganizationIdentificationCode> identificationCodes;

  /// An unordered collection of educationOrganizationIndicators. An indicator or metric of an education organization.
  List<EdFiEducationOrganizationIndicator> indicators;

  /// An unordered collection of educationOrganizationInstitutionTelephones. The 10-digit telephone number, including the area code, for the education entity.
  List<EdFiEducationOrganizationInstitutionTelephone> institutionTelephones;

  /// An unordered collection of educationOrganizationInternationalAddresses. The set of elements that describes the international physical location of the education entity.
  List<EdFiEducationOrganizationInternationalAddress> internationalAddresses;

  /// An unordered collection of postSecondaryInstitutionMediumOfInstructions. The categories in which an institution serves the students.
  List<EdFiPostSecondaryInstitutionMediumOfInstruction> mediumOfInstructions;

  /// The full, legally accepted name of the institution.
  String nameOfInstitution;

  /// The current operational status of the education organization (e.g., active, inactive).
  String? operationalStatusDescriptor;

  /// A classification of whether a post secondary institution's highest level of offering is a program of 4-years or higher (4 year), 2-but-less-than 4-years (2 year), or less than 2-years.
  String? postSecondaryInstitutionLevelDescriptor;

  /// A short name for the institution.
  String? shortNameOfInstitution;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiPostSecondaryInstitution &&
    other.id == id &&
    _deepEquality.equals(other.categories, categories) &&
    other.postSecondaryInstitutionId == postSecondaryInstitutionId &&
    _deepEquality.equals(other.addresses, addresses) &&
    other.administrativeFundingControlDescriptor == administrativeFundingControlDescriptor &&
    _deepEquality.equals(other.identificationCodes, identificationCodes) &&
    _deepEquality.equals(other.indicators, indicators) &&
    _deepEquality.equals(other.institutionTelephones, institutionTelephones) &&
    _deepEquality.equals(other.internationalAddresses, internationalAddresses) &&
    _deepEquality.equals(other.mediumOfInstructions, mediumOfInstructions) &&
    other.nameOfInstitution == nameOfInstitution &&
    other.operationalStatusDescriptor == operationalStatusDescriptor &&
    other.postSecondaryInstitutionLevelDescriptor == postSecondaryInstitutionLevelDescriptor &&
    other.shortNameOfInstitution == shortNameOfInstitution &&
    other.webSite == webSite &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (categories.hashCode) +
    (postSecondaryInstitutionId.hashCode) +
    (addresses.hashCode) +
    (administrativeFundingControlDescriptor == null ? 0 : administrativeFundingControlDescriptor!.hashCode) +
    (identificationCodes.hashCode) +
    (indicators.hashCode) +
    (institutionTelephones.hashCode) +
    (internationalAddresses.hashCode) +
    (mediumOfInstructions.hashCode) +
    (nameOfInstitution.hashCode) +
    (operationalStatusDescriptor == null ? 0 : operationalStatusDescriptor!.hashCode) +
    (postSecondaryInstitutionLevelDescriptor == null ? 0 : postSecondaryInstitutionLevelDescriptor!.hashCode) +
    (shortNameOfInstitution == null ? 0 : shortNameOfInstitution!.hashCode) +
    (webSite == null ? 0 : webSite!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiPostSecondaryInstitution[id=$id, categories=$categories, postSecondaryInstitutionId=$postSecondaryInstitutionId, addresses=$addresses, administrativeFundingControlDescriptor=$administrativeFundingControlDescriptor, identificationCodes=$identificationCodes, indicators=$indicators, institutionTelephones=$institutionTelephones, internationalAddresses=$internationalAddresses, mediumOfInstructions=$mediumOfInstructions, nameOfInstitution=$nameOfInstitution, operationalStatusDescriptor=$operationalStatusDescriptor, postSecondaryInstitutionLevelDescriptor=$postSecondaryInstitutionLevelDescriptor, shortNameOfInstitution=$shortNameOfInstitution, webSite=$webSite, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'categories'] = this.categories;
      json[r'postSecondaryInstitutionId'] = this.postSecondaryInstitutionId;
      json[r'addresses'] = this.addresses;
    if (this.administrativeFundingControlDescriptor != null) {
      json[r'administrativeFundingControlDescriptor'] = this.administrativeFundingControlDescriptor;
    } else {
      json[r'administrativeFundingControlDescriptor'] = null;
    }
      json[r'identificationCodes'] = this.identificationCodes;
      json[r'indicators'] = this.indicators;
      json[r'institutionTelephones'] = this.institutionTelephones;
      json[r'internationalAddresses'] = this.internationalAddresses;
      json[r'mediumOfInstructions'] = this.mediumOfInstructions;
      json[r'nameOfInstitution'] = this.nameOfInstitution;
    if (this.operationalStatusDescriptor != null) {
      json[r'operationalStatusDescriptor'] = this.operationalStatusDescriptor;
    } else {
      json[r'operationalStatusDescriptor'] = null;
    }
    if (this.postSecondaryInstitutionLevelDescriptor != null) {
      json[r'postSecondaryInstitutionLevelDescriptor'] = this.postSecondaryInstitutionLevelDescriptor;
    } else {
      json[r'postSecondaryInstitutionLevelDescriptor'] = null;
    }
    if (this.shortNameOfInstitution != null) {
      json[r'shortNameOfInstitution'] = this.shortNameOfInstitution;
    } else {
      json[r'shortNameOfInstitution'] = null;
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
    return json;
  }

  /// Returns a new [EdFiPostSecondaryInstitution] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiPostSecondaryInstitution? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiPostSecondaryInstitution[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiPostSecondaryInstitution[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiPostSecondaryInstitution(
        id: mapValueOfType<String>(json, r'id'),
        categories: EdFiEducationOrganizationCategory.listFromJson(json[r'categories']),
        postSecondaryInstitutionId: mapValueOfType<int>(json, r'postSecondaryInstitutionId')!,
        addresses: EdFiEducationOrganizationAddress.listFromJson(json[r'addresses']),
        administrativeFundingControlDescriptor: mapValueOfType<String>(json, r'administrativeFundingControlDescriptor'),
        identificationCodes: EdFiEducationOrganizationIdentificationCode.listFromJson(json[r'identificationCodes']),
        indicators: EdFiEducationOrganizationIndicator.listFromJson(json[r'indicators']),
        institutionTelephones: EdFiEducationOrganizationInstitutionTelephone.listFromJson(json[r'institutionTelephones']),
        internationalAddresses: EdFiEducationOrganizationInternationalAddress.listFromJson(json[r'internationalAddresses']),
        mediumOfInstructions: EdFiPostSecondaryInstitutionMediumOfInstruction.listFromJson(json[r'mediumOfInstructions']),
        nameOfInstitution: mapValueOfType<String>(json, r'nameOfInstitution')!,
        operationalStatusDescriptor: mapValueOfType<String>(json, r'operationalStatusDescriptor'),
        postSecondaryInstitutionLevelDescriptor: mapValueOfType<String>(json, r'postSecondaryInstitutionLevelDescriptor'),
        shortNameOfInstitution: mapValueOfType<String>(json, r'shortNameOfInstitution'),
        webSite: mapValueOfType<String>(json, r'webSite'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiPostSecondaryInstitution> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiPostSecondaryInstitution>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiPostSecondaryInstitution.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiPostSecondaryInstitution> mapFromJson(dynamic json) {
    final map = <String, EdFiPostSecondaryInstitution>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiPostSecondaryInstitution.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiPostSecondaryInstitution-objects as value to a dart map
  static Map<String, List<EdFiPostSecondaryInstitution>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiPostSecondaryInstitution>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiPostSecondaryInstitution.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'categories',
    'postSecondaryInstitutionId',
    'nameOfInstitution',
  };
}

