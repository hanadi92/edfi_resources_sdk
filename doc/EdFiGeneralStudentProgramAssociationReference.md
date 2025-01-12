# edfi_resources_sdk.model.EdFiGeneralStudentProgramAssociationReference

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**beginDate** | [**DateTime**](DateTime.md) | The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**educationOrganizationId** | **int** | The identifier assigned to an education organization. | 
**programEducationOrganizationId** | **int** | The identifier assigned to an education organization. | 
**programName** | **String** | The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies. | 
**programTypeDescriptor** | **String** | The type of program. | 
**studentUniqueId** | **String** | A unique alphanumeric code assigned to a student. | 
**link** | [**Link**](Link.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


