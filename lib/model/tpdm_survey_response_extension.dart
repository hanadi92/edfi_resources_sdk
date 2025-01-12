//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmSurveyResponseExtension {
  /// Returns a new [TpdmSurveyResponseExtension] instance.
  TpdmSurveyResponseExtension({
    this.personReference,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiPersonReference? personReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TpdmSurveyResponseExtension &&
    other.personReference == personReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (personReference == null ? 0 : personReference!.hashCode);

  @override
  String toString() => 'TpdmSurveyResponseExtension[personReference=$personReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.personReference != null) {
      json[r'personReference'] = this.personReference;
    } else {
      json[r'personReference'] = null;
    }
    return json;
  }

  /// Returns a new [TpdmSurveyResponseExtension] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmSurveyResponseExtension? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmSurveyResponseExtension[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmSurveyResponseExtension[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmSurveyResponseExtension(
        personReference: EdFiPersonReference.fromJson(json[r'personReference']),
      );
    }
    return null;
  }

  static List<TpdmSurveyResponseExtension> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmSurveyResponseExtension>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmSurveyResponseExtension.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmSurveyResponseExtension> mapFromJson(dynamic json) {
    final map = <String, TpdmSurveyResponseExtension>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmSurveyResponseExtension.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmSurveyResponseExtension-objects as value to a dart map
  static Map<String, List<TpdmSurveyResponseExtension>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmSurveyResponseExtension>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmSurveyResponseExtension.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

