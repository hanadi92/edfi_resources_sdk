# edfi_resources_sdk.model.TpdmCandidateEducatorPreparationProgramAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**beginDate** | [**DateTime**](DateTime.md) | The begin date for the association.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**candidateReference** | [**TpdmCandidateReference**](TpdmCandidateReference.md) |  | 
**educatorPreparationProgramReference** | [**TpdmEducatorPreparationProgramReference**](TpdmEducatorPreparationProgramReference.md) |  | 
**cohortYears** | [**List<TpdmCandidateEducatorPreparationProgramAssociationCohortYear>**](TpdmCandidateEducatorPreparationProgramAssociationCohortYear.md) | An unordered collection of candidateEducatorPreparationProgramAssociationCohortYears. The type and year of a cohort the student belongs to as determined by the year that student entered a specific grade. | [optional] [default to const []]
**degreeSpecializations** | [**List<TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization>**](TpdmCandidateEducatorPreparationProgramAssociationDegreeSpecialization.md) | An unordered collection of candidateEducatorPreparationProgramAssociationDegreeSpecializations. Information around the area(s) of specialization for an individual. | [optional] [default to const []]
**endDate** | [**DateTime**](DateTime.md) | The end date for the association.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**eppProgramPathwayDescriptor** | **String** | The program pathway the candidate is following; for example: Residency, Internship, Traditional | [optional] 
**reasonExitedDescriptor** | **String** | Reason exited for the association. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


