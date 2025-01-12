//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCommunityProvider {
  /// Returns a new [EdFiCommunityProvider] instance.
  EdFiCommunityProvider({
    this.id,
    this.categories = const [],
    required this.communityProviderId,
    this.communityOrganizationReference,
    this.addresses = const [],
    this.identificationCodes = const [],
    this.indicators = const [],
    this.institutionTelephones = const [],
    this.internationalAddresses = const [],
    this.licenseExemptIndicator,
    required this.nameOfInstitution,
    this.operationalStatusDescriptor,
    required this.providerCategoryDescriptor,
    this.providerProfitabilityDescriptor,
    required this.providerStatusDescriptor,
    this.schoolIndicator,
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

  /// The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  int communityProviderId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiCommunityOrganizationReference? communityOrganizationReference;

  /// An unordered collection of educationOrganizationAddresses. The set of elements that describes an address for the education entity, including the street address, city, state, ZIP code, and ZIP code + 4.
  List<EdFiEducationOrganizationAddress> addresses;

  /// An unordered collection of educationOrganizationIdentificationCodes. A unique number or alphanumeric code assigned to an education organization by a school, school system, a state, or other agency or entity.
  List<EdFiEducationOrganizationIdentificationCode> identificationCodes;

  /// An unordered collection of educationOrganizationIndicators. An indicator or metric of an education organization.
  List<EdFiEducationOrganizationIndicator> indicators;

  /// An unordered collection of educationOrganizationInstitutionTelephones. The 10-digit telephone number, including the area code, for the education entity.
  List<EdFiEducationOrganizationInstitutionTelephone> institutionTelephones;

  /// An unordered collection of educationOrganizationInternationalAddresses. The set of elements that describes the international physical location of the education entity.
  List<EdFiEducationOrganizationInternationalAddress> internationalAddresses;

  /// An indication of whether the provider is exempt from having a license.
  bool? licenseExemptIndicator;

  /// The full, legally accepted name of the institution.
  String nameOfInstitution;

  /// The current operational status of the education organization (e.g., active, inactive).
  String? operationalStatusDescriptor;

  /// Indicates the category of the provider.
  String providerCategoryDescriptor;

  /// Indicates the profitability status of the provider.
  String? providerProfitabilityDescriptor;

  /// Indicates the status of the provider.
  String providerStatusDescriptor;

  /// An indication of whether the community provider is a school.
  bool? schoolIndicator;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiCommunityProvider &&
    other.id == id &&
    _deepEquality.equals(other.categories, categories) &&
    other.communityProviderId == communityProviderId &&
    other.communityOrganizationReference == communityOrganizationReference &&
    _deepEquality.equals(other.addresses, addresses) &&
    _deepEquality.equals(other.identificationCodes, identificationCodes) &&
    _deepEquality.equals(other.indicators, indicators) &&
    _deepEquality.equals(other.institutionTelephones, institutionTelephones) &&
    _deepEquality.equals(other.internationalAddresses, internationalAddresses) &&
    other.licenseExemptIndicator == licenseExemptIndicator &&
    other.nameOfInstitution == nameOfInstitution &&
    other.operationalStatusDescriptor == operationalStatusDescriptor &&
    other.providerCategoryDescriptor == providerCategoryDescriptor &&
    other.providerProfitabilityDescriptor == providerProfitabilityDescriptor &&
    other.providerStatusDescriptor == providerStatusDescriptor &&
    other.schoolIndicator == schoolIndicator &&
    other.shortNameOfInstitution == shortNameOfInstitution &&
    other.webSite == webSite &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (categories.hashCode) +
    (communityProviderId.hashCode) +
    (communityOrganizationReference == null ? 0 : communityOrganizationReference!.hashCode) +
    (addresses.hashCode) +
    (identificationCodes.hashCode) +
    (indicators.hashCode) +
    (institutionTelephones.hashCode) +
    (internationalAddresses.hashCode) +
    (licenseExemptIndicator == null ? 0 : licenseExemptIndicator!.hashCode) +
    (nameOfInstitution.hashCode) +
    (operationalStatusDescriptor == null ? 0 : operationalStatusDescriptor!.hashCode) +
    (providerCategoryDescriptor.hashCode) +
    (providerProfitabilityDescriptor == null ? 0 : providerProfitabilityDescriptor!.hashCode) +
    (providerStatusDescriptor.hashCode) +
    (schoolIndicator == null ? 0 : schoolIndicator!.hashCode) +
    (shortNameOfInstitution == null ? 0 : shortNameOfInstitution!.hashCode) +
    (webSite == null ? 0 : webSite!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiCommunityProvider[id=$id, categories=$categories, communityProviderId=$communityProviderId, communityOrganizationReference=$communityOrganizationReference, addresses=$addresses, identificationCodes=$identificationCodes, indicators=$indicators, institutionTelephones=$institutionTelephones, internationalAddresses=$internationalAddresses, licenseExemptIndicator=$licenseExemptIndicator, nameOfInstitution=$nameOfInstitution, operationalStatusDescriptor=$operationalStatusDescriptor, providerCategoryDescriptor=$providerCategoryDescriptor, providerProfitabilityDescriptor=$providerProfitabilityDescriptor, providerStatusDescriptor=$providerStatusDescriptor, schoolIndicator=$schoolIndicator, shortNameOfInstitution=$shortNameOfInstitution, webSite=$webSite, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'categories'] = this.categories;
      json[r'communityProviderId'] = this.communityProviderId;
    if (this.communityOrganizationReference != null) {
      json[r'communityOrganizationReference'] = this.communityOrganizationReference;
    } else {
      json[r'communityOrganizationReference'] = null;
    }
      json[r'addresses'] = this.addresses;
      json[r'identificationCodes'] = this.identificationCodes;
      json[r'indicators'] = this.indicators;
      json[r'institutionTelephones'] = this.institutionTelephones;
      json[r'internationalAddresses'] = this.internationalAddresses;
    if (this.licenseExemptIndicator != null) {
      json[r'licenseExemptIndicator'] = this.licenseExemptIndicator;
    } else {
      json[r'licenseExemptIndicator'] = null;
    }
      json[r'nameOfInstitution'] = this.nameOfInstitution;
    if (this.operationalStatusDescriptor != null) {
      json[r'operationalStatusDescriptor'] = this.operationalStatusDescriptor;
    } else {
      json[r'operationalStatusDescriptor'] = null;
    }
      json[r'providerCategoryDescriptor'] = this.providerCategoryDescriptor;
    if (this.providerProfitabilityDescriptor != null) {
      json[r'providerProfitabilityDescriptor'] = this.providerProfitabilityDescriptor;
    } else {
      json[r'providerProfitabilityDescriptor'] = null;
    }
      json[r'providerStatusDescriptor'] = this.providerStatusDescriptor;
    if (this.schoolIndicator != null) {
      json[r'schoolIndicator'] = this.schoolIndicator;
    } else {
      json[r'schoolIndicator'] = null;
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

  /// Returns a new [EdFiCommunityProvider] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCommunityProvider? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCommunityProvider[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCommunityProvider[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCommunityProvider(
        id: mapValueOfType<String>(json, r'id'),
        categories: EdFiEducationOrganizationCategory.listFromJson(json[r'categories']),
        communityProviderId: mapValueOfType<int>(json, r'communityProviderId')!,
        communityOrganizationReference: EdFiCommunityOrganizationReference.fromJson(json[r'communityOrganizationReference']),
        addresses: EdFiEducationOrganizationAddress.listFromJson(json[r'addresses']),
        identificationCodes: EdFiEducationOrganizationIdentificationCode.listFromJson(json[r'identificationCodes']),
        indicators: EdFiEducationOrganizationIndicator.listFromJson(json[r'indicators']),
        institutionTelephones: EdFiEducationOrganizationInstitutionTelephone.listFromJson(json[r'institutionTelephones']),
        internationalAddresses: EdFiEducationOrganizationInternationalAddress.listFromJson(json[r'internationalAddresses']),
        licenseExemptIndicator: mapValueOfType<bool>(json, r'licenseExemptIndicator'),
        nameOfInstitution: mapValueOfType<String>(json, r'nameOfInstitution')!,
        operationalStatusDescriptor: mapValueOfType<String>(json, r'operationalStatusDescriptor'),
        providerCategoryDescriptor: mapValueOfType<String>(json, r'providerCategoryDescriptor')!,
        providerProfitabilityDescriptor: mapValueOfType<String>(json, r'providerProfitabilityDescriptor'),
        providerStatusDescriptor: mapValueOfType<String>(json, r'providerStatusDescriptor')!,
        schoolIndicator: mapValueOfType<bool>(json, r'schoolIndicator'),
        shortNameOfInstitution: mapValueOfType<String>(json, r'shortNameOfInstitution'),
        webSite: mapValueOfType<String>(json, r'webSite'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiCommunityProvider> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCommunityProvider>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCommunityProvider.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCommunityProvider> mapFromJson(dynamic json) {
    final map = <String, EdFiCommunityProvider>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCommunityProvider.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCommunityProvider-objects as value to a dart map
  static Map<String, List<EdFiCommunityProvider>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCommunityProvider>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCommunityProvider.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'categories',
    'communityProviderId',
    'nameOfInstitution',
    'providerCategoryDescriptor',
    'providerStatusDescriptor',
  };
}

