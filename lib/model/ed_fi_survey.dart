//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiSurvey {
  /// Returns a new [EdFiSurvey] instance.
  EdFiSurvey({
    this.id,
    required this.namespace,
    required this.surveyIdentifier,
    this.educationOrganizationReference,
    required this.schoolYearTypeReference,
    this.sessionReference,
    this.numberAdministered,
    this.surveyCategoryDescriptor,
    required this.surveyTitle,
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

  /// Namespace for the survey.
  String namespace;

  /// The unique survey identifier from the survey tool.
  String surveyIdentifier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiEducationOrganizationReference? educationOrganizationReference;

  EdFiSchoolYearTypeReference schoolYearTypeReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiSessionReference? sessionReference;

  /// Number of persons to whom this survey was administered.
  int? numberAdministered;

  /// The category or type of survey.
  String? surveyCategoryDescriptor;

  /// The title of the survey.
  String surveyTitle;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiSurvey &&
    other.id == id &&
    other.namespace == namespace &&
    other.surveyIdentifier == surveyIdentifier &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.schoolYearTypeReference == schoolYearTypeReference &&
    other.sessionReference == sessionReference &&
    other.numberAdministered == numberAdministered &&
    other.surveyCategoryDescriptor == surveyCategoryDescriptor &&
    other.surveyTitle == surveyTitle &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (namespace.hashCode) +
    (surveyIdentifier.hashCode) +
    (educationOrganizationReference == null ? 0 : educationOrganizationReference!.hashCode) +
    (schoolYearTypeReference.hashCode) +
    (sessionReference == null ? 0 : sessionReference!.hashCode) +
    (numberAdministered == null ? 0 : numberAdministered!.hashCode) +
    (surveyCategoryDescriptor == null ? 0 : surveyCategoryDescriptor!.hashCode) +
    (surveyTitle.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiSurvey[id=$id, namespace=$namespace, surveyIdentifier=$surveyIdentifier, educationOrganizationReference=$educationOrganizationReference, schoolYearTypeReference=$schoolYearTypeReference, sessionReference=$sessionReference, numberAdministered=$numberAdministered, surveyCategoryDescriptor=$surveyCategoryDescriptor, surveyTitle=$surveyTitle, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'namespace'] = this.namespace;
      json[r'surveyIdentifier'] = this.surveyIdentifier;
    if (this.educationOrganizationReference != null) {
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
    } else {
      json[r'educationOrganizationReference'] = null;
    }
      json[r'schoolYearTypeReference'] = this.schoolYearTypeReference;
    if (this.sessionReference != null) {
      json[r'sessionReference'] = this.sessionReference;
    } else {
      json[r'sessionReference'] = null;
    }
    if (this.numberAdministered != null) {
      json[r'numberAdministered'] = this.numberAdministered;
    } else {
      json[r'numberAdministered'] = null;
    }
    if (this.surveyCategoryDescriptor != null) {
      json[r'surveyCategoryDescriptor'] = this.surveyCategoryDescriptor;
    } else {
      json[r'surveyCategoryDescriptor'] = null;
    }
      json[r'surveyTitle'] = this.surveyTitle;
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

  /// Returns a new [EdFiSurvey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiSurvey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiSurvey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiSurvey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiSurvey(
        id: mapValueOfType<String>(json, r'id'),
        namespace: mapValueOfType<String>(json, r'namespace')!,
        surveyIdentifier: mapValueOfType<String>(json, r'surveyIdentifier')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference']),
        schoolYearTypeReference: EdFiSchoolYearTypeReference.fromJson(json[r'schoolYearTypeReference'])!,
        sessionReference: EdFiSessionReference.fromJson(json[r'sessionReference']),
        numberAdministered: mapValueOfType<int>(json, r'numberAdministered'),
        surveyCategoryDescriptor: mapValueOfType<String>(json, r'surveyCategoryDescriptor'),
        surveyTitle: mapValueOfType<String>(json, r'surveyTitle')!,
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiSurvey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiSurvey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiSurvey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiSurvey> mapFromJson(dynamic json) {
    final map = <String, EdFiSurvey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiSurvey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiSurvey-objects as value to a dart map
  static Map<String, List<EdFiSurvey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiSurvey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiSurvey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'namespace',
    'surveyIdentifier',
    'schoolYearTypeReference',
    'surveyTitle',
  };
}

