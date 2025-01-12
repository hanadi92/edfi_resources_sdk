//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmCandidatePersonalIdentificationDocument {
  /// Returns a new [TpdmCandidatePersonalIdentificationDocument] instance.
  TpdmCandidatePersonalIdentificationDocument({
    required this.identificationDocumentUseDescriptor,
    required this.personalInformationVerificationDescriptor,
    this.issuerCountryDescriptor,
    this.documentExpirationDate,
    this.documentTitle,
    this.issuerDocumentIdentificationCode,
    this.issuerName,
  });

  /// The primary function of the document used for establishing identity.
  String identificationDocumentUseDescriptor;

  /// The category of the document relative to its purpose.
  String personalInformationVerificationDescriptor;

  /// Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.
  String? issuerCountryDescriptor;

  /// The day when the document  expires, if null then never expires.
  DateTime? documentExpirationDate;

  /// The title of the document given by the issuer.
  String? documentTitle;

  /// The unique identifier on the issuer's identification system.
  String? issuerDocumentIdentificationCode;

  /// Name of the entity or institution that issued the document.
  String? issuerName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TpdmCandidatePersonalIdentificationDocument &&
    other.identificationDocumentUseDescriptor == identificationDocumentUseDescriptor &&
    other.personalInformationVerificationDescriptor == personalInformationVerificationDescriptor &&
    other.issuerCountryDescriptor == issuerCountryDescriptor &&
    other.documentExpirationDate == documentExpirationDate &&
    other.documentTitle == documentTitle &&
    other.issuerDocumentIdentificationCode == issuerDocumentIdentificationCode &&
    other.issuerName == issuerName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (identificationDocumentUseDescriptor.hashCode) +
    (personalInformationVerificationDescriptor.hashCode) +
    (issuerCountryDescriptor == null ? 0 : issuerCountryDescriptor!.hashCode) +
    (documentExpirationDate == null ? 0 : documentExpirationDate!.hashCode) +
    (documentTitle == null ? 0 : documentTitle!.hashCode) +
    (issuerDocumentIdentificationCode == null ? 0 : issuerDocumentIdentificationCode!.hashCode) +
    (issuerName == null ? 0 : issuerName!.hashCode);

  @override
  String toString() => 'TpdmCandidatePersonalIdentificationDocument[identificationDocumentUseDescriptor=$identificationDocumentUseDescriptor, personalInformationVerificationDescriptor=$personalInformationVerificationDescriptor, issuerCountryDescriptor=$issuerCountryDescriptor, documentExpirationDate=$documentExpirationDate, documentTitle=$documentTitle, issuerDocumentIdentificationCode=$issuerDocumentIdentificationCode, issuerName=$issuerName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'identificationDocumentUseDescriptor'] = this.identificationDocumentUseDescriptor;
      json[r'personalInformationVerificationDescriptor'] = this.personalInformationVerificationDescriptor;
    if (this.issuerCountryDescriptor != null) {
      json[r'issuerCountryDescriptor'] = this.issuerCountryDescriptor;
    } else {
      json[r'issuerCountryDescriptor'] = null;
    }
    if (this.documentExpirationDate != null) {
      json[r'documentExpirationDate'] = _dateFormatter.format(this.documentExpirationDate!.toUtc());
    } else {
      json[r'documentExpirationDate'] = null;
    }
    if (this.documentTitle != null) {
      json[r'documentTitle'] = this.documentTitle;
    } else {
      json[r'documentTitle'] = null;
    }
    if (this.issuerDocumentIdentificationCode != null) {
      json[r'issuerDocumentIdentificationCode'] = this.issuerDocumentIdentificationCode;
    } else {
      json[r'issuerDocumentIdentificationCode'] = null;
    }
    if (this.issuerName != null) {
      json[r'issuerName'] = this.issuerName;
    } else {
      json[r'issuerName'] = null;
    }
    return json;
  }

  /// Returns a new [TpdmCandidatePersonalIdentificationDocument] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmCandidatePersonalIdentificationDocument? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmCandidatePersonalIdentificationDocument[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmCandidatePersonalIdentificationDocument[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmCandidatePersonalIdentificationDocument(
        identificationDocumentUseDescriptor: mapValueOfType<String>(json, r'identificationDocumentUseDescriptor')!,
        personalInformationVerificationDescriptor: mapValueOfType<String>(json, r'personalInformationVerificationDescriptor')!,
        issuerCountryDescriptor: mapValueOfType<String>(json, r'issuerCountryDescriptor'),
        documentExpirationDate: mapDateTime(json, r'documentExpirationDate', r''),
        documentTitle: mapValueOfType<String>(json, r'documentTitle'),
        issuerDocumentIdentificationCode: mapValueOfType<String>(json, r'issuerDocumentIdentificationCode'),
        issuerName: mapValueOfType<String>(json, r'issuerName'),
      );
    }
    return null;
  }

  static List<TpdmCandidatePersonalIdentificationDocument> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmCandidatePersonalIdentificationDocument>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmCandidatePersonalIdentificationDocument.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmCandidatePersonalIdentificationDocument> mapFromJson(dynamic json) {
    final map = <String, TpdmCandidatePersonalIdentificationDocument>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmCandidatePersonalIdentificationDocument.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmCandidatePersonalIdentificationDocument-objects as value to a dart map
  static Map<String, List<TpdmCandidatePersonalIdentificationDocument>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmCandidatePersonalIdentificationDocument>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmCandidatePersonalIdentificationDocument.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'identificationDocumentUseDescriptor',
    'personalInformationVerificationDescriptor',
  };
}

