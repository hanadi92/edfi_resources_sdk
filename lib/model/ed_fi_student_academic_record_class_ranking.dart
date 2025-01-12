//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAcademicRecordClassRanking {
  /// Returns a new [EdFiStudentAcademicRecordClassRanking] instance.
  EdFiStudentAcademicRecordClassRanking({
    required this.classRank,
    this.classRankingDate,
    this.percentageRanking,
    required this.totalNumberInClass,
  });

  /// The academic rank of a student in relation to his or her graduating class (e.g., 1st, 2nd, 3rd).
  int classRank;

  /// Date class ranking was determined.
  DateTime? classRankingDate;

  /// The academic percentage rank of a student in relation to his or her graduating class (e.g., 95%, 80%, 50%).
  int? percentageRanking;

  /// The total number of students in the student's graduating class.
  int totalNumberInClass;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAcademicRecordClassRanking &&
    other.classRank == classRank &&
    other.classRankingDate == classRankingDate &&
    other.percentageRanking == percentageRanking &&
    other.totalNumberInClass == totalNumberInClass;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (classRank.hashCode) +
    (classRankingDate == null ? 0 : classRankingDate!.hashCode) +
    (percentageRanking == null ? 0 : percentageRanking!.hashCode) +
    (totalNumberInClass.hashCode);

  @override
  String toString() => 'EdFiStudentAcademicRecordClassRanking[classRank=$classRank, classRankingDate=$classRankingDate, percentageRanking=$percentageRanking, totalNumberInClass=$totalNumberInClass]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'classRank'] = this.classRank;
    if (this.classRankingDate != null) {
      json[r'classRankingDate'] = _dateFormatter.format(this.classRankingDate!.toUtc());
    } else {
      json[r'classRankingDate'] = null;
    }
    if (this.percentageRanking != null) {
      json[r'percentageRanking'] = this.percentageRanking;
    } else {
      json[r'percentageRanking'] = null;
    }
      json[r'totalNumberInClass'] = this.totalNumberInClass;
    return json;
  }

  /// Returns a new [EdFiStudentAcademicRecordClassRanking] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAcademicRecordClassRanking? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAcademicRecordClassRanking[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAcademicRecordClassRanking[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAcademicRecordClassRanking(
        classRank: mapValueOfType<int>(json, r'classRank')!,
        classRankingDate: mapDateTime(json, r'classRankingDate', r''),
        percentageRanking: mapValueOfType<int>(json, r'percentageRanking'),
        totalNumberInClass: mapValueOfType<int>(json, r'totalNumberInClass')!,
      );
    }
    return null;
  }

  static List<EdFiStudentAcademicRecordClassRanking> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAcademicRecordClassRanking>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAcademicRecordClassRanking.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAcademicRecordClassRanking> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAcademicRecordClassRanking>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAcademicRecordClassRanking.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAcademicRecordClassRanking-objects as value to a dart map
  static Map<String, List<EdFiStudentAcademicRecordClassRanking>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAcademicRecordClassRanking>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAcademicRecordClassRanking.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'classRank',
    'totalNumberInClass',
  };
}

