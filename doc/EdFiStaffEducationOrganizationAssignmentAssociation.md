# edfi_resources_sdk.model.EdFiStaffEducationOrganizationAssignmentAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**beginDate** | [**DateTime**](DateTime.md) | Month, day, and year of the start or effective date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**staffClassificationDescriptor** | **String** | The titles of employment, official status, or rank of education staff. | 
**credentialReference** | [**EdFiCredentialReference**](EdFiCredentialReference.md) |  | [optional] 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**employmentStaffEducationOrganizationEmploymentAssociationReference** | [**EdFiStaffEducationOrganizationEmploymentAssociationReference**](EdFiStaffEducationOrganizationEmploymentAssociationReference.md) |  | [optional] 
**staffReference** | [**EdFiStaffReference**](EdFiStaffReference.md) |  | 
**endDate** | [**DateTime**](DateTime.md) | Month, day, and year of the end or termination date of a staff member's employment, contract, or relationship with the education organization.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**fullTimeEquivalency** | **double** | The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting. | [optional] 
**orderOfAssignment** | **int** | Describes whether the assignment is this the staff member's primary assignment, secondary assignment, etc. | [optional] 
**positionTitle** | **String** | The descriptive name of an individual's position. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


