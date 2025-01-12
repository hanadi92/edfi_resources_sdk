# edfi_resources_sdk.model.EdFiIntervention

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**interventionIdentificationCode** | **String** | A unique number or alphanumeric code assigned to an intervention. | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**appropriateGradeLevels** | [**List<EdFiInterventionAppropriateGradeLevel>**](EdFiInterventionAppropriateGradeLevel.md) | An unordered collection of interventionAppropriateGradeLevels. Grade levels for the intervention. If omitted, considered generally applicable. | [optional] [default to const []]
**appropriateSexes** | [**List<EdFiInterventionAppropriateSex>**](EdFiInterventionAppropriateSex.md) | An unordered collection of interventionAppropriateSexes. Sexes for the intervention. If omitted, considered generally applicable. | [optional] [default to const []]
**beginDate** | [**DateTime**](DateTime.md) | The start date for the intervention implementation.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**deliveryMethodDescriptor** | **String** | The way in which an intervention was implemented. | 
**diagnoses** | [**List<EdFiInterventionDiagnosis>**](EdFiInterventionDiagnosis.md) | An unordered collection of interventionDiagnoses. Targeted purpose of the intervention. | [optional] [default to const []]
**educationContents** | [**List<EdFiInterventionEducationContent>**](EdFiInterventionEducationContent.md) | An unordered collection of interventionEducationContents. Relates the education content source to the education content. | [optional] [default to const []]
**endDate** | [**DateTime**](DateTime.md) | The end date for the intervention implementation.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**interventionClassDescriptor** | **String** | The way in which an intervention is used: curriculum, supplement, or practice. | 
**interventionPrescriptions** | [**List<EdFiInterventionInterventionPrescription>**](EdFiInterventionInterventionPrescription.md) | An unordered collection of interventionInterventionPrescriptions. The reference to the intervention prescription being followed in this intervention implementation. | [optional] [default to const []]
**learningResourceMetadataURIs** | [**List<EdFiInterventionLearningResourceMetadataURI>**](EdFiInterventionLearningResourceMetadataURI.md) | An unordered collection of interventionLearningResourceMetadataURIs. The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item. | [optional] [default to const []]
**maxDosage** | **int** | The maximum duration of time in minutes that may be assigned for the intervention. | [optional] 
**meetingTimes** | [**List<EdFiInterventionMeetingTime>**](EdFiInterventionMeetingTime.md) | An unordered collection of interventionMeetingTimes. The times at which this intervention is scheduled to meet. | [optional] [default to const []]
**minDosage** | **int** | The minimum duration of time in minutes that may be assigned for the intervention. | [optional] 
**namespace** | **String** | Namespace for the intervention. | [optional] 
**populationServeds** | [**List<EdFiInterventionPopulationServed>**](EdFiInterventionPopulationServed.md) | An unordered collection of interventionPopulationServeds. A subset of students that are the focus of the intervention. | [optional] [default to const []]
**staffs** | [**List<EdFiInterventionStaff>**](EdFiInterventionStaff.md) | An unordered collection of interventionStaffs. Relates the staff member associated with the Intervention. | [optional] [default to const []]
**uris** | [**List<EdFiInterventionURI>**](EdFiInterventionURI.md) | An unordered collection of interventionURIs. The URI (typical a URL) pointing to an education content item. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


