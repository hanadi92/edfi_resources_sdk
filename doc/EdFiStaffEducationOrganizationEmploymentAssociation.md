# edfi_resources_sdk.model.EdFiStaffEducationOrganizationEmploymentAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**employmentStatusDescriptor** | **String** | Reflects the type of employment or contract. | 
**hireDate** | [**DateTime**](DateTime.md) | The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**credentialReference** | [**EdFiCredentialReference**](EdFiCredentialReference.md) |  | [optional] 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**staffReference** | [**EdFiStaffReference**](EdFiStaffReference.md) |  | 
**annualWage** | **double** | Annual wage associated with the employment position being reported. | [optional] 
**department** | **String** | The department or suborganization the employee/contractor is associated with in the education organization. | [optional] 
**endDate** | [**DateTime**](DateTime.md) | The month, day, and year on which a contract between an individual and a governing authority ends or is terminated under the provisions of the contract (or the date on which the agreement is made invalid).  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**fullTimeEquivalency** | **double** | The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting. | [optional] 
**hourlyWage** | **double** | Hourly wage associated with the employment position being reported. | [optional] 
**offerDate** | [**DateTime**](DateTime.md) | Date at which the staff member was made an official offer for this employment. | [optional] 
**separationDescriptor** | **String** | Type of employment separation. | [optional] 
**separationReasonDescriptor** | **String** | Reason for terminating the employment. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


