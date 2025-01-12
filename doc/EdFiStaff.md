# edfi_resources_sdk.model.EdFiStaff

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**staffUniqueId** | **String** | A unique alphanumeric code assigned to a staff. | 
**personReference** | [**EdFiPersonReference**](EdFiPersonReference.md) |  | [optional] 
**addresses** | [**List<EdFiStaffAddress>**](EdFiStaffAddress.md) | An unordered collection of staffAddresses. The set of elements that describes an address, including the street address, city, state, and ZIP code. | [optional] [default to const []]
**ancestryEthnicOrigins** | [**List<EdFiStaffAncestryEthnicOrigin>**](EdFiStaffAncestryEthnicOrigin.md) | An unordered collection of staffAncestryEthnicOrigins. The original peoples or cultures with which the individual identifies. | [optional] [default to const []]
**birthDate** | [**DateTime**](DateTime.md) | The month, day, and year on which an individual was born. | [optional] 
**citizenshipStatusDescriptor** | **String** | An indicator of whether or not the person is a U.S. citizen. | [optional] 
**credentials** | [**List<EdFiStaffCredential>**](EdFiStaffCredential.md) | An unordered collection of staffCredentials. The legal document giving authorization to perform teaching assignment services. | [optional] [default to const []]
**electronicMails** | [**List<EdFiStaffElectronicMail>**](EdFiStaffElectronicMail.md) | An unordered collection of staffElectronicMails. The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs. | [optional] [default to const []]
**firstName** | **String** | A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change. | 
**genderIdentity** | **String** | The gender the staff member identifies themselves as. | [optional] 
**generationCodeSuffix** | **String** | An appendage, if any, used to denote an individual's generation in his family (e.g., Jr., Sr., III). | [optional] 
**highestCompletedLevelOfEducationDescriptor** | **String** | The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received). | [optional] 
**highlyQualifiedTeacher** | **bool** | An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for ALL Sections being taught. | [optional] 
**hispanicLatinoEthnicity** | **bool** | An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\" | [optional] 
**identificationCodes** | [**List<EdFiStaffIdentificationCode>**](EdFiStaffIdentificationCode.md) | An unordered collection of staffIdentificationCodes. A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity. | [optional] [default to const []]
**identificationDocuments** | [**List<EdFiStaffIdentificationDocument>**](EdFiStaffIdentificationDocument.md) | An unordered collection of staffIdentificationDocuments. Describe the documentation of citizenship. | [optional] [default to const []]
**internationalAddresses** | [**List<EdFiStaffInternationalAddress>**](EdFiStaffInternationalAddress.md) | An unordered collection of staffInternationalAddresses. The set of elements that describes an international address. | [optional] [default to const []]
**languages** | [**List<EdFiStaffLanguage>**](EdFiStaffLanguage.md) | An unordered collection of staffLanguages. The language(s) the individual uses to communicate. It is strongly recommended that entries use only ISO 639-2 language codes. | [optional] [default to const []]
**lastSurname** | **String** | The name borne in common by members of a family. | 
**loginId** | **String** | The login ID for the user; used for security access control interface. | [optional] 
**maidenName** | **String** | The individual's maiden name. | [optional] 
**middleName** | **String** | A secondary name given to an individual at birth, baptism, or during another naming ceremony. | [optional] 
**otherNames** | [**List<EdFiStaffOtherName>**](EdFiStaffOtherName.md) | An unordered collection of staffOtherNames. Other names (e.g., alias, nickname, previous legal name) associated with a person. | [optional] [default to const []]
**personalIdentificationDocuments** | [**List<EdFiStaffPersonalIdentificationDocument>**](EdFiStaffPersonalIdentificationDocument.md) | An unordered collection of staffPersonalIdentificationDocuments. The documents presented as evident to verify one's personal identity; for example: drivers license, passport, birth certificate, etc. | [optional] [default to const []]
**personalTitlePrefix** | **String** | A prefix used to denote the title, degree, position, or seniority of the individual. | [optional] 
**preferredFirstName** | **String** | The first name the individual prefers, if different from their legal first name | [optional] 
**preferredLastSurname** | **String** | The last name the individual prefers, if different from their legal last name | [optional] 
**races** | [**List<EdFiStaffRace>**](EdFiStaffRace.md) | An unordered collection of staffRaces. The general racial category which most clearly reflects the individual's recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races. | [optional] [default to const []]
**recognitions** | [**List<EdFiStaffRecognition>**](EdFiStaffRecognition.md) | An unordered collection of staffRecognitions. Recognitions given to the staff for accomplishments in a co-curricular or extracurricular activity. | [optional] [default to const []]
**sexDescriptor** | **String** | The birth sex of the staff member. | [optional] 
**telephones** | [**List<EdFiStaffTelephone>**](EdFiStaffTelephone.md) | An unordered collection of staffTelephones. The 10-digit telephone number, including the area code, for the person. | [optional] [default to const []]
**tribalAffiliations** | [**List<EdFiStaffTribalAffiliation>**](EdFiStaffTribalAffiliation.md) | An unordered collection of staffTribalAffiliations. An American Indian tribe with which the staff member is affiliated. | [optional] [default to const []]
**visas** | [**List<EdFiStaffVisa>**](EdFiStaffVisa.md) | An unordered collection of staffVisas. An indicator of a non-US citizen's Visa type. | [optional] [default to const []]
**yearsOfPriorProfessionalExperience** | **double** | The total number of years that an individual has previously held a similar professional position in one or more education institutions prior to the current school year. | [optional] 
**yearsOfPriorTeachingExperience** | **double** | The total number of years that an individual has previously held a teaching position in one or more education institutions prior to the current school year. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


