//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiDisciplineIncident {
  /// Returns a new [EdFiDisciplineIncident] instance.
  EdFiDisciplineIncident({
    this.id,
    required this.incidentIdentifier,
    required this.schoolReference,
    this.behaviors = const [],
    this.caseNumber,
    this.externalParticipants = const [],
    this.incidentCost,
    required this.incidentDate,
    this.incidentDescription,
    this.incidentLocationDescriptor,
    this.incidentTime,
    this.reportedToLawEnforcement,
    this.reporterDescriptionDescriptor,
    this.reporterName,
    this.weapons = const [],
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

  /// A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.
  String incidentIdentifier;

  EdFiSchoolReference schoolReference;

  /// An unordered collection of disciplineIncidentBehaviors. Describes behavior by category and provides a detailed description.
  List<EdFiDisciplineIncidentBehavior> behaviors;

  /// The case number assigned to the DisciplineIncident by law enforcement or other organization.
  String? caseNumber;

  /// An unordered collection of disciplineIncidentExternalParticipants. Information on an individual involved in the discipline incident.
  List<EdFiDisciplineIncidentExternalParticipant> externalParticipants;

  /// The value of any quantifiable monetary loss directly resulting from the discipline incident. Examples include the value of repairs necessitated by vandalism of a school facility, or the value of personnel resources used for repairs or consumed by the incident.
  ///
  /// Minimum value: -922337203685477.6
  /// Maximum value: 922337203685477.6
  double? incidentCost;

  /// The month, day, and year on which the discipline incident occurred.
  DateTime incidentDate;

  /// The description for an incident.
  String? incidentDescription;

  /// Identifies where the discipline incident occurred and whether or not it occurred on school.
  String? incidentLocationDescriptor;

  /// An indication of the time of day the incident took place.
  String? incidentTime;

  /// Indicator of whether the incident was reported to law enforcement.
  bool? reportedToLawEnforcement;

  /// Information on the type of individual who reported the discipline incident. When known and/or if useful, use a more specific option code (e.g., \"Counselor\" rather than \"Professional Staff\").
  String? reporterDescriptionDescriptor;

  /// Identifies the reporter of the discipline incident by name.
  String? reporterName;

  /// An unordered collection of disciplineIncidentWeapons. Identifies the type of weapon used during an incident. The Federal Gun-Free Schools Act requires states to report the number of students expelled for bringing firearms to school by type of firearm.
  List<EdFiDisciplineIncidentWeapon> weapons;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiDisciplineIncident &&
    other.id == id &&
    other.incidentIdentifier == incidentIdentifier &&
    other.schoolReference == schoolReference &&
    _deepEquality.equals(other.behaviors, behaviors) &&
    other.caseNumber == caseNumber &&
    _deepEquality.equals(other.externalParticipants, externalParticipants) &&
    other.incidentCost == incidentCost &&
    other.incidentDate == incidentDate &&
    other.incidentDescription == incidentDescription &&
    other.incidentLocationDescriptor == incidentLocationDescriptor &&
    other.incidentTime == incidentTime &&
    other.reportedToLawEnforcement == reportedToLawEnforcement &&
    other.reporterDescriptionDescriptor == reporterDescriptionDescriptor &&
    other.reporterName == reporterName &&
    _deepEquality.equals(other.weapons, weapons) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (incidentIdentifier.hashCode) +
    (schoolReference.hashCode) +
    (behaviors.hashCode) +
    (caseNumber == null ? 0 : caseNumber!.hashCode) +
    (externalParticipants.hashCode) +
    (incidentCost == null ? 0 : incidentCost!.hashCode) +
    (incidentDate.hashCode) +
    (incidentDescription == null ? 0 : incidentDescription!.hashCode) +
    (incidentLocationDescriptor == null ? 0 : incidentLocationDescriptor!.hashCode) +
    (incidentTime == null ? 0 : incidentTime!.hashCode) +
    (reportedToLawEnforcement == null ? 0 : reportedToLawEnforcement!.hashCode) +
    (reporterDescriptionDescriptor == null ? 0 : reporterDescriptionDescriptor!.hashCode) +
    (reporterName == null ? 0 : reporterName!.hashCode) +
    (weapons.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiDisciplineIncident[id=$id, incidentIdentifier=$incidentIdentifier, schoolReference=$schoolReference, behaviors=$behaviors, caseNumber=$caseNumber, externalParticipants=$externalParticipants, incidentCost=$incidentCost, incidentDate=$incidentDate, incidentDescription=$incidentDescription, incidentLocationDescriptor=$incidentLocationDescriptor, incidentTime=$incidentTime, reportedToLawEnforcement=$reportedToLawEnforcement, reporterDescriptionDescriptor=$reporterDescriptionDescriptor, reporterName=$reporterName, weapons=$weapons, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'incidentIdentifier'] = this.incidentIdentifier;
      json[r'schoolReference'] = this.schoolReference;
      json[r'behaviors'] = this.behaviors;
    if (this.caseNumber != null) {
      json[r'caseNumber'] = this.caseNumber;
    } else {
      json[r'caseNumber'] = null;
    }
      json[r'externalParticipants'] = this.externalParticipants;
    if (this.incidentCost != null) {
      json[r'incidentCost'] = this.incidentCost;
    } else {
      json[r'incidentCost'] = null;
    }
      json[r'incidentDate'] = _dateFormatter.format(this.incidentDate.toUtc());
    if (this.incidentDescription != null) {
      json[r'incidentDescription'] = this.incidentDescription;
    } else {
      json[r'incidentDescription'] = null;
    }
    if (this.incidentLocationDescriptor != null) {
      json[r'incidentLocationDescriptor'] = this.incidentLocationDescriptor;
    } else {
      json[r'incidentLocationDescriptor'] = null;
    }
    if (this.incidentTime != null) {
      json[r'incidentTime'] = this.incidentTime;
    } else {
      json[r'incidentTime'] = null;
    }
    if (this.reportedToLawEnforcement != null) {
      json[r'reportedToLawEnforcement'] = this.reportedToLawEnforcement;
    } else {
      json[r'reportedToLawEnforcement'] = null;
    }
    if (this.reporterDescriptionDescriptor != null) {
      json[r'reporterDescriptionDescriptor'] = this.reporterDescriptionDescriptor;
    } else {
      json[r'reporterDescriptionDescriptor'] = null;
    }
    if (this.reporterName != null) {
      json[r'reporterName'] = this.reporterName;
    } else {
      json[r'reporterName'] = null;
    }
      json[r'weapons'] = this.weapons;
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

  /// Returns a new [EdFiDisciplineIncident] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiDisciplineIncident? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiDisciplineIncident[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiDisciplineIncident[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiDisciplineIncident(
        id: mapValueOfType<String>(json, r'id'),
        incidentIdentifier: mapValueOfType<String>(json, r'incidentIdentifier')!,
        schoolReference: EdFiSchoolReference.fromJson(json[r'schoolReference'])!,
        behaviors: EdFiDisciplineIncidentBehavior.listFromJson(json[r'behaviors']),
        caseNumber: mapValueOfType<String>(json, r'caseNumber'),
        externalParticipants: EdFiDisciplineIncidentExternalParticipant.listFromJson(json[r'externalParticipants']),
        incidentCost: mapValueOfType<double>(json, r'incidentCost'),
        incidentDate: mapDateTime(json, r'incidentDate', r'')!,
        incidentDescription: mapValueOfType<String>(json, r'incidentDescription'),
        incidentLocationDescriptor: mapValueOfType<String>(json, r'incidentLocationDescriptor'),
        incidentTime: mapValueOfType<String>(json, r'incidentTime'),
        reportedToLawEnforcement: mapValueOfType<bool>(json, r'reportedToLawEnforcement'),
        reporterDescriptionDescriptor: mapValueOfType<String>(json, r'reporterDescriptionDescriptor'),
        reporterName: mapValueOfType<String>(json, r'reporterName'),
        weapons: EdFiDisciplineIncidentWeapon.listFromJson(json[r'weapons']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiDisciplineIncident> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiDisciplineIncident>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiDisciplineIncident.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiDisciplineIncident> mapFromJson(dynamic json) {
    final map = <String, EdFiDisciplineIncident>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiDisciplineIncident.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiDisciplineIncident-objects as value to a dart map
  static Map<String, List<EdFiDisciplineIncident>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiDisciplineIncident>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiDisciplineIncident.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'incidentIdentifier',
    'schoolReference',
    'incidentDate',
  };
}

