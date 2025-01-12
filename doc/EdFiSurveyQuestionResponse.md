# edfi_resources_sdk.model.EdFiSurveyQuestionResponse

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**surveyQuestionReference** | [**EdFiSurveyQuestionReference**](EdFiSurveyQuestionReference.md) |  | 
**surveyResponseReference** | [**EdFiSurveyResponseReference**](EdFiSurveyResponseReference.md) |  | 
**comment** | **String** | Additional information provided by the responder about the question in the survey. | [optional] 
**noResponse** | **bool** | Indicates there was no response to the question. | [optional] 
**surveyQuestionMatrixElementResponses** | [**List<EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse>**](EdFiSurveyQuestionResponseSurveyQuestionMatrixElementResponse.md) | An unordered collection of surveyQuestionResponseSurveyQuestionMatrixElementResponses. For matrix questions, the response for each row of the matrix. | [optional] [default to const []]
**values** | [**List<EdFiSurveyQuestionResponseValue>**](EdFiSurveyQuestionResponseValue.md) | An unordered collection of surveyQuestionResponseValues. For free-form, single- or multiple-selection questions, one or more responses. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


