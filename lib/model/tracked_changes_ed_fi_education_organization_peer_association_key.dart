//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiEducationOrganizationPeerAssociationKey {
  /// Returns a new [TrackedChangesEdFiEducationOrganizationPeerAssociationKey] instance.
  TrackedChangesEdFiEducationOrganizationPeerAssociationKey({
    this.educationOrganizationId,
    this.peerEducationOrganizationId,
  });

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? educationOrganizationId;

  /// The identifier assigned to an education organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? peerEducationOrganizationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiEducationOrganizationPeerAssociationKey &&
    other.educationOrganizationId == educationOrganizationId &&
    other.peerEducationOrganizationId == peerEducationOrganizationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (peerEducationOrganizationId == null ? 0 : peerEducationOrganizationId!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiEducationOrganizationPeerAssociationKey[educationOrganizationId=$educationOrganizationId, peerEducationOrganizationId=$peerEducationOrganizationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    if (this.peerEducationOrganizationId != null) {
      json[r'peerEducationOrganizationId'] = this.peerEducationOrganizationId;
    } else {
      json[r'peerEducationOrganizationId'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiEducationOrganizationPeerAssociationKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiEducationOrganizationPeerAssociationKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiEducationOrganizationPeerAssociationKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiEducationOrganizationPeerAssociationKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiEducationOrganizationPeerAssociationKey(
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        peerEducationOrganizationId: mapValueOfType<int>(json, r'peerEducationOrganizationId'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiEducationOrganizationPeerAssociationKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiEducationOrganizationPeerAssociationKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiEducationOrganizationPeerAssociationKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiEducationOrganizationPeerAssociationKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiEducationOrganizationPeerAssociationKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiEducationOrganizationPeerAssociationKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiEducationOrganizationPeerAssociationKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiEducationOrganizationPeerAssociationKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiEducationOrganizationPeerAssociationKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiEducationOrganizationPeerAssociationKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

