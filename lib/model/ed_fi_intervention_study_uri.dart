//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiInterventionStudyURI {
  /// Returns a new [EdFiInterventionStudyURI] instance.
  EdFiInterventionStudyURI({
    required this.uri,
  });

  /// The URI (typical a URL) pointing to an education content item.
  String uri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiInterventionStudyURI &&
    other.uri == uri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uri.hashCode);

  @override
  String toString() => 'EdFiInterventionStudyURI[uri=$uri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'uri'] = this.uri;
    return json;
  }

  /// Returns a new [EdFiInterventionStudyURI] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiInterventionStudyURI? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiInterventionStudyURI[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiInterventionStudyURI[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiInterventionStudyURI(
        uri: mapValueOfType<String>(json, r'uri')!,
      );
    }
    return null;
  }

  static List<EdFiInterventionStudyURI> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiInterventionStudyURI>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiInterventionStudyURI.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiInterventionStudyURI> mapFromJson(dynamic json) {
    final map = <String, EdFiInterventionStudyURI>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiInterventionStudyURI.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiInterventionStudyURI-objects as value to a dart map
  static Map<String, List<EdFiInterventionStudyURI>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiInterventionStudyURI>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiInterventionStudyURI.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'uri',
  };
}

