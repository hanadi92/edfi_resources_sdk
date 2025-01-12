# edfi_resources_sdk.model.EdFiOpenStaffPosition

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**requisitionNumber** | **String** | The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources. | 
**educationOrganizationReference** | [**EdFiEducationOrganizationReference**](EdFiEducationOrganizationReference.md) |  | 
**academicSubjects** | [**List<EdFiOpenStaffPositionAcademicSubject>**](EdFiOpenStaffPositionAcademicSubject.md) | An unordered collection of openStaffPositionAcademicSubjects. The teaching field required for the open staff position. | [optional] [default to const []]
**datePosted** | [**DateTime**](DateTime.md) | Date the open staff position was posted.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**datePostingRemoved** | [**DateTime**](DateTime.md) | The date the posting was removed or filled.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**employmentStatusDescriptor** | **String** | Reflects the type of employment or contract desired for the position. | 
**instructionalGradeLevels** | [**List<EdFiOpenStaffPositionInstructionalGradeLevel>**](EdFiOpenStaffPositionInstructionalGradeLevel.md) | An unordered collection of openStaffPositionInstructionalGradeLevels. The set of grade levels for which the position's assignment is responsible. | [optional] [default to const []]
**positionTitle** | **String** | The descriptive name of an individual's position. | [optional] 
**postingResultDescriptor** | **String** | Indication of whether the OpenStaffPosition was filled or retired without filling. | [optional] 
**programAssignmentDescriptor** | **String** | The name of the program for which the open staff position will be assigned. | [optional] 
**staffClassificationDescriptor** | **String** | The titles of employment, official status, or rank of education staff. | 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


