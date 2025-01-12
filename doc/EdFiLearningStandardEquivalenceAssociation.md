# edfi_resources_sdk.model.EdFiLearningStandardEquivalenceAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**namespace** | **String** | The namespace of the organization that has created and owns the association. | 
**sourceLearningStandardReference** | [**EdFiLearningStandardReference**](EdFiLearningStandardReference.md) |  | 
**targetLearningStandardReference** | [**EdFiLearningStandardReference**](EdFiLearningStandardReference.md) |  | 
**effectiveDate** | [**DateTime**](DateTime.md) | The date that the association is considered to be applicable or effective. | [optional] 
**learningStandardEquivalenceStrengthDescription** | **String** | Captures supplemental information on the relationship. Recommended for use only when the match is partial. | [optional] 
**learningStandardEquivalenceStrengthDescriptor** | **String** | A measure that indicates the strength or quality of the equivalence relationship. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


