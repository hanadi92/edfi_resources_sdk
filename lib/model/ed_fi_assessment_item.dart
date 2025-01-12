//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiAssessmentItem {
  /// Returns a new [EdFiAssessmentItem] instance.
  EdFiAssessmentItem({
    this.id,
    required this.identificationCode,
    required this.assessmentReference,
    this.assessmentItemCategoryDescriptor,
    this.assessmentItemURI,
    this.expectedTimeAssessed,
    this.itemText,
    this.learningStandards = const [],
    this.maxRawScore,
    this.nomenclature,
    this.possibleResponses = const [],
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

  /// A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, state, or other agency or entity.
  String identificationCode;

  EdFiAssessmentReference assessmentReference;

  /// Category or type of the assessment item.
  String? assessmentItemCategoryDescriptor;

  /// The URI (typical a URL) pointing to the entry in an assessment item bank, which describes this content item.
  String? assessmentItemURI;

  /// The duration allotted for the assessment item expressed in minutes.
  String? expectedTimeAssessed;

  /// The text of the item.
  String? itemText;

  /// An unordered collection of assessmentItemLearningStandards. Learning standard tested by this item.
  List<EdFiAssessmentItemLearningStandard> learningStandards;

  /// The maximum raw score achievable across all assessment items that are correct and scored at the maximum.
  ///
  /// Minimum value: -9999999999.99999
  /// Maximum value: 9999999999.99999
  double? maxRawScore;

  /// Reflects the specific nomenclature used for assessment item.
  String? nomenclature;

  /// An unordered collection of assessmentItemPossibleResponses. A possible response to an assessment item.
  List<EdFiAssessmentItemPossibleResponse> possibleResponses;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiAssessmentItem &&
    other.id == id &&
    other.identificationCode == identificationCode &&
    other.assessmentReference == assessmentReference &&
    other.assessmentItemCategoryDescriptor == assessmentItemCategoryDescriptor &&
    other.assessmentItemURI == assessmentItemURI &&
    other.expectedTimeAssessed == expectedTimeAssessed &&
    other.itemText == itemText &&
    _deepEquality.equals(other.learningStandards, learningStandards) &&
    other.maxRawScore == maxRawScore &&
    other.nomenclature == nomenclature &&
    _deepEquality.equals(other.possibleResponses, possibleResponses) &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (identificationCode.hashCode) +
    (assessmentReference.hashCode) +
    (assessmentItemCategoryDescriptor == null ? 0 : assessmentItemCategoryDescriptor!.hashCode) +
    (assessmentItemURI == null ? 0 : assessmentItemURI!.hashCode) +
    (expectedTimeAssessed == null ? 0 : expectedTimeAssessed!.hashCode) +
    (itemText == null ? 0 : itemText!.hashCode) +
    (learningStandards.hashCode) +
    (maxRawScore == null ? 0 : maxRawScore!.hashCode) +
    (nomenclature == null ? 0 : nomenclature!.hashCode) +
    (possibleResponses.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiAssessmentItem[id=$id, identificationCode=$identificationCode, assessmentReference=$assessmentReference, assessmentItemCategoryDescriptor=$assessmentItemCategoryDescriptor, assessmentItemURI=$assessmentItemURI, expectedTimeAssessed=$expectedTimeAssessed, itemText=$itemText, learningStandards=$learningStandards, maxRawScore=$maxRawScore, nomenclature=$nomenclature, possibleResponses=$possibleResponses, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'identificationCode'] = this.identificationCode;
      json[r'assessmentReference'] = this.assessmentReference;
    if (this.assessmentItemCategoryDescriptor != null) {
      json[r'assessmentItemCategoryDescriptor'] = this.assessmentItemCategoryDescriptor;
    } else {
      json[r'assessmentItemCategoryDescriptor'] = null;
    }
    if (this.assessmentItemURI != null) {
      json[r'assessmentItemURI'] = this.assessmentItemURI;
    } else {
      json[r'assessmentItemURI'] = null;
    }
    if (this.expectedTimeAssessed != null) {
      json[r'expectedTimeAssessed'] = this.expectedTimeAssessed;
    } else {
      json[r'expectedTimeAssessed'] = null;
    }
    if (this.itemText != null) {
      json[r'itemText'] = this.itemText;
    } else {
      json[r'itemText'] = null;
    }
      json[r'learningStandards'] = this.learningStandards;
    if (this.maxRawScore != null) {
      json[r'maxRawScore'] = this.maxRawScore;
    } else {
      json[r'maxRawScore'] = null;
    }
    if (this.nomenclature != null) {
      json[r'nomenclature'] = this.nomenclature;
    } else {
      json[r'nomenclature'] = null;
    }
      json[r'possibleResponses'] = this.possibleResponses;
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

  /// Returns a new [EdFiAssessmentItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiAssessmentItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiAssessmentItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiAssessmentItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiAssessmentItem(
        id: mapValueOfType<String>(json, r'id'),
        identificationCode: mapValueOfType<String>(json, r'identificationCode')!,
        assessmentReference: EdFiAssessmentReference.fromJson(json[r'assessmentReference'])!,
        assessmentItemCategoryDescriptor: mapValueOfType<String>(json, r'assessmentItemCategoryDescriptor'),
        assessmentItemURI: mapValueOfType<String>(json, r'assessmentItemURI'),
        expectedTimeAssessed: mapValueOfType<String>(json, r'expectedTimeAssessed'),
        itemText: mapValueOfType<String>(json, r'itemText'),
        learningStandards: EdFiAssessmentItemLearningStandard.listFromJson(json[r'learningStandards']),
        maxRawScore: mapValueOfType<double>(json, r'maxRawScore'),
        nomenclature: mapValueOfType<String>(json, r'nomenclature'),
        possibleResponses: EdFiAssessmentItemPossibleResponse.listFromJson(json[r'possibleResponses']),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiAssessmentItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiAssessmentItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiAssessmentItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiAssessmentItem> mapFromJson(dynamic json) {
    final map = <String, EdFiAssessmentItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiAssessmentItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiAssessmentItem-objects as value to a dart map
  static Map<String, List<EdFiAssessmentItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiAssessmentItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiAssessmentItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'identificationCode',
    'assessmentReference',
  };
}

