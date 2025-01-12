//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiChartOfAccountReportingTag {
  /// Returns a new [EdFiChartOfAccountReportingTag] instance.
  EdFiChartOfAccountReportingTag({
    required this.reportingTagDescriptor,
    this.tagValue,
  });

  /// A descriptor used at the dimension and/or chart of account levels to demote specific state needs for reporting.
  String reportingTagDescriptor;

  /// The value associated with the reporting tag.
  String? tagValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiChartOfAccountReportingTag &&
    other.reportingTagDescriptor == reportingTagDescriptor &&
    other.tagValue == tagValue;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reportingTagDescriptor.hashCode) +
    (tagValue == null ? 0 : tagValue!.hashCode);

  @override
  String toString() => 'EdFiChartOfAccountReportingTag[reportingTagDescriptor=$reportingTagDescriptor, tagValue=$tagValue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'reportingTagDescriptor'] = this.reportingTagDescriptor;
    if (this.tagValue != null) {
      json[r'tagValue'] = this.tagValue;
    } else {
      json[r'tagValue'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiChartOfAccountReportingTag] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiChartOfAccountReportingTag? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiChartOfAccountReportingTag[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiChartOfAccountReportingTag[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiChartOfAccountReportingTag(
        reportingTagDescriptor: mapValueOfType<String>(json, r'reportingTagDescriptor')!,
        tagValue: mapValueOfType<String>(json, r'tagValue'),
      );
    }
    return null;
  }

  static List<EdFiChartOfAccountReportingTag> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiChartOfAccountReportingTag>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiChartOfAccountReportingTag.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiChartOfAccountReportingTag> mapFromJson(dynamic json) {
    final map = <String, EdFiChartOfAccountReportingTag>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiChartOfAccountReportingTag.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiChartOfAccountReportingTag-objects as value to a dart map
  static Map<String, List<EdFiChartOfAccountReportingTag>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiChartOfAccountReportingTag>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiChartOfAccountReportingTag.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'reportingTagDescriptor',
  };
}

