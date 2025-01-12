//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiInterventionStudyLearningResourceMetadataURI {
  /// Returns a new [EdFiInterventionStudyLearningResourceMetadataURI] instance.
  EdFiInterventionStudyLearningResourceMetadataURI({
    required this.learningResourceMetadataURI,
  });

  /// The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.
  String learningResourceMetadataURI;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiInterventionStudyLearningResourceMetadataURI &&
    other.learningResourceMetadataURI == learningResourceMetadataURI;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (learningResourceMetadataURI.hashCode);

  @override
  String toString() => 'EdFiInterventionStudyLearningResourceMetadataURI[learningResourceMetadataURI=$learningResourceMetadataURI]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'learningResourceMetadataURI'] = this.learningResourceMetadataURI;
    return json;
  }

  /// Returns a new [EdFiInterventionStudyLearningResourceMetadataURI] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiInterventionStudyLearningResourceMetadataURI? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiInterventionStudyLearningResourceMetadataURI[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiInterventionStudyLearningResourceMetadataURI[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiInterventionStudyLearningResourceMetadataURI(
        learningResourceMetadataURI: mapValueOfType<String>(json, r'learningResourceMetadataURI')!,
      );
    }
    return null;
  }

  static List<EdFiInterventionStudyLearningResourceMetadataURI> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiInterventionStudyLearningResourceMetadataURI>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiInterventionStudyLearningResourceMetadataURI.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiInterventionStudyLearningResourceMetadataURI> mapFromJson(dynamic json) {
    final map = <String, EdFiInterventionStudyLearningResourceMetadataURI>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiInterventionStudyLearningResourceMetadataURI.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiInterventionStudyLearningResourceMetadataURI-objects as value to a dart map
  static Map<String, List<EdFiInterventionStudyLearningResourceMetadataURI>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiInterventionStudyLearningResourceMetadataURI>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiInterventionStudyLearningResourceMetadataURI.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'learningResourceMetadataURI',
  };
}

