//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiProgram {
  /// Returns a new [EdFiProgram] instance.
  EdFiProgram({
    this.id,
    required this.programName,
    required this.programTypeDescriptor,
    required this.educationOrganizationReference,
    this.characteristics = const [],
    this.learningStandards = const [],
    this.programId,
    this.sponsors = const [],
    this.etag,
    this.lastModifiedDate,
  });

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.
  String programName;

  /// The type of program.
  String programTypeDescriptor;

  EdFiEducationOrganizationReference educationOrganizationReference;

  /// An unordered collection of programCharacteristics. Reflects important characteristics of the program, such as categories or particular indications.
  List<EdFiProgramCharacteristic> characteristics;

  /// An unordered collection of programLearningStandards. Learning standard followed by this program.
  List<EdFiProgramLearningStandard> learningStandards;

  /// A unique number or alphanumeric code assigned to a program by a school, school system, a state, or other agency or entity.
  String? programId;

  /// An unordered collection of programSponsors. Ultimate and intermediate providers of funds for a particular educational or service program or activity, or for an individual's participation in the program or activity (e.g., Federal, State, ESC, District, School, Private Organization).
  List<EdFiProgramSponsor> sponsors;

  /// A unique system-generated value that identifies the version of the resource.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? etag;

  /// The date and time the resource was last modified.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastModifiedDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiProgram &&
    other.id == id &&
    other.programName == programName &&
    other.programTypeDescriptor == programTypeDescriptor &&
    other.educationOrganizationReference == educationOrganizationReference &&
    _deepEquality.equals(other.characteristics, characteristics) &&
    _deepEquality.equals(other.learningStandards, learningStandards) &&
    other.programId == programId &&
    _deepEquality.equals(other.sponsors, sponsors) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (programName.hashCode) +
    (programTypeDescriptor.hashCode) +
    (educationOrganizationReference.hashCode) +
    (characteristics.hashCode) +
    (learningStandards.hashCode) +
    (programId == null ? 0 : programId!.hashCode) +
    (sponsors.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiProgram[id=$id, programName=$programName, programTypeDescriptor=$programTypeDescriptor, educationOrganizationReference=$educationOrganizationReference, characteristics=$characteristics, learningStandards=$learningStandards, programId=$programId, sponsors=$sponsors, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'programName'] = this.programName;
      json[r'programTypeDescriptor'] = this.programTypeDescriptor;
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'characteristics'] = this.characteristics;
      json[r'learningStandards'] = this.learningStandards;
    if (this.programId != null) {
      json[r'programId'] = this.programId;
    } else {
      json[r'programId'] = null;
    }
      json[r'sponsors'] = this.sponsors;
    if (this.etag != null) {
      json[r'_etag'] = this.etag;
    } else {
      json[r'_etag'] = null;
    }
    if (this.lastModifiedDate != null) {
      json[r'_lastModifiedDate'] = this.lastModifiedDate!.toUtc().toIso8601String();
    } else {
      json[r'_lastModifiedDate'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiProgram] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiProgram? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiProgram[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiProgram[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiProgram(
        id: mapValueOfType<String>(json, r'id'),
        programName: mapValueOfType<String>(json, r'programName')!,
        programTypeDescriptor: mapValueOfType<String>(json, r'programTypeDescriptor')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        characteristics: EdFiProgramCharacteristic.listFromJson(json[r'characteristics']),
        learningStandards: EdFiProgramLearningStandard.listFromJson(json[r'learningStandards']),
        programId: mapValueOfType<String>(json, r'programId'),
        sponsors: EdFiProgramSponsor.listFromJson(json[r'sponsors']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiProgram> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiProgram>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiProgram.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiProgram> mapFromJson(dynamic json) {
    final map = <String, EdFiProgram>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiProgram.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiProgram-objects as value to a dart map
  static Map<String, List<EdFiProgram>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiProgram>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiProgram.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'programName',
    'programTypeDescriptor',
    'educationOrganizationReference',
  };
}

