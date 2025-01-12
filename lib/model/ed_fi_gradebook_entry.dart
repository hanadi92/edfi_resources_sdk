//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiGradebookEntry {
  /// Returns a new [EdFiGradebookEntry] instance.
  EdFiGradebookEntry({
    this.id,
    required this.gradebookEntryIdentifier,
    required this.namespace,
    this.gradingPeriodReference,
    this.sectionReference,
    required this.dateAssigned,
    this.description,
    this.dueDate,
    this.dueTime,
    this.gradebookEntryTypeDescriptor,
    this.learningStandards = const [],
    this.maxPoints,
    required this.sourceSectionIdentifier,
    required this.title,
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

  /// A unique number or alphanumeric code assigned to a gradebook entry by the source system.
  String gradebookEntryIdentifier;

  /// Namespace URI for the source of the gradebook entry.
  String namespace;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiGradingPeriodReference? gradingPeriodReference;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiSectionReference? sectionReference;

  /// The date the assignment, homework, or assessment was assigned or executed.
  DateTime dateAssigned;

  /// A description of the assignment, homework, or classroom assessment.
  String? description;

  /// The date the assignment, homework, or assessment is due.
  DateTime? dueDate;

  /// The time the assignment, homework, or assessment is due.
  String? dueTime;

  /// The type of the gradebook entry.
  String? gradebookEntryTypeDescriptor;

  /// An unordered collection of gradebookEntryLearningStandards. LearningStandard(s) associated with the gradebook entry.
  List<EdFiGradebookEntryLearningStandard> learningStandards;

  /// The maximum number of points  that can be earned for the submission.
  ///
  /// Minimum value: -9999999.99
  /// Maximum value: 9999999.99
  double? maxPoints;

  /// The local identifier assigned to a section.
  String sourceSectionIdentifier;

  /// The name or title of the activity to be recorded in the gradebook entry.
  String title;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiGradebookEntry &&
    other.id == id &&
    other.gradebookEntryIdentifier == gradebookEntryIdentifier &&
    other.namespace == namespace &&
    other.gradingPeriodReference == gradingPeriodReference &&
    other.sectionReference == sectionReference &&
    other.dateAssigned == dateAssigned &&
    other.description == description &&
    other.dueDate == dueDate &&
    other.dueTime == dueTime &&
    other.gradebookEntryTypeDescriptor == gradebookEntryTypeDescriptor &&
    _deepEquality.equals(other.learningStandards, learningStandards) &&
    other.maxPoints == maxPoints &&
    other.sourceSectionIdentifier == sourceSectionIdentifier &&
    other.title == title &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (gradebookEntryIdentifier.hashCode) +
    (namespace.hashCode) +
    (gradingPeriodReference == null ? 0 : gradingPeriodReference!.hashCode) +
    (sectionReference == null ? 0 : sectionReference!.hashCode) +
    (dateAssigned.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (dueDate == null ? 0 : dueDate!.hashCode) +
    (dueTime == null ? 0 : dueTime!.hashCode) +
    (gradebookEntryTypeDescriptor == null ? 0 : gradebookEntryTypeDescriptor!.hashCode) +
    (learningStandards.hashCode) +
    (maxPoints == null ? 0 : maxPoints!.hashCode) +
    (sourceSectionIdentifier.hashCode) +
    (title.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiGradebookEntry[id=$id, gradebookEntryIdentifier=$gradebookEntryIdentifier, namespace=$namespace, gradingPeriodReference=$gradingPeriodReference, sectionReference=$sectionReference, dateAssigned=$dateAssigned, description=$description, dueDate=$dueDate, dueTime=$dueTime, gradebookEntryTypeDescriptor=$gradebookEntryTypeDescriptor, learningStandards=$learningStandards, maxPoints=$maxPoints, sourceSectionIdentifier=$sourceSectionIdentifier, title=$title, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'gradebookEntryIdentifier'] = this.gradebookEntryIdentifier;
      json[r'namespace'] = this.namespace;
    if (this.gradingPeriodReference != null) {
      json[r'gradingPeriodReference'] = this.gradingPeriodReference;
    } else {
      json[r'gradingPeriodReference'] = null;
    }
    if (this.sectionReference != null) {
      json[r'sectionReference'] = this.sectionReference;
    } else {
      json[r'sectionReference'] = null;
    }
      json[r'dateAssigned'] = _dateFormatter.format(this.dateAssigned.toUtc());
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.dueDate != null) {
      json[r'dueDate'] = _dateFormatter.format(this.dueDate!.toUtc());
    } else {
      json[r'dueDate'] = null;
    }
    if (this.dueTime != null) {
      json[r'dueTime'] = this.dueTime;
    } else {
      json[r'dueTime'] = null;
    }
    if (this.gradebookEntryTypeDescriptor != null) {
      json[r'gradebookEntryTypeDescriptor'] = this.gradebookEntryTypeDescriptor;
    } else {
      json[r'gradebookEntryTypeDescriptor'] = null;
    }
      json[r'learningStandards'] = this.learningStandards;
    if (this.maxPoints != null) {
      json[r'maxPoints'] = this.maxPoints;
    } else {
      json[r'maxPoints'] = null;
    }
      json[r'sourceSectionIdentifier'] = this.sourceSectionIdentifier;
      json[r'title'] = this.title;
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

  /// Returns a new [EdFiGradebookEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiGradebookEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiGradebookEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiGradebookEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiGradebookEntry(
        id: mapValueOfType<String>(json, r'id'),
        gradebookEntryIdentifier: mapValueOfType<String>(json, r'gradebookEntryIdentifier')!,
        namespace: mapValueOfType<String>(json, r'namespace')!,
        gradingPeriodReference: EdFiGradingPeriodReference.fromJson(json[r'gradingPeriodReference']),
        sectionReference: EdFiSectionReference.fromJson(json[r'sectionReference']),
        dateAssigned: mapDateTime(json, r'dateAssigned', r'')!,
        description: mapValueOfType<String>(json, r'description'),
        dueDate: mapDateTime(json, r'dueDate', r''),
        dueTime: mapValueOfType<String>(json, r'dueTime'),
        gradebookEntryTypeDescriptor: mapValueOfType<String>(json, r'gradebookEntryTypeDescriptor'),
        learningStandards: EdFiGradebookEntryLearningStandard.listFromJson(json[r'learningStandards']),
        maxPoints: mapValueOfType<double>(json, r'maxPoints'),
        sourceSectionIdentifier: mapValueOfType<String>(json, r'sourceSectionIdentifier')!,
        title: mapValueOfType<String>(json, r'title')!,
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiGradebookEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiGradebookEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiGradebookEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiGradebookEntry> mapFromJson(dynamic json) {
    final map = <String, EdFiGradebookEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiGradebookEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiGradebookEntry-objects as value to a dart map
  static Map<String, List<EdFiGradebookEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiGradebookEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiGradebookEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'gradebookEntryIdentifier',
    'namespace',
    'dateAssigned',
    'sourceSectionIdentifier',
    'title',
  };
}

