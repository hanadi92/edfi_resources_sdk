//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiRestraintEventReason {
  /// Returns a new [EdFiRestraintEventReason] instance.
  EdFiRestraintEventReason({
    required this.restraintEventReasonDescriptor,
  });

  /// A categorization of the circumstances or reason for the RestraintEvent.
  String restraintEventReasonDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiRestraintEventReason &&
    other.restraintEventReasonDescriptor == restraintEventReasonDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (restraintEventReasonDescriptor.hashCode);

  @override
  String toString() => 'EdFiRestraintEventReason[restraintEventReasonDescriptor=$restraintEventReasonDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'restraintEventReasonDescriptor'] = this.restraintEventReasonDescriptor;
    return json;
  }

  /// Returns a new [EdFiRestraintEventReason] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiRestraintEventReason? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiRestraintEventReason[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiRestraintEventReason[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiRestraintEventReason(
        restraintEventReasonDescriptor: mapValueOfType<String>(json, r'restraintEventReasonDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiRestraintEventReason> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiRestraintEventReason>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiRestraintEventReason.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiRestraintEventReason> mapFromJson(dynamic json) {
    final map = <String, EdFiRestraintEventReason>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiRestraintEventReason.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiRestraintEventReason-objects as value to a dart map
  static Map<String, List<EdFiRestraintEventReason>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiRestraintEventReason>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiRestraintEventReason.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'restraintEventReasonDescriptor',
  };
}

