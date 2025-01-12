//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TpdmFinancialAid {
  /// Returns a new [TpdmFinancialAid] instance.
  TpdmFinancialAid({
    this.id,
    required this.aidTypeDescriptor,
    required this.beginDate,
    required this.studentReference,
    this.aidAmount,
    this.aidConditionDescription,
    this.endDate,
    this.pellGrantRecipient,
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

  /// The classification of financial aid awarded to a person for the academic term/year.
  String aidTypeDescriptor;

  /// The date the award was designated.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime beginDate;

  EdFiStudentReference studentReference;

  /// The amount of financial aid awarded to a person for the term/year.
  ///
  /// Minimum value: -1.0E+15
  /// Maximum value: 1.0E+15
  double? aidAmount;

  /// The description of the condition (e.g., placement in a high need school) under which the aid was given.
  String? aidConditionDescription;

  /// The date the award was removed.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.
  DateTime? endDate;

  /// Indicates a person who receives Pell Grant aid.
  bool? pellGrantRecipient;

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
  bool operator ==(Object other) => identical(this, other) || other is TpdmFinancialAid &&
    other.id == id &&
    other.aidTypeDescriptor == aidTypeDescriptor &&
    other.beginDate == beginDate &&
    other.studentReference == studentReference &&
    other.aidAmount == aidAmount &&
    other.aidConditionDescription == aidConditionDescription &&
    other.endDate == endDate &&
    other.pellGrantRecipient == pellGrantRecipient &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (aidTypeDescriptor.hashCode) +
    (beginDate.hashCode) +
    (studentReference.hashCode) +
    (aidAmount == null ? 0 : aidAmount!.hashCode) +
    (aidConditionDescription == null ? 0 : aidConditionDescription!.hashCode) +
    (endDate == null ? 0 : endDate!.hashCode) +
    (pellGrantRecipient == null ? 0 : pellGrantRecipient!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'TpdmFinancialAid[id=$id, aidTypeDescriptor=$aidTypeDescriptor, beginDate=$beginDate, studentReference=$studentReference, aidAmount=$aidAmount, aidConditionDescription=$aidConditionDescription, endDate=$endDate, pellGrantRecipient=$pellGrantRecipient, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'aidTypeDescriptor'] = this.aidTypeDescriptor;
      json[r'beginDate'] = _dateFormatter.format(this.beginDate.toUtc());
      json[r'studentReference'] = this.studentReference;
    if (this.aidAmount != null) {
      json[r'aidAmount'] = this.aidAmount;
    } else {
      json[r'aidAmount'] = null;
    }
    if (this.aidConditionDescription != null) {
      json[r'aidConditionDescription'] = this.aidConditionDescription;
    } else {
      json[r'aidConditionDescription'] = null;
    }
    if (this.endDate != null) {
      json[r'endDate'] = _dateFormatter.format(this.endDate!.toUtc());
    } else {
      json[r'endDate'] = null;
    }
    if (this.pellGrantRecipient != null) {
      json[r'pellGrantRecipient'] = this.pellGrantRecipient;
    } else {
      json[r'pellGrantRecipient'] = null;
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

  /// Returns a new [TpdmFinancialAid] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TpdmFinancialAid? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TpdmFinancialAid[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TpdmFinancialAid[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TpdmFinancialAid(
        id: mapValueOfType<String>(json, r'id'),
        aidTypeDescriptor: mapValueOfType<String>(json, r'aidTypeDescriptor')!,
        beginDate: mapDateTime(json, r'beginDate', r'')!,
        studentReference: EdFiStudentReference.fromJson(json[r'studentReference'])!,
        aidAmount: mapValueOfType<double>(json, r'aidAmount'),
        aidConditionDescription: mapValueOfType<String>(json, r'aidConditionDescription'),
        endDate: mapDateTime(json, r'endDate', r''),
        pellGrantRecipient: mapValueOfType<bool>(json, r'pellGrantRecipient'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<TpdmFinancialAid> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TpdmFinancialAid>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TpdmFinancialAid.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TpdmFinancialAid> mapFromJson(dynamic json) {
    final map = <String, TpdmFinancialAid>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TpdmFinancialAid.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TpdmFinancialAid-objects as value to a dart map
  static Map<String, List<TpdmFinancialAid>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TpdmFinancialAid>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TpdmFinancialAid.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'aidTypeDescriptor',
    'beginDate',
    'studentReference',
  };
}

