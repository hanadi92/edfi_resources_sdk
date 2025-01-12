//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiEducationContent {
  /// Returns a new [EdFiEducationContent] instance.
  EdFiEducationContent({
    this.id,
    required this.contentIdentifier,
    this.learningStandardReference,
    this.additionalAuthorsIndicator,
    this.appropriateGradeLevels = const [],
    this.appropriateSexes = const [],
    this.authors = const [],
    this.contentClassDescriptor,
    this.cost,
    this.costRateDescriptor,
    this.derivativeSourceEducationContents = const [],
    this.derivativeSourceLearningResourceMetadataURIs = const [],
    this.derivativeSourceURIs = const [],
    this.description,
    this.interactivityStyleDescriptor,
    this.languages = const [],
    this.learningResourceMetadataURI,
    required this.namespace,
    this.publicationDate,
    this.publicationYear,
    this.publisher,
    this.shortDescription,
    this.timeRequired,
    this.useRightsURL,
    this.version,
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

  /// A unique identifier for the education content.
  String contentIdentifier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdFiLearningStandardReference? learningStandardReference;

  /// Indicates whether there are additional un-named authors. In a research report, this is often marked by the abbreviation \"et al\".
  bool? additionalAuthorsIndicator;

  /// An unordered collection of educationContentAppropriateGradeLevels. Grade levels for which this education content is applicable. If omitted, considered generally applicable.
  List<EdFiEducationContentAppropriateGradeLevel> appropriateGradeLevels;

  /// An unordered collection of educationContentAppropriateSexes. Sexes for which this education content is applicable. If omitted, considered generally applicable.
  List<EdFiEducationContentAppropriateSex> appropriateSexes;

  /// An unordered collection of educationContentAuthors. The individual credited with the creation of the resource.
  List<EdFiEducationContentAuthor> authors;

  /// The predominate type or kind characterizing the learning resource.
  String? contentClassDescriptor;

  /// An amount that has to be paid or spent to buy or obtain the education content.
  ///
  /// Minimum value: -922337203685477.6
  /// Maximum value: 922337203685477.6
  double? cost;

  /// The rate by which the cost applies.
  String? costRateDescriptor;

  /// An unordered collection of educationContentDerivativeSourceEducationContents. Relates the education content source to the education content.
  List<EdFiEducationContentDerivativeSourceEducationContent> derivativeSourceEducationContents;

  /// An unordered collection of educationContentDerivativeSourceLearningResourceMetadataURIs. The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.
  List<EdFiEducationContentDerivativeSourceLearningResourceMetadataURI> derivativeSourceLearningResourceMetadataURIs;

  /// An unordered collection of educationContentDerivativeSourceURIs. The URI (typical a URL) pointing to an education content item.
  List<EdFiEducationContentDerivativeSourceURI> derivativeSourceURIs;

  /// An extended written representation of the education content.
  String? description;

  /// The predominate mode of learning supported by the learning resource. Acceptable values are active, expositive, or mixed.
  String? interactivityStyleDescriptor;

  /// An unordered collection of educationContentLanguages. An indication of the languages in which the Education Content is designed.
  List<EdFiEducationContentLanguage> languages;

  /// The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.
  String? learningResourceMetadataURI;

  /// Namespace for the education content.
  String namespace;

  /// The date on which this content was first published.
  DateTime? publicationDate;

  /// The year at which this content was first published.
  int? publicationYear;

  /// The organization credited with publishing the resource.
  String? publisher;

  /// A short description or name of the entity.
  String? shortDescription;

  /// Approximate or typical time that it takes to work with or through this learning resource for the typical intended target audience expressed in minutes.
  String? timeRequired;

  /// The URL where the owner specifies permissions for using the resource.
  String? useRightsURL;

  /// The version identifier for the content.
  String? version;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiEducationContent &&
    other.id == id &&
    other.contentIdentifier == contentIdentifier &&
    other.learningStandardReference == learningStandardReference &&
    other.additionalAuthorsIndicator == additionalAuthorsIndicator &&
    _deepEquality.equals(other.appropriateGradeLevels, appropriateGradeLevels) &&
    _deepEquality.equals(other.appropriateSexes, appropriateSexes) &&
    _deepEquality.equals(other.authors, authors) &&
    other.contentClassDescriptor == contentClassDescriptor &&
    other.cost == cost &&
    other.costRateDescriptor == costRateDescriptor &&
    _deepEquality.equals(other.derivativeSourceEducationContents, derivativeSourceEducationContents) &&
    _deepEquality.equals(other.derivativeSourceLearningResourceMetadataURIs, derivativeSourceLearningResourceMetadataURIs) &&
    _deepEquality.equals(other.derivativeSourceURIs, derivativeSourceURIs) &&
    other.description == description &&
    other.interactivityStyleDescriptor == interactivityStyleDescriptor &&
    _deepEquality.equals(other.languages, languages) &&
    other.learningResourceMetadataURI == learningResourceMetadataURI &&
    other.namespace == namespace &&
    other.publicationDate == publicationDate &&
    other.publicationYear == publicationYear &&
    other.publisher == publisher &&
    other.shortDescription == shortDescription &&
    other.timeRequired == timeRequired &&
    other.useRightsURL == useRightsURL &&
    other.version == version &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (contentIdentifier.hashCode) +
    (learningStandardReference == null ? 0 : learningStandardReference!.hashCode) +
    (additionalAuthorsIndicator == null ? 0 : additionalAuthorsIndicator!.hashCode) +
    (appropriateGradeLevels.hashCode) +
    (appropriateSexes.hashCode) +
    (authors.hashCode) +
    (contentClassDescriptor == null ? 0 : contentClassDescriptor!.hashCode) +
    (cost == null ? 0 : cost!.hashCode) +
    (costRateDescriptor == null ? 0 : costRateDescriptor!.hashCode) +
    (derivativeSourceEducationContents.hashCode) +
    (derivativeSourceLearningResourceMetadataURIs.hashCode) +
    (derivativeSourceURIs.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (interactivityStyleDescriptor == null ? 0 : interactivityStyleDescriptor!.hashCode) +
    (languages.hashCode) +
    (learningResourceMetadataURI == null ? 0 : learningResourceMetadataURI!.hashCode) +
    (namespace.hashCode) +
    (publicationDate == null ? 0 : publicationDate!.hashCode) +
    (publicationYear == null ? 0 : publicationYear!.hashCode) +
    (publisher == null ? 0 : publisher!.hashCode) +
    (shortDescription == null ? 0 : shortDescription!.hashCode) +
    (timeRequired == null ? 0 : timeRequired!.hashCode) +
    (useRightsURL == null ? 0 : useRightsURL!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiEducationContent[id=$id, contentIdentifier=$contentIdentifier, learningStandardReference=$learningStandardReference, additionalAuthorsIndicator=$additionalAuthorsIndicator, appropriateGradeLevels=$appropriateGradeLevels, appropriateSexes=$appropriateSexes, authors=$authors, contentClassDescriptor=$contentClassDescriptor, cost=$cost, costRateDescriptor=$costRateDescriptor, derivativeSourceEducationContents=$derivativeSourceEducationContents, derivativeSourceLearningResourceMetadataURIs=$derivativeSourceLearningResourceMetadataURIs, derivativeSourceURIs=$derivativeSourceURIs, description=$description, interactivityStyleDescriptor=$interactivityStyleDescriptor, languages=$languages, learningResourceMetadataURI=$learningResourceMetadataURI, namespace=$namespace, publicationDate=$publicationDate, publicationYear=$publicationYear, publisher=$publisher, shortDescription=$shortDescription, timeRequired=$timeRequired, useRightsURL=$useRightsURL, version=$version, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'contentIdentifier'] = this.contentIdentifier;
    if (this.learningStandardReference != null) {
      json[r'learningStandardReference'] = this.learningStandardReference;
    } else {
      json[r'learningStandardReference'] = null;
    }
    if (this.additionalAuthorsIndicator != null) {
      json[r'additionalAuthorsIndicator'] = this.additionalAuthorsIndicator;
    } else {
      json[r'additionalAuthorsIndicator'] = null;
    }
      json[r'appropriateGradeLevels'] = this.appropriateGradeLevels;
      json[r'appropriateSexes'] = this.appropriateSexes;
      json[r'authors'] = this.authors;
    if (this.contentClassDescriptor != null) {
      json[r'contentClassDescriptor'] = this.contentClassDescriptor;
    } else {
      json[r'contentClassDescriptor'] = null;
    }
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
    if (this.costRateDescriptor != null) {
      json[r'costRateDescriptor'] = this.costRateDescriptor;
    } else {
      json[r'costRateDescriptor'] = null;
    }
      json[r'derivativeSourceEducationContents'] = this.derivativeSourceEducationContents;
      json[r'derivativeSourceLearningResourceMetadataURIs'] = this.derivativeSourceLearningResourceMetadataURIs;
      json[r'derivativeSourceURIs'] = this.derivativeSourceURIs;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.interactivityStyleDescriptor != null) {
      json[r'interactivityStyleDescriptor'] = this.interactivityStyleDescriptor;
    } else {
      json[r'interactivityStyleDescriptor'] = null;
    }
      json[r'languages'] = this.languages;
    if (this.learningResourceMetadataURI != null) {
      json[r'learningResourceMetadataURI'] = this.learningResourceMetadataURI;
    } else {
      json[r'learningResourceMetadataURI'] = null;
    }
      json[r'namespace'] = this.namespace;
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
    if (this.publisher != null) {
      json[r'publisher'] = this.publisher;
    } else {
      json[r'publisher'] = null;
    }
    if (this.shortDescription != null) {
      json[r'shortDescription'] = this.shortDescription;
    } else {
      json[r'shortDescription'] = null;
    }
    if (this.timeRequired != null) {
      json[r'timeRequired'] = this.timeRequired;
    } else {
      json[r'timeRequired'] = null;
    }
    if (this.useRightsURL != null) {
      json[r'useRightsURL'] = this.useRightsURL;
    } else {
      json[r'useRightsURL'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
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

  /// Returns a new [EdFiEducationContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiEducationContent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiEducationContent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiEducationContent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiEducationContent(
        id: mapValueOfType<String>(json, r'id'),
        contentIdentifier: mapValueOfType<String>(json, r'contentIdentifier')!,
        learningStandardReference: EdFiLearningStandardReference.fromJson(json[r'learningStandardReference']),
        additionalAuthorsIndicator: mapValueOfType<bool>(json, r'additionalAuthorsIndicator'),
        appropriateGradeLevels: EdFiEducationContentAppropriateGradeLevel.listFromJson(json[r'appropriateGradeLevels']),
        appropriateSexes: EdFiEducationContentAppropriateSex.listFromJson(json[r'appropriateSexes']),
        authors: EdFiEducationContentAuthor.listFromJson(json[r'authors']),
        contentClassDescriptor: mapValueOfType<String>(json, r'contentClassDescriptor'),
        cost: mapValueOfType<double>(json, r'cost'),
        costRateDescriptor: mapValueOfType<String>(json, r'costRateDescriptor'),
        derivativeSourceEducationContents: EdFiEducationContentDerivativeSourceEducationContent.listFromJson(json[r'derivativeSourceEducationContents']),
        derivativeSourceLearningResourceMetadataURIs: EdFiEducationContentDerivativeSourceLearningResourceMetadataURI.listFromJson(json[r'derivativeSourceLearningResourceMetadataURIs']),
        derivativeSourceURIs: EdFiEducationContentDerivativeSourceURI.listFromJson(json[r'derivativeSourceURIs']),
        description: mapValueOfType<String>(json, r'description'),
        interactivityStyleDescriptor: mapValueOfType<String>(json, r'interactivityStyleDescriptor'),
        languages: EdFiEducationContentLanguage.listFromJson(json[r'languages']),
        learningResourceMetadataURI: mapValueOfType<String>(json, r'learningResourceMetadataURI'),
        namespace: mapValueOfType<String>(json, r'namespace')!,
        publicationDate: mapDateTime(json, r'publicationDate', r''),
        publicationYear: mapValueOfType<int>(json, r'publicationYear'),
        publisher: mapValueOfType<String>(json, r'publisher'),
        shortDescription: mapValueOfType<String>(json, r'shortDescription'),
        timeRequired: mapValueOfType<String>(json, r'timeRequired'),
        useRightsURL: mapValueOfType<String>(json, r'useRightsURL'),
        version: mapValueOfType<String>(json, r'version'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiEducationContent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiEducationContent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiEducationContent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiEducationContent> mapFromJson(dynamic json) {
    final map = <String, EdFiEducationContent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiEducationContent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiEducationContent-objects as value to a dart map
  static Map<String, List<EdFiEducationContent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiEducationContent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiEducationContent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'contentIdentifier',
    'namespace',
  };
}

