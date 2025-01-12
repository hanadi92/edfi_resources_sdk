# edfi_resources_sdk.model.EdFiStudentAssessmentRegistrationBatteryPartAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**assessmentBatteryPartReference** | [**EdFiAssessmentBatteryPartReference**](EdFiAssessmentBatteryPartReference.md) |  | 
**studentAssessmentRegistrationReference** | [**EdFiStudentAssessmentRegistrationReference**](EdFiStudentAssessmentRegistrationReference.md) |  | 
**accommodations** | [**List<EdFiStudentAssessmentRegistrationBatteryPartAssociationAccommodation>**](EdFiStudentAssessmentRegistrationBatteryPartAssociationAccommodation.md) | An unordered collection of studentAssessmentRegistrationBatteryPartAssociationAccommodations. The special variation(s) to be used for the specific part of the assessment battery on how is presented, how it is administered, or how the test taker is allowed to respond. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


