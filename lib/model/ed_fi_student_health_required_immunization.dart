//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentHealthRequiredImmunization {
  /// Returns a new [EdFiStudentHealthRequiredImmunization] instance.
  EdFiStudentHealthRequiredImmunization({
    required this.immunizationTypeDescriptor,
    this.medicalExemption,
    this.medicalExemptionDate,
    this.dates = const [],
  });

  /// An indication of the type of immunization that the student has received.
  String immunizationTypeDescriptor;

  /// The medical condition identified by a physician that contraindicates the vaccine.
  String? medicalExemption;

  /// The year, month, and day of the medical exemption by a physician.
  DateTime? medicalExemptionDate;

  /// An unordered collection of studentHealthRequiredImmunizationDates. The year, month and day of the related required immunization.
  List<EdFiStudentHealthRequiredImmunizationDate> dates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentHealthRequiredImmunization &&
    other.immunizationTypeDescriptor == immunizationTypeDescriptor &&
    other.medicalExemption == medicalExemption &&
    other.medicalExemptionDate == medicalExemptionDate &&
    _deepEquality.equals(other.dates, dates);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (immunizationTypeDescriptor.hashCode) +
    (medicalExemption == null ? 0 : medicalExemption!.hashCode) +
    (medicalExemptionDate == null ? 0 : medicalExemptionDate!.hashCode) +
    (dates.hashCode);

  @override
  String toString() => 'EdFiStudentHealthRequiredImmunization[immunizationTypeDescriptor=$immunizationTypeDescriptor, medicalExemption=$medicalExemption, medicalExemptionDate=$medicalExemptionDate, dates=$dates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'immunizationTypeDescriptor'] = this.immunizationTypeDescriptor;
    if (this.medicalExemption != null) {
      json[r'medicalExemption'] = this.medicalExemption;
    } else {
      json[r'medicalExemption'] = null;
    }
    if (this.medicalExemptionDate != null) {
      json[r'medicalExemptionDate'] = _dateFormatter.format(this.medicalExemptionDate!.toUtc());
    } else {
      json[r'medicalExemptionDate'] = null;
    }
      json[r'dates'] = this.dates;
    return json;
  }

  /// Returns a new [EdFiStudentHealthRequiredImmunization] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentHealthRequiredImmunization? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentHealthRequiredImmunization[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentHealthRequiredImmunization[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentHealthRequiredImmunization(
        immunizationTypeDescriptor: mapValueOfType<String>(json, r'immunizationTypeDescriptor')!,
        medicalExemption: mapValueOfType<String>(json, r'medicalExemption'),
        medicalExemptionDate: mapDateTime(json, r'medicalExemptionDate', r''),
        dates: EdFiStudentHealthRequiredImmunizationDate.listFromJson(json[r'dates']),
      );
    }
    return null;
  }

  static List<EdFiStudentHealthRequiredImmunization> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentHealthRequiredImmunization>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentHealthRequiredImmunization.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentHealthRequiredImmunization> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentHealthRequiredImmunization>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentHealthRequiredImmunization.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentHealthRequiredImmunization-objects as value to a dart map
  static Map<String, List<EdFiStudentHealthRequiredImmunization>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentHealthRequiredImmunization>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentHealthRequiredImmunization.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'immunizationTypeDescriptor',
  };
}

