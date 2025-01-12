# edfi_resources_sdk.model.EdFiCourseOffering

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**localCourseCode** | **String** | The local code assigned by the School that identifies the course offering provided for the instruction of students. | 
**courseReference** | [**EdFiCourseReference**](EdFiCourseReference.md) |  | 
**schoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | 
**sessionReference** | [**EdFiSessionReference**](EdFiSessionReference.md) |  | 
**courseLevelCharacteristics** | [**List<EdFiCourseOfferingCourseLevelCharacteristic>**](EdFiCourseOfferingCourseLevelCharacteristic.md) | An unordered collection of courseOfferingCourseLevelCharacteristics. The type of specific program or designation with which the course offering is associated (e.g., AP, IB, Dual Credit, CTE). This collection should only be populated if it differs from the course level characteristics identified at the course level. | [optional] [default to const []]
**curriculumUseds** | [**List<EdFiCourseOfferingCurriculumUsed>**](EdFiCourseOfferingCurriculumUsed.md) | An unordered collection of courseOfferingCurriculumUseds. The type of curriculum used in an early learning classroom or group. | [optional] [default to const []]
**instructionalTimePlanned** | **int** | The planned total number of clock minutes of instruction for this course offering. Generally, this should be at least as many minutes as is required for completion by the related state- or district-defined course. | [optional] 
**localCourseTitle** | **String** | The descriptive name given to a course of study offered in the school, if different from the course title. | [optional] 
**offeredGradeLevels** | [**List<EdFiCourseOfferingOfferedGradeLevel>**](EdFiCourseOfferingOfferedGradeLevel.md) | An unordered collection of courseOfferingOfferedGradeLevels. The grade levels in which the course is offered. This collection should only be populated if it differs from the offered grade levels identified at the course level. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


