# edfi_resources_sdk.model.EdFiAssessmentItem

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**identificationCode** | **String** | A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, state, or other agency or entity. | 
**assessmentReference** | [**EdFiAssessmentReference**](EdFiAssessmentReference.md) |  | 
**assessmentItemCategoryDescriptor** | **String** | Category or type of the assessment item. | [optional] 
**assessmentItemURI** | **String** | The URI (typical a URL) pointing to the entry in an assessment item bank, which describes this content item. | [optional] 
**expectedTimeAssessed** | **String** | The duration allotted for the assessment item expressed in minutes. | [optional] 
**itemText** | **String** | The text of the item. | [optional] 
**learningStandards** | [**List<EdFiAssessmentItemLearningStandard>**](EdFiAssessmentItemLearningStandard.md) | An unordered collection of assessmentItemLearningStandards. Learning standard tested by this item. | [optional] [default to const []]
**maxRawScore** | **double** | The maximum raw score achievable across all assessment items that are correct and scored at the maximum. | [optional] 
**nomenclature** | **String** | Reflects the specific nomenclature used for assessment item. | [optional] 
**possibleResponses** | [**List<EdFiAssessmentItemPossibleResponse>**](EdFiAssessmentItemPossibleResponse.md) | An unordered collection of assessmentItemPossibleResponses. A possible response to an assessment item. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


