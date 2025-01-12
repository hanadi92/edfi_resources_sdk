//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAcademicRecordDiploma {
  /// Returns a new [EdFiStudentAcademicRecordDiploma] instance.
  EdFiStudentAcademicRecordDiploma({
    required this.diplomaTypeDescriptor,
    required this.diplomaAwardDate,
    this.achievementCategoryDescriptor,
    this.diplomaLevelDescriptor,
    this.achievementCategorySystem,
    this.achievementTitle,
    this.criteria,
    this.criteriaURL,
    this.cteCompleter,
    this.diplomaAwardExpiresDate,
    this.diplomaDescription,
    this.evidenceStatement,
    this.imageURL,
    this.issuerName,
    this.issuerOriginURL,
  });

  /// The type of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.
  String diplomaTypeDescriptor;

  /// The month, day, and year on which the student met  graduation requirements and was awarded a diploma.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime diplomaAwardDate;

  /// The category of achievement attributed to the individual.
  String? achievementCategoryDescriptor;

  /// The level of diploma/credential that is awarded to a student in recognition of completion of the curricular requirements.
  String? diplomaLevelDescriptor;

  /// The system that defines the categories by which an achievement is attributed to the individual.
  String? achievementCategorySystem;

  /// The title assigned to the achievement.
  String? achievementTitle;

  /// The criteria for competency-based completion of the achievement/award.
  String? criteria;

  /// The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.
  String? criteriaURL;

  /// Indicated a student who reached a state-defined threshold of vocational education and who attained a high school diploma or its recognized state equivalent or GED.
  bool? cteCompleter;

  /// Date on which the diploma expires.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? diplomaAwardExpiresDate;

  /// The description of the diploma given to the student for accomplishments.
  String? diplomaDescription;

  /// A statement or reference describing the evidence that the individual met the criteria for attainment of the achievement/award.
  String? evidenceStatement;

  /// The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the achievement/award.
  String? imageURL;

  /// The name of the agent, entity, or institution issuing the element.
  String? issuerName;

  /// The Uniform Resource Locator (URL) from which the award was issued.
  String? issuerOriginURL;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAcademicRecordDiploma &&
    other.diplomaTypeDescriptor == diplomaTypeDescriptor &&
    other.diplomaAwardDate == diplomaAwardDate &&
    other.achievementCategoryDescriptor == achievementCategoryDescriptor &&
    other.diplomaLevelDescriptor == diplomaLevelDescriptor &&
    other.achievementCategorySystem == achievementCategorySystem &&
    other.achievementTitle == achievementTitle &&
    other.criteria == criteria &&
    other.criteriaURL == criteriaURL &&
    other.cteCompleter == cteCompleter &&
    other.diplomaAwardExpiresDate == diplomaAwardExpiresDate &&
    other.diplomaDescription == diplomaDescription &&
    other.evidenceStatement == evidenceStatement &&
    other.imageURL == imageURL &&
    other.issuerName == issuerName &&
    other.issuerOriginURL == issuerOriginURL;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (diplomaTypeDescriptor.hashCode) +
    (diplomaAwardDate.hashCode) +
    (achievementCategoryDescriptor == null ? 0 : achievementCategoryDescriptor!.hashCode) +
    (diplomaLevelDescriptor == null ? 0 : diplomaLevelDescriptor!.hashCode) +
    (achievementCategorySystem == null ? 0 : achievementCategorySystem!.hashCode) +
    (achievementTitle == null ? 0 : achievementTitle!.hashCode) +
    (criteria == null ? 0 : criteria!.hashCode) +
    (criteriaURL == null ? 0 : criteriaURL!.hashCode) +
    (cteCompleter == null ? 0 : cteCompleter!.hashCode) +
    (diplomaAwardExpiresDate == null ? 0 : diplomaAwardExpiresDate!.hashCode) +
    (diplomaDescription == null ? 0 : diplomaDescription!.hashCode) +
    (evidenceStatement == null ? 0 : evidenceStatement!.hashCode) +
    (imageURL == null ? 0 : imageURL!.hashCode) +
    (issuerName == null ? 0 : issuerName!.hashCode) +
    (issuerOriginURL == null ? 0 : issuerOriginURL!.hashCode);

  @override
  String toString() => 'EdFiStudentAcademicRecordDiploma[diplomaTypeDescriptor=$diplomaTypeDescriptor, diplomaAwardDate=$diplomaAwardDate, achievementCategoryDescriptor=$achievementCategoryDescriptor, diplomaLevelDescriptor=$diplomaLevelDescriptor, achievementCategorySystem=$achievementCategorySystem, achievementTitle=$achievementTitle, criteria=$criteria, criteriaURL=$criteriaURL, cteCompleter=$cteCompleter, diplomaAwardExpiresDate=$diplomaAwardExpiresDate, diplomaDescription=$diplomaDescription, evidenceStatement=$evidenceStatement, imageURL=$imageURL, issuerName=$issuerName, issuerOriginURL=$issuerOriginURL]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'diplomaTypeDescriptor'] = this.diplomaTypeDescriptor;
      json[r'diplomaAwardDate'] = _dateFormatter.format(this.diplomaAwardDate.toUtc());
    if (this.achievementCategoryDescriptor != null) {
      json[r'achievementCategoryDescriptor'] = this.achievementCategoryDescriptor;
    } else {
      json[r'achievementCategoryDescriptor'] = null;
    }
    if (this.diplomaLevelDescriptor != null) {
      json[r'diplomaLevelDescriptor'] = this.diplomaLevelDescriptor;
    } else {
      json[r'diplomaLevelDescriptor'] = null;
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
    if (this.cteCompleter != null) {
      json[r'cteCompleter'] = this.cteCompleter;
    } else {
      json[r'cteCompleter'] = null;
    }
    if (this.diplomaAwardExpiresDate != null) {
      json[r'diplomaAwardExpiresDate'] = _dateFormatter.format(this.diplomaAwardExpiresDate!.toUtc());
    } else {
      json[r'diplomaAwardExpiresDate'] = null;
    }
    if (this.diplomaDescription != null) {
      json[r'diplomaDescription'] = this.diplomaDescription;
    } else {
      json[r'diplomaDescription'] = null;
    }
    if (this.evidenceStatement != null) {
      json[r'evidenceStatement'] = this.evidenceStatement;
    } else {
      json[r'evidenceStatement'] = null;
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

  /// Returns a new [EdFiStudentAcademicRecordDiploma] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAcademicRecordDiploma? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAcademicRecordDiploma[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAcademicRecordDiploma[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAcademicRecordDiploma(
        diplomaTypeDescriptor: mapValueOfType<String>(json, r'diplomaTypeDescriptor')!,
        diplomaAwardDate: mapDateTime(json, r'diplomaAwardDate', r'')!,
        achievementCategoryDescriptor: mapValueOfType<String>(json, r'achievementCategoryDescriptor'),
        diplomaLevelDescriptor: mapValueOfType<String>(json, r'diplomaLevelDescriptor'),
        achievementCategorySystem: mapValueOfType<String>(json, r'achievementCategorySystem'),
        achievementTitle: mapValueOfType<String>(json, r'achievementTitle'),
        criteria: mapValueOfType<String>(json, r'criteria'),
        criteriaURL: mapValueOfType<String>(json, r'criteriaURL'),
        cteCompleter: mapValueOfType<bool>(json, r'cteCompleter'),
        diplomaAwardExpiresDate: mapDateTime(json, r'diplomaAwardExpiresDate', r''),
        diplomaDescription: mapValueOfType<String>(json, r'diplomaDescription'),
        evidenceStatement: mapValueOfType<String>(json, r'evidenceStatement'),
        imageURL: mapValueOfType<String>(json, r'imageURL'),
        issuerName: mapValueOfType<String>(json, r'issuerName'),
        issuerOriginURL: mapValueOfType<String>(json, r'issuerOriginURL'),
      );
    }
    return null;
  }

  static List<EdFiStudentAcademicRecordDiploma> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAcademicRecordDiploma>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAcademicRecordDiploma.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAcademicRecordDiploma> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAcademicRecordDiploma>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAcademicRecordDiploma.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAcademicRecordDiploma-objects as value to a dart map
  static Map<String, List<EdFiStudentAcademicRecordDiploma>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAcademicRecordDiploma>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAcademicRecordDiploma.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'diplomaTypeDescriptor',
    'diplomaAwardDate',
  };
}

