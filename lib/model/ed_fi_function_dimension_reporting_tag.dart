//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiFunctionDimensionReportingTag {
  /// Returns a new [EdFiFunctionDimensionReportingTag] instance.
  EdFiFunctionDimensionReportingTag({
    required this.reportingTagDescriptor,
  });

  /// Optional tag for accountability reporting.
  String reportingTagDescriptor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiFunctionDimensionReportingTag &&
    other.reportingTagDescriptor == reportingTagDescriptor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reportingTagDescriptor.hashCode);

  @override
  String toString() => 'EdFiFunctionDimensionReportingTag[reportingTagDescriptor=$reportingTagDescriptor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'reportingTagDescriptor'] = this.reportingTagDescriptor;
    return json;
  }

  /// Returns a new [EdFiFunctionDimensionReportingTag] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiFunctionDimensionReportingTag? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiFunctionDimensionReportingTag[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiFunctionDimensionReportingTag[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiFunctionDimensionReportingTag(
        reportingTagDescriptor: mapValueOfType<String>(json, r'reportingTagDescriptor')!,
      );
    }
    return null;
  }

  static List<EdFiFunctionDimensionReportingTag> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiFunctionDimensionReportingTag>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiFunctionDimensionReportingTag.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiFunctionDimensionReportingTag> mapFromJson(dynamic json) {
    final map = <String, EdFiFunctionDimensionReportingTag>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiFunctionDimensionReportingTag.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiFunctionDimensionReportingTag-objects as value to a dart map
  static Map<String, List<EdFiFunctionDimensionReportingTag>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiFunctionDimensionReportingTag>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiFunctionDimensionReportingTag.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'reportingTagDescriptor',
  };
}

