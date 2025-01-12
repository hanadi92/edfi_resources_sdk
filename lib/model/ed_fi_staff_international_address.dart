//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaffInternationalAddress {
  /// Returns a new [EdFiStaffInternationalAddress] instance.
  EdFiStaffInternationalAddress({
    required this.addressTypeDescriptor,
    required this.countryDescriptor,
    required this.addressLine1,
    this.addressLine2,
    this.addressLine3,
    this.addressLine4,
    this.beginDate,
    this.endDate,
    this.latitude,
    this.longitude,
  });

  /// The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)
  String addressTypeDescriptor;

  /// The name of the country. It is strongly recommended that entries use only ISO 3166 2-letter country codes.
  String countryDescriptor;

  /// The first line of the address.
  String addressLine1;

  /// The second line of the address.
  String? addressLine2;

  /// The third line of the address.
  String? addressLine3;

  /// The fourth line of the address.
  String? addressLine4;

  /// The first date the address is valid. For physical addresses, the date the individual moved to that address.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? beginDate;

  /// The last date the address is valid. For physical addresses, the date the individual moved from that address.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  /// The geographic latitude of the physical address.
  String? latitude;

  /// The geographic longitude of the physical address.
  String? longitude;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaffInternationalAddress &&
    other.addressTypeDescriptor == addressTypeDescriptor &&
    other.countryDescriptor == countryDescriptor &&
    other.addressLine1 == addressLine1 &&
    other.addressLine2 == addressLine2 &&
    other.addressLine3 == addressLine3 &&
    other.addressLine4 == addressLine4 &&
    other.beginDate == beginDate &&
    other.endDate == endDate &&
    other.latitude == latitude &&
    other.longitude == longitude;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addressTypeDescriptor.hashCode) +
    (countryDescriptor.hashCode) +
    (addressLine1.hashCode) +
    (addressLine2 == null ? 0 : addressLine2!.hashCode) +
    (addressLine3 == null ? 0 : addressLine3!.hashCode) +
    (addressLine4 == null ? 0 : addressLine4!.hashCode) +
    (beginDate == null ? 0 : beginDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (latitude == null ? 0 : latitude!.hashCode) +
    (longitude == null ? 0 : longitude!.hashCode);

  @override
  String toString() => 'EdFiStaffInternationalAddress[addressTypeDescriptor=$addressTypeDescriptor, countryDescriptor=$countryDescriptor, addressLine1=$addressLine1, addressLine2=$addressLine2, addressLine3=$addressLine3, addressLine4=$addressLine4, beginDate=$beginDate, endDate=$endDate, latitude=$latitude, longitude=$longitude]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'addressTypeDescriptor'] = this.addressTypeDescriptor;
      json[r'countryDescriptor'] = this.countryDescriptor;
      json[r'addressLine1'] = this.addressLine1;
    if (this.addressLine2 != null) {
      json[r'addressLine2'] = this.addressLine2;
    } else {
      json[r'addressLine2'] = null;
    }
    if (this.addressLine3 != null) {
      json[r'addressLine3'] = this.addressLine3;
    } else {
      json[r'addressLine3'] = null;
    }
    if (this.addressLine4 != null) {
      json[r'addressLine4'] = this.addressLine4;
    } else {
      json[r'addressLine4'] = null;
    }
    if (this.beginDate != null) {
      json[r'beginDate'] = _dateFormatter.format(this.beginDate!.toUtc());
    } else {
      json[r'beginDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
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
    return json;
  }

  /// Returns a new [EdFiStaffInternationalAddress] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaffInternationalAddress? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaffInternationalAddress[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaffInternationalAddress[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaffInternationalAddress(
        addressTypeDescriptor: mapValueOfType<String>(json, r'addressTypeDescriptor')!,
        countryDescriptor: mapValueOfType<String>(json, r'countryDescriptor')!,
        addressLine1: mapValueOfType<String>(json, r'addressLine1')!,
        addressLine2: mapValueOfType<String>(json, r'addressLine2'),
        addressLine3: mapValueOfType<String>(json, r'addressLine3'),
        addressLine4: mapValueOfType<String>(json, r'addressLine4'),
        beginDate: mapDateTime(json, r'beginDate', r''),
        endDate: mapDateTime(json, r'endDate', r''),
        latitude: mapValueOfType<String>(json, r'latitude'),
        longitude: mapValueOfType<String>(json, r'longitude'),
      );
    }
    return null;
  }

  static List<EdFiStaffInternationalAddress> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaffInternationalAddress>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaffInternationalAddress.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaffInternationalAddress> mapFromJson(dynamic json) {
    final map = <String, EdFiStaffInternationalAddress>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaffInternationalAddress.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaffInternationalAddress-objects as value to a dart map
  static Map<String, List<EdFiStaffInternationalAddress>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaffInternationalAddress>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaffInternationalAddress.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'addressTypeDescriptor',
    'countryDescriptor',
    'addressLine1',
  };
}

