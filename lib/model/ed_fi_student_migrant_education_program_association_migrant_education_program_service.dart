//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService {
  /// Returns a new [EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService] instance.
  EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService({
    required this.migrantEducationProgramServiceDescriptor,
    this.primaryIndicator,
    this.serviceBeginDate,
    this.serviceEndDate,
  });

  /// Indicates the service being provided to the student by the migrant education program.
  String migrantEducationProgramServiceDescriptor;

  /// True if service is a primary service.
  bool? primaryIndicator;

  /// First date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? serviceBeginDate;

  /// Last date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? serviceEndDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService &&
    other.migrantEducationProgramServiceDescriptor == migrantEducationProgramServiceDescriptor &&
    other.primaryIndicator == primaryIndicator &&
    other.serviceBeginDate == serviceBeginDate &&
    other.serviceEndDate == serviceEndDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (migrantEducationProgramServiceDescriptor.hashCode) +
    (primaryIndicator == null ? 0 : primaryIndicator!.hashCode) +
    (serviceBeginDate == null ? 0 : serviceBeginDate!.hashCode) +
    (serviceEndDate == null ? 0 : serviceEndDate!.hashCode);

  @override
  String toString() => 'EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService[migrantEducationProgramServiceDescriptor=$migrantEducationProgramServiceDescriptor, primaryIndicator=$primaryIndicator, serviceBeginDate=$serviceBeginDate, serviceEndDate=$serviceEndDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'migrantEducationProgramServiceDescriptor'] = this.migrantEducationProgramServiceDescriptor;
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

  /// Returns a new [EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService(
        migrantEducationProgramServiceDescriptor: mapValueOfType<String>(json, r'migrantEducationProgramServiceDescriptor')!,
        primaryIndicator: mapValueOfType<bool>(json, r'primaryIndicator'),
        serviceBeginDate: mapDateTime(json, r'serviceBeginDate', r''),
        serviceEndDate: mapDateTime(json, r'serviceEndDate', r''),
      );
    }
    return null;
  }

  static List<EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService-objects as value to a dart map
  static Map<String, List<EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentMigrantEducationProgramAssociationMigrantEducationProgramService.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'migrantEducationProgramServiceDescriptor',
  };
}

