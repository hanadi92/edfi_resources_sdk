//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentSpecialEducationProgramAssociationDisability {
  /// Returns a new [EdFiStudentSpecialEducationProgramAssociationDisability] instance.
  EdFiStudentSpecialEducationProgramAssociationDisability({
    required this.disabilityDescriptor,
    this.disabilityDeterminationSourceTypeDescriptor,
    this.disabilityDiagnosis,
    this.orderOfDisability,
    this.designations = const [],
  });

  /// A disability category that describes a individual's impairment.
  String disabilityDescriptor;

  /// The source that provided the disability determination.
  String? disabilityDeterminationSourceTypeDescriptor;

  /// A description of the disability diagnosis.
  String? disabilityDiagnosis;

  /// The order by severity of individual's disabilities: 1- Primary, 2 -  Secondary, 3 - Tertiary, etc.
  int? orderOfDisability;

  /// An unordered collection of studentSpecialEducationProgramAssociationDisabilityDesignations. Whether the disability is IDEA, Section 504, or other disability designation.
  List<EdFiStudentSpecialEducationProgramAssociationDisabilityDesignation> designations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentSpecialEducationProgramAssociationDisability &&
    other.disabilityDescriptor == disabilityDescriptor &&
    other.disabilityDeterminationSourceTypeDescriptor == disabilityDeterminationSourceTypeDescriptor &&
    other.disabilityDiagnosis == disabilityDiagnosis &&
    other.orderOfDisability == orderOfDisability &&
    _deepEquality.equals(other.designations, designations);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (disabilityDescriptor.hashCode) +
    (disabilityDeterminationSourceTypeDescriptor == null ? 0 : disabilityDeterminationSourceTypeDescriptor!.hashCode) +
    (disabilityDiagnosis == null ? 0 : disabilityDiagnosis!.hashCode) +
    (orderOfDisability == null ? 0 : orderOfDisability!.hashCode) +
    (designations.hashCode);

  @override
  String toString() => 'EdFiStudentSpecialEducationProgramAssociationDisability[disabilityDescriptor=$disabilityDescriptor, disabilityDeterminationSourceTypeDescriptor=$disabilityDeterminationSourceTypeDescriptor, disabilityDiagnosis=$disabilityDiagnosis, orderOfDisability=$orderOfDisability, designations=$designations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'disabilityDescriptor'] = this.disabilityDescriptor;
    if (this.disabilityDeterminationSourceTypeDescriptor != null) {
      json[r'disabilityDeterminationSourceTypeDescriptor'] = this.disabilityDeterminationSourceTypeDescriptor;
    } else {
      json[r'disabilityDeterminationSourceTypeDescriptor'] = null;
    }
    if (this.disabilityDiagnosis != null) {
      json[r'disabilityDiagnosis'] = this.disabilityDiagnosis;
    } else {
      json[r'disabilityDiagnosis'] = null;
    }
    if (this.orderOfDisability != null) {
      json[r'orderOfDisability'] = this.orderOfDisability;
    } else {
      json[r'orderOfDisability'] = null;
    }
      json[r'designations'] = this.designations;
    return json;
  }

  /// Returns a new [EdFiStudentSpecialEducationProgramAssociationDisability] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentSpecialEducationProgramAssociationDisability? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentSpecialEducationProgramAssociationDisability[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentSpecialEducationProgramAssociationDisability[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentSpecialEducationProgramAssociationDisability(
        disabilityDescriptor: mapValueOfType<String>(json, r'disabilityDescriptor')!,
        disabilityDeterminationSourceTypeDescriptor: mapValueOfType<String>(json, r'disabilityDeterminationSourceTypeDescriptor'),
        disabilityDiagnosis: mapValueOfType<String>(json, r'disabilityDiagnosis'),
        orderOfDisability: mapValueOfType<int>(json, r'orderOfDisability'),
        designations: EdFiStudentSpecialEducationProgramAssociationDisabilityDesignation.listFromJson(json[r'designations']),
      );
    }
    return null;
  }

  static List<EdFiStudentSpecialEducationProgramAssociationDisability> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentSpecialEducationProgramAssociationDisability>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentSpecialEducationProgramAssociationDisability.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentSpecialEducationProgramAssociationDisability> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentSpecialEducationProgramAssociationDisability>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentSpecialEducationProgramAssociationDisability.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentSpecialEducationProgramAssociationDisability-objects as value to a dart map
  static Map<String, List<EdFiStudentSpecialEducationProgramAssociationDisability>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentSpecialEducationProgramAssociationDisability>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentSpecialEducationProgramAssociationDisability.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'disabilityDescriptor',
  };
}

