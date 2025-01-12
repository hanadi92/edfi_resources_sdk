//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCommunityProviderLicense {
  /// Returns a new [EdFiCommunityProviderLicense] instance.
  EdFiCommunityProviderLicense({
    this.id,
    required this.licenseIdentifier,
    required this.licensingOrganization,
    required this.communityProviderReference,
    this.authorizedFacilityCapacity,
    required this.licenseEffectiveDate,
    this.licenseExpirationDate,
    this.licenseIssueDate,
    this.licenseStatusDescriptor,
    required this.licenseTypeDescriptor,
    this.oldestAgeAuthorizedToServe,
    this.youngestAgeAuthorizedToServe,
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

  /// The unique identifier issued by the licensing organization.
  String licenseIdentifier;

  /// The organization issuing the license.
  String licensingOrganization;

  EdFiCommunityProviderReference communityProviderReference;

  /// The maximum number that can be contained or accommodated which a provider is authorized or licensed to serve.
  int? authorizedFacilityCapacity;

  /// The month, day, and year on which a license is active or becomes effective.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime licenseEffectiveDate;

  /// The month, day, and year on which a license will expire.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? licenseExpirationDate;

  /// The month, day, and year on which an active license was issued.
  DateTime? licenseIssueDate;

  /// An indication of the status of the license.
  String? licenseStatusDescriptor;

  /// An indication of the category of the license.
  String licenseTypeDescriptor;

  /// The oldest age of children a provider is authorized or licensed to serve.
  int? oldestAgeAuthorizedToServe;

  /// The youngest age of children a provider is authorized or licensed to serve.
  int? youngestAgeAuthorizedToServe;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiCommunityProviderLicense &&
    other.id == id &&
    other.licenseIdentifier == licenseIdentifier &&
    other.licensingOrganization == licensingOrganization &&
    other.communityProviderReference == communityProviderReference &&
    other.authorizedFacilityCapacity == authorizedFacilityCapacity &&
    other.licenseEffectiveDate == licenseEffectiveDate &&
    other.licenseExpirationDate == licenseExpirationDate &&
    other.licenseIssueDate == licenseIssueDate &&
    other.licenseStatusDescriptor == licenseStatusDescriptor &&
    other.licenseTypeDescriptor == licenseTypeDescriptor &&
    other.oldestAgeAuthorizedToServe == oldestAgeAuthorizedToServe &&
    other.youngestAgeAuthorizedToServe == youngestAgeAuthorizedToServe &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (licenseIdentifier.hashCode) +
    (licensingOrganization.hashCode) +
    (communityProviderReference.hashCode) +
    (authorizedFacilityCapacity == null ? 0 : authorizedFacilityCapacity!.hashCode) +
    (licenseEffectiveDate.hashCode) +
    (licenseExpirationDate == null ? 0 : licenseExpirationDate!.hashCode) +
    (licenseIssueDate == null ? 0 : licenseIssueDate!.hashCode) +
    (licenseStatusDescriptor == null ? 0 : licenseStatusDescriptor!.hashCode) +
    (licenseTypeDescriptor.hashCode) +
    (oldestAgeAuthorizedToServe == null ? 0 : oldestAgeAuthorizedToServe!.hashCode) +
    (youngestAgeAuthorizedToServe == null ? 0 : youngestAgeAuthorizedToServe!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiCommunityProviderLicense[id=$id, licenseIdentifier=$licenseIdentifier, licensingOrganization=$licensingOrganization, communityProviderReference=$communityProviderReference, authorizedFacilityCapacity=$authorizedFacilityCapacity, licenseEffectiveDate=$licenseEffectiveDate, licenseExpirationDate=$licenseExpirationDate, licenseIssueDate=$licenseIssueDate, licenseStatusDescriptor=$licenseStatusDescriptor, licenseTypeDescriptor=$licenseTypeDescriptor, oldestAgeAuthorizedToServe=$oldestAgeAuthorizedToServe, youngestAgeAuthorizedToServe=$youngestAgeAuthorizedToServe, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'licenseIdentifier'] = this.licenseIdentifier;
      json[r'licensingOrganization'] = this.licensingOrganization;
      json[r'communityProviderReference'] = this.communityProviderReference;
    if (this.authorizedFacilityCapacity != null) {
      json[r'authorizedFacilityCapacity'] = this.authorizedFacilityCapacity;
    } else {
      json[r'authorizedFacilityCapacity'] = null;
    }
      json[r'licenseEffectiveDate'] = _dateFormatter.format(this.licenseEffectiveDate.toUtc());
    if (this.licenseExpirationDate != null) {
      json[r'licenseExpirationDate'] = _dateFormatter.format(this.licenseExpirationDate!.toUtc());
    } else {
      json[r'licenseExpirationDate'] = null;
    }
    if (this.licenseIssueDate != null) {
      json[r'licenseIssueDate'] = _dateFormatter.format(this.licenseIssueDate!.toUtc());
    } else {
      json[r'licenseIssueDate'] = null;
    }
    if (this.licenseStatusDescriptor != null) {
      json[r'licenseStatusDescriptor'] = this.licenseStatusDescriptor;
    } else {
      json[r'licenseStatusDescriptor'] = null;
    }
      json[r'licenseTypeDescriptor'] = this.licenseTypeDescriptor;
    if (this.oldestAgeAuthorizedToServe != null) {
      json[r'oldestAgeAuthorizedToServe'] = this.oldestAgeAuthorizedToServe;
    } else {
      json[r'oldestAgeAuthorizedToServe'] = null;
    }
    if (this.youngestAgeAuthorizedToServe != null) {
      json[r'youngestAgeAuthorizedToServe'] = this.youngestAgeAuthorizedToServe;
    } else {
      json[r'youngestAgeAuthorizedToServe'] = null;
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

  /// Returns a new [EdFiCommunityProviderLicense] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCommunityProviderLicense? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCommunityProviderLicense[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCommunityProviderLicense[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCommunityProviderLicense(
        id: mapValueOfType<String>(json, r'id'),
        licenseIdentifier: mapValueOfType<String>(json, r'licenseIdentifier')!,
        licensingOrganization: mapValueOfType<String>(json, r'licensingOrganization')!,
        communityProviderReference: EdFiCommunityProviderReference.fromJson(json[r'communityProviderReference'])!,
        authorizedFacilityCapacity: mapValueOfType<int>(json, r'authorizedFacilityCapacity'),
        licenseEffectiveDate: mapDateTime(json, r'licenseEffectiveDate', r'')!,
        licenseExpirationDate: mapDateTime(json, r'licenseExpirationDate', r''),
        licenseIssueDate: mapDateTime(json, r'licenseIssueDate', r''),
        licenseStatusDescriptor: mapValueOfType<String>(json, r'licenseStatusDescriptor'),
        licenseTypeDescriptor: mapValueOfType<String>(json, r'licenseTypeDescriptor')!,
        oldestAgeAuthorizedToServe: mapValueOfType<int>(json, r'oldestAgeAuthorizedToServe'),
        youngestAgeAuthorizedToServe: mapValueOfType<int>(json, r'youngestAgeAuthorizedToServe'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiCommunityProviderLicense> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCommunityProviderLicense>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCommunityProviderLicense.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCommunityProviderLicense> mapFromJson(dynamic json) {
    final map = <String, EdFiCommunityProviderLicense>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCommunityProviderLicense.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCommunityProviderLicense-objects as value to a dart map
  static Map<String, List<EdFiCommunityProviderLicense>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCommunityProviderLicense>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCommunityProviderLicense.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'licenseIdentifier',
    'licensingOrganization',
    'communityProviderReference',
    'licenseEffectiveDate',
    'licenseTypeDescriptor',
  };
}

