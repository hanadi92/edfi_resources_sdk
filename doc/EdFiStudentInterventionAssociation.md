# edfi_resources_sdk.model.EdFiStudentInterventionAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**cohortReference** | [**EdFiCohortReference**](EdFiCohortReference.md) |  | [optional] 
**interventionReference** | [**EdFiInterventionReference**](EdFiInterventionReference.md) |  | 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | 
**diagnosticStatement** | **String** | A statement provided by the assigner that provides information regarding why the student was assigned to this intervention. | [optional] 
**dosage** | **int** | The duration of time in minutes for which the student was assigned to participate in the intervention. | [optional] 
**interventionEffectivenesses** | [**List<EdFiStudentInterventionAssociationInterventionEffectiveness>**](EdFiStudentInterventionAssociationInterventionEffectiveness.md) | An unordered collection of studentInterventionAssociationInterventionEffectivenesses. A measure of the effects of an intervention in each outcome domain. The rating of effectiveness takes into account four factors: the quality of the research on the intervention, the statistical significance of the research findings, the size of the differences between participants in the intervention and comparison groups and the consistency in results. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


