//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmCandidateEducatorPreparationProgramAssociation {
  /// Returns a new [TpdmCandidateEducatorPreparationProgramAssociation] instance.
  TpdmCandidateEducatorPreparationProgramAssociation({
    this.id,
    required this.beginDate,
    required this.candidateReference,
    required this.educatorPreparationProgramReference,
    this.cohortYears = const [],
    this.degreeSpecializations = const [],
    this.endDate,
    this.eppProgramPathwayDescriptor,
    this.reasonExitedDescriptor,
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

  /// The begin date for the association.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime beginDate;

  TpdmCandidateReference candidateReference;

  TpdmEducatorPreparationProgramReference educatorPreparationProgramReference;

  /// An unordered collection of candidateEducatorPreparationProgramAssociationCohortYears. The type and year of a cohort the student belongs to as determined by the year that student entered a specific grade.
  List<TpdmCandidateEducatorPreparationProgramAssociationCohortYear> cohortYears;

  /// An unordered collection of candidateEducatorPreparationProgramAssociationDegreeSpecializations. Information around the area(s) of specialization for an individual.
  List<TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization> degreeSpecializations;

  /// The end date for the association.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  /// The program pathway the candidate is following; for example: Residency, Internship, Traditional
  String? eppProgramPathwayDescriptor;

  /// Reason exited for the association.
  String? reasonExitedDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is TpdmCandidateEducatorPreparationProgramAssociation &&
    other.id == id &&
    other.beginDate == beginDate &&
    other.candidateReference == candidateReference &&
    other.educatorPreparationProgramReference == educatorPreparationProgramReference &&
    _deepEquality.equals(other.cohortYears, cohortYears) &&
    _deepEquality.equals(other.degreeSpecializations, degreeSpecializations) &&
    other.endDate == endDate &&
    other.eppProgramPathwayDescriptor == eppProgramPathwayDescriptor &&
    other.reasonExitedDescriptor == reasonExitedDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (beginDate.hashCode) +
    (candidateReference.hashCode) +
    (educatorPreparationProgramReference.hashCode) +
    (cohortYears.hashCode) +
    (degreeSpecializations.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (eppProgramPathwayDescriptor == null ? 0 : eppProgramPathwayDescriptor!.hashCode) +
    (reasonExitedDescriptor == null ? 0 : reasonExitedDescriptor!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'TpdmCandidateEducatorPreparationProgramAssociation[id=$id, beginDate=$beginDate, candidateReference=$candidateReference, educatorPreparationProgramReference=$educatorPreparationProgramReference, cohortYears=$cohortYears, degreeSpecializations=$degreeSpecializations, endDate=$endDate, eppProgramPathwayDescriptor=$eppProgramPathwayDescriptor, reasonExitedDescriptor=$reasonExitedDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'beginDate'] = _dateFormatter.format(this.beginDate.toUtc());
      json[r'candidateReference'] = this.candidateReference;
      json[r'educatorPreparationProgramReference'] = this.educatorPreparationProgramReference;
      json[r'cohortYears'] = this.cohortYears;
      json[r'degreeSpecializations'] = this.degreeSpecializations;
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
    if (this.eppProgramPathwayDescriptor != null) {
      json[r'eppProgramPathwayDescriptor'] = this.eppProgramPathwayDescriptor;
    } else {
      json[r'eppProgramPathwayDescriptor'] = null;
    }
    if (this.reasonExitedDescriptor != null) {
      json[r'reasonExitedDescriptor'] = this.reasonExitedDescriptor;
    } else {
      json[r'reasonExitedDescriptor'] = null;
    }
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

  /// Returns a new [TpdmCandidateEducatorPreparationProgramAssociation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmCandidateEducatorPreparationProgramAssociation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmCandidateEducatorPreparationProgramAssociation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmCandidateEducatorPreparationProgramAssociation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmCandidateEducatorPreparationProgramAssociation(
        id: mapValueOfType<String>(json, r'id'),
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        candidateReference: TpdmCandidateReference.fromJson(json[r'candidateReference'])!,
        educatorPreparationProgramReference: TpdmEducatorPreparationProgramReference.fromJson(json[r'educatorPreparationProgramReference'])!,
        cohortYears: TpdmCandidateEducatorPreparationProgramAssociationCohortYear.listFromJson(json[r'cohortYears']),
        degreeSpecializations: TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization.listFromJson(json[r'degreeSpecializations']),
        endDate: mapDateTime(json, r'endDate', r''),
        eppProgramPathwayDescriptor: mapValueOfType<String>(json, r'eppProgramPathwayDescriptor'),
        reasonExitedDescriptor: mapValueOfType<String>(json, r'reasonExitedDescriptor'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<TpdmCandidateEducatorPreparationProgramAssociation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmCandidateEducatorPreparationProgramAssociation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmCandidateEducatorPreparationProgramAssociation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmCandidateEducatorPreparationProgramAssociation> mapFromJson(dynamic json) {
    final map = <String, TpdmCandidateEducatorPreparationProgramAssociation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmCandidateEducatorPreparationProgramAssociation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmCandidateEducatorPreparationProgramAssociation-objects as value to a dart map
  static Map<String, List<TpdmCandidateEducatorPreparationProgramAssociation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmCandidateEducatorPreparationProgramAssociation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmCandidateEducatorPreparationProgramAssociation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'beginDate',
    'candidateReference',
    'educatorPreparationProgramReference',
  };
}

