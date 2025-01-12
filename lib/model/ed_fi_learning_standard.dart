//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiLearningStandard {
  /// Returns a new [EdFiLearningStandard] instance.
  EdFiLearningStandard({
    this.id,
    this.academicSubjects = const [],
    this.gradeLevels = const [],
    required this.learningStandardId,
    this.parentLearningStandardReference,
    required this.contentStandard,
    this.courseTitle,
    required this.description,
    this.identificationCodes = const [],
    this.learningStandardCategoryDescriptor,
    this.learningStandardItemCode,
    this.learningStandardScopeDescriptor,
    required this.namespace,
    this.successCriteria,
    this.uri,
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

  /// An unordered collection of learningStandardAcademicSubjects. Subject area for the learning standard.
  List<EdFiLearningStandardAcademicSubject> academicSubjects;

  /// An unordered collection of learningStandardGradeLevels. The grade levels for the specific learning standard.
  List<EdFiLearningStandardGradeLevel> gradeLevels;

  /// The identifier for the specific learning standard (e.g., 111.15.3.1.A).
  String learningStandardId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiLearningStandardReference? parentLearningStandardReference;

  EdFiLearningStandardContentStandard contentStandard;

  /// The official course title with which this learning standard is associated.
  String? courseTitle;

  /// The text of the statement. The textual content that either describes a specific competency such as \"Apply the Pythagorean Theorem to determine unknown side lengths in right triangles in real-world and mathematical problems in two and three dimensions.\" or describes a less granular group of competencies within the taxonomy of the standards document, e.g. \"Understand and apply the Pythagorean Theorem,\" or \"Geometry\".
  String description;

  /// An unordered collection of learningStandardIdentificationCodes. A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a learning standard.
  List<EdFiLearningStandardIdentificationCode> identificationCodes;

  /// An additional classification of the type of a specific learning standard.
  String? learningStandardCategoryDescriptor;

  /// A code designated by the promulgating body to identify the statement, e.g. 1.N.3 (usually not globally unique).
  String? learningStandardItemCode;

  /// Signals the scope of usage the standard. Does not necessarily relate the standard to the governing body.
  String? learningStandardScopeDescriptor;

  /// The namespace of the organization or entity who governs the standard. It is recommended the namespaces observe a URI format and begin with a domain name under the governing organization or entity control.
  String namespace;

  /// One or more statements that describes the criteria used by teachers and students to check for attainment of a learning standard. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the learning standard.
  String? successCriteria;

  /// An unambiguous reference to the statement using a network-resolvable URI.
  String? uri;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiLearningStandard &&
    other.id == id &&
    _deepEquality.equals(other.academicSubjects, academicSubjects) &&
    _deepEquality.equals(other.gradeLevels, gradeLevels) &&
    other.learningStandardId == learningStandardId &&
    other.parentLearningStandardReference == parentLearningStandardReference &&
    other.contentStandard == contentStandard &&
    other.courseTitle == courseTitle &&
    other.description == description &&
    _deepEquality.equals(other.identificationCodes, identificationCodes) &&
    other.learningStandardCategoryDescriptor == learningStandardCategoryDescriptor &&
    other.learningStandardItemCode == learningStandardItemCode &&
    other.learningStandardScopeDescriptor == learningStandardScopeDescriptor &&
    other.namespace == namespace &&
    other.successCriteria == successCriteria &&
    other.uri == uri &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (academicSubjects.hashCode) +
    (gradeLevels.hashCode) +
    (learningStandardId.hashCode) +
    (parentLearningStandardReference == null ? 0 : parentLearningStandardReference!.hashCode) +
    (contentStandard.hashCode) +
    (courseTitle == null ? 0 : courseTitle!.hashCode) +
    (description.hashCode) +
    (identificationCodes.hashCode) +
    (learningStandardCategoryDescriptor == null ? 0 : learningStandardCategoryDescriptor!.hashCode) +
    (learningStandardItemCode == null ? 0 : learningStandardItemCode!.hashCode) +
    (learningStandardScopeDescriptor == null ? 0 : learningStandardScopeDescriptor!.hashCode) +
    (namespace.hashCode) +
    (successCriteria == null ? 0 : successCriteria!.hashCode) +
    (uri == null ? 0 : uri!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiLearningStandard[id=$id, academicSubjects=$academicSubjects, gradeLevels=$gradeLevels, learningStandardId=$learningStandardId, parentLearningStandardReference=$parentLearningStandardReference, contentStandard=$contentStandard, courseTitle=$courseTitle, description=$description, identificationCodes=$identificationCodes, learningStandardCategoryDescriptor=$learningStandardCategoryDescriptor, learningStandardItemCode=$learningStandardItemCode, learningStandardScopeDescriptor=$learningStandardScopeDescriptor, namespace=$namespace, successCriteria=$successCriteria, uri=$uri, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'academicSubjects'] = this.academicSubjects;
      json[r'gradeLevels'] = this.gradeLevels;
      json[r'learningStandardId'] = this.learningStandardId;
    if (this.parentLearningStandardReference != null) {
      json[r'parentLearningStandardReference'] = this.parentLearningStandardReference;
    } else {
      json[r'parentLearningStandardReference'] = null;
    }
      json[r'contentStandard'] = this.contentStandard;
    if (this.courseTitle != null) {
      json[r'courseTitle'] = this.courseTitle;
    } else {
      json[r'courseTitle'] = null;
    }
      json[r'description'] = this.description;
      json[r'identificationCodes'] = this.identificationCodes;
    if (this.learningStandardCategoryDescriptor != null) {
      json[r'learningStandardCategoryDescriptor'] = this.learningStandardCategoryDescriptor;
    } else {
      json[r'learningStandardCategoryDescriptor'] = null;
    }
    if (this.learningStandardItemCode != null) {
      json[r'learningStandardItemCode'] = this.learningStandardItemCode;
    } else {
      json[r'learningStandardItemCode'] = null;
    }
    if (this.learningStandardScopeDescriptor != null) {
      json[r'learningStandardScopeDescriptor'] = this.learningStandardScopeDescriptor;
    } else {
      json[r'learningStandardScopeDescriptor'] = null;
    }
      json[r'namespace'] = this.namespace;
    if (this.successCriteria != null) {
      json[r'successCriteria'] = this.successCriteria;
    } else {
      json[r'successCriteria'] = null;
    }
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
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

  /// Returns a new [EdFiLearningStandard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiLearningStandard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiLearningStandard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiLearningStandard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiLearningStandard(
        id: mapValueOfType<String>(json, r'id'),
        academicSubjects: EdFiLearningStandardAcademicSubject.listFromJson(json[r'academicSubjects']),
        gradeLevels: EdFiLearningStandardGradeLevel.listFromJson(json[r'gradeLevels']),
        learningStandardId: mapValueOfType<String>(json, r'learningStandardId')!,
        parentLearningStandardReference: EdFiLearningStandardReference.fromJson(json[r'parentLearningStandardReference']),
        contentStandard: EdFiLearningStandardContentStandard.fromJson(json[r'contentStandard'])!,
        courseTitle: mapValueOfType<String>(json, r'courseTitle'),
        description: mapValueOfType<String>(json, r'description')!,
        identificationCodes: EdFiLearningStandardIdentificationCode.listFromJson(json[r'identificationCodes']),
        learningStandardCategoryDescriptor: mapValueOfType<String>(json, r'learningStandardCategoryDescriptor'),
        learningStandardItemCode: mapValueOfType<String>(json, r'learningStandardItemCode'),
        learningStandardScopeDescriptor: mapValueOfType<String>(json, r'learningStandardScopeDescriptor'),
        namespace: mapValueOfType<String>(json, r'namespace')!,
        successCriteria: mapValueOfType<String>(json, r'successCriteria'),
        uri: mapValueOfType<String>(json, r'uri'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiLearningStandard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiLearningStandard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiLearningStandard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiLearningStandard> mapFromJson(dynamic json) {
    final map = <String, EdFiLearningStandard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiLearningStandard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiLearningStandard-objects as value to a dart map
  static Map<String, List<EdFiLearningStandard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiLearningStandard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiLearningStandard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'academicSubjects',
    'gradeLevels',
    'learningStandardId',
    'contentStandard',
    'description',
    'namespace',
  };
}

