//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStateEducationAgency {
  /// Returns a new [EdFiStateEducationAgency] instance.
  EdFiStateEducationAgency({
    this.id,
    this.categories = const [],
    required this.stateEducationAgencyId,
    this.accountabilities = const [],
    this.addresses = const [],
    this.federalFunds = const [],
    this.identificationCodes = const [],
    this.indicators = const [],
    this.institutionTelephones = const [],
    this.internationalAddresses = const [],
    required this.nameOfInstitution,
    this.operationalStatusDescriptor,
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

  /// The identifier assigned to a state education agency. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  int stateEducationAgencyId;

  /// An unordered collection of stateEducationAgencyAccountabilities. This entity maintains information about federal reporting and accountability for state education agencies.
  List<EdFiStateEducationAgencyAccountability> accountabilities;

  /// An unordered collection of educationOrganizationAddresses. The set of elements that describes an address for the education entity, including the street address, city, state, ZIP code, and ZIP code + 4.
  List<EdFiEducationOrganizationAddress> addresses;

  /// An unordered collection of stateEducationAgencyFederalFunds. Contains the information about the reception and use of federal funds for reporting purposes.
  List<EdFiStateEducationAgencyFederalFunds> federalFunds;

  /// An unordered collection of educationOrganizationIdentificationCodes. A unique number or alphanumeric code assigned to an education organization by a school, school system, a state, or other agency or entity.
  List<EdFiEducationOrganizationIdentificationCode> identificationCodes;

  /// An unordered collection of educationOrganizationIndicators. An indicator or metric of an education organization.
  List<EdFiEducationOrganizationIndicator> indicators;

  /// An unordered collection of educationOrganizationInstitutionTelephones. The 10-digit telephone number, including the area code, for the education entity.
  List<EdFiEducationOrganizationInstitutionTelephone> institutionTelephones;

  /// An unordered collection of educationOrganizationInternationalAddresses. The set of elements that describes the international physical location of the education entity.
  List<EdFiEducationOrganizationInternationalAddress> internationalAddresses;

  /// The full, legally accepted name of the institution.
  String nameOfInstitution;

  /// The current operational status of the education organization (e.g., active, inactive).
  String? operationalStatusDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiStateEducationAgency &&
    other.id == id &&
    _deepEquality.equals(other.categories, categories) &&
    other.stateEducationAgencyId == stateEducationAgencyId &&
    _deepEquality.equals(other.accountabilities, accountabilities) &&
    _deepEquality.equals(other.addresses, addresses) &&
    _deepEquality.equals(other.federalFunds, federalFunds) &&
    _deepEquality.equals(other.identificationCodes, identificationCodes) &&
    _deepEquality.equals(other.indicators, indicators) &&
    _deepEquality.equals(other.institutionTelephones, institutionTelephones) &&
    _deepEquality.equals(other.internationalAddresses, internationalAddresses) &&
    other.nameOfInstitution == nameOfInstitution &&
    other.operationalStatusDescriptor == operationalStatusDescriptor &&
    other.shortNameOfInstitution == shortNameOfInstitution &&
    other.webSite == webSite &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (categories.hashCode) +
    (stateEducationAgencyId.hashCode) +
    (accountabilities.hashCode) +
    (addresses.hashCode) +
    (federalFunds.hashCode) +
    (identificationCodes.hashCode) +
    (indicators.hashCode) +
    (institutionTelephones.hashCode) +
    (internationalAddresses.hashCode) +
    (nameOfInstitution.hashCode) +
    (operationalStatusDescriptor == null ? 0 : operationalStatusDescriptor!.hashCode) +
    (shortNameOfInstitution == null ? 0 : shortNameOfInstitution!.hashCode) +
    (webSite == null ? 0 : webSite!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiStateEducationAgency[id=$id, categories=$categories, stateEducationAgencyId=$stateEducationAgencyId, accountabilities=$accountabilities, addresses=$addresses, federalFunds=$federalFunds, identificationCodes=$identificationCodes, indicators=$indicators, institutionTelephones=$institutionTelephones, internationalAddresses=$internationalAddresses, nameOfInstitution=$nameOfInstitution, operationalStatusDescriptor=$operationalStatusDescriptor, shortNameOfInstitution=$shortNameOfInstitution, webSite=$webSite, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'categories'] = this.categories;
      json[r'stateEducationAgencyId'] = this.stateEducationAgencyId;
      json[r'accountabilities'] = this.accountabilities;
      json[r'addresses'] = this.addresses;
      json[r'federalFunds'] = this.federalFunds;
      json[r'identificationCodes'] = this.identificationCodes;
      json[r'indicators'] = this.indicators;
      json[r'institutionTelephones'] = this.institutionTelephones;
      json[r'internationalAddresses'] = this.internationalAddresses;
      json[r'nameOfInstitution'] = this.nameOfInstitution;
    if (this.operationalStatusDescriptor != null) {
      json[r'operationalStatusDescriptor'] = this.operationalStatusDescriptor;
    } else {
      json[r'operationalStatusDescriptor'] = null;
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

  /// Returns a new [EdFiStateEducationAgency] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStateEducationAgency? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStateEducationAgency[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStateEducationAgency[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStateEducationAgency(
        id: mapValueOfType<String>(json, r'id'),
        categories: EdFiEducationOrganizationCategory.listFromJson(json[r'categories']),
        stateEducationAgencyId: mapValueOfType<int>(json, r'stateEducationAgencyId')!,
        accountabilities: EdFiStateEducationAgencyAccountability.listFromJson(json[r'accountabilities']),
        addresses: EdFiEducationOrganizationAddress.listFromJson(json[r'addresses']),
        federalFunds: EdFiStateEducationAgencyFederalFunds.listFromJson(json[r'federalFunds']),
        identificationCodes: EdFiEducationOrganizationIdentificationCode.listFromJson(json[r'identificationCodes']),
        indicators: EdFiEducationOrganizationIndicator.listFromJson(json[r'indicators']),
        institutionTelephones: EdFiEducationOrganizationInstitutionTelephone.listFromJson(json[r'institutionTelephones']),
        internationalAddresses: EdFiEducationOrganizationInternationalAddress.listFromJson(json[r'internationalAddresses']),
        nameOfInstitution: mapValueOfType<String>(json, r'nameOfInstitution')!,
        operationalStatusDescriptor: mapValueOfType<String>(json, r'operationalStatusDescriptor'),
        shortNameOfInstitution: mapValueOfType<String>(json, r'shortNameOfInstitution'),
        webSite: mapValueOfType<String>(json, r'webSite'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStateEducationAgency> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStateEducationAgency>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStateEducationAgency.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStateEducationAgency> mapFromJson(dynamic json) {
    final map = <String, EdFiStateEducationAgency>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStateEducationAgency.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStateEducationAgency-objects as value to a dart map
  static Map<String, List<EdFiStateEducationAgency>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStateEducationAgency>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStateEducationAgency.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'categories',
    'stateEducationAgencyId',
    'nameOfInstitution',
  };
}

