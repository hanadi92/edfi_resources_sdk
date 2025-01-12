//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EdFiLocalEncumbrance {
  /// Returns a new [EdFiLocalEncumbrance] instance.
  EdFiLocalEncumbrance({
    this.id,
    required this.asOfDate,
    required this.localAccountReference,
    required this.amount,
    this.financialCollectionDescriptor,
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

  /// The date of the reported amount for the account.
  DateTime asOfDate;

  EdFiLocalAccountReference localAccountReference;

  /// Current balance for the account.
  ///
  /// Minimum value: -922337203685477.6
  /// Maximum value: 922337203685477.6
  double amount;

  /// The accounting period or grouping for which the amount is collected.
  String? financialCollectionDescriptor;

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
  bool operator ==(Object other) => identical(this, other) || other is EdFiLocalEncumbrance &&
    other.id == id &&
    other.asOfDate == asOfDate &&
    other.localAccountReference == localAccountReference &&
    other.amount == amount &&
    other.financialCollectionDescriptor == financialCollectionDescriptor &&
    other.etag == etag &&
    other.lastModifiedDate == lastModifiedDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (asOfDate.hashCode) +
    (localAccountReference.hashCode) +
    (amount.hashCode) +
    (financialCollectionDescriptor == null ? 0 : financialCollectionDescriptor!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (lastModifiedDate == null ? 0 : lastModifiedDate!.hashCode);

  @override
  String toString() => 'EdFiLocalEncumbrance[id=$id, asOfDate=$asOfDate, localAccountReference=$localAccountReference, amount=$amount, financialCollectionDescriptor=$financialCollectionDescriptor, etag=$etag, lastModifiedDate=$lastModifiedDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'asOfDate'] = _dateFormatter.format(this.asOfDate.toUtc());
      json[r'localAccountReference'] = this.localAccountReference;
      json[r'amount'] = this.amount;
    if (this.financialCollectionDescriptor != null) {
      json[r'financialCollectionDescriptor'] = this.financialCollectionDescriptor;
    } else {
      json[r'financialCollectionDescriptor'] = null;
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

  /// Returns a new [EdFiLocalEncumbrance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EdFiLocalEncumbrance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EdFiLocalEncumbrance[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EdFiLocalEncumbrance[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EdFiLocalEncumbrance(
        id: mapValueOfType<String>(json, r'id'),
        asOfDate: mapDateTime(json, r'asOfDate', r'')!,
        localAccountReference: EdFiLocalAccountReference.fromJson(json[r'localAccountReference'])!,
        amount: mapValueOfType<double>(json, r'amount')!,
        financialCollectionDescriptor: mapValueOfType<String>(json, r'financialCollectionDescriptor'),
        etag: mapValueOfType<String>(json, r'_etag'),
        lastModifiedDate: mapDateTime(json, r'_lastModifiedDate', r''),
      );
    }
    return null;
  }

  static List<EdFiLocalEncumbrance> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EdFiLocalEncumbrance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EdFiLocalEncumbrance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EdFiLocalEncumbrance> mapFromJson(dynamic json) {
    final map = <String, EdFiLocalEncumbrance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EdFiLocalEncumbrance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EdFiLocalEncumbrance-objects as value to a dart map
  static Map<String, List<EdFiLocalEncumbrance>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EdFiLocalEncumbrance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EdFiLocalEncumbrance.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'asOfDate',
    'localAccountReference',
    'amount',
  };
}

