//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiSurveyResponse {
  /// Returns a new [EdFiSurveyResponse] instance.
  EdFiSurveyResponse({
    this.id,
    required this.surveyResponseIdentifier,
    this.contactReference,
    this.staffReference,
    this.studentReference,
    required this.surveyReference,
    this.electronicMailAddress,
    this.fullName,
    this.location,
    required this.responseDate,
    this.responseTime,
    this.surveyLevels = const [],
    this.etag,
    this.lastModifiedDate,
    this.ext,
  });

  /// 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// The identifier of the survey typically from the survey application.
  String surveyResponseIdentifier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiContactReference? contactReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiStaffReference? staffReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiStudentReference? studentReference;

  EdFiSurveyReference surveyReference;

  /// Email address of the respondent.
  String? electronicMailAddress;

  /// Full name of the respondent.
  String? fullName;

  /// Location of the respondent, often a city, district, or school.
  String? location;

  /// Date of the survey response.
  DateTime responseDate;

  /// The amount of time in seconds it took for the respondent to complete the survey.
  int? responseTime;

  /// An unordered collection of surveyResponseSurveyLevels. Provides information about the respondents of a survey and how they can be grouped together.
  List<EdFiSurveyResponseSurveyLevel> surveyLevels;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SurveyResponseExtensions? ext;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiSurveyResponse &&
    other.id == id &&
    other.surveyResponseIdentifier == surveyResponseIdentifier &&
    other.contactReference == contactReference &&
    other.staffReference == staffReference &&
    other.studentReference == studentReference &&
    other.surveyReference == surveyReference &&
    other.electronicMailAddress == electronicMailAddress &&
    other.fullName == fullName &&
    other.location == location &&
    other.responseDate == responseDate &&
    other.responseTime == responseTime &&
    _deepEquality.equals(other.surveyLevels, surveyLevels) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate &&
    other.ext == ext;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (surveyResponseIdentifier.hashCode) +
    (contactReference == null ? 0 : contactReference!.hashCode) +
    (staffReference == null ? 0 : staffReference!.hashCode) +
    (studentReference == null ? 0 : studentReference!.hashCode) +
    (surveyReference.hashCode) +
    (electronicMailAddress == null ? 0 : electronicMailAddress!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (responseDate.hashCode) +
    (responseTime == null ? 0 : responseTime!.hashCode) +
    (surveyLevels.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode) +
    (ext == null ? 0 : ext!.hashCode);

  @override
  String toString() => 'EdFiSurveyResponse[id=$id, surveyResponseIdentifier=$surveyResponseIdentifier, contactReference=$contactReference, staffReference=$staffReference, studentReference=$studentReference, surveyReference=$surveyReference, electronicMailAddress=$electronicMailAddress, fullName=$fullName, location=$location, responseDate=$responseDate, responseTime=$responseTime, surveyLevels=$surveyLevels, etag=$etag, lastModifiedDate=$lastModifiedDate, ext=$ext]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'surveyResponseIdentifier'] = this.surveyResponseIdentifier;
    if (this.contactReference != null) {
      json[r'contactReference'] = this.contactReference;
    } else {
      json[r'contactReference'] = null;
    }
    if (this.staffReference != null) {
      json[r'staffReference'] = this.staffReference;
    } else {
      json[r'staffReference'] = null;
    }
    if (this.studentReference != null) {
      json[r'studentReference'] = this.studentReference;
    } else {
      json[r'studentReference'] = null;
    }
      json[r'surveyReference'] = this.surveyReference;
    if (this.electronicMailAddress != null) {
      json[r'electronicMailAddress'] = this.electronicMailAddress;
    } else {
      json[r'electronicMailAddress'] = null;
    }
    if (this.fullName != null) {
      json[r'fullName'] = this.fullName;
    } else {
      json[r'fullName'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
      json[r'responseDate'] = _dateFormatter.format(this.responseDate.toUtc());
    if (this.responseTime != null) {
      json[r'responseTime'] = this.responseTime;
    } else {
      json[r'responseTime'] = null;
    }
      json[r'surveyLevels'] = this.surveyLevels;
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
    if (this.ext != null) {
      json[r'_ext'] = this.ext;
    } else {
      json[r'_ext'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiSurveyResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiSurveyResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiSurveyResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiSurveyResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiSurveyResponse(
        id: mapValueOfType<String>(json, r'id'),
        surveyResponseIdentifier: mapValueOfType<String>(json, r'surveyResponseIdentifier')!,
        contactReference: EdFiContactReference.fromJson(json[r'contactReference']),
        staffReference: EdFiStaffReference.fromJson(json[r'staffReference']),
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference']),
        surveyReference: EdFiSurveyReference.fromJson(json[r'surveyReference'])!,
        electronicMailAddress: mapValueOfType<String>(json, r'electronicMailAddress'),
        fullName: mapValueOfType<String>(json, r'fullName'),
        location: mapValueOfType<String>(json, r'location'),
        responseDate: mapDateTime(json, r'responseDate', r'')!,
        responseTime: mapValueOfType<int>(json, r'responseTime'),
        surveyLevels: EdFiSurveyResponseSurveyLevel.listFromJson(json[r'surveyLevels']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
        ext: SurveyResponseExtensions.fromJson(json[r'_ext']),
      );
    }
    return null;
  }

  static List<EdFiSurveyResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiSurveyResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiSurveyResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiSurveyResponse> mapFromJson(dynamic json) {
    final map = <String, EdFiSurveyResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiSurveyResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiSurveyResponse-objects as value to a dart map
  static Map<String, List<EdFiSurveyResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiSurveyResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiSurveyResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'surveyResponseIdentifier',
    'surveyReference',
    'responseDate',
  };
}

