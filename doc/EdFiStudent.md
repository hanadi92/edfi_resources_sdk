# edfi_resources_sdk.model.EdFiStudent

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**studentUniqueId** | **String** | A unique alphanumeric code assigned to a student. | 
**personReference** | [**EdFiPersonReference**](EdFiPersonReference.md) |  | [optional] 
**birthCity** | **String** | The city the student was born in. | [optional] 
**birthCountryDescriptor** | **String** | The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes. | [optional] 
**birthDate** | [**DateTime**](DateTime.md) | The month, day, and year on which an individual was born. | 
**birthInternationalProvince** | **String** | For students born outside of the U.S., the Province or jurisdiction in which an individual is born. | [optional] 
**birthSexDescriptor** | **String** | A person's sex at birth. | [optional] 
**birthStateAbbreviationDescriptor** | **String** | The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born. | [optional] 
**citizenshipStatusDescriptor** | **String** | An indicator of whether or not the person is a U.S. citizen. | [optional] 
**dateEnteredUS** | [**DateTime**](DateTime.md) | For students born outside of the U.S., the date the student entered the U.S. | [optional] 
**firstName** | **String** | A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change. | 
**generationCodeSuffix** | **String** | An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III). | [optional] 
**identificationDocuments** | [**List<EdFiStudentIdentificationDocument>**](EdFiStudentIdentificationDocument.md) | An unordered collection of studentIdentificationDocuments. Describe the documentation of citizenship. | [optional] [default to const []]
**lastSurname** | **String** | The name borne in common by members of a family. | 
**maidenName** | **String** | The individual's maiden name. | [optional] 
**middleName** | **String** | A secondary name given to an individual at birth, baptism, or during another naming ceremony. | [optional] 
**multipleBirthStatus** | **bool** | Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.) | [optional] 
**otherNames** | [**List<EdFiStudentOtherName>**](EdFiStudentOtherName.md) | An unordered collection of studentOtherNames. Other names (e.g., alias, nickname, previous legal name) associated with a person. | [optional] [default to const []]
**personalIdentificationDocuments** | [**List<EdFiStudentPersonalIdentificationDocument>**](EdFiStudentPersonalIdentificationDocument.md) | An unordered collection of studentPersonalIdentificationDocuments. The documents presented as evident to verify one's personal identity; for example: drivers license, passport, birth certificate, etc. | [optional] [default to const []]
**personalTitlePrefix** | **String** | A prefix used to denote the title, degree, position, or seniority of the individual. | [optional] 
**preferredFirstName** | **String** | The first name the individual prefers, if different from their legal first name | [optional] 
**preferredLastSurname** | **String** | The last name the individual prefers, if different from their legal last name | [optional] 
**visas** | [**List<EdFiStudentVisa>**](EdFiStudentVisa.md) | An unordered collection of studentVisas. An indicator of a non-US citizen's Visa type. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


