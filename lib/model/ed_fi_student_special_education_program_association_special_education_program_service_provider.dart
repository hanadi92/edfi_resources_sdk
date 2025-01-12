//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider {
  /// Returns a new [EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider] instance.
  EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider({
    this.primaryProvider,
    required this.staffReference,
  });

  /// Primary ServiceProvider.
  bool? primaryProvider;

  EdFiStaffReference staffReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider &&
    other.primaryProvider == primaryProvider &&
    other.staffReference == staffReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (primaryProvider == null ? 0 : primaryProvider!.hashCode) +
    (staffReference.hashCode);

  @override
  String toString() => 'EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider[primaryProvider=$primaryProvider, staffReference=$staffReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.primaryProvider != null) {
      json[r'primaryProvider'] = this.primaryProvider;
    } else {
      json[r'primaryProvider'] = null;
    }
      json[r'staffReference'] = this.staffReference;
    return json;
  }

  /// Returns a new [EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider(
        primaryProvider: mapValueOfType<bool>(json, r'primaryProvider'),
        staffReference: EdFiStaffReference.fromJson(json[r'staffReference'])!,
      );
    }
    return null;
  }

  static List<EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider-objects as value to a dart map
  static Map<String, List<EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'staffReference',
  };
}

