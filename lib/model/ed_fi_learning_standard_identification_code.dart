//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiLearningStandardIdentificationCode {
  /// Returns a new [EdFiLearningStandardIdentificationCode] instance.
  EdFiLearningStandardIdentificationCode({
    required this.contentStandardName,
    required this.identificationCode,
  });

  /// The name of the content standard, for example Common Core.
  String contentStandardName;

  /// A unique number or alphanumeric code assigned to a Learning Standard.
  String identificationCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiLearningStandardIdentificationCode &&
    other.contentStandardName == contentStandardName &&
    other.identificationCode == identificationCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (contentStandardName.hashCode) +
    (identificationCode.hashCode);

  @override
  String toString() => 'EdFiLearningStandardIdentificationCode[contentStandardName=$contentStandardName, identificationCode=$identificationCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'contentStandardName'] = this.contentStandardName;
      json[r'identificationCode'] = this.identificationCode;
    return json;
  }

  /// Returns a new [EdFiLearningStandardIdentificationCode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiLearningStandardIdentificationCode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiLearningStandardIdentificationCode[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiLearningStandardIdentificationCode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiLearningStandardIdentificationCode(
        contentStandardName: mapValueOfType<String>(json, r'contentStandardName')!,
        identificationCode: mapValueOfType<String>(json, r'identificationCode')!,
      );
    }
    return null;
  }

  static List<EdFiLearningStandardIdentificationCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiLearningStandardIdentificationCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiLearningStandardIdentificationCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiLearningStandardIdentificationCode> mapFromJson(dynamic json) {
    final map = <String, EdFiLearningStandardIdentificationCode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiLearningStandardIdentificationCode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiLearningStandardIdentificationCode-objects as value to a dart map
  static Map<String, List<EdFiLearningStandardIdentificationCode>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiLearningStandardIdentificationCode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiLearningStandardIdentificationCode.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'contentStandardName',
    'identificationCode',
  };
}

