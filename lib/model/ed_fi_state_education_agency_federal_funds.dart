//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStateEducationAgencyFederalFunds {
  /// Returns a new [EdFiStateEducationAgencyFederalFunds] instance.
  EdFiStateEducationAgencyFederalFunds({
    required this.fiscalYear,
    this.federalProgramsFundingAllocation,
  });

  /// The fiscal year for which the federal funds are received.
  int fiscalYear;

  /// The amount of federal dollars distributed to Local Education Agencies (LEAs), retained by the State Education Agency (SEA) for program administration or other approved state-level activities (including unallocated, transferred to another state agency, or distributed to entities other than LEAs).
  ///
  /// Minimum value: -922337203685477.6
  /// Maximum value: 922337203685477.6
  double? federalProgramsFundingAllocation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStateEducationAgencyFederalFunds &&
    other.fiscalYear == fiscalYear &&
    other.federalProgramsFundingAllocation == federalProgramsFundingAllocation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fiscalYear.hashCode) +
    (federalProgramsFundingAllocation == null ? 0 : federalProgramsFundingAllocation!.hashCode);

  @override
  String toString() => 'EdFiStateEducationAgencyFederalFunds[fiscalYear=$fiscalYear, federalProgramsFundingAllocation=$federalProgramsFundingAllocation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'fiscalYear'] = this.fiscalYear;
    if (this.federalProgramsFundingAllocation != null) {
      json[r'federalProgramsFundingAllocation'] = this.federalProgramsFundingAllocation;
    } else {
      json[r'federalProgramsFundingAllocation'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiStateEducationAgencyFederalFunds] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStateEducationAgencyFederalFunds? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStateEducationAgencyFederalFunds[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStateEducationAgencyFederalFunds[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStateEducationAgencyFederalFunds(
        fiscalYear: mapValueOfType<int>(json, r'fiscalYear')!,
        federalProgramsFundingAllocation: mapValueOfType<double>(json, r'federalProgramsFundingAllocation'),
      );
    }
    return null;
  }

  static List<EdFiStateEducationAgencyFederalFunds> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStateEducationAgencyFederalFunds>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStateEducationAgencyFederalFunds.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStateEducationAgencyFederalFunds> mapFromJson(dynamic json) {
    final map = <String, EdFiStateEducationAgencyFederalFunds>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStateEducationAgencyFederalFunds.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStateEducationAgencyFederalFunds-objects as value to a dart map
  static Map<String, List<EdFiStateEducationAgencyFederalFunds>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStateEducationAgencyFederalFunds>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStateEducationAgencyFederalFunds.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'fiscalYear',
  };
}

