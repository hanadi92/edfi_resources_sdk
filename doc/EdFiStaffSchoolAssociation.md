# edfi_resources_sdk.model.EdFiStaffSchoolAssociation

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**programAssignmentDescriptor** | **String** | The name of the program for which the individual is assigned. | 
**calendarReference** | [**EdFiCalendarReference**](EdFiCalendarReference.md) |  | [optional] 
**schoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | 
**schoolYearTypeReference** | [**EdFiSchoolYearTypeReference**](EdFiSchoolYearTypeReference.md) |  | [optional] 
**staffReference** | [**EdFiStaffReference**](EdFiStaffReference.md) |  | 
**academicSubjects** | [**List<EdFiStaffSchoolAssociationAcademicSubject>**](EdFiStaffSchoolAssociationAcademicSubject.md) | An unordered collection of staffSchoolAssociationAcademicSubjects. The academic subjects the individual is eligible to teach. | [optional] [default to const []]
**gradeLevels** | [**List<EdFiStaffSchoolAssociationGradeLevel>**](EdFiStaffSchoolAssociationGradeLevel.md) | An unordered collection of staffSchoolAssociationGradeLevels. The grade levels the individual is eligible to teach. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


