# edfi_resources_sdk.model.TpdmCandidate

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**candidateIdentifier** | **String** | A unique alphanumeric code assigned to a candidate. | 
**personReference** | [**EdFiPersonReference**](EdFiPersonReference.md) |  | [optional] 
**addresses** | [**List<TpdmCandidateAddress>**](TpdmCandidateAddress.md) | An unordered collection of candidateAddresses. The set of elements that describes an address, including the street address, city, state, and ZIP code. | [optional] [default to const []]
**birthCity** | **String** | The city the student was born in. | [optional] 
**birthCountryDescriptor** | **String** | The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes. | [optional] 
**birthDate** | [**DateTime**](DateTime.md) | The month, day, and year on which an individual was born. | 
**birthInternationalProvince** | **String** | For students born outside of the U.S., the Province or jurisdiction in which an individual is born. | [optional] 
**birthSexDescriptor** | **String** | A person's sex at birth. | [optional] 
**birthStateAbbreviationDescriptor** | **String** | The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born. | [optional] 
**dateEnteredUS** | [**DateTime**](DateTime.md) | For students born outside of the U.S., the date the student entered the U.S. | [optional] 
**disabilities** | [**List<TpdmCandidateDisability>**](TpdmCandidateDisability.md) | An unordered collection of candidateDisabilities. The disability condition(s) that best describes an individual's impairment. | [optional] [default to const []]
**displacementStatus** | **String** | Indicates a state health or weather related event that displaces a group of students, and may require additional funding, educational, or social services. | [optional] 
**economicDisadvantaged** | **bool** | An indication of inadequate financial condition of an individual's family, as determined by family income, number of family members/dependents, participation in public assistance programs, and/or other characteristics considered relevant by federal, state, and local policy. | [optional] 
**electronicMails** | [**List<TpdmCandidateElectronicMail>**](TpdmCandidateElectronicMail.md) | An unordered collection of candidateElectronicMails. The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs. | [optional] [default to const []]
**englishLanguageExamDescriptor** | **String** | Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL). | [optional] 
**firstGenerationStudent** | **bool** | Indicator of whether individual is a first generation college student. | [optional] 
**firstName** | **String** | A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change. | 
**genderDescriptor** | **String** | The gender of the candidate. | [optional] 
**generationCodeSuffix** | **String** | An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III). | [optional] 
**hispanicLatinoEthnicity** | **bool** | An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\" | [optional] 
**languages** | [**List<TpdmCandidateLanguage>**](TpdmCandidateLanguage.md) | An unordered collection of candidateLanguages. The language(s) the individual uses to communicate. | [optional] [default to const []]
**lastSurname** | **String** | The name borne in common by members of a family. | 
**limitedEnglishProficiencyDescriptor** | **String** | An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient. | [optional] 
**maidenName** | **String** | The individual's maiden name. | [optional] 
**middleName** | **String** | A secondary name given to an individual at birth, baptism, or during another naming ceremony. | [optional] 
**multipleBirthStatus** | **bool** | Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.) | [optional] 
**otherNames** | [**List<TpdmCandidateOtherName>**](TpdmCandidateOtherName.md) | An unordered collection of candidateOtherNames. Other names (e.g., alias, nickname, previous legal name) associated with a person. | [optional] [default to const []]
**personalIdentificationDocuments** | [**List<TpdmCandidatePersonalIdentificationDocument>**](TpdmCandidatePersonalIdentificationDocument.md) | An unordered collection of candidatePersonalIdentificationDocuments. The documents presented as evident to verify one's personal identity; for example: drivers license, passport, birth certificate, etc. | [optional] [default to const []]
**personalTitlePrefix** | **String** | A prefix used to denote the title, degree, position, or seniority of the individual. | [optional] 
**preferredFirstName** | **String** | The first name the individual prefers, if different from their legal first name | [optional] 
**preferredLastSurname** | **String** | The last name the individual prefers, if different from their legal last name | [optional] 
**races** | [**List<TpdmCandidateRace>**](TpdmCandidateRace.md) | An unordered collection of candidateRaces. The general racial category which most clearly reflects the individual's recognition of his or her community or with which the individual most identifies. The data model allows for multiple entries so that each individual can specify all appropriate races. | [optional] [default to const []]
**sexDescriptor** | **String** | The sex of the candidate. | [optional] 
**telephones** | [**List<TpdmCandidateTelephone>**](TpdmCandidateTelephone.md) | An unordered collection of candidateTelephones. The 10-digit telephone number, including the area code, for the person. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


