//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAcademicRecordAcademicHonor {
  /// Returns a new [EdFiStudentAcademicRecordAcademicHonor] instance.
  EdFiStudentAcademicRecordAcademicHonor({
    required this.academicHonorCategoryDescriptor,
    required this.honorDescription,
    this.achievementCategoryDescriptor,
    this.achievementCategorySystem,
    this.achievementTitle,
    this.criteria,
    this.criteriaURL,
    this.evidenceStatement,
    this.honorAwardDate,
    this.honorAwardExpiresDate,
    this.imageURL,
    this.issuerName,
    this.issuerOriginURL,
  });

  /// A designation of the type of academic distinctions earned by or awarded to the individual.
  String academicHonorCategoryDescriptor;

  /// A description of the type of academic distinctions earned by or awarded to the individual.
  String honorDescription;

  /// The category of achievement attributed to the individual.
  String? achievementCategoryDescriptor;

  /// The system that defines the categories by which an achievement is attributed to the individual.
  String? achievementCategorySystem;

  /// The title assigned to the achievement.
  String? achievementTitle;

  /// The criteria for competency-based completion of the achievement/award.
  String? criteria;

  /// The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.
  String? criteriaURL;

  /// A statement or reference describing the evidence that the individual met the criteria for attainment of the achievement/award.
  String? evidenceStatement;

  /// The date the honor was awarded.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? honorAwardDate;

  /// Date on which the honor expires.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? honorAwardExpiresDate;

  /// The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the achievement/award.
  String? imageURL;

  /// The name of the agent, entity, or institution issuing the element.
  String? issuerName;

  /// The Uniform Resource Locator (URL) from which the award was issued.
  String? issuerOriginURL;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAcademicRecordAcademicHonor &&
    other.academicHonorCategoryDescriptor == academicHonorCategoryDescriptor &&
    other.honorDescription == honorDescription &&
    other.achievementCategoryDescriptor == achievementCategoryDescriptor &&
    other.achievementCategorySystem == achievementCategorySystem &&
    other.achievementTitle == achievementTitle &&
    other.criteria == criteria &&
    other.criteriaURL == criteriaURL &&
    other.evidenceStatement == evidenceStatement &&
    other.honorAwardDate == honorAwardDate &&
    other.honorAwardExpiresDate == honorAwardExpiresDate &&
    other.imageURL == imageURL &&
    other.issuerName == issuerName &&
    other.issuerOriginURL == issuerOriginURL;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (academicHonorCategoryDescriptor.hashCode) +
    (honorDescription.hashCode) +
    (achievementCategoryDescriptor == null ? 0 : achievementCategoryDescriptor!.hashCode) +
    (achievementCategorySystem == null ? 0 : achievementCategorySystem!.hashCode) +
    (achievementTitle == null ? 0 : achievementTitle!.hashCode) +
    (criteria == null ? 0 : criteria!.hashCode) +
    (criteriaURL == null ? 0 : criteriaURL!.hashCode) +
    (evidenceStatement == null ? 0 : evidenceStatement!.hashCode) +
    (honorAwardDate == null ? 0 : honorAwardDate!.hashCode) +
    (honorAwardExpiresDate == null ? 0 : honorAwardExpiresDate!.hashCode) +
    (imageURL == null ? 0 : imageURL!.hashCode) +
    (issuerName == null ? 0 : issuerName!.hashCode) +
    (issuerOriginURL == null ? 0 : issuerOriginURL!.hashCode);

  @override
  String toString() => 'EdFiStudentAcademicRecordAcademicHonor[academicHonorCategoryDescriptor=$academicHonorCategoryDescriptor, honorDescription=$honorDescription, achievementCategoryDescriptor=$achievementCategoryDescriptor, achievementCategorySystem=$achievementCategorySystem, achievementTitle=$achievementTitle, criteria=$criteria, criteriaURL=$criteriaURL, evidenceStatement=$evidenceStatement, honorAwardDate=$honorAwardDate, honorAwardExpiresDate=$honorAwardExpiresDate, imageURL=$imageURL, issuerName=$issuerName, issuerOriginURL=$issuerOriginURL]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'academicHonorCategoryDescriptor'] = this.academicHonorCategoryDescriptor;
      json[r'honorDescription'] = this.honorDescription;
    if (this.achievementCategoryDescriptor != null) {
      json[r'achievementCategoryDescriptor'] = this.achievementCategoryDescriptor;
    } else {
      json[r'achievementCategoryDescriptor'] = null;
    }
    if (this.achievementCategorySystem != null) {
      json[r'achievementCategorySystem'] = this.achievementCategorySystem;
    } else {
      json[r'achievementCategorySystem'] = null;
    }
    if (this.achievementTitle != null) {
      json[r'achievementTitle'] = this.achievementTitle;
    } else {
      json[r'achievementTitle'] = null;
    }
    if (this.criteria != null) {
      json[r'criteria'] = this.criteria;
    } else {
      json[r'criteria'] = null;
    }
    if (this.criteriaURL != null) {
      json[r'criteriaURL'] = this.criteriaURL;
    } else {
      json[r'criteriaURL'] = null;
    }
    if (this.evidenceStatement != null) {
      json[r'evidenceStatement'] = this.evidenceStatement;
    } else {
      json[r'evidenceStatement'] = null;
    }
    if (this.honorAwardDate != null) {
      json[r'honorAwardDate'] = _dateFormatter.format(this.honorAwardDate!.toUtc());
    } else {
      json[r'honorAwardDate'] = null;
    }
    if (this.honorAwardExpiresDate != null) {
      json[r'honorAwardExpiresDate'] = _dateFormatter.format(this.honorAwardExpiresDate!.toUtc());
    } else {
      json[r'honorAwardExpiresDate'] = null;
    }
    if (this.imageURL != null) {
      json[r'imageURL'] = this.imageURL;
    } else {
      json[r'imageURL'] = null;
    }
    if (this.issuerName != null) {
      json[r'issuerName'] = this.issuerName;
    } else {
      json[r'issuerName'] = null;
    }
    if (this.issuerOriginURL != null) {
      json[r'issuerOriginURL'] = this.issuerOriginURL;
    } else {
      json[r'issuerOriginURL'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiStudentAcademicRecordAcademicHonor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAcademicRecordAcademicHonor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAcademicRecordAcademicHonor[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAcademicRecordAcademicHonor[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAcademicRecordAcademicHonor(
        academicHonorCategoryDescriptor: mapValueOfType<String>(json, r'academicHonorCategoryDescriptor')!,
        honorDescription: mapValueOfType<String>(json, r'honorDescription')!,
        achievementCategoryDescriptor: mapValueOfType<String>(json, r'achievementCategoryDescriptor'),
        achievementCategorySystem: mapValueOfType<String>(json, r'achievementCategorySystem'),
        achievementTitle: mapValueOfType<String>(json, r'achievementTitle'),
        criteria: mapValueOfType<String>(json, r'criteria'),
        criteriaURL: mapValueOfType<String>(json, r'criteriaURL'),
        evidenceStatement: mapValueOfType<String>(json, r'evidenceStatement'),
        honorAwardDate: mapDateTime(json, r'honorAwardDate', r''),
        honorAwardExpiresDate: mapDateTime(json, r'honorAwardExpiresDate', r''),
        imageURL: mapValueOfType<String>(json, r'imageURL'),
        issuerName: mapValueOfType<String>(json, r'issuerName'),
        issuerOriginURL: mapValueOfType<String>(json, r'issuerOriginURL'),
      );
    }
    return null;
  }

  static List<EdFiStudentAcademicRecordAcademicHonor> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAcademicRecordAcademicHonor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAcademicRecordAcademicHonor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAcademicRecordAcademicHonor> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAcademicRecordAcademicHonor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAcademicRecordAcademicHonor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAcademicRecordAcademicHonor-objects as value to a dart map
  static Map<String, List<EdFiStudentAcademicRecordAcademicHonor>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAcademicRecordAcademicHonor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAcademicRecordAcademicHonor.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'academicHonorCategoryDescriptor',
    'honorDescription',
  };
}

