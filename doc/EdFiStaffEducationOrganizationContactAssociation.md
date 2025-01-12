# edfi_resources_sdk.model.EdFiStaffEducationOrganizationContactAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**contactTitle** | **String** | The title of the contact in the context of the education organization. | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**staffReference** | [**EdFiStaffReference**](EdFiStaffReference.md) |  | 
**address** | [**EdFiStaffEducationOrganizationContactAssociationAddress**](EdFiStaffEducationOrganizationContactAssociationAddress.md) |  | [optional] 
**contactTypeDescriptor** | **String** | Indicates the type for the contact information. | [optional] 
**electronicMailAddress** | **String** | The email for the contact associated with the education organization. | 
**telephones** | [**List<EdFiStaffEducationOrganizationContactAssociationTelephone>**](EdFiStaffEducationOrganizationContactAssociationTelephone.md) | An unordered collection of staffEducationOrganizationContactAssociationTelephones. The optional telephone for the contact associated with the education organization. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


