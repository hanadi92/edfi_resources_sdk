# edfi_resources_sdk.model.EdFiSection

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**sectionIdentifier** | **String** | The local identifier assigned to a section. | 
**courseOfferingReference** | [**EdFiCourseOfferingReference**](EdFiCourseOfferingReference.md) |  | 
**locationReference** | [**EdFiLocationReference**](EdFiLocationReference.md) |  | [optional] 
**locationSchoolReference** | [**EdFiSchoolReference**](EdFiSchoolReference.md) |  | [optional] 
**availableCreditConversion** | **double** | Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units. | [optional] 
**availableCredits** | **double** | The value of credits or units of value awarded for the completion of a course. | [optional] 
**availableCreditTypeDescriptor** | **String** | The type of credits or units of value awarded for the completion of a course. | [optional] 
**characteristics** | [**List<EdFiSectionCharacteristic>**](EdFiSectionCharacteristic.md) | An unordered collection of sectionCharacteristics. Reflects important characteristics of the section, such as whether or not attendance is taken and the section is graded. | [optional] [default to const []]
**classPeriods** | [**List<EdFiSectionClassPeriod>**](EdFiSectionClassPeriod.md) | An unordered collection of sectionClassPeriods. The class period during which the section meets. | [optional] [default to const []]
**courseLevelCharacteristics** | [**List<EdFiSectionCourseLevelCharacteristic>**](EdFiSectionCourseLevelCharacteristic.md) | An unordered collection of sectionCourseLevelCharacteristics. The type of specific program or designation with which the section is associated. This collection should only be populated if it differs from the course level characteristics identified at the course offering level. | [optional] [default to const []]
**educationalEnvironmentDescriptor** | **String** | The setting in which a student receives education and related services. | [optional] 
**instructionLanguageDescriptor** | **String** | The primary language of instruction. If omitted, English is assumed. | [optional] 
**mediumOfInstructionDescriptor** | **String** | The media through which teachers provide instruction to students and students and teachers communicate about instructional matters. | [optional] 
**offeredGradeLevels** | [**List<EdFiSectionOfferedGradeLevel>**](EdFiSectionOfferedGradeLevel.md) | An unordered collection of sectionOfferedGradeLevels. The grade levels in which the section is offered. This collection should only be populated if it differs from the Offered Grade Levels identified at the course offering level. | [optional] [default to const []]
**officialAttendancePeriod** | **bool** | Indicator of whether this section is used for official daily attendance. Alternatively, official daily attendance may be tied to a class period. | [optional] 
**populationServedDescriptor** | **String** | The type of students the section is offered and tailored to. | [optional] 
**programs** | [**List<EdFiSectionProgram>**](EdFiSectionProgram.md) | An unordered collection of sectionPrograms. Optional reference to program to which the section is associated. | [optional] [default to const []]
**sectionName** | **String** | A locally-defined name for the section, generally created to make the section more recognizable in informal contexts and generally distinct from the section identifier. | [optional] 
**sectionTypeDescriptor** | **String** | Specifies whether the section is for attendance only, credit only, or both. | [optional] 
**sequenceOfCourse** | **int** | When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1. | [optional] 
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


