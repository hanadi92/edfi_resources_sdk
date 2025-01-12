//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiAssessmentItemPossibleResponse {
  /// Returns a new [EdFiAssessmentItemPossibleResponse] instance.
  EdFiAssessmentItemPossibleResponse({
    required this.responseValue,
    this.correctResponse,
    this.responseDescription,
  });

  /// The response value, often an option number or code value (e.g., 1, 2, A, B, true, false).
  String responseValue;

  /// Indicates the response is correct.
  bool? correctResponse;

  /// Additional text provided to define the response value.
  String? responseDescription;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiAssessmentItemPossibleResponse &&
    other.responseValue == responseValue &&
    other.correctResponse == correctResponse &&
    other.responseDescription == responseDescription;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (responseValue.hashCode) +
    (correctResponse == null ? 0 : correctResponse!.hashCode) +
    (responseDescription == null ? 0 : responseDescription!.hashCode);

  @override
  String toString() => 'EdFiAssessmentItemPossibleResponse[responseValue=$responseValue, correctResponse=$correctResponse, responseDescription=$responseDescription]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'responseValue'] = this.responseValue;
    if (this.correctResponse != null) {
      json[r'correctResponse'] = this.correctResponse;
    } else {
      json[r'correctResponse'] = null;
    }
    if (this.responseDescription != null) {
      json[r'responseDescription'] = this.responseDescription;
    } else {
      json[r'responseDescription'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiAssessmentItemPossibleResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiAssessmentItemPossibleResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiAssessmentItemPossibleResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiAssessmentItemPossibleResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiAssessmentItemPossibleResponse(
        responseValue: mapValueOfType<String>(json, r'responseValue')!,
        correctResponse: mapValueOfType<bool>(json, r'correctResponse'),
        responseDescription: mapValueOfType<String>(json, r'responseDescription'),
      );
    }
    return null;
  }

  static List<EdFiAssessmentItemPossibleResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiAssessmentItemPossibleResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiAssessmentItemPossibleResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiAssessmentItemPossibleResponse> mapFromJson(dynamic json) {
    final map = <String, EdFiAssessmentItemPossibleResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiAssessmentItemPossibleResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiAssessmentItemPossibleResponse-objects as value to a dart map
  static Map<String, List<EdFiAssessmentItemPossibleResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiAssessmentItemPossibleResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiAssessmentItemPossibleResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'responseValue',
  };
}

