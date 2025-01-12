//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAcademicRecordRecognition {
  /// Returns a new [EdFiStudentAcademicRecordRecognition] instance.
  EdFiStudentAcademicRecordRecognition({
    required this.recognitionTypeDescriptor,
    this.achievementCategoryDescriptor,
    this.achievementCategorySystem,
    this.achievementTitle,
    this.criteria,
    this.criteriaURL,
    this.evidenceStatement,
    this.imageURL,
    this.issuerName,
    this.issuerOriginURL,
    this.recognitionAwardDate,
    this.recognitionAwardExpiresDate,
    this.recognitionDescription,
  });

  /// The nature of recognition given to the individual for accomplishments in a co-curricular, or extra-curricular activity.
  String recognitionTypeDescriptor;

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

  /// The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the achievement/award.
  String? imageURL;

  /// The name of the agent, entity, or institution issuing the element.
  String? issuerName;

  /// The Uniform Resource Locator (URL) from which the award was issued.
  String? issuerOriginURL;

  /// The date the recognition was awarded or earned.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? recognitionAwardDate;

  /// Date on which the recognition expires.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? recognitionAwardExpiresDate;

  /// A description of the type of recognition earned by or awarded to the individual.
  String? recognitionDescription;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAcademicRecordRecognition &&
    other.recognitionTypeDescriptor == recognitionTypeDescriptor &&
    other.achievementCategoryDescriptor == achievementCategoryDescriptor &&
    other.achievementCategorySystem == achievementCategorySystem &&
    other.achievementTitle == achievementTitle &&
    other.criteria == criteria &&
    other.criteriaURL == criteriaURL &&
    other.evidenceStatement == evidenceStatement &&
    other.imageURL == imageURL &&
    other.issuerName == issuerName &&
    other.issuerOriginURL == issuerOriginURL &&
    other.recognitionAwardDate == recognitionAwardDate &&
    other.recognitionAwardExpiresDate == recognitionAwardExpiresDate &&
    other.recognitionDescription == recognitionDescription;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (recognitionTypeDescriptor.hashCode) +
    (achievementCategoryDescriptor == null ? 0 : achievementCategoryDescriptor!.hashCode) +
    (achievementCategorySystem == null ? 0 : achievementCategorySystem!.hashCode) +
    (achievementTitle == null ? 0 : achievementTitle!.hashCode) +
    (criteria == null ? 0 : criteria!.hashCode) +
    (criteriaURL == null ? 0 : criteriaURL!.hashCode) +
    (evidenceStatement == null ? 0 : evidenceStatement!.hashCode) +
    (imageURL == null ? 0 : imageURL!.hashCode) +
    (issuerName == null ? 0 : issuerName!.hashCode) +
    (issuerOriginURL == null ? 0 : issuerOriginURL!.hashCode) +
    (recognitionAwardDate == null ? 0 : recognitionAwardDate!.hashCode) +
    (recognitionAwardExpiresDate == null ? 0 : recognitionAwardExpiresDate!.hashCode) +
    (recognitionDescription == null ? 0 : recognitionDescription!.hashCode);

  @override
  String toString() => 'EdFiStudentAcademicRecordRecognition[recognitionTypeDescriptor=$recognitionTypeDescriptor, achievementCategoryDescriptor=$achievementCategoryDescriptor, achievementCategorySystem=$achievementCategorySystem, achievementTitle=$achievementTitle, criteria=$criteria, criteriaURL=$criteriaURL, evidenceStatement=$evidenceStatement, imageURL=$imageURL, issuerName=$issuerName, issuerOriginURL=$issuerOriginURL, recognitionAwardDate=$recognitionAwardDate, recognitionAwardExpiresDate=$recognitionAwardExpiresDate, recognitionDescription=$recognitionDescription]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'recognitionTypeDescriptor'] = this.recognitionTypeDescriptor;
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
    if (this.recognitionAwardDate != null) {
      json[r'recognitionAwardDate'] = _dateFormatter.format(this.recognitionAwardDate!.toUtc());
    } else {
      json[r'recognitionAwardDate'] = null;
    }
    if (this.recognitionAwardExpiresDate != null) {
      json[r'recognitionAwardExpiresDate'] = _dateFormatter.format(this.recognitionAwardExpiresDate!.toUtc());
    } else {
      json[r'recognitionAwardExpiresDate'] = null;
    }
    if (this.recognitionDescription != null) {
      json[r'recognitionDescription'] = this.recognitionDescription;
    } else {
      json[r'recognitionDescription'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiStudentAcademicRecordRecognition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAcademicRecordRecognition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAcademicRecordRecognition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAcademicRecordRecognition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAcademicRecordRecognition(
        recognitionTypeDescriptor: mapValueOfType<String>(json, r'recognitionTypeDescriptor')!,
        achievementCategoryDescriptor: mapValueOfType<String>(json, r'achievementCategoryDescriptor'),
        achievementCategorySystem: mapValueOfType<String>(json, r'achievementCategorySystem'),
        achievementTitle: mapValueOfType<String>(json, r'achievementTitle'),
        criteria: mapValueOfType<String>(json, r'criteria'),
        criteriaURL: mapValueOfType<String>(json, r'criteriaURL'),
        evidenceStatement: mapValueOfType<String>(json, r'evidenceStatement'),
        imageURL: mapValueOfType<String>(json, r'imageURL'),
        issuerName: mapValueOfType<String>(json, r'issuerName'),
        issuerOriginURL: mapValueOfType<String>(json, r'issuerOriginURL'),
        recognitionAwardDate: mapDateTime(json, r'recognitionAwardDate', r''),
        recognitionAwardExpiresDate: mapDateTime(json, r'recognitionAwardExpiresDate', r''),
        recognitionDescription: mapValueOfType<String>(json, r'recognitionDescription'),
      );
    }
    return null;
  }

  static List<EdFiStudentAcademicRecordRecognition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAcademicRecordRecognition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAcademicRecordRecognition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAcademicRecordRecognition> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAcademicRecordRecognition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAcademicRecordRecognition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAcademicRecordRecognition-objects as value to a dart map
  static Map<String, List<EdFiStudentAcademicRecordRecognition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAcademicRecordRecognition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAcademicRecordRecognition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'recognitionTypeDescriptor',
  };
}

