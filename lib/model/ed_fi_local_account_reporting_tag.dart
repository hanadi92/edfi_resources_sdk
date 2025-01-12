//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiLocalAccountReportingTag {
  /// Returns a new [EdFiLocalAccountReportingTag] instance.
  EdFiLocalAccountReportingTag({
    required this.reportingTagDescriptor,
    this.tagValue,
  });

  /// A descriptor used at the dimension and/or chart of account levels to demote specific state needs for reporting.
  String reportingTagDescriptor;

  /// The value associated with the reporting tag.
  String? tagValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiLocalAccountReportingTag &&
    other.reportingTagDescriptor == reportingTagDescriptor &&
    other.tagValue == tagValue;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reportingTagDescriptor.hashCode) +
    (tagValue == null ? 0 : tagValue!.hashCode);

  @override
  String toString() => 'EdFiLocalAccountReportingTag[reportingTagDescriptor=$reportingTagDescriptor, tagValue=$tagValue]';

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

  /// Returns a new [EdFiLocalAccountReportingTag] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiLocalAccountReportingTag? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiLocalAccountReportingTag[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiLocalAccountReportingTag[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiLocalAccountReportingTag(
        reportingTagDescriptor: mapValueOfType<String>(json, r'reportingTagDescriptor')!,
        tagValue: mapValueOfType<String>(json, r'tagValue'),
      );
    }
    return null;
  }

  static List<EdFiLocalAccountReportingTag> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiLocalAccountReportingTag>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiLocalAccountReportingTag.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiLocalAccountReportingTag> mapFromJson(dynamic json) {
    final map = <String, EdFiLocalAccountReportingTag>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiLocalAccountReportingTag.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiLocalAccountReportingTag-objects as value to a dart map
  static Map<String, List<EdFiLocalAccountReportingTag>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiLocalAccountReportingTag>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiLocalAccountReportingTag.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'reportingTagDescriptor',
  };
}

