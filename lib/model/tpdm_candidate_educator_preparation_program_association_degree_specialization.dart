//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization {
  /// Returns a new [TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization] instance.
  TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization({
    required this.majorSpecialization,
    this.endDate,
    this.minorSpecialization,
  });

  /// The major area for a degree or area of specialization for a certificate.
  String majorSpecialization;

  /// The month, day, and year on which the Teacher Candidate exited the declared specialization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  /// The minor area for a degree or area of specialization for a certificate.
  String? minorSpecialization;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization &&
    other.majorSpecialization == majorSpecialization &&
    other.endDate == endDate &&
    other.minorSpecialization == minorSpecialization;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (majorSpecialization.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (minorSpecialization == null ? 0 : minorSpecialization!.hashCode);

  @override
  String toString() => 'TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization[majorSpecialization=$majorSpecialization, endDate=$endDate, minorSpecialization=$minorSpecialization]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'majorSpecialization'] = this.majorSpecialization;
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
    if (this.minorSpecialization != null) {
      json[r'minorSpecialization'] = this.minorSpecialization;
    } else {
      json[r'minorSpecialization'] = null;
    }
    return json;
  }

  /// Returns a new [TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization(
        majorSpecialization: mapValueOfType<String>(json, r'majorSpecialization')!,
        endDate: mapDateTime(json, r'endDate', r''),
        minorSpecialization: mapValueOfType<String>(json, r'minorSpecialization'),
      );
    }
    return null;
  }

  static List<TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization> mapFromJson(dynamic json) {
    final map = <String, TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization-objects as value to a dart map
  static Map<String, List<TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'majorSpecialization',
  };
}

