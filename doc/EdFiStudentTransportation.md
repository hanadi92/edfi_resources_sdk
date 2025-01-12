# edfi_resources_sdk.model.EdFiStudentTransportation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**transportationEducationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**specialAccomodationRequirements** | **String** | Specific requirements needed to accommodate a student's physical needs which may include special equipment installed in a vehicle or a special arrangement for transportation. | [optional] 
**studentBusDetails** | [**EdFiStudentTransportationStudentBusDetails**](EdFiStudentTransportationStudentBusDetails.md) |  | [optional] 
**transportationPublicExpenseEligibilityTypeDescriptor** | **String** | The primary type of eligibility for transporting a student at public expense. | [optional] 
**transportationTypeDescriptor** | **String** | The mode or type of transportation utilized by a student to commute to and from school | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


