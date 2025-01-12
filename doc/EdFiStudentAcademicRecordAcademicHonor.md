# edfi_resources_sdk.model.EdFiStudentAcademicRecordAcademicHonor

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**academicHonorCategoryDescriptor** | **String** | A designation of the type of academic distinctions earned by or awarded to the individual. | 
**honorDescription** | **String** | A description of the type of academic distinctions earned by or awarded to the individual. | 
**achievementCategoryDescriptor** | **String** | The category of achievement attributed to the individual. | [optional] 
**achievementCategorySystem** | **String** | The system that defines the categories by which an achievement is attributed to the individual. | [optional] 
**achievementTitle** | **String** | The title assigned to the achievement. | [optional] 
**criteria** | **String** | The criteria for competency-based completion of the achievement/award. | [optional] 
**criteriaURL** | **String** | The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award. | [optional] 
**evidenceStatement** | **String** | A statement or reference describing the evidence that the individual met the criteria for attainment of the achievement/award. | [optional] 
**honorAwardDate** | [**DateTime**](DateTime.md) | The date the honor was awarded.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**honorAwardExpiresDate** | [**DateTime**](DateTime.md) | Date on which the honor expires.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**imageURL** | **String** | The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the achievement/award. | [optional] 
**issuerName** | **String** | The name of the agent, entity, or institution issuing the element. | [optional] 
**issuerOriginURL** | **String** | The Uniform Resource Locator (URL) from which the award was issued. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


