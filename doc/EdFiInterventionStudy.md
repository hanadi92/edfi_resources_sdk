# edfi_resources_sdk.model.EdFiInterventionStudy

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**interventionStudyIdentificationCode** | **String** | A unique number or alphanumeric code assigned to an intervention study. | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**interventionPrescriptionReference** | [**EdFiInterventionPrescriptionReference**](EdFiInterventionPrescriptionReference.md) |  | 
**appropriateGradeLevels** | [**List<EdFiInterventionStudyAppropriateGradeLevel>**](EdFiInterventionStudyAppropriateGradeLevel.md) | An unordered collection of interventionStudyAppropriateGradeLevels. Grade levels participating in this study. | [optional] [default to const []]
**appropriateSexes** | [**List<EdFiInterventionStudyAppropriateSex>**](EdFiInterventionStudyAppropriateSex.md) | An unordered collection of interventionStudyAppropriateSexes. Sexes participating in this study. If omitted, considered generally applicable. | [optional] [default to const []]
**deliveryMethodDescriptor** | **String** | The way in which an intervention was implemented: individual, small group, whole class, or whole school. | 
**educationContents** | [**List<EdFiInterventionStudyEducationContent>**](EdFiInterventionStudyEducationContent.md) | An unordered collection of interventionStudyEducationContents. Relates the education content source to the education content. | [optional] [default to const []]
**interventionClassDescriptor** | **String** | The way in which an intervention is used: curriculum, supplement, or practice. | 
**interventionEffectivenesses** | [**List<EdFiInterventionStudyInterventionEffectiveness>**](EdFiInterventionStudyInterventionEffectiveness.md) | An unordered collection of interventionStudyInterventionEffectivenesses. Measurement of the effectiveness of the intervention study per diagnosis. | [optional] [default to const []]
**learningResourceMetadataURIs** | [**List<EdFiInterventionStudyLearningResourceMetadataURI>**](EdFiInterventionStudyLearningResourceMetadataURI.md) | An unordered collection of interventionStudyLearningResourceMetadataURIs. The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item. | [optional] [default to const []]
**participants** | **int** | The number of participants observed in the study. | 
**populationServeds** | [**List<EdFiInterventionStudyPopulationServed>**](EdFiInterventionStudyPopulationServed.md) | An unordered collection of interventionStudyPopulationServeds. A subset of students that are the focus of the intervention study. | [optional] [default to const []]
**stateAbbreviations** | [**List<EdFiInterventionStudyStateAbbreviation>**](EdFiInterventionStudyStateAbbreviation.md) | An unordered collection of interventionStudyStateAbbreviations. The abbreviation for the state (within the United States) or outlying area, the school system of which the participants of the study are considered to be a part. | [optional] [default to const []]
**uris** | [**List<EdFiInterventionStudyURI>**](EdFiInterventionStudyURI.md) | An unordered collection of interventionStudyURIs. The URI (typical a URL) pointing to an education content item. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


