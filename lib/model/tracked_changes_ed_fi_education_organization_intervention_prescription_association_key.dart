//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey {
  /// Returns a new [TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey] instance.
  TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey({
    this.educationOrganizationId,
    this.interventionPrescriptionEducationOrganizationId,
    this.interventionPrescriptionIdentificationCode,
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
  int? interventionPrescriptionEducationOrganizationId;

  /// A unique number or alphanumeric code assigned to an intervention prescription.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? interventionPrescriptionIdentificationCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey &&
    other.educationOrganizationId == educationOrganizationId &&
    other.interventionPrescriptionEducationOrganizationId == interventionPrescriptionEducationOrganizationId &&
    other.interventionPrescriptionIdentificationCode == interventionPrescriptionIdentificationCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (educationOrganizationId == null ? 0 : educationOrganizationId!.hashCode) +
    (interventionPrescriptionEducationOrganizationId == null ? 0 : interventionPrescriptionEducationOrganizationId!.hashCode) +
    (interventionPrescriptionIdentificationCode == null ? 0 : interventionPrescriptionIdentificationCode!.hashCode);

  @override
  String toString() => 'TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey[educationOrganizationId=$educationOrganizationId, interventionPrescriptionEducationOrganizationId=$interventionPrescriptionEducationOrganizationId, interventionPrescriptionIdentificationCode=$interventionPrescriptionIdentificationCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.educationOrganizationId != null) {
      json[r'educationOrganizationId'] = this.educationOrganizationId;
    } else {
      json[r'educationOrganizationId'] = null;
    }
    if (this.interventionPrescriptionEducationOrganizationId != null) {
      json[r'interventionPrescriptionEducationOrganizationId'] = this.interventionPrescriptionEducationOrganizationId;
    } else {
      json[r'interventionPrescriptionEducationOrganizationId'] = null;
    }
    if (this.interventionPrescriptionIdentificationCode != null) {
      json[r'interventionPrescriptionIdentificationCode'] = this.interventionPrescriptionIdentificationCode;
    } else {
      json[r'interventionPrescriptionIdentificationCode'] = null;
    }
    return json;
  }

  /// Returns a new [TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey(
        educationOrganizationId: mapValueOfType<int>(json, r'educationOrganizationId'),
        interventionPrescriptionEducationOrganizationId: mapValueOfType<int>(json, r'interventionPrescriptionEducationOrganizationId'),
        interventionPrescriptionIdentificationCode: mapValueOfType<String>(json, r'interventionPrescriptionIdentificationCode'),
      );
    }
    return null;
  }

  static List<TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey> mapFromJson(dynamic json) {
    final map = <String, TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey-objects as value to a dart map
  static Map<String, List<TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackedChangesEdFiEducationOrganizationInterventionPrescriptionAssociationKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

