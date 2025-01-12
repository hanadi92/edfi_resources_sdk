//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiCommunityProviderKey {
  /// Returns a new [TrackedChangesEdFiCommunityProviderKey] instance.
  TrackedChangesEdFiCommunityProviderKey({
    this.communityProviderId,
  });

  /// The identifier assigned to a community provider. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? communityProviderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiCommunityProviderKey &&
    other.communityProviderId == communityProviderId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (communityProviderId == null ? 0 : communityProviderId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiCommunityProviderKey[communityProviderId=$communityProviderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.communityProviderId != null) {
      json[r'communityProviderId'] = this.communityProviderId;
    } else {
      json[r'communityProviderId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiCommunityProviderKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiCommunityProviderKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiCommunityProviderKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiCommunityProviderKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiCommunityProviderKey(
        communityProviderId: mapValueOfType<int>(json, r'communityProviderId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiCommunityProviderKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiCommunityProviderKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiCommunityProviderKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiCommunityProviderKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiCommunityProviderKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiCommunityProviderKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiCommunityProviderKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiCommunityProviderKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiCommunityProviderKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiCommunityProviderKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

