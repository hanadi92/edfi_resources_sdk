//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiCredential {
  /// Returns a new [EdFiCredential] instance.
  EdFiCredential({
    this.id,
    required this.credentialIdentifier,
    required this.stateOfIssueStateAbbreviationDescriptor,
    this.academicSubjects = const [],
    this.credentialFieldDescriptor,
    required this.credentialTypeDescriptor,
    this.effectiveDate,
    this.endorsements = const [],
    this.expirationDate,
    this.gradeLevels = const [],
    required this.issuanceDate,
    required this.namespace,
    this.teachingCredentialBasisDescriptor,
    this.teachingCredentialDescriptor,
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

  /// Identifier or serial number assigned to the credential.
  String credentialIdentifier;

  /// The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.
  String stateOfIssueStateAbbreviationDescriptor;

  /// An unordered collection of credentialAcademicSubjects. The academic subjects to which the credential pertains.
  List<EdFiCredentialAcademicSubject> academicSubjects;

  /// The field of certification for the certificate (e.g., Mathematics, Music).
  String? credentialFieldDescriptor;

  /// An indication of the category of credential an individual holds.
  String credentialTypeDescriptor;

  /// The year, month and day on which an active credential held by an individual was issued.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? effectiveDate;

  /// An unordered collection of credentialEndorsements. Endorsements are attachments to teaching certificates and indicate areas of specialization.
  List<EdFiCredentialEndorsement> endorsements;

  /// The month, day, and year on which an active credential held by an individual will expire.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? expirationDate;

  /// An unordered collection of credentialGradeLevels. The grade level(s) certified for teaching.
  List<EdFiCredentialGradeLevel> gradeLevels;

  /// The month, day, and year on which an active credential was issued to an individual.
  DateTime issuanceDate;

  /// Namespace for the credential.
  String namespace;

  /// An indication of the pre-determined criteria for granting the teaching credential that an individual holds.
  String? teachingCredentialBasisDescriptor;

  /// An indication of the category of a legal document giving authorization to perform teaching assignment services.
  String? teachingCredentialDescriptor;

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
  CredentialExtensions? ext;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EdFiCredential &&
    other.id == id &&
    other.credentialIdentifier == credentialIdentifier &&
    other.stateOfIssueStateAbbreviationDescriptor == stateOfIssueStateAbbreviationDescriptor &&
    _deepEquality.equals(other.academicSubjects, academicSubjects) &&
    other.credentialFieldDescriptor == credentialFieldDescriptor &&
    other.credentialTypeDescriptor == credentialTypeDescriptor &&
    other.effectiveDate == effectiveDate &&
    _deepEquality.equals(other.endorsements, endorsements) &&
    other.expirationDate == expirationDate &&
    _deepEquality.equals(other.gradeLevels, gradeLevels) &&
    other.issuanceDate == issuanceDate &&
    other.namespace == namespace &&
    other.teachingCredentialBasisDescriptor == teachingCredentialBasisDescriptor &&
    other.teachingCredentialDescriptor == teachingCredentialDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate &&
    other.ext == ext;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (credentialIdentifier.hashCode) +
    (stateOfIssueStateAbbreviationDescriptor.hashCode) +
    (academicSubjects.hashCode) +
    (credentialFieldDescriptor == null ? 0 : credentialFieldDescriptor!.hashCode) +
    (credentialTypeDescriptor.hashCode) +
    (effectiveDate == null ? 0 : effectiveDate!.hashCode) +
    (endorsements.hashCode) +
    (expirationDate == null ? 0 : expirationDate!.hashCode) +
    (gradeLevels.hashCode) +
    (issuanceDate.hashCode) +
    (namespace.hashCode) +
    (teachingCredentialBasisDescriptor == null ? 0 : teachingCredentialBasisDescriptor!.hashCode) +
    (teachingCredentialDescriptor == null ? 0 : teachingCredentialDescriptor!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode) +
    (ext == null ? 0 : ext!.hashCode);

  @override
  String toString() => 'EdFiCredential[id=$id, credentialIdentifier=$credentialIdentifier, stateOfIssueStateAbbreviationDescriptor=$stateOfIssueStateAbbreviationDescriptor, academicSubjects=$academicSubjects, credentialFieldDescriptor=$credentialFieldDescriptor, credentialTypeDescriptor=$credentialTypeDescriptor, effectiveDate=$effectiveDate, endorsements=$endorsements, expirationDate=$expirationDate, gradeLevels=$gradeLevels, issuanceDate=$issuanceDate, namespace=$namespace, teachingCredentialBasisDescriptor=$teachingCredentialBasisDescriptor, teachingCredentialDescriptor=$teachingCredentialDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate, ext=$ext]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'credentialIdentifier'] = this.credentialIdentifier;
      json[r'stateOfIssueStateAbbreviationDescriptor'] = this.stateOfIssueStateAbbreviationDescriptor;
      json[r'academicSubjects'] = this.academicSubjects;
    if (this.credentialFieldDescriptor != null) {
      json[r'credentialFieldDescriptor'] = this.credentialFieldDescriptor;
    } else {
      json[r'credentialFieldDescriptor'] = null;
    }
      json[r'credentialTypeDescriptor'] = this.credentialTypeDescriptor;
    if (this.effectiveDate != null) {
      json[r'effectiveDate'] = _dateFormatter.format(this.effectiveDate!.toUtc());
    } else {
      json[r'effectiveDate'] = null;
    }
      json[r'endorsements'] = this.endorsements;
    if (this.expirationDate != null) {
      json[r'expirationDate'] = _dateFormatter.format(this.expirationDate!.toUtc());
    } else {
      json[r'expirationDate'] = null;
    }
      json[r'gradeLevels'] = this.gradeLevels;
      json[r'issuanceDate'] = _dateFormatter.format(this.issuanceDate.toUtc());
      json[r'namespace'] = this.namespace;
    if (this.teachingCredentialBasisDescriptor != null) {
      json[r'teachingCredentialBasisDescriptor'] = this.teachingCredentialBasisDescriptor;
    } else {
      json[r'teachingCredentialBasisDescriptor'] = null;
    }
    if (this.teachingCredentialDescriptor != null) {
      json[r'teachingCredentialDescriptor'] = this.teachingCredentialDescriptor;
    } else {
      json[r'teachingCredentialDescriptor'] = null;
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
    if (this.ext != null) {
      json[r'_ext'] = this.ext;
    } else {
      json[r'_ext'] = null;
    }
    return json;
  }

  /// Returns a new [EdFiCredential] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiCredential? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiCredential[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiCredential[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiCredential(
        id: mapValueOfType<String>(json, r'id'),
        credentialIdentifier: mapValueOfType<String>(json, r'credentialIdentifier')!,
        stateOfIssueStateAbbreviationDescriptor: mapValueOfType<String>(json, r'stateOfIssueStateAbbreviationDescriptor')!,
        academicSubjects: EdFiCredentialAcademicSubject.listFromJson(json[r'academicSubjects']),
        credentialFieldDescriptor: mapValueOfType<String>(json, r'credentialFieldDescriptor'),
        credentialTypeDescriptor: mapValueOfType<String>(json, r'credentialTypeDescriptor')!,
        effectiveDate: mapDateTime(json, r'effectiveDate', r''),
        endorsements: EdFiCredentialEndorsement.listFromJson(json[r'endorsements']),
        expirationDate: mapDateTime(json, r'expirationDate', r''),
        gradeLevels: EdFiCredentialGradeLevel.listFromJson(json[r'gradeLevels']),
        issuanceDate: mapDateTime(json, r'issuanceDate', r'')!,
        namespace: mapValueOfType<String>(json, r'namespace')!,
        teachingCredentialBasisDescriptor: mapValueOfType<String>(json, r'teachingCredentialBasisDescriptor'),
        teachingCredentialDescriptor: mapValueOfType<String>(json, r'teachingCredentialDescriptor'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
        ext: CredentialExtensions.fromJson(json[r'_ext']),
      );
    }
    return null;
  }

  static List<EdFiCredential> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiCredential>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiCredential.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiCredential> mapFromJson(dynamic json) {
    final map = <String, EdFiCredential>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiCredential.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiCredential-objects as value to a dart map
  static Map<String, List<EdFiCredential>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiCredential>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiCredential.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'credentialIdentifier',
    'stateOfIssueStateAbbreviationDescriptor',
    'credentialTypeDescriptor',
    'issuanceDate',
    'namespace',
  };
}

