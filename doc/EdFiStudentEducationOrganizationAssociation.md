# edfi_resources_sdk.model.EdFiStudentEducationOrganizationAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**addresses** | [**List<EdFiStudentEducationOrganizationAssociationAddress>**](EdFiStudentEducationOrganizationAssociationAddress.md) | An unordered collection of studentEducationOrganizationAssociationAddresses. The set of elements that describes an address, including the street address, city, state, and ZIP code. | [optional] [default to const []]
**ancestryEthnicOrigins** | [**List<EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin>**](EdFiStudentEducationOrganizationAssociationAncestryEthnicOrigin.md) | An unordered collection of studentEducationOrganizationAssociationAncestryEthnicOrigins. The original peoples or cultures with which the individual identifies. | [optional] [default to const []]
**barrierToInternetAccessInResidenceDescriptor** | **String** | An indication of the barrier to having internet access in the student s primary place of residence. | [optional] 
**cohortYears** | [**List<EdFiStudentEducationOrganizationAssociationCohortYear>**](EdFiStudentEducationOrganizationAssociationCohortYear.md) | An unordered collection of studentEducationOrganizationAssociationCohortYears. The type and year of a cohort (e.g., 9th grade) the student belongs to as determined by the year that student entered a specific grade. | [optional] [default to const []]
**disabilities** | [**List<EdFiStudentEducationOrganizationAssociationDisability>**](EdFiStudentEducationOrganizationAssociationDisability.md) | An unordered collection of studentEducationOrganizationAssociationDisabilities. The disability condition(s) that best describes an individual's impairment, as determined by evaluation(s) conducted by the education organization. | [optional] [default to const []]
**displacedStudents** | [**List<EdFiStudentEducationOrganizationAssociationDisplacedStudent>**](EdFiStudentEducationOrganizationAssociationDisplacedStudent.md) | An unordered collection of studentEducationOrganizationAssociationDisplacedStudents. Information about student who was enrolled, or eligible for enrollment, but has temporarily or permanently enrolled in another school or district because of a crisis-related disruption in educational services. | [optional] [default to const []]
**electronicMails** | [**List<EdFiStudentEducationOrganizationAssociationElectronicMail>**](EdFiStudentEducationOrganizationAssociationElectronicMail.md) | An unordered collection of studentEducationOrganizationAssociationElectronicMails. The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs. | [optional] [default to const []]
**genderIdentity** | **String** | The student's gender as last reported to the education organization. | [optional] 
**hispanicLatinoEthnicity** | **bool** | An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race, as last reported to the education organization. The term, \"Spanish origin,\" can be used in addition to \"Hispanic or Latino.\" | [optional] 
**internationalAddresses** | [**List<EdFiStudentEducationOrganizationAssociationInternationalAddress>**](EdFiStudentEducationOrganizationAssociationInternationalAddress.md) | An unordered collection of studentEducationOrganizationAssociationInternationalAddresses. The set of elements that describes an international address. | [optional] [default to const []]
**internetAccessInResidence** | **bool** | An indication of whether the student is able to access the internet in their primary place of residence. | [optional] 
**internetAccessTypeInResidenceDescriptor** | **String** | The primary type of internet service used in the student s primary place of residence. | [optional] 
**internetPerformanceInResidenceDescriptor** | **String** | An indication of whether the student can complete the full range of learning activities, including video streaming and assignment upload, without interruptions caused by poor internet performance in their primary place of residence. | [optional] 
**languages** | [**List<EdFiStudentEducationOrganizationAssociationLanguage>**](EdFiStudentEducationOrganizationAssociationLanguage.md) | An unordered collection of studentEducationOrganizationAssociationLanguages. The language(s) the individual uses to communicate. It is strongly recommended that entries use only ISO 639-3 language codes. | [optional] [default to const []]
**limitedEnglishProficiencyDescriptor** | **String** | An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient. | [optional] 
**loginId** | **String** | The login ID for the user; used for security access control interface. | [optional] 
**primaryLearningDeviceAccessDescriptor** | **String** | An indication of whether the primary learning device is shared or not shared with another individual. | [optional] 
**primaryLearningDeviceAwayFromSchoolDescriptor** | **String** | The type of device the student uses most often to complete learning activities away from school. | [optional] 
**primaryLearningDeviceProviderDescriptor** | **String** | The provider of the primary learning device. | [optional] 
**profileThumbnail** | **String** | Locator reference for the student photo. The specification for that reference is left to local definition. | [optional] 
**races** | [**List<EdFiStudentEducationOrganizationAssociationRace>**](EdFiStudentEducationOrganizationAssociationRace.md) | An unordered collection of studentEducationOrganizationAssociationRaces. The general racial category which most clearly reflects the individual's recognition of his or her community or with which the individual most identifies as last reported to the education organization. The data model allows for multiple entries so that each individual can specify all appropriate races. | [optional] [default to const []]
**sexDescriptor** | **String** | The student's birth sex as reported to the education organization. | [optional] 
**studentCharacteristics** | [**List<EdFiStudentEducationOrganizationAssociationStudentCharacteristic>**](EdFiStudentEducationOrganizationAssociationStudentCharacteristic.md) | An unordered collection of studentEducationOrganizationAssociationStudentCharacteristics. Reflects important characteristics of a student. If a student has a characteristic present, that characteristic is considered true or active for that student. If a characteristic is not present, no assumption is made as to the applicability of the characteristic, but local policy may dictate otherwise. | [optional] [default to const []]
**studentIdentificationCodes** | [**List<EdFiStudentEducationOrganizationAssociationStudentIdentificationCode>**](EdFiStudentEducationOrganizationAssociationStudentIdentificationCode.md) | An unordered collection of studentEducationOrganizationAssociationStudentIdentificationCodes. A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a student. | [optional] [default to const []]
**studentIndicators** | [**List<EdFiStudentEducationOrganizationAssociationStudentIndicator>**](EdFiStudentEducationOrganizationAssociationStudentIndicator.md) | An unordered collection of studentEducationOrganizationAssociationStudentIndicators. An indicator or metric computed for the student (e.g., at risk). | [optional] [default to const []]
**supporterMilitaryConnectionDescriptor** | **String** | Military connection of the person/people whom the student is a dependent of. | [optional] 
**telephones** | [**List<EdFiStudentEducationOrganizationAssociationTelephone>**](EdFiStudentEducationOrganizationAssociationTelephone.md) | An unordered collection of studentEducationOrganizationAssociationTelephones. The 10-digit telephone number, including the area code, for the person. | [optional] [default to const []]
**tribalAffiliations** | [**List<EdFiStudentEducationOrganizationAssociationTribalAffiliation>**](EdFiStudentEducationOrganizationAssociationTribalAffiliation.md) | An unordered collection of studentEducationOrganizationAssociationTribalAffiliations. An American Indian tribe with which the student is affiliated as last reported to the education organization. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


