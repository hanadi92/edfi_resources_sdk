//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentEducationOrganizationAssociationAddress {
  /// Returns a new [EdFiStudentEducationOrganizationAssociationAddress] instance.
  EdFiStudentEducationOrganizationAssociationAddress({
    required this.addressTypeDescriptor,
    required this.stateAbbreviationDescriptor,
    required this.city,
    required this.postalCode,
    required this.streetNumberName,
    this.localeDescriptor,
    this.apartmentRoomSuiteNumber,
    this.buildingSiteNumber,
    this.congressionalDistrict,
    this.countyFIPSCode,
    this.doNotPublishIndicator,
    this.latitude,
    this.longitude,
    this.nameOfCounty,
    this.periods = const [],
  });

  /// The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)
  String addressTypeDescriptor;

  /// The abbreviation for the state (within the United States) or outlying area in which an address is located.
  String stateAbbreviationDescriptor;

  /// The name of the city in which an address is located.
  String city;

  /// The five or nine digit zip code or overseas postal code portion of an address.
  String postalCode;

  /// The street number and street name or post office box number of an address.
  String streetNumberName;

  /// A general geographic indicator that categorizes U.S. territory (e.g., City, Suburban).
  String? localeDescriptor;

  /// The apartment, room, or suite number of an address.
  String? apartmentRoomSuiteNumber;

  /// The number of the building on the site, if more than one building shares the same address.
  String? buildingSiteNumber;

  /// The congressional district in which an address is located.
  String? congressionalDistrict;

  /// The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the \"first-order subdivisions\" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.
  String? countyFIPSCode;

  /// An indication that the address should not be published.
  bool? doNotPublishIndicator;

  /// The geographic latitude of the physical address.
  String? latitude;

  /// The geographic longitude of the physical address.
  String? longitude;

  /// The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.
  String? nameOfCounty;

  /// An unordered collection of studentEducationOrganizationAssociationAddressPeriods. The time periods for which the address is valid. For physical addresses, the periods in which the person lived at that address.
  List<EdFiStudentEducationOrganizationAssociationAddressPeriod> periods;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentEducationOrganizationAssociationAddress &&
    other.addressTypeDescriptor == addressTypeDescriptor &&
    other.stateAbbreviationDescriptor == stateAbbreviationDescriptor &&
    other.city == city &&
    other.postalCode == postalCode &&
    other.streetNumberName == streetNumberName &&
    other.localeDescriptor == localeDescriptor &&
    other.apartmentRoomSuiteNumber == apartmentRoomSuiteNumber &&
    other.buildingSiteNumber == buildingSiteNumber &&
    other.congressionalDistrict == congressionalDistrict &&
    other.countyFIPSCode == countyFIPSCode &&
    other.doNotPublishIndicator == doNotPublishIndicator &&
    other.latitude == latitude &&
    other.longitude == longitude &&
    other.nameOfCounty == nameOfCounty &&
    _deepEquality.equals(other.periods, periods);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addressTypeDescriptor.hashCode) +
    (stateAbbreviationDescriptor.hashCode) +
    (city.hashCode) +
    (postalCode.hashCode) +
    (streetNumberName.hashCode) +
    (localeDescriptor == null ? 0 : localeDescriptor!.hashCode) +
    (apartmentRoomSuiteNumber == null ? 0 : apartmentRoomSuiteNumber!.hashCode) +
    (buildingSiteNumber == null ? 0 : buildingSiteNumber!.hashCode) +
    (congressionalDistrict == null ? 0 : congressionalDistrict!.hashCode) +
    (countyFIPSCode == null ? 0 : countyFIPSCode!.hashCode) +
    (doNotPublishIndicator == null ? 0 : doNotPublishIndicator!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode) +
    (nameOfCounty == null ? 0 : nameOfCounty!.hashCode) +
    (periods.hashCode);

  @override
  String toString() => 'EdFiStudentEducationOrganizationAssociationAddress[addressTypeDescriptor=$addressTypeDescriptor, stateAbbreviationDescriptor=$stateAbbreviationDescriptor, city=$city, postalCode=$postalCode, streetNumberName=$streetNumberName, localeDescriptor=$localeDescriptor, apartmentRoomSuiteNumber=$apartmentRoomSuiteNumber, buildingSiteNumber=$buildingSiteNumber, congressionalDistrict=$congressionalDistrict, countyFIPSCode=$countyFIPSCode, doNotPublishIndicator=$doNotPublishIndicator, latitude=$latitude, longitude=$longitude, nameOfCounty=$nameOfCounty, periods=$periods]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'addressTypeDescriptor'] = this.addressTypeDescriptor;
      json[r'stateAbbreviationDescriptor'] = this.stateAbbreviationDescriptor;
      json[r'city'] = this.city;
      json[r'postalCode'] = this.postalCode;
      json[r'streetNumberName'] = this.streetNumberName;
    if (this.localeDescriptor != null) {
      json[r'localeDescriptor'] = this.localeDescriptor;
    } else {
      json[r'localeDescriptor'] = null;
    }
    if (this.apartmentRoomSuiteNumber != null) {
      json[r'apartmentRoomSuiteNumber'] = this.apartmentRoomSuiteNumber;
    } else {
      json[r'apartmentRoomSuiteNumber'] = null;
    }
    if (this.buildingSiteNumber != null) {
      json[r'buildingSiteNumber'] = this.buildingSiteNumber;
    } else {
      json[r'buildingSiteNumber'] = null;
    }
    if (this.congressionalDistrict != null) {
      json[r'congressionalDistrict'] = this.congressionalDistrict;
    } else {
      json[r'congressionalDistrict'] = null;
    }
    if (this.countyFIPSCode != null) {
      json[r'countyFIPSCode'] = this.countyFIPSCode;
    } else {
      json[r'countyFIPSCode'] = null;
    }
    if (this.doNotPublishIndicator != null) {
      json[r'doNotPublishIndicator'] = this.doNotPublishIndicator;
    } else {
      json[r'doNotPublishIndicator'] = null;
    }
    if (this.latitude != null) {
      json[r'latitude'] = this.latitude;
    } else {
      json[r'latitude'] = null;
    }
    if (this.longitude != null) {
      json[r'longitude'] = this.longitude;
    } else {
      json[r'longitude'] = null;
    }
    if (this.nameOfCounty != null) {
      json[r'nameOfCounty'] = this.nameOfCounty;
    } else {
      json[r'nameOfCounty'] = null;
    }
      json[r'periods'] = this.periods;
    return json;
  }

  /// Returns a new [EdFiStudentEducationOrganizationAssociationAddress] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentEducationOrganizationAssociationAddress? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentEducationOrganizationAssociationAddress[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentEducationOrganizationAssociationAddress[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentEducationOrganizationAssociationAddress(
        addressTypeDescriptor: mapValueOfType<String>(json, r'addressTypeDescriptor')!,
        stateAbbreviationDescriptor: mapValueOfType<String>(json, r'stateAbbreviationDescriptor')!,
        city: mapValueOfType<String>(json, r'city')!,
        postalCode: mapValueOfType<String>(json, r'postalCode')!,
        streetNumberName: mapValueOfType<String>(json, r'streetNumberName')!,
        localeDescriptor: mapValueOfType<String>(json, r'localeDescriptor'),
        apartmentRoomSuiteNumber: mapValueOfType<String>(json, r'apartmentRoomSuiteNumber'),
        buildingSiteNumber: mapValueOfType<String>(json, r'buildingSiteNumber'),
        congressionalDistrict: mapValueOfType<String>(json, r'congressionalDistrict'),
        countyFIPSCode: mapValueOfType<String>(json, r'countyFIPSCode'),
        doNotPublishIndicator: mapValueOfType<bool>(json, r'doNotPublishIndicator'),
        latitude: mapValueOfType<String>(json, r'latitude'),
        longitude: mapValueOfType<String>(json, r'longitude'),
        nameOfCounty: mapValueOfType<String>(json, r'nameOfCounty'),
        periods: EdFiStudentEducationOrganizationAssociationAddressPeriod.listFromJson(json[r'periods']),
      );
    }
    return null;
  }

  static List<EdFiStudentEducationOrganizationAssociationAddress> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentEducationOrganizationAssociationAddress>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentEducationOrganizationAssociationAddress.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentEducationOrganizationAssociationAddress> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentEducationOrganizationAssociationAddress>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentEducationOrganizationAssociationAddress.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentEducationOrganizationAssociationAddress-objects as value to a dart map
  static Map<String, List<EdFiStudentEducationOrganizationAssociationAddress>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentEducationOrganizationAssociationAddress>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentEducationOrganizationAssociationAddress.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'addressTypeDescriptor',
    'stateAbbreviationDescriptor',
    'city',
    'postalCode',
    'streetNumberName',
  };
}

