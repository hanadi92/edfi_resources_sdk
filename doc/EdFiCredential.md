# edfi_resources_sdk.model.EdFiCredential

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**credentialIdentifier** | **String** | Identifier or serial number assigned to the credential. | 
**stateOfIssueStateAbbreviationDescriptor** | **String** | The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued. | 
**academicSubjects** | [**List<EdFiCredentialAcademicSubject>**](EdFiCredentialAcademicSubject.md) | An unordered collection of credentialAcademicSubjects. The academic subjects to which the credential pertains. | [optional] [default to const []]
**credentialFieldDescriptor** | **String** | The field of certification for the certificate (e.g., Mathematics, Music). | [optional] 
**credentialTypeDescriptor** | **String** | An indication of the category of credential an individual holds. | 
**effectiveDate** | [**DateTime**](DateTime.md) | The year, month and day on which an active credential held by an individual was issued.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**endorsements** | [**List<EdFiCredentialEndorsement>**](EdFiCredentialEndorsement.md) | An unordered collection of credentialEndorsements. Endorsements are attachments to teaching certificates and indicate areas of specialization. | [optional] [default to const []]
**expirationDate** | [**DateTime**](DateTime.md) | The month, day, and year on which an active credential held by an individual will expire.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**gradeLevels** | [**List<EdFiCredentialGradeLevel>**](EdFiCredentialGradeLevel.md) | An unordered collection of credentialGradeLevels. The grade level(s) certified for teaching. | [optional] [default to const []]
**issuanceDate** | [**DateTime**](DateTime.md) | The month, day, and year on which an active credential was issued to an individual. | 
**namespace** | **String** | Namespace for the credential. | 
**teachingCredentialBasisDescriptor** | **String** | An indication of the pre-determined criteria for granting the teaching credential that an individual holds. | [optional] 
**teachingCredentialDescriptor** | **String** | An indication of the category of a legal document giving authorization to perform teaching assignment services. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 
**ext** | [**CredentialExtensions**](CredentialExtensions.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


