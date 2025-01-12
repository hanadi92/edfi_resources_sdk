//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService {
  /// Returns a new [EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService] instance.
  EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService({
    required this.languageInstructionProgramServiceDescriptor,
    this.primaryIndicator,
    this.serviceBeginDate,
    this.serviceEndDate,
  });

  /// Indicates the service being provided to the student by the language instruction program.
  String languageInstructionProgramServiceDescriptor;

  /// True if service is a primary service.
  bool? primaryIndicator;

  /// First date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? serviceBeginDate;

  /// Last date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? serviceEndDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService &&
    other.languageInstructionProgramServiceDescriptor == languageInstructionProgramServiceDescriptor &&
    other.primaryIndicator == primaryIndicator &&
    other.serviceBeginDate == serviceBeginDate &&
    other.serviceEndDate == serviceEndDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (languageInstructionProgramServiceDescriptor.hashCode) +
    (primaryIndicator == null ? 0 : primaryIndicator!.hashCode) +
    (serviceBeginDate == null ? 0 : serviceBeginDate!.hashCode) +
    (serviceEndDate == null ? 0 : serviceEndDate!.hashCode);

  @override
  String toString() => 'EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService[languageInstructionProgramServiceDescriptor=$languageInstructionProgramServiceDescriptor, primaryIndicator=$primaryIndicator, serviceBeginDate=$serviceBeginDate, serviceEndDate=$serviceEndDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'languageInstructionProgramServiceDescriptor'] = this.languageInstructionProgramServiceDescriptor;
    if (this.primaryIndicator != null) {
      json[r'primaryIndicator'] = this.primaryIndicator;
    } else {
      json[r'primaryIndicator'] = null;
    }
    if (this.serviceBeginDate != null) {
      json[r'serviceBeginDate'] = _dateFormatter.format(this.serviceBeginDate!.toUtc());
    } else {
      json[r'serviceBeginDate'] = null;
    }
    if (this.serviceEndDate != null) {
      json[r'serviceEndDate'] = _dateFormatter.format(this.serviceEndDate!.toUtc());
    } else {
      json[r'serviceEndDate'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService(
        languageInstructionProgramServiceDescriptor: mapValueOfType<String>(json, r'languageInstructionProgramServiceDescriptor')!,
        primaryIndicator: mapValueOfType<bool>(json, r'primaryIndicator'),
        serviceBeginDate: mapDateTime(json, r'serviceBeginDate', r''),
        serviceEndDate: mapDateTime(json, r'serviceEndDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService-objects as value to a dart map
  static Map<String, List<EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentLanguageInstructionProgramAssociationLanguageInstructionProgramService.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'languageInstructionProgramServiceDescriptor',
  };
}

