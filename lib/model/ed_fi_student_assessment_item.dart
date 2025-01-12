//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiStudentAssessmentItem {
  /// Returns a new [EdFiStudentAssessmentItem] instance.
  EdFiStudentAssessmentItem({
    required this.assessmentItemResultDescriptor,
    this.responseIndicatorDescriptor,
    this.assessmentResponse,
    this.descriptiveFeedback,
    this.itemNumber,
    this.rawScoreResult,
    this.timeAssessed,
    required this.assessmentItemReference,
  });

  /// The analyzed result of a student's response to an assessment item.
  String assessmentItemResultDescriptor;

  /// Indicator of the response.
  String? responseIndicatorDescriptor;

  /// A student's response to a stimulus on a test.
  String? assessmentResponse;

  /// The formative descriptive feedback that was given to a student in response to the results from a scored/evaluated assessment item.
  String? descriptiveFeedback;

  /// The test question number for this student's test item.
  int? itemNumber;

  /// A meaningful raw score of the performance of a student on an assessment item.
  ///
  /// Minimum value: -9999999999.99999
  /// Maximum value: 9999999999.99999
  double? rawScoreResult;

  /// The overall time that a student actually spent on the assessment item expressed in minutes.
  String? timeAssessed;

  EdFiAssessmentItemReference assessmentItemReference;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiStudentAssessmentItem &&
    other.assessmentItemResultDescriptor == assessmentItemResultDescriptor &&
    other.responseIndicatorDescriptor == responseIndicatorDescriptor &&
    other.assessmentResponse == assessmentResponse &&
    other.descriptiveFeedback == descriptiveFeedback &&
    other.itemNumber == itemNumber &&
    other.rawScoreResult == rawScoreResult &&
    other.timeAssessed == timeAssessed &&
    other.assessmentItemReference == assessmentItemReference;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assessmentItemResultDescriptor.hashCode) +
    (responseIndicatorDescriptor == null ? 0 : responseIndicatorDescriptor!.hashCode) +
    (assessmentResponse == null ? 0 : assessmentResponse!.hashCode) +
    (descriptiveFeedback == null ? 0 : descriptiveFeedback!.hashCode) +
    (itemNumber == null ? 0 : itemNumber!.hashCode) +
    (rawScoreResult == null ? 0 : rawScoreResult!.hashCode) +
    (timeAssessed == null ? 0 : timeAssessed!.hashCode) +
    (assessmentItemReference.hashCode);

  @override
  String toString() => 'EdFiStudentAssessmentItem[assessmentItemResultDescriptor=$assessmentItemResultDescriptor, responseIndicatorDescriptor=$responseIndicatorDescriptor, assessmentResponse=$assessmentResponse, descriptiveFeedback=$descriptiveFeedback, itemNumber=$itemNumber, rawScoreResult=$rawScoreResult, timeAssessed=$timeAssessed, assessmentItemReference=$assessmentItemReference]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assessmentItemResultDescriptor'] = this.assessmentItemResultDescriptor;
    if (this.responseIndicatorDescriptor != null) {
      json[r'responseIndicatorDescriptor'] = this.responseIndicatorDescriptor;
    } else {
      json[r'responseIndicatorDescriptor'] = null;
    }
    if (this.assessmentResponse != null) {
      json[r'assessmentResponse'] = this.assessmentResponse;
    } else {
      json[r'assessmentResponse'] = null;
    }
    if (this.descriptiveFeedback != null) {
      json[r'descriptiveFeedback'] = this.descriptiveFeedback;
    } else {
      json[r'descriptiveFeedback'] = null;
    }
    if (this.itemNumber != null) {
      json[r'itemNumber'] = this.itemNumber;
    } else {
      json[r'itemNumber'] = null;
    }
    if (this.rawScoreResult != null) {
      json[r'rawScoreResult'] = this.rawScoreResult;
    } else {
      json[r'rawScoreResult'] = null;
    }
    if (this.timeAssessed != null) {
      json[r'timeAssessed'] = this.timeAssessed;
    } else {
      json[r'timeAssessed'] = null;
    }
      json[r'assessmentItemReference'] = this.assessmentItemReference;
    return json;
  }

  /// Returns a new [EdFiStudentAssessmentItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiStudentAssessmentItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiStudentAssessmentItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiStudentAssessmentItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiStudentAssessmentItem(
        assessmentItemResultDescriptor: mapValueOfType<String>(json, r'assessmentItemResultDescriptor')!,
        responseIndicatorDescriptor: mapValueOfType<String>(json, r'responseIndicatorDescriptor'),
        assessmentResponse: mapValueOfType<String>(json, r'assessmentResponse'),
        descriptiveFeedback: mapValueOfType<String>(json, r'descriptiveFeedback'),
        itemNumber: mapValueOfType<int>(json, r'itemNumber'),
        rawScoreResult: mapValueOfType<double>(json, r'rawScoreResult'),
        timeAssessed: mapValueOfType<String>(json, r'timeAssessed'),
        assessmentItemReference: EdFiAssessmentItemReference.fromJson(json[r'assessmentItemReference'])!,
      );
    }
    return null;
  }

  static List<EdFiStudentAssessmentItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiStudentAssessmentItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiStudentAssessmentItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiStudentAssessmentItem> mapFromJson(dynamic json) {
    final map = <String, EdFiStudentAssessmentItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiStudentAssessmentItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiStudentAssessmentItem-objects as value to a dart map
  static Map<String, List<EdFiStudentAssessmentItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiStudentAssessmentItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiStudentAssessmentItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assessmentItemResultDescriptor',
    'assessmentItemReference',
  };
}

