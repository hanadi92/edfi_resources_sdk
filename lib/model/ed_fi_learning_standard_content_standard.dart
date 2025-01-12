//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiLearningStandardContentStandard {
  /// Returns a new [EdFiLearningStandardContentStandard] instance.
  EdFiLearningStandardContentStandard({
    this.publicationStatusDescriptor,
    this.beginDate,
    this.endDate,
    this.publicationDate,
    this.publicationYear,
    required this.title,
    this.uri,
    this.version,
    this.mandatingEducationOrganizationReference,
    this.authors = const [],
  });

  /// The publication status of the document (i.e., Adopted, Draft, Published, Deprecated, Unknown).
  String? publicationStatusDescriptor;

  /// The beginning of the period during which this learning standard document is intended for use.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? beginDate;

  /// The end of the period during which this learning standard document is intended for use.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  /// The date on which this content was first published.
  DateTime? publicationDate;

  /// The year at which this content was first published.
  int? publicationYear;

  /// The name of the content standard, for example Common Core.
  String title;

  /// An unambiguous reference to the standards using a network-resolvable URI.
  String? uri;

  /// The version identifier for the content.
  String? version;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiEducationOrganizationReference? mandatingEducationOrganizationReference;

  /// An unordered collection of learningStandardContentStandardAuthors. The person or organization chiefly responsible for the intellectual content of the standard.
  List<EdFiLearningStandardContentStandardAuthor> authors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiLearningStandardContentStandard &&
    other.publicationStatusDescriptor == publicationStatusDescriptor &&
    other.beginDate == beginDate &&
    other.endDate == endDate &&
    other.publicationDate == publicationDate &&
    other.publicationYear == publicationYear &&
    other.title == title &&
    other.uri == uri &&
    other.version == version &&
    other.mandatingEducationOrganizationReference == mandatingEducationOrganizationReference &&
    _deepEquality.equals(other.authors, authors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (publicationStatusDescriptor == null ? 0 : publicationStatusDescriptor!.hashCode) +
    (beginDate == null ? 0 : beginDate!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (publicationDate == null ? 0 : publicationDate!.hashCode) +
    (publicationYear == null ? 0 : publicationYear!.hashCode) +
    (title.hashCode) +
    (uri == null ? 0 : uri!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (mandatingEducationOrganizationReference == null ? 0 : mandatingEducationOrganizationReference!.hashCode) +
    (authors.hashCode);

  @override
  String toString() => 'EdFiLearningStandardContentStandard[publicationStatusDescriptor=$publicationStatusDescriptor, beginDate=$beginDate, endDate=$endDate, publicationDate=$publicationDate, publicationYear=$publicationYear, title=$title, uri=$uri, version=$version, mandatingEducationOrganizationReference=$mandatingEducationOrganizationReference, authors=$authors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.publicationStatusDescriptor != null) {
      json[r'publicationStatusDescriptor'] = this.publicationStatusDescriptor;
    } else {
      json[r'publicationStatusDescriptor'] = null;
    }
    if (this.beginDate != null) {
      json[r'beginDate'] = _dateFormatter.format(this.beginDate!.toUtc());
    } else {
      json[r'beginDate'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
    if (this.publicationDate != null) {
      json[r'publicationDate'] = _dateFormatter.format(this.publicationDate!.toUtc());
    } else {
      json[r'publicationDate'] = null;
    }
    if (this.publicationYear != null) {
      json[r'publicationYear'] = this.publicationYear;
    } else {
      json[r'publicationYear'] = null;
    }
      json[r'title'] = this.title;
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.mandatingEducationOrganizationReference != null) {
      json[r'mandatingEducationOrganizationReference'] = this.mandatingEducationOrganizationReference;
    } else {
      json[r'mandatingEducationOrganizationReference'] = null;
    }
      json[r'authors'] = this.authors;
    return json;
  }

  /// Returns a new [EdFiLearningStandardContentStandard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiLearningStandardContentStandard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiLearningStandardContentStandard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiLearningStandardContentStandard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiLearningStandardContentStandard(
        publicationStatusDescriptor: mapValueOfType<String>(json, r'publicationStatusDescriptor'),
        beginDate: mapDateTime(json, r'beginDate', r''),
        endDate: mapDateTime(json, r'endDate', r''),
        publicationDate: mapDateTime(json, r'publicationDate', r''),
        publicationYear: mapValueOfType<int>(json, r'publicationYear'),
        title: mapValueOfType<String>(json, r'title')!,
        uri: mapValueOfType<String>(json, r'uri'),
        version: mapValueOfType<String>(json, r'version'),
        mandatingEducationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'mandatingEducationOrganizationReference']),
        authors: EdFiLearningStandardContentStandardAuthor.listFromJson(json[r'authors']),
      );
    }
    return null;
  }

  static List<EdFiLearningStandardContentStandard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiLearningStandardContentStandard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiLearningStandardContentStandard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiLearningStandardContentStandard> mapFromJson(dynamic json) {
    final map = <String, EdFiLearningStandardContentStandard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiLearningStandardContentStandard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiLearningStandardContentStandard-objects as value to a dart map
  static Map<String, List<EdFiLearningStandardContentStandard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiLearningStandardContentStandard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiLearningStandardContentStandard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'title',
  };
}

