# edfi_resources_sdk.model.EdFiContact

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**contactUniqueId** | **String** | A unique alphanumeric code assigned to a contact. | 
**personReference** | [**EdFiPersonReference**](EdFiPersonReference.md) |  | [optional] 
**addresses** | [**List<EdFiContactAddress>**](EdFiContactAddress.md) | An unordered collection of contactAddresses. Contact's address, if different from the student address. | [optional] [default to const []]
**electronicMails** | [**List<EdFiContactElectronicMail>**](EdFiContactElectronicMail.md) | An unordered collection of contactElectronicMails. The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs. | [optional] [default to const []]
**firstName** | **String** | A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change. | 
**genderIdentity** | **String** | The gender the contact identifies themselves as. | [optional] 
**generationCodeSuffix** | **String** | An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III). | [optional] 
**highestCompletedLevelOfEducationDescriptor** | **String** | The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). | [optional] 
**internationalAddresses** | [**List<EdFiContactInternationalAddress>**](EdFiContactInternationalAddress.md) | An unordered collection of contactInternationalAddresses. The set of elements that describes an international address. | [optional] [default to const []]
**languages** | [**List<EdFiContactLanguage>**](EdFiContactLanguage.md) | An unordered collection of contactLanguages. The language(s) the individual uses to communicate. It is strongly recommended that entries use only ISO 639-2 language codes. | [optional] [default to const []]
**lastSurname** | **String** | The name borne in common by members of a family. | 
**loginId** | **String** | The login ID for the user; used for security access control interface. | [optional] 
**maidenName** | **String** | The individual's maiden name. | [optional] 
**middleName** | **String** | A secondary name given to an individual at birth, baptism, or during another naming ceremony. | [optional] 
**otherNames** | [**List<EdFiContactOtherName>**](EdFiContactOtherName.md) | An unordered collection of contactOtherNames. Other names (e.g., alias, nickname, previous legal name) associated with a person. | [optional] [default to const []]
**personalIdentificationDocuments** | [**List<EdFiContactPersonalIdentificationDocument>**](EdFiContactPersonalIdentificationDocument.md) | An unordered collection of contactPersonalIdentificationDocuments. The documents presented as evident to verify one's personal identity; for example: drivers license, passport, birth certificate, etc. | [optional] [default to const []]
**personalTitlePrefix** | **String** | A prefix used to denote the title, degree, position, or seniority of the individual. | [optional] 
**preferredFirstName** | **String** | The first name the individual prefers, if different from their legal first name | [optional] 
**preferredLastSurname** | **String** | The last name the individual prefers, if different from their legal last name | [optional] 
**sexDescriptor** | **String** | A person's birth sex. | [optional] 
**telephones** | [**List<EdFiContactTelephone>**](EdFiContactTelephone.md) | An unordered collection of contactTelephones. The 10-digit telephone number, including the area code, for the person. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


