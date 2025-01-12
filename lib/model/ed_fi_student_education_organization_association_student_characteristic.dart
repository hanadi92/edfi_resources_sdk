//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentEducationOrganizationAssociationStudentCharacteristic {
  /// Returns a new [EdFiStudentEducationOrganizationAssociationStudentCharacteristic] instance.
  EdFiStudentEducationOrganizationAssociationStudentCharacteristic({
    required this.studentCharacteristicDescriptor,
    this.designatedBy,
    this.periods = const [],
  });

  /// The characteristic designated for the student.
  String studentCharacteristicDescriptor;

  /// The person, organization, or department that designated the characteristic.
  String? designatedBy;

  /// An unordered collection of studentEducationOrganizationAssociationStudentCharacteristicPeriods. The time periods for which characteristic was effective.
  List<EdFiStudentEducationOrganizationAssociationStudentCharacteristicPeriod> periods;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentEducationOrganizationAssociationStudentCharacteristic &&
    other.studentCharacteristicDescriptor == studentCharacteristicDescriptor &&
    other.designatedBy == designatedBy &&
    _deepEquality.equals(other.periods, periods);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (studentCharacteristicDescriptor.hashCode) +
    (designatedBy == null ? 0 : designatedBy!.hashCode) +
    (periods.hashCode);

  @override
  String toString() => 'EdFiStudentEducationOrganizationAssociationStudentCharacteristic[studentCharacteristicDescriptor=$studentCharacteristicDescriptor, designatedBy=$designatedBy, periods=$periods]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'studentCharacteristicDescriptor'] = this.studentCharacteristicDescriptor;
    if (this.designatedBy != null) {
      json[r'designatedBy'] = this.designatedBy;
    } else {
      json[r'designatedBy'] = null;
    }
      json[r'periods'] = this.periods;
    return json;
  }

  /// Returns a new [EdFiStudentEducationOrganizationAssociationStudentCharacteristic] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentEducationOrganizationAssociationStudentCharacteristic? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentEducationOrganizationAssociationStudentCharacteristic[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentEducationOrganizationAssociationStudentCharacteristic[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentEducationOrganizationAssociationStudentCharacteristic(
        studentCharacteristicDescriptor: mapValueOfType<String>(json, r'studentCharacteristicDescriptor')!,
        designatedBy: mapValueOfType<String>(json, r'designatedBy'),
        periods: EdFiStudentEducationOrganizationAssociationStudentCharacteristicPeriod.listFromJson(json[r'periods']),
      );
    }
    return null;
  }

  static List<EdFiStudentEducationOrganizationAssociationStudentCharacteristic> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentEducationOrganizationAssociationStudentCharacteristic>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentEducationOrganizationAssociationStudentCharacteristic.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentEducationOrganizationAssociationStudentCharacteristic> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentEducationOrganizationAssociationStudentCharacteristic>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentEducationOrganizationAssociationStudentCharacteristic.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentEducationOrganizationAssociationStudentCharacteristic-objects as value to a dart map
  static Map<String, List<EdFiStudentEducationOrganizationAssociationStudentCharacteristic>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentEducationOrganizationAssociationStudentCharacteristic>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentEducationOrganizationAssociationStudentCharacteristic.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'studentCharacteristicDescriptor',
  };
}

