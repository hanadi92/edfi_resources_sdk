//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaffVisa {
  /// Returns a new [EdFiStaffVisa] instance.
  EdFiStaffVisa({
    required this.visaDescriptor,
  });

  /// An indicator of a non-US citizen's Visa type.
  String visaDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaffVisa &&
    other.visaDescriptor == visaDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (visaDescriptor.hashCode);

  @override
  String toString() => 'EdFiStaffVisa[visaDescriptor=$visaDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'visaDescriptor'] = this.visaDescriptor;
    return json;
  }

  /// Returns a new [EdFiStaffVisa] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaffVisa? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaffVisa[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaffVisa[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaffVisa(
        visaDescriptor: mapValueOfType<String>(json, r'visaDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiStaffVisa> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaffVisa>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaffVisa.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaffVisa> mapFromJson(dynamic json) {
    final map = <String, EdFiStaffVisa>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaffVisa.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaffVisa-objects as value to a dart map
  static Map<String, List<EdFiStaffVisa>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaffVisa>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaffVisa.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'visaDescriptor',
  };
}

