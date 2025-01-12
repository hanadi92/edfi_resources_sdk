//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiAccountabilityRating {
  /// Returns a new [EdFiAccountabilityRating] instance.
  EdFiAccountabilityRating({
    this.id,
    required this.ratingTitle,
    required this.educationOrganizationReference,
    required this.schoolYearTypeReference,
    required this.rating,
    this.ratingDate,
    this.ratingOrganization,
    this.ratingProgram,
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

  /// The title of the rating.
  String ratingTitle;

  EdFiEducationOrganizationReference educationOrganizationReference;

  EdFiSchoolYearTypeReference schoolYearTypeReference;

  /// An accountability rating level, designation, or assessment.
  String rating;

  /// The date the rating was awarded.
  DateTime? ratingDate;

  /// The organization that assessed the rating.
  String? ratingOrganization;

  /// The program associated with the accountability rating (e.g., NCLB, AEIS).
  String? ratingProgram;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiAccountabilityRating &&
    other.id == id &&
    other.ratingTitle == ratingTitle &&
    other.educationOrganizationReference == educationOrganizationReference &&
    other.schoolYearTypeReference == schoolYearTypeReference &&
    other.rating == rating &&
    other.ratingDate == ratingDate &&
    other.ratingOrganization == ratingOrganization &&
    other.ratingProgram == ratingProgram &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (ratingTitle.hashCode) +
    (educationOrganizationReference.hashCode) +
    (schoolYearTypeReference.hashCode) +
    (rating.hashCode) +
    (ratingDate == null ? 0 : ratingDate!.hashCode) +
    (ratingOrganization == null ? 0 : ratingOrganization!.hashCode) +
    (ratingProgram == null ? 0 : ratingProgram!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiAccountabilityRating[id=$id, ratingTitle=$ratingTitle, educationOrganizationReference=$educationOrganizationReference, schoolYearTypeReference=$schoolYearTypeReference, rating=$rating, ratingDate=$ratingDate, ratingOrganization=$ratingOrganization, ratingProgram=$ratingProgram, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'ratingTitle'] = this.ratingTitle;
      json[r'educationOrganizationReference'] = this.educationOrganizationReference;
      json[r'schoolYearTypeReference'] = this.schoolYearTypeReference;
      json[r'rating'] = this.rating;
    if (this.ratingDate != null) {
      json[r'ratingDate'] = _dateFormatter.format(this.ratingDate!.toUtc());
    } else {
      json[r'ratingDate'] = null;
    }
    if (this.ratingOrganization != null) {
      json[r'ratingOrganization'] = this.ratingOrganization;
    } else {
      json[r'ratingOrganization'] = null;
    }
    if (this.ratingProgram != null) {
      json[r'ratingProgram'] = this.ratingProgram;
    } else {
      json[r'ratingProgram'] = null;
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

  /// Returns a new [EdFiAccountabilityRating] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiAccountabilityRating? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiAccountabilityRating[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiAccountabilityRating[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiAccountabilityRating(
        id: mapValueOfType<String>(json, r'id'),
        ratingTitle: mapValueOfType<String>(json, r'ratingTitle')!,
        educationOrganizationReference: EdFiEducationOrganizationReference.fromJson(json[r'educationOrganizationReference'])!,
        schoolYearTypeReference: EdFiSchoolYearTypeReference.fromJson(json[r'schoolYearTypeReference'])!,
        rating: mapValueOfType<String>(json, r'rating')!,
        ratingDate: mapDateTime(json, r'ratingDate', r''),
        ratingOrganization: mapValueOfType<String>(json, r'ratingOrganization'),
        ratingProgram: mapValueOfType<String>(json, r'ratingProgram'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiAccountabilityRating> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiAccountabilityRating>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiAccountabilityRating.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiAccountabilityRating> mapFromJson(dynamic json) {
    final map = <String, EdFiAccountabilityRating>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiAccountabilityRating.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiAccountabilityRating-objects as value to a dart map
  static Map<String, List<EdFiAccountabilityRating>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiAccountabilityRating>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiAccountabilityRating.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ratingTitle',
    'educationOrganizationReference',
    'schoolYearTypeReference',
    'rating',
  };
}

