# edfi_resources_sdk.model.EdFiAssessmentBatteryPart

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**assessmentBatteryPartName** | **String** | The name of the part of an assessment battery. | 
**assessmentReference** | [**EdFiAssessmentReference**](EdFiAssessmentReference.md) |  | 
**objectiveAssessments** | [**List<EdFiAssessmentBatteryPartObjectiveAssessment>**](EdFiAssessmentBatteryPartObjectiveAssessment.md) | An unordered collection of assessmentBatteryPartObjectiveAssessments. A reference to the objective assessment(s) that are administered by the assessment battery part. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


