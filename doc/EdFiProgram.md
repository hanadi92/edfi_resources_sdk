# edfi_resources_sdk.model.EdFiProgram

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**programName** | **String** | The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies. | 
**programTypeDescriptor** | **String** | The type of program. | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**characteristics** | [**List<EdFiProgramCharacteristic>**](EdFiProgramCharacteristic.md) | An unordered collection of programCharacteristics. Reflects important characteristics of the program, such as categories or particular indications. | [optional] [default to const []]
**learningStandards** | [**List<EdFiProgramLearningStandard>**](EdFiProgramLearningStandard.md) | An unordered collection of programLearningStandards. Learning standard followed by this program. | [optional] [default to const []]
**programId** | **String** | A unique number or alphanumeric code assigned to a program by a school, school system, a state, or other agency or entity. | [optional] 
**sponsors** | [**List<EdFiProgramSponsor>**](EdFiProgramSponsor.md) | An unordered collection of programSponsors. Ultimate and intermediate providers of funds for a particular educational or service program or activity, or for an individual's participation in the program or activity (e.g., Federal, State, ESC, District, School, Private Organization). | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


