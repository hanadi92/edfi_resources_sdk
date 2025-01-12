//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStaffTelephone {
  /// Returns a new [EdFiStaffTelephone] instance.
  EdFiStaffTelephone({
    required this.telephoneNumberTypeDescriptor,
    required this.telephoneNumber,
    this.doNotPublishIndicator,
    this.orderOfPriority,
    this.textMessageCapabilityIndicator,
  });

  /// The type of communication number listed for an individual or organization.
  String telephoneNumberTypeDescriptor;

  /// The telephone number including the area code, and extension, if applicable.
  String telephoneNumber;

  /// An indication that the telephone number should not be published.
  bool? doNotPublishIndicator;

  /// The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.
  ///
  /// Minimum value: 1
  int? orderOfPriority;

  /// An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.
  bool? textMessageCapabilityIndicator;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStaffTelephone &&
    other.telephoneNumberTypeDescriptor == telephoneNumberTypeDescriptor &&
    other.telephoneNumber == telephoneNumber &&
    other.doNotPublishIndicator == doNotPublishIndicator &&
    other.orderOfPriority == orderOfPriority &&
    other.textMessageCapabilityIndicator == textMessageCapabilityIndicator;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (telephoneNumberTypeDescriptor.hashCode) +
    (telephoneNumber.hashCode) +
    (doNotPublishIndicator == null ? 0 : doNotPublishIndicator!.hashCode) +
    (orderOfPriority == null ? 0 : orderOfPriority!.hashCode) +
    (textMessageCapabilityIndicator == null ? 0 : textMessageCapabilityIndicator!.hashCode);

  @override
  String toString() => 'EdFiStaffTelephone[telephoneNumberTypeDescriptor=$telephoneNumberTypeDescriptor, telephoneNumber=$telephoneNumber, doNotPublishIndicator=$doNotPublishIndicator, orderOfPriority=$orderOfPriority, textMessageCapabilityIndicator=$textMessageCapabilityIndicator]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'telephoneNumberTypeDescriptor'] = this.telephoneNumberTypeDescriptor;
      json[r'telephoneNumber'] = this.telephoneNumber;
    if (this.doNotPublishIndicator != null) {
      json[r'doNotPublishIndicator'] = this.doNotPublishIndicator;
    } else {
      json[r'doNotPublishIndicator'] = null;
    }
    if (this.orderOfPriority != null) {
      json[r'orderOfPriority'] = this.orderOfPriority;
    } else {
      json[r'orderOfPriority'] = null;
    }
    if (this.textMessageCapabilityIndicator != null) {
      json[r'textMessageCapabilityIndicator'] = this.textMessageCapabilityIndicator;
    } else {
      json[r'textMessageCapabilityIndicator'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiStaffTelephone] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStaffTelephone? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStaffTelephone[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStaffTelephone[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStaffTelephone(
        telephoneNumberTypeDescriptor: mapValueOfType<String>(json, r'telephoneNumberTypeDescriptor')!,
        telephoneNumber: mapValueOfType<String>(json, r'telephoneNumber')!,
        doNotPublishIndicator: mapValueOfType<bool>(json, r'doNotPublishIndicator'),
        orderOfPriority: mapValueOfType<int>(json, r'orderOfPriority'),
        textMessageCapabilityIndicator: mapValueOfType<bool>(json, r'textMessageCapabilityIndicator'),
      );
    }
    return null;
  }

  static List<EdFiStaffTelephone> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStaffTelephone>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStaffTelephone.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStaffTelephone> mapFromJson(dynamic json) {
    final map = <String, EdFiStaffTelephone>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStaffTelephone.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStaffTelephone-objects as value to a dart map
  static Map<String, List<EdFiStaffTelephone>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStaffTelephone>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStaffTelephone.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'telephoneNumberTypeDescriptor',
    'telephoneNumber',
  };
}

