# edfi_resources_sdk.model.EdFiInterventionPrescription

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**interventionPrescriptionIdentificationCode** | **String** | A unique number or alphanumeric code assigned to an intervention prescription. | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**appropriateGradeLevels** | [**List<EdFiInterventionPrescriptionAppropriateGradeLevel>**](EdFiInterventionPrescriptionAppropriateGradeLevel.md) | An unordered collection of interventionPrescriptionAppropriateGradeLevels. Grade levels for the prescribed intervention. If omitted, considered generally applicable. | [optional] [default to const []]
**appropriateSexes** | [**List<EdFiInterventionPrescriptionAppropriateSex>**](EdFiInterventionPrescriptionAppropriateSex.md) | An unordered collection of interventionPrescriptionAppropriateSexes. Sexes for the intervention prescription. If omitted, considered generally applicable. | [optional] [default to const []]
**deliveryMethodDescriptor** | **String** | The way in which an intervention was implemented: individual, small group, whole class, or whole school. | 
**diagnoses** | [**List<EdFiInterventionPrescriptionDiagnosis>**](EdFiInterventionPrescriptionDiagnosis.md) | An unordered collection of interventionPrescriptionDiagnoses. Targeted purpose of the intervention prescription. | [optional] [default to const []]
**educationContents** | [**List<EdFiInterventionPrescriptionEducationContent>**](EdFiInterventionPrescriptionEducationContent.md) | An unordered collection of interventionPrescriptionEducationContents. Relates the education content source to the education content. | [optional] [default to const []]
**interventionClassDescriptor** | **String** | The way in which an intervention is used: curriculum, supplement, or practice. | 
**learningResourceMetadataURIs** | [**List<EdFiInterventionPrescriptionLearningResourceMetadataURI>**](EdFiInterventionPrescriptionLearningResourceMetadataURI.md) | An unordered collection of interventionPrescriptionLearningResourceMetadataURIs. The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item. | [optional] [default to const []]
**maxDosage** | **int** | The maximum duration of time in minutes that is recommended for the intervention. | [optional] 
**minDosage** | **int** | The minimum duration of time in minutes that is recommended for the intervention. | [optional] 
**namespace** | **String** | Namespace for the intervention. | [optional] 
**populationServeds** | [**List<EdFiInterventionPrescriptionPopulationServed>**](EdFiInterventionPrescriptionPopulationServed.md) | An unordered collection of interventionPrescriptionPopulationServeds. A subset of students that are the focus of the intervention prescription. | [optional] [default to const []]
**uris** | [**List<EdFiInterventionPrescriptionURI>**](EdFiInterventionPrescriptionURI.md) | An unordered collection of interventionPrescriptionURIs. The URI (typical a URL) pointing to an education content item. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


