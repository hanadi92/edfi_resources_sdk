# edfi_resources_sdk.model.EdFiStudentAssessmentItem

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assessmentItemResultDescriptor** | **String** | The analyzed result of a student's response to an assessment item. | 
**responseIndicatorDescriptor** | **String** | Indicator of the response. | [optional] 
**assessmentResponse** | **String** | A student's response to a stimulus on a test. | [optional] 
**descriptiveFeedback** | **String** | The formative descriptive feedback that was given to a student in response to the results from a scored/evaluated assessment item. | [optional] 
**itemNumber** | **int** | The test question number for this student's test item. | [optional] 
**rawScoreResult** | **double** | A meaningful raw score of the performance of a student on an assessment item. | [optional] 
**timeAssessed** | **String** | The overall time that a student actually spent on the assessment item expressed in minutes. | [optional] 
**assessmentItemReference** | [**EdFiAssessmentItemReference**](EdFiAssessmentItemReference.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


