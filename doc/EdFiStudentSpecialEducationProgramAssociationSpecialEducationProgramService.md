# edfi_resources_sdk.model.EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramService

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**specialEducationProgramServiceDescriptor** | **String** | Indicates the service being provided to the student by the special education program. | 
**primaryIndicator** | **bool** | True if service is a primary service. | [optional] 
**serviceBeginDate** | [**DateTime**](DateTime.md) | First date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**serviceEndDate** | [**DateTime**](DateTime.md) | Last date the student was in this option for the current school year.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**providers** | [**List<EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider>**](EdFiStudentSpecialEducationProgramAssociationSpecialEducationProgramServiceProvider.md) | An unordered collection of studentSpecialEducationProgramAssociationSpecialEducationProgramServiceProviders. The staff providing the service to the student. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


