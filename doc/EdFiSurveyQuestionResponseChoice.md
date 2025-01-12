# edfi_resources_sdk.model.EdFiSurveyQuestionResponseChoice

## Load the model package
```dart
import 'package:edfi_resources_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sortOrder** | **int** | Sort order of this ResponseChoice within the complete list of choices attached to a SurveyQuestion. If sort order doesn't apply, the value of NumericValue or a unique, possibly sequential numeric value. | 
**numericValue** | **int** | A valid numeric response. If paired with a TextValue, the numeric equivalent of the TextValue. | [optional] 
**textValue** | **String** | A valid text response. If paired with a NumericValue, the text equivalent of the NumericValue. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


