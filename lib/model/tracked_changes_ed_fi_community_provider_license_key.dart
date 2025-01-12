//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiCommunityProviderLicenseKey {
  /// Returns a new [TrackedChangesEdFiCommunityProviderLicenseKey] instance.
  TrackedChangesEdFiCommunityProviderLicenseKey({
    this.licenseIdentifier,
    this.licensingOrganization,
    this.communityProviderId,
  });

  /// The unique identifier issued by the licensing organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? licenseIdentifier;

  /// The organization issuing the license.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? licensingOrganization;

  /// The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? communityProviderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiCommunityProviderLicenseKey &&
    other.licenseIdentifier == licenseIdentifier &&
    other.licensingOrganization == licensingOrganization &&
    other.communityProviderId == communityProviderId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (licenseIdentifier == null ? 0 : licenseIdentifier!.hashCode) +
    (licensingOrganization == null ? 0 : licensingOrganization!.hashCode) +
    (communityProviderId == null ? 0 : communityProviderId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiCommunityProviderLicenseKey[licenseIdentifier=$licenseIdentifier, licensingOrganization=$licensingOrganization, communityProviderId=$communityProviderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.licenseIdentifier != null) {
      json[r'licenseIdentifier'] = this.licenseIdentifier;
    } else {
      json[r'licenseIdentifier'] = null;
    }
    if (this.licensingOrganization != null) {
      json[r'licensingOrganization'] = this.licensingOrganization;
    } else {
      json[r'licensingOrganization'] = null;
    }
    if (this.communityProviderId != null) {
      json[r'communityProviderId'] = this.communityProviderId;
    } else {
      json[r'communityProviderId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiCommunityProviderLicenseKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiCommunityProviderLicenseKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiCommunityProviderLicenseKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiCommunityProviderLicenseKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiCommunityProviderLicenseKey(
        licenseIdentifier: mapValueOfType<String>(json, r'licenseIdentifier'),
        licensingOrganization: mapValueOfType<String>(json, r'licensingOrganization'),
        communityProviderId: mapValueOfType<int>(json, r'communityProviderId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiCommunityProviderLicenseKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiCommunityProviderLicenseKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiCommunityProviderLicenseKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiCommunityProviderLicenseKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiCommunityProviderLicenseKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiCommunityProviderLicenseKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiCommunityProviderLicenseKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiCommunityProviderLicenseKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiCommunityProviderLicenseKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiCommunityProviderLicenseKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

