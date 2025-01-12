//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiInterventionLearningResourceMetadataURI {
  /// Returns a new [EdFiInterventionLearningResourceMetadataURI] instance.
  EdFiInterventionLearningResourceMetadataURI({
    required this.learningResourceMetadataURI,
  });

  /// The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.
  String learningResourceMetadataURI;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiInterventionLearningResourceMetadataURI &&
    other.learningResourceMetadataURI == learningResourceMetadataURI;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (learningResourceMetadataURI.hashCode);

  @override
  String toString() => 'EdFiInterventionLearningResourceMetadataURI[learningResourceMetadataURI=$learningResourceMetadataURI]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'learningResourceMetadataURI'] = this.learningResourceMetadataURI;
    return json;
  }

  /// Returns a new [EdFiInterventionLearningResourceMetadataURI] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiInterventionLearningResourceMetadataURI? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiInterventionLearningResourceMetadataURI[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiInterventionLearningResourceMetadataURI[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiInterventionLearningResourceMetadataURI(
        learningResourceMetadataURI: mapValueOfType<String>(json, r'learningResourceMetadataURI')!,
      );
    }
    return null;
  }

  static List<EdFiInterventionLearningResourceMetadataURI> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiInterventionLearningResourceMetadataURI>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiInterventionLearningResourceMetadataURI.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiInterventionLearningResourceMetadataURI> mapFromJson(dynamic json) {
    final map = <String, EdFiInterventionLearningResourceMetadataURI>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiInterventionLearningResourceMetadataURI.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiInterventionLearningResourceMetadataURI-objects as value to a dart map
  static Map<String, List<EdFiInterventionLearningResourceMetadataURI>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiInterventionLearningResourceMetadataURI>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiInterventionLearningResourceMetadataURI.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'learningResourceMetadataURI',
  };
}

