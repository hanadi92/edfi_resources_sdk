# edfi_resources_sdk.model.EdFiSurveyQuestion

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**questionCode** | **String** | The identifying code for the question, unique for the survey. | 
**surveyReference** | [**EdFiSurveyReference**](EdFiSurveyReference.md) |  | 
**surveySectionReference** | [**EdFiSurveySectionReference**](EdFiSurveySectionReference.md) |  | [optional] 
**matrices** | [**List<EdFiSurveyQuestionMatrix>**](EdFiSurveyQuestionMatrix.md) | An unordered collection of surveyQuestionMatrices. Information about the matrix element in the survey. | [optional] [default to const []]
**questionFormDescriptor** | **String** | The form or type of question. | 
**questionText** | **String** | The text of the question. | 
**responseChoices** | [**List<EdFiSurveyQuestionResponseChoice>**](EdFiSurveyQuestionResponseChoice.md) | An unordered collection of surveyQuestionResponseChoices. The optional list of possible responses to a survey question. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


