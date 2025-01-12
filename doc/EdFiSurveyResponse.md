# edfi_resources_sdk.model.EdFiSurveyResponse

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**surveyResponseIdentifier** | **String** | The identifier of the survey typically from the survey application. | 
**contactReference** | [**EdFiContactReference**](EdFiContactReference.md) |  | [optional] 
**staffReference** | [**EdFiStaffReference**](EdFiStaffReference.md) |  | [optional] 
**studentReference** | [**EdFiStudentReference**](EdFiStudentReference.md) |  | [optional] 
**surveyReference** | [**EdFiSurveyReference**](EdFiSurveyReference.md) |  | 
**electronicMailAddress** | **String** | Email address of the respondent. | [optional] 
**fullName** | **String** | Full name of the respondent. | [optional] 
**location** | **String** | Location of the respondent, often a city, district, or school. | [optional] 
**responseDate** | [**DateTime**](DateTime.md) | Date of the survey response. | 
**responseTime** | **int** | The amount of time in seconds it took for the respondent to complete the survey. | [optional] 
**surveyLevels** | [**List<EdFiSurveyResponseSurveyLevel>**](EdFiSurveyResponseSurveyLevel.md) | An unordered collection of surveyResponseSurveyLevels. Provides information about the respondents of a survey and how they can be grouped together. | [optional] [default to const []]
**etag** | **String** | A unique system-generated value that identifies the version of the resource. | [optional] 
**lastModifiedDate** | [**DateTime**](DateTime.md) | The date and time the resource was last modified. | [optional] 
**ext** | [**SurveyResponseExtensions**](SurveyResponseExtensions.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


