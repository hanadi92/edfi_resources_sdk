//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiProjectDimensionReference {
  /// Returns a new [EdFiProjectDimensionReference] instance.
  EdFiProjectDimensionReference({
    required this.code,
    required this.fiscalYear,
    this.link,
  });

  /// The code representation of the account project dimension.
  String code;

  /// The fiscal year for which the account project dimension is valid.
  ///
  /// Minimum value: 2020
  /// Maximum value: 2040
  int fiscalYear;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiProjectDimensionReference &&
    other.code == code &&
    other.fiscalYear == fiscalYear &&
    other.link == link;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (fiscalYear.hashCode) +
    (link == null ? 0 : link!.hashCode);

  @override
  String toString() => 'EdFiProjectDimensionReference[code=$code, fiscalYear=$fiscalYear, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = this.code;
      json[r'fiscalYear'] = this.fiscalYear;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiProjectDimensionReference] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiProjectDimensionReference? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiProjectDimensionReference[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiProjectDimensionReference[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiProjectDimensionReference(
        code: mapValueOfType<String>(json, r'code')!,
        fiscalYear: mapValueOfType<int>(json, r'fiscalYear')!,
        link: Link.fromJson(json[r'link']),
      );
    }
    return null;
  }

  static List<EdFiProjectDimensionReference> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiProjectDimensionReference>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiProjectDimensionReference.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiProjectDimensionReference> mapFromJson(dynamic json) {
    final map = <String, EdFiProjectDimensionReference>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiProjectDimensionReference.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiProjectDimensionReference-objects as value to a dart map
  static Map<String, List<EdFiProjectDimensionReference>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiProjectDimensionReference>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiProjectDimensionReference.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
    'fiscalYear',
  };
}

