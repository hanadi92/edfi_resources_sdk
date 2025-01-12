//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiLocalEducationAgencyFederalFunds {
  /// Returns a new [EdFiLocalEducationAgencyFederalFunds] instance.
  EdFiLocalEducationAgencyFederalFunds({
    required this.fiscalYear,
    this.innovativeDollarsSpent,
    this.innovativeDollarsSpentStrategicPriorities,
    this.innovativeProgramsFundsReceived,
    this.schoolImprovementAllocation,
    this.schoolImprovementReservedFundsPercentage,
    this.stateAssessmentAdministrationFunding,
    this.supplementalEducationalServicesFundsSpent,
    this.supplementalEducationalServicesPerPupilExpenditure,
  });

  /// The fiscal year for which the federal funds are received.
  int fiscalYear;

  /// The total Title V, Part A funds expended by LEAs.
  ///
  /// Minimum value: -922337203685477.6
  /// Maximum value: 922337203685477.6
  double? innovativeDollarsSpent;

  /// The total amount of Title V, Part A funds expended by LEAs for the four strategic priorities.
  ///
  /// Minimum value: -922337203685477.6
  /// Maximum value: 922337203685477.6
  double? innovativeDollarsSpentStrategicPriorities;

  /// The total Title V, Part A funds received by LEAs.
  ///
  /// Minimum value: -922337203685477.6
  /// Maximum value: 922337203685477.6
  double? innovativeProgramsFundsReceived;

  /// The amount of Section 1003(a) and 1003(g) allocations to LEAs.
  ///
  /// Minimum value: -922337203685477.6
  /// Maximum value: 922337203685477.6
  double? schoolImprovementAllocation;

  /// An indication of the percentage of the Title I, Part A allocation that the SEA reserved in accordance with Section 1003(a) of ESEA and 200.100(a) of ED's regulations governing the reservation of funds for school improvement under Section 1003(a) of ESEA.
  ///
  /// Minimum value: -9.9999
  /// Maximum value: 9.9999
  double? schoolImprovementReservedFundsPercentage;

  /// The percentage of funds used to administer assessments required by Section 1111(b) or to carry out other activities described in Section 6111 and other activities related to ensuring that the state's schools and LEAs are held accountable for results.
  ///
  /// Minimum value: -9.9999
  /// Maximum value: 9.9999
  double? stateAssessmentAdministrationFunding;

  /// The dollar amount spent on supplemental educational services during the school year under Title I, Part A, Section 1116 of ESEA as amended.
  ///
  /// Minimum value: -922337203685477.6
  /// Maximum value: 922337203685477.6
  double? supplementalEducationalServicesFundsSpent;

  /// The maximum dollar amount that may be spent per child for expenditures related to supplemental educational services under Title I of the ESEA.
  ///
  /// Minimum value: -922337203685477.6
  /// Maximum value: 922337203685477.6
  double? supplementalEducationalServicesPerPupilExpenditure;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiLocalEducationAgencyFederalFunds &&
    other.fiscalYear == fiscalYear &&
    other.innovativeDollarsSpent == innovativeDollarsSpent &&
    other.innovativeDollarsSpentStrategicPriorities == innovativeDollarsSpentStrategicPriorities &&
    other.innovativeProgramsFundsReceived == innovativeProgramsFundsReceived &&
    other.schoolImprovementAllocation == schoolImprovementAllocation &&
    other.schoolImprovementReservedFundsPercentage == schoolImprovementReservedFundsPercentage &&
    other.stateAssessmentAdministrationFunding == stateAssessmentAdministrationFunding &&
    other.supplementalEducationalServicesFundsSpent == supplementalEducationalServicesFundsSpent &&
    other.supplementalEducationalServicesPerPupilExpenditure == supplementalEducationalServicesPerPupilExpenditure;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fiscalYear.hashCode) +
    (innovativeDollarsSpent == null ? 0 : innovativeDollarsSpent!.hashCode) +
    (innovativeDollarsSpentStrategicPriorities == null ? 0 : innovativeDollarsSpentStrategicPriorities!.hashCode) +
    (innovativeProgramsFundsReceived == null ? 0 : innovativeProgramsFundsReceived!.hashCode) +
    (schoolImprovementAllocation == null ? 0 : schoolImprovementAllocation!.hashCode) +
    (schoolImprovementReservedFundsPercentage == null ? 0 : schoolImprovementReservedFundsPercentage!.hashCode) +
    (stateAssessmentAdministrationFunding == null ? 0 : stateAssessmentAdministrationFunding!.hashCode) +
    (supplementalEducationalServicesFundsSpent == null ? 0 : supplementalEducationalServicesFundsSpent!.hashCode) +
    (supplementalEducationalServicesPerPupilExpenditure == null ? 0 : supplementalEducationalServicesPerPupilExpenditure!.hashCode);

  @override
  String toString() => 'EdFiLocalEducationAgencyFederalFunds[fiscalYear=$fiscalYear, innovativeDollarsSpent=$innovativeDollarsSpent, innovativeDollarsSpentStrategicPriorities=$innovativeDollarsSpentStrategicPriorities, innovativeProgramsFundsReceived=$innovativeProgramsFundsReceived, schoolImprovementAllocation=$schoolImprovementAllocation, schoolImprovementReservedFundsPercentage=$schoolImprovementReservedFundsPercentage, stateAssessmentAdministrationFunding=$stateAssessmentAdministrationFunding, supplementalEducationalServicesFundsSpent=$supplementalEducationalServicesFundsSpent, supplementalEducationalServicesPerPupilExpenditure=$supplementalEducationalServicesPerPupilExpenditure]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'fiscalYear'] = this.fiscalYear;
    if (this.innovativeDollarsSpent != null) {
      json[r'innovativeDollarsSpent'] = this.innovativeDollarsSpent;
    } else {
      json[r'innovativeDollarsSpent'] = null;
    }
    if (this.innovativeDollarsSpentStrategicPriorities != null) {
      json[r'innovativeDollarsSpentStrategicPriorities'] = this.innovativeDollarsSpentStrategicPriorities;
    } else {
      json[r'innovativeDollarsSpentStrategicPriorities'] = null;
    }
    if (this.innovativeProgramsFundsReceived != null) {
      json[r'innovativeProgramsFundsReceived'] = this.innovativeProgramsFundsReceived;
    } else {
      json[r'innovativeProgramsFundsReceived'] = null;
    }
    if (this.schoolImprovementAllocation != null) {
      json[r'schoolImprovementAllocation'] = this.schoolImprovementAllocation;
    } else {
      json[r'schoolImprovementAllocation'] = null;
    }
    if (this.schoolImprovementReservedFundsPercentage != null) {
      json[r'schoolImprovementReservedFundsPercentage'] = this.schoolImprovementReservedFundsPercentage;
    } else {
      json[r'schoolImprovementReservedFundsPercentage'] = null;
    }
    if (this.stateAssessmentAdministrationFunding != null) {
      json[r'stateAssessmentAdministrationFunding'] = this.stateAssessmentAdministrationFunding;
    } else {
      json[r'stateAssessmentAdministrationFunding'] = null;
    }
    if (this.supplementalEducationalServicesFundsSpent != null) {
      json[r'supplementalEducationalServicesFundsSpent'] = this.supplementalEducationalServicesFundsSpent;
    } else {
      json[r'supplementalEducationalServicesFundsSpent'] = null;
    }
    if (this.supplementalEducationalServicesPerPupilExpenditure != null) {
      json[r'supplementalEducationalServicesPerPupilExpenditure'] = this.supplementalEducationalServicesPerPupilExpenditure;
    } else {
      json[r'supplementalEducationalServicesPerPupilExpenditure'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiLocalEducationAgencyFederalFunds] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiLocalEducationAgencyFederalFunds? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiLocalEducationAgencyFederalFunds[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiLocalEducationAgencyFederalFunds[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiLocalEducationAgencyFederalFunds(
        fiscalYear: mapValueOfType<int>(json, r'fiscalYear')!,
        innovativeDollarsSpent: mapValueOfType<double>(json, r'innovativeDollarsSpent'),
        innovativeDollarsSpentStrategicPriorities: mapValueOfType<double>(json, r'innovativeDollarsSpentStrategicPriorities'),
        innovativeProgramsFundsReceived: mapValueOfType<double>(json, r'innovativeProgramsFundsReceived'),
        schoolImprovementAllocation: mapValueOfType<double>(json, r'schoolImprovementAllocation'),
        schoolImprovementReservedFundsPercentage: mapValueOfType<double>(json, r'schoolImprovementReservedFundsPercentage'),
        stateAssessmentAdministrationFunding: mapValueOfType<double>(json, r'stateAssessmentAdministrationFunding'),
        supplementalEducationalServicesFundsSpent: mapValueOfType<double>(json, r'supplementalEducationalServicesFundsSpent'),
        supplementalEducationalServicesPerPupilExpenditure: mapValueOfType<double>(json, r'supplementalEducationalServicesPerPupilExpenditure'),
      );
    }
    return null;
  }

  static List<EdFiLocalEducationAgencyFederalFunds> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiLocalEducationAgencyFederalFunds>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiLocalEducationAgencyFederalFunds.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiLocalEducationAgencyFederalFunds> mapFromJson(dynamic json) {
    final map = <String, EdFiLocalEducationAgencyFederalFunds>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiLocalEducationAgencyFederalFunds.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiLocalEducationAgencyFederalFunds-objects as value to a dart map
  static Map<String, List<EdFiLocalEducationAgencyFederalFunds>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiLocalEducationAgencyFederalFunds>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiLocalEducationAgencyFederalFunds.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'fiscalYear',
  };
}

