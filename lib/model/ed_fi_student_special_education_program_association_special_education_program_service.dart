//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService {
  /// Returns a new [EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService] instance.
  EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService({
    required this.specialEducationProgramServiceDescriptor,
    this.primaryIndicator,
    this.serviceBeginDate,
    this.serviceEndDate,
    this.providers = const [],
  });

  /// Indicates the service being provided to the student by the special education program.
  String specialEducationProgramServiceDescriptor;

  /// True if service is a primary service.
  bool? primaryIndicator;

  /// First date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? serviceBeginDate;

  /// Last date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? serviceEndDate;

  /// An unordered collection of studentSpecialEducationProgramAssociationSpecialEducationProgramServiceProviders. The staff providing the service to the student.
  List<EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider> providers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService &&
    other.specialEducationProgramServiceDescriptor == specialEducationProgramServiceDescriptor &&
    other.primaryIndicator == primaryIndicator &&
    other.serviceBeginDate == serviceBeginDate &&
    other.serviceEndDate == serviceEndDate &&
    _deepEquality.equals(other.providers, providers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (specialEducationProgramServiceDescriptor.hashCode) +
    (primaryIndicator == null ? 0 : primaryIndicator!.hashCode) +
    (serviceBeginDate == null ? 0 : serviceBeginDate!.hashCode) +
    (serviceEndDate == null ? 0 : serviceEndDate!.hashCode) +
    (providers.hashCode);

  @override
  String toString() => 'EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService[specialEducationProgramServiceDescriptor=$specialEducationProgramServiceDescriptor, primaryIndicator=$primaryIndicator, serviceBeginDate=$serviceBeginDate, serviceEndDate=$serviceEndDate, providers=$providers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'specialEducationProgramServiceDescriptor'] = this.specialEducationProgramServiceDescriptor;
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
      json[r'providers'] = this.providers;
    return json;
  }

  /// Returns a new [EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService(
        specialEducationProgramServiceDescriptor: mapValueOfType<String>(json, r'specialEducationProgramServiceDescriptor')!,
        primaryIndicator: mapValueOfType<bool>(json, r'primaryIndicator'),
        serviceBeginDate: mapDateTime(json, r'serviceBeginDate', r''),
        serviceEndDate: mapDateTime(json, r'serviceEndDate', r''),
        providers: EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider.listFromJson(json[r'providers']),
      );
    }
    return null;
  }

  static List<EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService-objects as value to a dart map
  static Map<String, List<EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'specialEducationProgramServiceDescriptor',
  };
}

