# edfi_resources_sdk.model.EdFiStudentAcademicRecordDiploma

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**diplomaTypeDescriptor** | **String** | The type of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements. | 
**diplomaAwardDate** | [**DateTime**](DateTime.md) | The month, day, and year on which the student met  graduation requirements and was awarded a diploma.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | 
**achievementCategoryDescriptor** | **String** | The category of achievement attributed to the individual. | [optional] 
**diplomaLevelDescriptor** | **String** | The level of diploma/credential that is awarded to a student in recognition of completion of the curricular requirements. | [optional] 
**achievementCategorySystem** | **String** | The system that defines the categories by which an achievement is attributed to the individual. | [optional] 
**achievementTitle** | **String** | The title assigned to the achievement. | [optional] 
**criteria** | **String** | The criteria for competency-based completion of the achievement/award. | [optional] 
**criteriaURL** | **String** | The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award. | [optional] 
**cteCompleter** | **bool** | Indicated a student who reached a state-defined threshold of vocational education and who attained a high school diploma or its recognized state equivalent or GED. | [optional] 
**diplomaAwardExpiresDate** | [**DateTime**](DateTime.md) | Date on which the diploma expires.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines. | [optional] 
**diplomaDescription** | **String** | The description of the diploma given to the student for accomplishments. | [optional] 
**evidenceStatement** | **String** | A statement or reference describing the evidence that the individual met the criteria for attainment of the achievement/award. | [optional] 
**imageURL** | **String** | The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the achievement/award. | [optional] 
**issuerName** | **String** | The name of the agent, entity, or institution issuing the element. | [optional] 
**issuerOriginURL** | **String** | The Uniform Resource Locator (URL) from which the award was issued. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


