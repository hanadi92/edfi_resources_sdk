# edfi_resources_sdk.model.TpdmCandidatePersonalIdentificationDocument

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identificationDocumentUseDescriptor** | **String** | The primary function of the document used for establishing identity. | 
**personalInformationVerificationDescriptor** | **String** | The category of the document relative to its purpose. | 
**issuerCountryDescriptor** | **String** | Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes. | [optional] 
**documentExpirationDate** | [**DateTime**](DateTime.md) | The day when the document  expires, if null then never expires. | [optional] 
**documentTitle** | **String** | The title of the document given by the issuer. | [optional] 
**issuerDocumentIdentificationCode** | **String** | The unique identifier on the issuer's identification system. | [optional] 
**issuerName** | **String** | Name of the entity or institution that issued the document. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


